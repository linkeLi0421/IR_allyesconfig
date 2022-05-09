; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_bcm7271.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_bcm7271.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.brcmuart_priv = type { i32, ptr, i32, [4 x i32], ptr, i64, ptr, %struct.hrtimer, i8, i8, %struct.uart_8250_dma, [5 x ptr], i32, ptr, i32, i32, i32, ptr, i32, i8, i8, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.76 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_8250_bcm7271__242_1207_brcmuart_init6 = internal global ptr @brcmuart_init, section ".initcall6.init", align 4
@brcmuart_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @brcmuart_probe, ptr @brcmuart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmuart_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmuart_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@brcmuart_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_brcmuart_deinit = internal global ptr @brcmuart_deinit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [30 x i8] c"8250_bcm7271.author=Al Cooper\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [73 x i8] c"8250_bcm7271.description=Broadcom NS16550A compatible serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [55 x i8] c"8250_bcm7271.file=drivers/tty/serial/8250/8250_bcm7271\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [28 x i8] c"8250_bcm7271.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm7271-uart\00", [19 x i8] zeroinitializer }, align 32
@brcmuart_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7278-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_rate_table_7278 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7271-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_rate_table }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@brcmuart_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @brcmuart_suspend, ptr @brcmuart_resume, ptr @brcmuart_suspend, ptr @brcmuart_resume, ptr @brcmuart_suspend, ptr @brcmuart_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@brcmuart_probe.reg_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dma_rx\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dma_tx\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma_intr2\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dma_arb\00", [24 x i8] zeroinitializer }, align 32
@brcmstb_rate_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 81000000, i32 108000000, i32 64000000, i32 48000000], [16 x i8] zeroinitializer }, align 32
@brcmuart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 986, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s registers not specified\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"brcmuart_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/tty/serial/8250/8250_bcm7271.c\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmuart_probe._entry_ptr = internal global ptr @brcmuart_probe._entry, section ".printk_index", align 4
@brcmuart_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 1006, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unsupported DMA Hardware Revision\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@brcmuart_probe._entry_ptr.14 = internal global ptr @brcmuart_probe._entry.11, section ".printk_index", align 4
@brcmuart_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.8, i32 1010, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Timeout arbitrating for UART DMA hardware\0A\00", [53 x i8] zeroinitializer }, align 32
@brcmuart_probe._entry_ptr.17 = internal global ptr @brcmuart_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_baud\00", [24 x i8] zeroinitializer }, align 32
@brcmuart_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.7, ptr @.str.8, ptr @.str.21, i8 0, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"8250_bcm7271\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BAUD MUX clock not specified\0A\00", [34 x i8] zeroinitializer }, align 32
@brcmuart_probe.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.7, ptr @.str.8, ptr @.str.22, i8 0, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BAUD MUX clock found\0A\00", [42 x i8] zeroinitializer }, align 32
@brcmuart_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.8, i32 1033, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clock-frequency or clk not defined\0A\00", [60 x i8] zeroinitializer }, align 32
@brcmuart_probe._entry_ptr.25 = internal global ptr @brcmuart_probe._entry.23, section ".printk_index", align 4
@brcmuart_probe.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.7, ptr @.str.8, ptr @.str.26, i8 1, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DMA is %senabled\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@brcmuart_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.7, ptr @.str.8, i32 1093, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to register 8250 port\0A\00", [34 x i8] zeroinitializer }, align 32
@brcmuart_probe._entry_ptr.32 = internal global ptr @brcmuart_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@brcmuart_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.7, ptr @.str.8, i32 1103, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no IRQ resource info\0A\00", [42 x i8] zeroinitializer }, align 32
@brcmuart_probe._entry_ptr.36 = internal global ptr @brcmuart_probe._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart DMA irq\00", [19 x i8] zeroinitializer }, align 32
@brcmuart_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.7, ptr @.str.8, i32 1109, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to register IRQ handler\0A\00", [32 x i8] zeroinitializer }, align 32
@brcmuart_probe._entry_ptr.40 = internal global ptr @brcmuart_probe._entry.38, section ".printk_index", align 4
@init_real_clk_rates._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.8, i32 668, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error selecting BAUD MUX clock for %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"init_real_clk_rates\00", [44 x i8] zeroinitializer }, align 32
@init_real_clk_rates._entry_ptr = internal global ptr @init_real_clk_rates._entry, section ".printk_index", align 4
@set_clock_mux.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.43, ptr @.str.8, ptr @.str.44, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_clock_mux\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Baud rate: %u, MUX Clk: %u, Error: %u.%u%%\0A\00", [52 x i8] zeroinitializer }, align 32
@set_clock_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.8, i32 730, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error, %d BAUD rate is too fast.\0A\00", [62 x i8] zeroinitializer }, align 32
@set_clock_mux._entry_ptr = internal global ptr @set_clock_mux._entry, section ".printk_index", align 4
@set_clock_mux._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.43, ptr @.str.8, i32 736, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error selecting BAUD MUX clock\0A\00", [32 x i8] zeroinitializer }, align 32
@set_clock_mux._entry_ptr.48 = internal global ptr @set_clock_mux._entry.46, section ".printk_index", align 4
@set_clock_mux._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.43, ptr @.str.8, i32 741, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error, baud: %d has %u.%u%% error\0A\00", [61 x i8] zeroinitializer }, align 32
@set_clock_mux._entry_ptr.51 = internal global ptr @set_clock_mux._entry.49, section ".printk_index", align 4
@set_clock_mux.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.43, ptr @.str.8, ptr @.str.52, i8 0, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Selecting BAUD MUX rate: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@set_clock_mux.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.43, ptr @.str.8, ptr @.str.53, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Requested baud: %u, Actual baud: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@brcmuart_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.8, i32 584, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Spurious interrupt: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"brcmuart_isr\00", [19 x i8] zeroinitializer }, align 32
@brcmuart_isr._entry_ptr = internal global ptr @brcmuart_isr._entry, section ".printk_index", align 4
@brcmuart_rx_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.8, i32 514, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"RX buffer ready out of sequence, restarting RX DMA\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcmuart_rx_isr\00", [16 x i8] zeroinitializer }, align 32
@brcmuart_rx_isr._entry_ptr = internal global ptr @brcmuart_rx_isr._entry, section ".printk_index", align 4
@brcmuart_rx_isr._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.8, i32 523, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX TIMEOUT Error\0A\00", [46 x i8] zeroinitializer }, align 32
@brcmuart_rx_isr._entry_ptr.60 = internal global ptr @brcmuart_rx_isr._entry.58, section ".printk_index", align 4
@brcmuart_rx_buf_done_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.8, i32 457, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RX done interrupt but DATA_RDY not found\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"brcmuart_rx_buf_done_isr\00", [39 x i8] zeroinitializer }, align 32
@brcmuart_rx_buf_done_isr._entry_ptr = internal global ptr @brcmuart_rx_buf_done_isr._entry, section ".printk_index", align 4
@brcmuart_rx_buf_done_isr._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.8, i32 465, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX OVERRUN Error\0A\00", [46 x i8] zeroinitializer }, align 32
@brcmuart_rx_buf_done_isr._entry_ptr.65 = internal global ptr @brcmuart_rx_buf_done_isr._entry.63, section ".printk_index", align 4
@brcmuart_rx_buf_done_isr._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.8, i32 469, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX FRAMING Error\0A\00", [46 x i8] zeroinitializer }, align 32
@brcmuart_rx_buf_done_isr._entry_ptr.68 = internal global ptr @brcmuart_rx_buf_done_isr._entry.66, section ".printk_index", align 4
@brcmuart_rx_buf_done_isr._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.8, i32 473, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX PARITY Error\0A\00", [47 x i8] zeroinitializer }, align 32
@brcmuart_rx_buf_done_isr._entry_ptr.71 = internal global ptr @brcmuart_rx_buf_done_isr._entry.69, section ".printk_index", align 4
@brcmuart_rx_buf_done_isr._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.8, i32 482, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Flip buffer overrun of %d bytes\0A\00", [63 x i8] zeroinitializer }, align 32
@brcmuart_rx_buf_done_isr._entry_ptr.74 = internal global ptr @brcmuart_rx_buf_done_isr._entry.72, section ".printk_index", align 4
@brcmuart_tx_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.8, i32 550, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unexpected TX_ABORT interrupt\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcmuart_tx_isr\00", [16 x i8] zeroinitializer }, align 32
@brcmuart_tx_isr._entry_ptr = internal global ptr @brcmuart_tx_isr._entry, section ".printk_index", align 4
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@debugfs_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @debugfs_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_err:\09\09\09\09%u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_timeout:\09\09\09%u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_abort:\09\09\09%u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rx_bad_timeout_late_char:\09%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rx_bad_timeout_no_char:\09\09%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rx_missing_close_timeout:\09%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dma_rx_partial_buf:\09\09%llu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dma_rx_full_buf:\09\09%llu\0A\00", [40 x i8] zeroinitializer }, align 32
@brcmstb_rate_table_7278 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 81000000, i32 108000000, i32 0, i32 48000000], [16 x i8] zeroinitializer }, align 32
@brcmuart_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.8, i32 1165, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error enabling BAUD MUX clock\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcmuart_resume\00", [16 x i8] zeroinitializer }, align 32
@brcmuart_resume._entry_ptr = internal global ptr @brcmuart_resume._entry, section ".printk_index", align 4
@brcmuart_resume._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.8, i32 1173, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error restoring default BAUD MUX clock\0A\00", [56 x i8] zeroinitializer }, align 32
@brcmuart_resume._entry_ptr.90 = internal global ptr @brcmuart_resume._entry.88, section ".printk_index", align 4
@brcmuart_resume._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.8, i32 1176, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Timeout arbitrating for DMA hardware on resume\0A\00", [48 x i8] zeroinitializer }, align 32
@brcmuart_resume._entry_ptr.93 = internal global ptr @brcmuart_resume._entry.91, section ".printk_index", align 4
@___asan_gen_.94 = private unnamed_addr constant [25 x i8] c"brcmuart_platform_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1191, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"brcmuart_debugfs_root\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 243, i32 23 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1193, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"brcmuart_dt_ids\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 860, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"brcmuart_dev_pm_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1187, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant [10 x i8] c"reg_names\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 951, i32 28 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 952, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 952, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 952, i32 21 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 952, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 952, i32 44 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"brcmstb_rate_table\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 193, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 986, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1005, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1009, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1014, i32 27 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1017, i32 40 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1021, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1023, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1033, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1037, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1058, i32 28 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1093, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1100, i32 44 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1103, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1107, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1109, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 667, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 719, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 730, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 736, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 740, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 744, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 745, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 584, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 513, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 523, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 457, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 465, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 469, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 473, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 481, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 550, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 929, i32 22 }
@___asan_gen_.328 = private unnamed_addr constant [19 x i8] c"debugfs_stats_fops\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 923, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 903, i32 16 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 905, i32 16 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 907, i32 16 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 909, i32 16 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 911, i32 16 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 913, i32 16 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 916, i32 17 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 918, i32 17 }
@___asan_gen_.355 = private unnamed_addr constant [24 x i8] c"brcmstb_rate_table_7278\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 200, i32 18 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1165, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1173, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.377 = private constant [42 x i8] c"../drivers/tty/serial/8250/8250_bcm7271.c\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1176, i32 4 }
@llvm.compiler.used = appending global [125 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_brcmuart_deinit, ptr @__initcall__kmod_8250_bcm7271__242_1207_brcmuart_init6, ptr @brcmuart_deinit, ptr @brcmuart_isr._entry, ptr @brcmuart_isr._entry_ptr, ptr @brcmuart_probe._entry, ptr @brcmuart_probe._entry.11, ptr @brcmuart_probe._entry.15, ptr @brcmuart_probe._entry.23, ptr @brcmuart_probe._entry.30, ptr @brcmuart_probe._entry.34, ptr @brcmuart_probe._entry.38, ptr @brcmuart_probe._entry_ptr, ptr @brcmuart_probe._entry_ptr.14, ptr @brcmuart_probe._entry_ptr.17, ptr @brcmuart_probe._entry_ptr.25, ptr @brcmuart_probe._entry_ptr.32, ptr @brcmuart_probe._entry_ptr.36, ptr @brcmuart_probe._entry_ptr.40, ptr @brcmuart_resume._entry, ptr @brcmuart_resume._entry.88, ptr @brcmuart_resume._entry.91, ptr @brcmuart_resume._entry_ptr, ptr @brcmuart_resume._entry_ptr.90, ptr @brcmuart_resume._entry_ptr.93, ptr @brcmuart_rx_buf_done_isr._entry, ptr @brcmuart_rx_buf_done_isr._entry.63, ptr @brcmuart_rx_buf_done_isr._entry.66, ptr @brcmuart_rx_buf_done_isr._entry.69, ptr @brcmuart_rx_buf_done_isr._entry.72, ptr @brcmuart_rx_buf_done_isr._entry_ptr, ptr @brcmuart_rx_buf_done_isr._entry_ptr.65, ptr @brcmuart_rx_buf_done_isr._entry_ptr.68, ptr @brcmuart_rx_buf_done_isr._entry_ptr.71, ptr @brcmuart_rx_buf_done_isr._entry_ptr.74, ptr @brcmuart_rx_isr._entry, ptr @brcmuart_rx_isr._entry.58, ptr @brcmuart_rx_isr._entry_ptr, ptr @brcmuart_rx_isr._entry_ptr.60, ptr @brcmuart_tx_isr._entry, ptr @brcmuart_tx_isr._entry_ptr, ptr @init_real_clk_rates._entry, ptr @init_real_clk_rates._entry_ptr, ptr @set_clock_mux._entry, ptr @set_clock_mux._entry.46, ptr @set_clock_mux._entry.49, ptr @set_clock_mux._entry_ptr, ptr @set_clock_mux._entry_ptr.48, ptr @set_clock_mux._entry_ptr.51, ptr @brcmuart_platform_driver, ptr @brcmuart_debugfs_root, ptr @.str, ptr @brcmuart_dt_ids, ptr @brcmuart_dev_pm_ops, ptr @brcmuart_probe.reg_names, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @brcmstb_rate_table, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @debugfs_stats_fops, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @brcmstb_rate_table_7278, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_probe.reg_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_rate_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_real_clk_rates._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_clock_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_clock_mux._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_clock_mux._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_rx_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_rx_isr._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_rx_buf_done_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_rx_buf_done_isr._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_rx_buf_done_isr._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_rx_buf_done_isr._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_rx_buf_done_isr._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_tx_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_rate_table_7278 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_resume._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmuart_resume._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmuart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.platform_driver, ptr @brcmuart_platform_driver, i32 0, i32 5), align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef %0, ptr noundef null) #6
  store ptr %call, ptr @brcmuart_debugfs_root, align 4
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmuart_platform_driver, ptr noundef null) #6
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brcmuart_deinit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmuart_platform_driver) #6
  %0 = load ptr, ptr @brcmuart_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmuart_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %up = alloca %struct.uart_8250_port, align 4
  %clk_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %up) #6
  %2 = call ptr @memset(ptr %up, i32 255, i32 584)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_rate) #6
  %3 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %clk_rate, align 4
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 368, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @of_match_node(ptr noundef nonnull @brcmuart_dt_ids, ptr noundef %1) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.if.end12_crit_edge, label %lor.lhs.false

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

lor.lhs.false:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call6, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool8.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool8.not, ptr @brcmstb_rate_table, ptr %5
  br label %if.end12

if.end12:                                         ; preds = %lor.lhs.false, %if.end5.if.end12_crit_edge
  %.sink = phi ptr [ @brcmstb_rate_table, %if.end5.if.end12_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %rate_table11 = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %rate_table11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %.sink, ptr %rate_table11, align 4
  %call14 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.do.end_crit_edge, label %if.end17

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end17:                                         ; preds = %if.end12
  %7 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call14, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call14, i32 0, i32 1
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %8
  %add.i = add i32 %sub.i, %10
  %call19 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %8, i32 noundef %add.i) #6
  %arrayidx21 = getelementptr %struct.brcmuart_priv, ptr %call.i, i32 0, i32 11, i32 0
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call19, ptr %arrayidx21, align 4
  %tobool24.not = icmp eq ptr %call19, null
  br i1 %tobool24.not, label %if.end17.cleanup_crit_edge, label %for.inc

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %if.end17
  %12 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call14, align 4
  %call14.1 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #6
  %tobool15.not.1 = icmp eq ptr %call14.1, null
  br i1 %tobool15.not.1, label %for.inc.if.end60_crit_edge, label %if.end17.1

for.inc.if.end60_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.end17.1:                                       ; preds = %for.inc
  %14 = ptrtoint ptr %call14.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call14.1, align 4
  %end.i.1 = getelementptr inbounds %struct.resource, ptr %call14.1, i32 0, i32 1
  %16 = ptrtoint ptr %end.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i.1, align 4
  %sub.i.1 = sub i32 1, %15
  %add.i.1 = add i32 %sub.i.1, %17
  %call19.1 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %15, i32 noundef %add.i.1) #6
  %arrayidx21.1 = getelementptr %struct.brcmuart_priv, ptr %call.i, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call19.1, ptr %arrayidx21.1, align 4
  %tobool24.not.1 = icmp eq ptr %call19.1, null
  br i1 %tobool24.not.1, label %if.end17.1.cleanup_crit_edge, label %for.inc.1

if.end17.1.cleanup_crit_edge:                     ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1:                                        ; preds = %if.end17.1
  %call14.2 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.3) #6
  %tobool15.not.2 = icmp eq ptr %call14.2, null
  br i1 %tobool15.not.2, label %for.inc.1.do.end_crit_edge, label %if.end17.2

for.inc.1.do.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end17.2:                                       ; preds = %for.inc.1
  %19 = ptrtoint ptr %call14.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call14.2, align 4
  %end.i.2 = getelementptr inbounds %struct.resource, ptr %call14.2, i32 0, i32 1
  %21 = ptrtoint ptr %end.i.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i.2, align 4
  %sub.i.2 = sub i32 1, %20
  %add.i.2 = add i32 %sub.i.2, %22
  %call19.2 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %20, i32 noundef %add.i.2) #6
  %arrayidx21.2 = getelementptr %struct.brcmuart_priv, ptr %call.i, i32 0, i32 11, i32 2
  %23 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call19.2, ptr %arrayidx21.2, align 4
  %tobool24.not.2 = icmp eq ptr %call19.2, null
  br i1 %tobool24.not.2, label %if.end17.2.cleanup_crit_edge, label %for.inc.2

if.end17.2.cleanup_crit_edge:                     ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.2:                                        ; preds = %if.end17.2
  %call14.3 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.4) #6
  %tobool15.not.3 = icmp eq ptr %call14.3, null
  br i1 %tobool15.not.3, label %for.inc.2.do.end_crit_edge, label %if.end17.3

for.inc.2.do.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end17.3:                                       ; preds = %for.inc.2
  %24 = ptrtoint ptr %call14.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call14.3, align 4
  %end.i.3 = getelementptr inbounds %struct.resource, ptr %call14.3, i32 0, i32 1
  %26 = ptrtoint ptr %end.i.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i.3, align 4
  %sub.i.3 = sub i32 1, %25
  %add.i.3 = add i32 %sub.i.3, %27
  %call19.3 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %25, i32 noundef %add.i.3) #6
  %arrayidx21.3 = getelementptr %struct.brcmuart_priv, ptr %call.i, i32 0, i32 11, i32 3
  %28 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call19.3, ptr %arrayidx21.3, align 4
  %tobool24.not.3 = icmp eq ptr %call19.3, null
  br i1 %tobool24.not.3, label %if.end17.3.cleanup_crit_edge, label %for.inc.3

if.end17.3.cleanup_crit_edge:                     ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.3:                                        ; preds = %if.end17.3
  %call14.4 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.5) #6
  %tobool15.not.4 = icmp eq ptr %call14.4, null
  br i1 %tobool15.not.4, label %for.inc.3.do.end_crit_edge, label %if.end17.4

for.inc.3.do.end_crit_edge:                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end17.4:                                       ; preds = %for.inc.3
  %29 = ptrtoint ptr %call14.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call14.4, align 4
  %end.i.4 = getelementptr inbounds %struct.resource, ptr %call14.4, i32 0, i32 1
  %31 = ptrtoint ptr %end.i.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.i.4, align 4
  %sub.i.4 = sub i32 1, %30
  %add.i.4 = add i32 %sub.i.4, %32
  %call19.4 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %30, i32 noundef %add.i.4) #6
  %arrayidx21.4 = getelementptr %struct.brcmuart_priv, ptr %call.i, i32 0, i32 11, i32 4
  %33 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call19.4, ptr %arrayidx21.4, align 4
  %tobool24.not.4 = icmp eq ptr %call19.4, null
  br i1 %tobool24.not.4, label %if.end17.4.cleanup_crit_edge, label %if.then39

if.end17.4.cleanup_crit_edge:                     ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %for.inc.3.do.end_crit_edge, %for.inc.2.do.end_crit_edge, %for.inc.1.do.end_crit_edge, %if.end12.do.end_crit_edge
  %x.0.lcssa.ph = phi i32 [ 4, %for.inc.3.do.end_crit_edge ], [ 3, %for.inc.2.do.end_crit_edge ], [ 2, %for.inc.1.do.end_crit_edge ], [ 0, %if.end12.do.end_crit_edge ]
  %arrayidx36 = getelementptr [5 x ptr], ptr @brcmuart_probe.reg_names, i32 0, i32 %x.0.lcssa.ph
  %34 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx36, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %35) #9
  br label %cleanup

if.then39:                                        ; preds = %if.end17.4
  %call40 = tail call fastcc i32 @brcmuart_arbitration(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %do.end58

if.then42:                                        ; preds = %if.then39
  %arrayidx.i = getelementptr %struct.brcmuart_priv, ptr %call.i, i32 0, i32 11, i32 1
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !201
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  %arrayidx.i323 = getelementptr %struct.brcmuart_priv, ptr %call.i, i32 0, i32 11, i32 2
  %40 = ptrtoint ptr %arrayidx.i323 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i323, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !201
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %39)
  %cmp45 = icmp ugt i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %43)
  %cmp47 = icmp ugt i32 %43, 256
  %or.cond = select i1 %cmp45, i1 %cmp47, i1 false
  br i1 %or.cond, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %dma_enabled = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 9
  %44 = ptrtoint ptr %dma_enabled to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %dma_enabled, align 1
  br label %if.end60

if.else49:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call fastcc i32 @brcmuart_arbitration(ptr noundef nonnull %call.i, i1 noundef zeroext false)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %if.end60

do.end58:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %if.end60

if.end60:                                         ; preds = %do.end58, %if.else49, %if.then48, %for.inc.if.end60_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %clk_rate, i32 noundef 1, i32 noundef 0) #6
  %call62 = call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef nonnull @.str.19) #6
  %cmp.i = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then64, label %do.body79

if.then64:                                        ; preds = %if.end60
  %cmp66 = icmp eq ptr %call62, inttoptr (i32 -517 to ptr)
  br i1 %cmp66, label %if.then64.cleanup_crit_edge, label %do.body69

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body69:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmuart_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmuart_probe, %if.then74)) #6
          to label %if.end100 [label %if.then74], !srcloc !203

if.then74:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmuart_probe.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.21) #6
  br label %if.end100

do.body79:                                        ; preds = %if.end60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmuart_probe.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmuart_probe, %if.then91)) #6
          to label %do.end94 [label %if.then91], !srcloc !203

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmuart_probe.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.22) #6
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %do.body79
  %call.i324 = call i32 @clk_prepare(ptr noundef %call62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i324)
  %tobool.not.i = icmp eq i32 %call.i324, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end94.cleanup_crit_edge

do.end94.cleanup_crit_edge:                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %do.end94
  %call1.i = call i32 @clk_enable(ptr noundef %call62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end98, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call62) #6
  br label %cleanup

if.end98:                                         ; preds = %if.end.i
  %baud_mux_clk99 = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 1
  %45 = ptrtoint ptr %baud_mux_clk99 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call62, ptr %baud_mux_clk99, align 4
  %call.i326 = call i32 @clk_get_rate(ptr noundef %call62) #6
  %default_mux_rate.i = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 2
  %46 = ptrtoint ptr %default_mux_rate.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call.i326, ptr %default_mux_rate.i, align 8
  %rate_table.i = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 4
  %47 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rate_table.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp1.i = icmp eq i32 %50, 0
  br i1 %cmp1.i, label %if.end98.for.inc.i_crit_edge, label %if.end.i328

if.end98.for.inc.i_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i328:                                      ; preds = %if.end98
  %51 = ptrtoint ptr %baud_mux_clk99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %baud_mux_clk99, align 4
  %call6.i = call i32 @clk_set_rate(ptr noundef %52, i32 noundef %50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i327 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i327, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i328
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rate_table.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %56) #9
  %57 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rate_table.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end.i328
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %baud_mux_clk99 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %baud_mux_clk99, align 4
  %call15.i = call i32 @clk_get_rate(ptr noundef %62) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %do.end.i, %if.end98.for.inc.i_crit_edge
  %.sink.i = phi i32 [ %60, %do.end.i ], [ %call15.i, %if.else.i ], [ 0, %if.end98.for.inc.i_crit_edge ]
  %arrayidx13.i = getelementptr %struct.brcmuart_priv, ptr %call.i, i32 0, i32 3, i32 0
  %63 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink.i, ptr %arrayidx13.i, align 4
  %64 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rate_table.i, align 4
  %arrayidx.1.i = getelementptr i32, ptr %65, i32 1
  %66 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp1.1.i = icmp eq i32 %67, 0
  br i1 %cmp1.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %68 = ptrtoint ptr %baud_mux_clk99 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %baud_mux_clk99, align 4
  %call6.1.i = call i32 @clk_set_rate(ptr noundef %69, i32 noundef %67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1.i)
  %tobool.not.1.i = icmp eq i32 %call6.1.i, 0
  br i1 %tobool.not.1.i, label %if.else.1.i, label %do.end.1.i

do.end.1.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rate_table.i, align 4
  %arrayidx9.1.i = getelementptr i32, ptr %71, i32 1
  %72 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx9.1.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %73) #9
  %74 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rate_table.i, align 4
  %arrayidx11.1.i = getelementptr i32, ptr %75, i32 1
  %76 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx11.1.i, align 4
  br label %for.inc.1.i

if.else.1.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %baud_mux_clk99 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %baud_mux_clk99, align 4
  %call15.1.i = call i32 @clk_get_rate(ptr noundef %79) #6
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.else.1.i, %do.end.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %.sink44.i = phi i32 [ %call15.1.i, %if.else.1.i ], [ %77, %do.end.1.i ], [ 0, %for.inc.i.for.inc.1.i_crit_edge ]
  %arrayidx2.1.i = getelementptr %struct.brcmuart_priv, ptr %call.i, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %.sink44.i, ptr %arrayidx2.1.i, align 4
  %81 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rate_table.i, align 4
  %arrayidx.2.i = getelementptr i32, ptr %82, i32 2
  %83 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp1.2.i = icmp eq i32 %84, 0
  br i1 %cmp1.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %85 = ptrtoint ptr %baud_mux_clk99 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %baud_mux_clk99, align 4
  %call6.2.i = call i32 @clk_set_rate(ptr noundef %86, i32 noundef %84) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2.i)
  %tobool.not.2.i = icmp eq i32 %call6.2.i, 0
  br i1 %tobool.not.2.i, label %if.else.2.i, label %do.end.2.i

do.end.2.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rate_table.i, align 4
  %arrayidx9.2.i = getelementptr i32, ptr %88, i32 2
  %89 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx9.2.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %90) #9
  %91 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rate_table.i, align 4
  %arrayidx11.2.i = getelementptr i32, ptr %92, i32 2
  %93 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx11.2.i, align 4
  br label %for.inc.2.i

if.else.2.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %baud_mux_clk99 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %baud_mux_clk99, align 4
  %call15.2.i = call i32 @clk_get_rate(ptr noundef %96) #6
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.else.2.i, %do.end.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %.sink45.i = phi i32 [ %call15.2.i, %if.else.2.i ], [ %94, %do.end.2.i ], [ 0, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %arrayidx2.2.i = getelementptr %struct.brcmuart_priv, ptr %call.i, i32 0, i32 3, i32 2
  %97 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %.sink45.i, ptr %arrayidx2.2.i, align 4
  %98 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rate_table.i, align 4
  %arrayidx.3.i = getelementptr i32, ptr %99, i32 3
  %100 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp1.3.i = icmp eq i32 %101, 0
  br i1 %cmp1.3.i, label %for.inc.2.i.init_real_clk_rates.exit_crit_edge, label %if.end.3.i

for.inc.2.i.init_real_clk_rates.exit_crit_edge:   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_real_clk_rates.exit

if.end.3.i:                                       ; preds = %for.inc.2.i
  %102 = ptrtoint ptr %baud_mux_clk99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %baud_mux_clk99, align 4
  %call6.3.i = call i32 @clk_set_rate(ptr noundef %103, i32 noundef %101) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.3.i)
  %tobool.not.3.i = icmp eq i32 %call6.3.i, 0
  br i1 %tobool.not.3.i, label %if.else.3.i, label %do.end.3.i

do.end.3.i:                                       ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rate_table.i, align 4
  %arrayidx9.3.i = getelementptr i32, ptr %105, i32 3
  %106 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx9.3.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %107) #9
  %108 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rate_table.i, align 4
  %arrayidx11.3.i = getelementptr i32, ptr %109, i32 3
  %110 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx11.3.i, align 4
  br label %init_real_clk_rates.exit

if.else.3.i:                                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %baud_mux_clk99 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %baud_mux_clk99, align 4
  %call15.3.i = call i32 @clk_get_rate(ptr noundef %113) #6
  br label %init_real_clk_rates.exit

init_real_clk_rates.exit:                         ; preds = %if.else.3.i, %do.end.3.i, %for.inc.2.i.init_real_clk_rates.exit_crit_edge
  %.sink46.i = phi i32 [ %call15.3.i, %if.else.3.i ], [ %111, %do.end.3.i ], [ 0, %for.inc.2.i.init_real_clk_rates.exit_crit_edge ]
  %arrayidx2.3.i = getelementptr %struct.brcmuart_priv, ptr %call.i, i32 0, i32 3, i32 3
  %114 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %.sink46.i, ptr %arrayidx2.3.i, align 4
  %115 = ptrtoint ptr %baud_mux_clk99 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %baud_mux_clk99, align 4
  %117 = ptrtoint ptr %default_mux_rate.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %default_mux_rate.i, align 8
  %call21.i = call i32 @clk_set_rate(ptr noundef %116, i32 noundef %118) #6
  %119 = ptrtoint ptr %default_mux_rate.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %default_mux_rate.i, align 8
  %121 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %clk_rate, align 4
  br label %if.end100

if.end100:                                        ; preds = %init_real_clk_rates.exit, %if.then74, %do.body69
  %122 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp101 = icmp eq i32 %123, 0
  br i1 %cmp101, label %do.end105, label %do.body107

do.end105:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #9
  br label %cleanup

do.body107:                                       ; preds = %if.end100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmuart_probe.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmuart_probe, %if.then119)) #6
          to label %do.end124 [label %if.then119], !srcloc !203

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #8
  %dma_enabled120 = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 9
  %124 = ptrtoint ptr %dma_enabled120 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %dma_enabled120, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool121.not = icmp eq i8 %125, 0
  %cond = select i1 %tobool121.not, ptr @.str.28, ptr @.str.27
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmuart_probe.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond) #6
  br label %do.end124

do.end124:                                        ; preds = %if.then119, %do.body107
  %126 = call ptr @memset(ptr %up, i32 0, i32 584)
  %type = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 38
  %127 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 4, ptr %type, align 4
  %128 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %clk_rate, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 22
  %130 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %uartclk, align 4
  %dev127 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 45
  %131 = ptrtoint ptr %dev127 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %dev, ptr %dev127, align 4
  %mapbase129 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 43
  %132 = ptrtoint ptr %mapbase129 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %13, ptr %mapbase129, align 4
  %membase131 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 2
  %133 = ptrtoint ptr %membase131 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call19, ptr %membase131, align 4
  %irq133 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 20
  %134 = ptrtoint ptr %irq133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call, ptr %irq133, align 4
  %handle_irq = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 15
  %135 = ptrtoint ptr %handle_irq to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @brcmuart_handle_irq, ptr %handle_irq, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 25
  %136 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 2, ptr %regshift, align 1
  %call136 = call zeroext i1 @of_device_is_big_endian(ptr noundef %1) #6
  %conv = select i1 %call136, i8 6, i8 3
  %iotype = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 26
  %137 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv, ptr %iotype, align 2
  %flags = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 33
  %138 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 956301312, ptr %flags, align 4
  %139 = ptrtoint ptr %dev127 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %dev, ptr %dev127, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 59
  %140 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call.i, ptr %private_data, align 4
  %capabilities = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 3
  %141 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 2304, ptr %capabilities, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 23
  %142 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 32, ptr %fifosize, align 4
  %call144 = call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call144)
  %cmp145 = icmp sgt i32 %call144, -1
  br i1 %cmp145, label %if.then147, label %do.end124.if.end149_crit_edge

do.end124.if.end149_crit_edge:                    ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

if.then147:                                       ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #8
  %line = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 41
  %143 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %call144, ptr %line, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %do.end124.if.end149_crit_edge
  %hrt = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 7
  call void @hrtimer_init(ptr noundef %hrt, i32 noundef 1, i32 noundef 0) #6
  %function = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 7, i32 2
  %144 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @brcmuart_hrtimer_func, ptr %function, align 8
  %shutdown = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 12
  %145 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @brcmuart_shutdown, ptr %shutdown, align 4
  %startup = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 11
  %146 = ptrtoint ptr %startup to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @brcmuart_startup, ptr %startup, align 4
  %throttle = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 13
  %147 = ptrtoint ptr %throttle to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @brcmuart_throttle, ptr %throttle, align 4
  %unthrottle = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 14
  %148 = ptrtoint ptr %unthrottle to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @brcmuart_unthrottle, ptr %unthrottle, align 4
  %set_termios = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 5
  %149 = ptrtoint ptr %set_termios to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @brcmstb_set_termios, ptr %set_termios, align 4
  %dma_enabled156 = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 9
  %150 = ptrtoint ptr %dma_enabled156 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %dma_enabled156, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool157.not = icmp eq i8 %151, 0
  br i1 %tobool157.not, label %if.end149.if.end171_crit_edge, label %if.then158

if.end149.if.end171_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end171

if.then158:                                       ; preds = %if.end149
  %rx_size = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 14
  %152 = ptrtoint ptr %rx_size to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 8192, ptr %rx_size, align 4
  %rx_addr = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 12
  %call.i329 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 8192, ptr noundef %rx_addr, i32 noundef 3264, i32 noundef 0) #6
  %rx_bufs = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 13
  %153 = ptrtoint ptr %rx_bufs to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call.i329, ptr %rx_bufs, align 8
  %tobool162.not = icmp eq ptr %call.i329, null
  br i1 %tobool162.not, label %if.then158.err_crit_edge, label %if.end164

if.then158.err_crit_edge:                         ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end164:                                        ; preds = %if.then158
  %tx_size = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 18
  %154 = ptrtoint ptr %tx_size to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 4096, ptr %tx_size, align 4
  %tx_addr = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 16
  %call.i330 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %tx_addr, i32 noundef 3264, i32 noundef 0) #6
  %tx_buf = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 17
  %155 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call.i330, ptr %tx_buf, align 8
  %tobool168.not = icmp eq ptr %call.i330, null
  br i1 %tobool168.not, label %if.end164.err_crit_edge, label %if.end164.if.end171_crit_edge

if.end164.if.end171_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end171

if.end164.err_crit_edge:                          ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end171:                                        ; preds = %if.end164.if.end171_crit_edge, %if.end149.if.end171_crit_edge
  %call172 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %up) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %cmp173 = icmp slt i32 %call172, 0
  br i1 %cmp173, label %do.end178, label %if.end179

do.end178:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #9
  br label %err

if.end179:                                        ; preds = %if.end171
  %156 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %call172, ptr %call.i, align 8
  %call181 = call ptr @serial8250_get_port(i32 noundef %call172) #6
  %up183 = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 6
  %157 = ptrtoint ptr %up183 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call181, ptr %up183, align 8
  %158 = ptrtoint ptr %dma_enabled156 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %dma_enabled156, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool185.not = icmp eq i8 %159, 0
  br i1 %tobool185.not, label %if.end179.if.end203_crit_edge, label %if.then186

if.end179.if.end203_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203

if.then186:                                       ; preds = %if.end179
  %call187 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %cmp188 = icmp slt i32 %call187, 0
  br i1 %cmp188, label %if.then186.err1_crit_edge, label %if.end194

if.then186.err1_crit_edge:                        ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

if.end194:                                        ; preds = %if.then186
  %call.i331 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call187, ptr noundef nonnull @brcmuart_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.37, ptr noundef %call181) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331)
  %tobool197.not = icmp eq i32 %call.i331, 0
  br i1 %tobool197.not, label %if.end194.if.end203_crit_edge, label %if.end194.err1_crit_edge

if.end194.err1_crit_edge:                         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

if.end194.if.end203_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203

if.end203:                                        ; preds = %if.end194.if.end203_crit_edge, %if.end179.if.end203_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %160 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %161 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i332 = icmp eq ptr %162, null
  br i1 %tobool.not.i332, label %if.end.i333, label %if.end203.dev_name.exit_crit_edge

if.end203.dev_name.exit_crit_edge:                ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i333:                                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #8
  %163 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i333, %if.end203.dev_name.exit_crit_edge
  %retval.0.i334 = phi ptr [ %164, %if.end.i333 ], [ %162, %if.end203.dev_name.exit_crit_edge ]
  %165 = load ptr, ptr @brcmuart_debugfs_root, align 4
  %call.i335 = call ptr @debugfs_create_dir(ptr noundef %retval.0.i334, ptr noundef %165) #6
  %debugfs_dir.i = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 21
  %166 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call.i335, ptr %debugfs_dir.i, align 4
  %call2.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.77, i16 noundef zeroext 292, ptr noundef %call.i335, ptr noundef nonnull %call.i, ptr noundef nonnull @debugfs_stats_fops) #6
  br label %cleanup

err1:                                             ; preds = %if.end194.err1_crit_edge, %if.then186.err1_crit_edge
  %.str.39.sink = phi ptr [ @.str.35, %if.then186.err1_crit_edge ], [ @.str.39, %if.end194.err1_crit_edge ]
  %ret.0 = phi i32 [ %call187, %if.then186.err1_crit_edge ], [ %call.i331, %if.end194.err1_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.39.sink) #9
  %167 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %call.i, align 8
  call void @serial8250_unregister_port(i32 noundef %168) #6
  br label %err

err:                                              ; preds = %err1, %do.end178, %if.end164.err_crit_edge, %if.then158.err_crit_edge
  %ret.1 = phi i32 [ %call172, %do.end178 ], [ %ret.0, %err1 ], [ -12, %if.then158.err_crit_edge ], [ -12, %if.end164.err_crit_edge ]
  %rx_bufs.i = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 13
  %169 = ptrtoint ptr %rx_bufs.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rx_bufs.i, align 8
  %tobool.not.i336 = icmp eq ptr %170, null
  br i1 %tobool.not.i336, label %err.if.end.i338_crit_edge, label %if.then.i

err.if.end.i338_crit_edge:                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i338

if.then.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  %rx_size.i = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 14
  %171 = ptrtoint ptr %rx_size.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %rx_size.i, align 4
  %rx_addr.i = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 12
  %173 = ptrtoint ptr %rx_addr.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rx_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef %172, ptr noundef nonnull %170, i32 noundef %174, i32 noundef 0) #6
  br label %if.end.i338

if.end.i338:                                      ; preds = %if.then.i, %err.if.end.i338_crit_edge
  %tx_buf.i = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 17
  %175 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tx_buf.i, align 8
  %tobool2.not.i337 = icmp eq ptr %176, null
  br i1 %tobool2.not.i337, label %if.end.i338.brcmuart_free_bufs.exit_crit_edge, label %if.then3.i339

if.end.i338.brcmuart_free_bufs.exit_crit_edge:    ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmuart_free_bufs.exit

if.then3.i339:                                    ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #8
  %tx_size.i = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 18
  %177 = ptrtoint ptr %tx_size.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %tx_size.i, align 4
  %tx_addr.i = getelementptr inbounds %struct.brcmuart_priv, ptr %call.i, i32 0, i32 16
  %179 = ptrtoint ptr %tx_addr.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tx_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef %178, ptr noundef nonnull %176, i32 noundef %180, i32 noundef 0) #6
  br label %brcmuart_free_bufs.exit

brcmuart_free_bufs.exit:                          ; preds = %if.then3.i339, %if.end.i338.brcmuart_free_bufs.exit_crit_edge
  %arrayidx.i21.i = getelementptr %struct.brcmuart_priv, ptr %call.i, i32 0, i32 11, i32 4
  %181 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx.i21.i, align 4
  %183 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #6, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %184 = and i32 %183, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %184) #6, !srcloc !207
  %185 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx.i21.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %186, i32 4
  %187 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #6, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %188 = and i32 %187, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %188) #6, !srcloc !207
  br label %cleanup

cleanup:                                          ; preds = %brcmuart_free_bufs.exit, %dev_name.exit, %do.end105, %if.then3.i, %do.end94.cleanup_crit_edge, %if.then64.cleanup_crit_edge, %do.end, %if.end17.4.cleanup_crit_edge, %if.end17.3.cleanup_crit_edge, %if.end17.2.cleanup_crit_edge, %if.end17.1.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end105 ], [ %ret.1, %brcmuart_free_bufs.exit ], [ 0, %dev_name.exit ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -517, %if.then64.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i324, %do.end94.cleanup_crit_edge ], [ -12, %if.end17.4.cleanup_crit_edge ], [ -12, %if.end17.3.cleanup_crit_edge ], [ -12, %if.end17.2.cleanup_crit_edge ], [ -12, %if.end17.1.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_rate) #6
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %up) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmuart_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debugfs_dir = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %3) #6
  %hrt = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @hrtimer_cancel(ptr noundef %hrt) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  tail call void @serial8250_unregister_port(i32 noundef %5) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %rx_bufs.i = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %rx_bufs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_bufs.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_size.i = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %rx_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_size.i, align 4
  %rx_addr.i = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %rx_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %9, ptr noundef nonnull %7, i32 noundef %11, i32 noundef 0) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %tx_buf.i = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_buf.i, align 8
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %if.end.i.brcmuart_free_bufs.exit_crit_edge, label %if.then3.i

if.end.i.brcmuart_free_bufs.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmuart_free_bufs.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_size.i = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %tx_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_size.i, align 4
  %tx_addr.i = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %tx_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %15, ptr noundef nonnull %13, i32 noundef %17, i32 noundef 0) #6
  br label %brcmuart_free_bufs.exit

brcmuart_free_bufs.exit:                          ; preds = %if.then3.i, %if.end.i.brcmuart_free_bufs.exit_crit_edge
  %arrayidx.i21.i = getelementptr %struct.brcmuart_priv, ptr %1, i32 0, i32 11, i32 4
  %18 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i21.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %21 = and i32 %20, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %21) #6, !srcloc !207
  %22 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i21.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %25 = and i32 %24, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %25) #6, !srcloc !207
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmuart_arbitration(ptr nocapture noundef readonly %priv, i1 noundef zeroext %acquire) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %acquire, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.brcmuart_priv, ptr %priv, i32 0, i32 11, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #6, !srcloc !207
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #6, !srcloc !207
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i2025 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2025) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  %14 = and i32 %10, 33554432
  %15 = and i32 %14, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not26 = icmp eq i32 %15, 0
  br i1 %tobool3.not26, label %if.end.preheader, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.preheader:                                 ; preds = %if.then
  tail call void @msleep(i32 noundef 1) #6
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  %22 = and i32 %18, 33554432
  %23 = and i32 %22, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not = icmp eq i32 %23, 0
  br i1 %tobool3.not, label %if.end.preheader.if.end7_crit_edge, label %if.end.preheader.cleanup_crit_edge

if.end.preheader.cleanup_crit_edge:               ; preds = %if.end.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.preheader.if.end7_crit_edge:               ; preds = %if.end.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %if.end.preheader.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end7_crit_edge ], [ 1, %if.end.preheader.if.end7_crit_edge ]
  %arrayidx.i21 = getelementptr %struct.brcmuart_priv, ptr %priv, i32 0, i32 11, i32 4
  %24 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i21, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %27 = and i32 %26, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %27) #6, !srcloc !207
  %28 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i21, align 4
  %add.ptr.i23 = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %31 = and i32 %30, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %31) #6, !srcloc !207
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.preheader.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end7 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmuart_handle_irq(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %1(ptr noundef %p, i32 noundef 2) #6
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %and = and i32 %call.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and)
  %cmp = icmp eq i32 %and, 12
  br i1 %cmp, label %land.lhs.true, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true:                                    ; preds = %entry
  %shutdown = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shutdown, align 8, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body2, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.body2:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %p) #6
  %6 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial_in.i, align 4
  %call.i59 = tail call i32 %7(ptr noundef %p, i32 noundef 5) #6
  %and9 = and i32 %call.i59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %if.then12, label %if.end31.critedge

if.then12:                                        ; preds = %do.body2
  %8 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial_in.i, align 4
  %call.i61 = tail call i32 %9(ptr noundef %p, i32 noundef 1) #6
  %and14 = and i32 %call.i61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then12.if.else_crit_edge, label %land.lhs.true16

if.then12.if.else_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true16:                                  ; preds = %if.then12
  %mcr17 = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 11
  %10 = ptrtoint ptr %mcr17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mcr17, align 4
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool20.not = icmp eq i8 %12, 0
  br i1 %tobool20.not, label %land.lhs.true16.if.else_crit_edge, label %if.then21

land.lhs.true16.if.else_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then21:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  %and22 = and i32 %call.i61, -6
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 4
  %13 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial_out.i, align 4
  tail call void %14(ptr noundef %p, i32 noundef 1, i32 noundef %and22) #6
  %15 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial_in.i, align 4
  %call.i63 = tail call i32 %16(ptr noundef %p, i32 noundef 4) #6
  %and24 = and i32 %call.i63, -3
  %17 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serial_out.i, align 4
  tail call void %18(ptr noundef %p, i32 noundef 4, i32 noundef %and24) #6
  %hrt = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 7
  %char_wait = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %char_wait to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %char_wait, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %hrt, i64 noundef %20, i64 noundef 0, i32 noundef 1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %p, i32 noundef %call5) #6
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true16.if.else_crit_edge, %if.then12.if.else_crit_edge
  %21 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serial_in.i, align 4
  %call.i66 = tail call i32 %22(ptr noundef %p, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %p, i32 noundef %call5) #6
  br label %cleanup

if.end31.critedge:                                ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %p, i32 noundef %call5) #6
  br label %if.end31

if.end31:                                         ; preds = %if.end31.critedge, %land.lhs.true.if.end31_crit_edge, %entry.if.end31_crit_edge
  %call32 = tail call i32 @serial8250_handle_irq(ptr noundef %p, i32 noundef %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.else, %if.then21
  %retval.0 = phi i32 [ %call32, %if.end31 ], [ 1, %if.else ], [ 1, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmuart_hrtimer_func(ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %up = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %up, align 8
  %shutdown = getelementptr i8, ptr %t, i32 48
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shutdown, align 8, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 5) #6
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9 = icmp eq i32 %and, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial_in.i, align 4
  %call.i45 = tail call i32 %7(ptr noundef %1, i32 noundef 0) #6
  %rx_bad_timeout_no_char = getelementptr i8, ptr %t, i32 292
  %8 = ptrtoint ptr %rx_bad_timeout_no_char to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_bad_timeout_no_char, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %rx_bad_timeout_no_char, align 4
  br label %if.end14

if.else:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %rx_bad_timeout_late_char = getelementptr i8, ptr %t, i32 288
  %10 = ptrtoint ptr %rx_bad_timeout_late_char to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_bad_timeout_late_char, align 8
  %inc13 = add i32 %11, 1
  store i32 %inc13, ptr %rx_bad_timeout_late_char, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %ier = getelementptr inbounds %struct.uart_8250_port, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ier, align 2
  %14 = and i8 %13, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %14)
  %cmp17 = icmp eq i8 %14, 5
  br i1 %cmp17, label %if.then19, label %if.end14.if.end23_crit_edge

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial_in.i, align 4
  %call.i47 = tail call i32 %16(ptr noundef %1, i32 noundef 1) #6
  %or = or i32 %call.i47, 5
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serial_out.i, align 4
  tail call void %18(ptr noundef %1, i32 noundef 1, i32 noundef %or) #6
  %19 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serial_in.i, align 4
  %call.i49 = tail call i32 %20(ptr noundef %1, i32 noundef 4) #6
  %or22 = or i32 %call.i49, 2
  %21 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serial_out.i, align 4
  tail call void %22(ptr noundef %1, i32 noundef 4, i32 noundef %or22) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end14.if.end23_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmuart_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #6
  %shutdown = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %shutdown, align 8
  %dma_enabled = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %dma_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dma_enabled, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %rx_running.i = getelementptr inbounds %struct.brcmuart_priv, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %rx_running.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rx_running.i, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.stop_rx_dma.exit_crit_edge, label %if.then.i

if.then.stop_rx_dma.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %stop_rx_dma.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.brcmuart_priv, ptr %6, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %12 = or i32 %11, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #6, !srcloc !207
  br label %stop_rx_dma.exit

stop_rx_dma.exit:                                 ; preds = %if.then.i, %if.then.stop_rx_dma.exit_crit_edge
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 4
  %arrayidx.i.i18 = getelementptr %struct.brcmuart_priv, ptr %14, i32 0, i32 11, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i18, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i20 = icmp eq i32 %18, 0
  br i1 %tobool.not.i20, label %stop_rx_dma.exit.stop_tx_dma.exit_crit_edge, label %if.then.i21

stop_rx_dma.exit.stop_tx_dma.exit_crit_edge:      ; preds = %stop_rx_dma.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %stop_tx_dma.exit

if.then.i21:                                      ; preds = %stop_rx_dma.exit
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i18, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %22 = or i32 %21, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %22) #6, !srcloc !207
  br label %stop_tx_dma.exit

stop_tx_dma.exit:                                 ; preds = %if.then.i21, %stop_rx_dma.exit.stop_tx_dma.exit_crit_edge
  %tx_running.i = getelementptr inbounds %struct.brcmuart_priv, ptr %14, i32 0, i32 19
  %23 = ptrtoint ptr %tx_running.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %tx_running.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %arrayidx.i = getelementptr %struct.brcmuart_priv, ptr %1, i32 0, i32 11, i32 3
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -12648448) #6, !srcloc !207
  br label %if.end

if.end:                                           ; preds = %stop_tx_dma.exit, %entry.if.end_crit_edge
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 19
  %26 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %dma, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call4) #6
  tail call void @serial8250_do_shutdown(ptr noundef %port) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmuart_startup(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %shutdown = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %shutdown, align 8
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 19
  %3 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dma, align 4
  %call2 = tail call i32 @serial8250_do_startup(ptr noundef %port) #6
  %dma_enabled = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %dma_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_enabled, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ier = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 9
  %6 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ier, align 2
  %8 = and i8 %7, -2
  store i8 %8, ptr %ier, align 2
  %conv5 = zext i8 %8 to i32
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %9 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial_out.i, align 4
  tail call void %10(ptr noundef %port, i32 noundef 1, i32 noundef %conv5) #6
  %tx_running = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %tx_running to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tx_running, align 8
  %dma6 = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 10
  %rx_dma = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %rx_dma to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rx_dma, align 4
  %13 = ptrtoint ptr %dma6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @brcmuart_tx_dma, ptr %dma6, align 4
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dma6, ptr %dma, align 4
  tail call fastcc void @brcmuart_init_dma_hardware(ptr noundef %1)
  tail call fastcc void @start_rx_dma(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmuart_throttle(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %arrayidx.i = getelementptr %struct.brcmuart_priv, ptr %1, i32 0, i32 11, i32 3
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -15794176) #6, !srcloc !207
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmuart_unthrottle(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %arrayidx.i = getelementptr %struct.brcmuart_priv, ptr %1, i32 0, i32 11, i32 3
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -15794176) #6, !srcloc !207
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_set_termios(ptr noundef %up, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dma_enabled = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dma_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dma_enabled, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %rx_running.i = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %rx_running.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_running.i, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.brcmuart_priv, ptr %1, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %9 = or i32 %8, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #6, !srcloc !207
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #6
  tail call fastcc void @set_clock_mux(ptr noundef %up, ptr noundef %1, i32 noundef %call1)
  tail call void @serial8250_do_set_termios(ptr noundef %up, ptr noundef %termios, ptr noundef %old) #6
  %mcr = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 11
  %10 = ptrtoint ptr %mcr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mcr, align 4
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %status = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 34
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %or = or i32 %14, 8
  store i32 %or, ptr %status, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %15 = ptrtoint ptr %dma_enabled to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dma_enabled, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not = icmp eq i8 %16, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @start_rx_dma(ptr noundef %up)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmuart_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 45
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %arrayidx.i = getelementptr %struct.brcmuart_priv, ptr %3, i32 0, i32 11, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !201
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #6, !srcloc !207
  %and = and i32 %7, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body2.if.end9_crit_edge, label %if.then8

do.body2.if.end9_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %do.body2
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  %and.i = and i32 %7, 1020
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not62.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not62.i, label %if.then8.if.end9_crit_edge, label %while.body.lr.ph.i

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

while.body.lr.ph.i:                               ; preds = %if.then8
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 4
  %rx_next_buf.i = getelementptr inbounds %struct.brcmuart_priv, ptr %13, i32 0, i32 15
  %state.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %overrun.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %frame.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %parity.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %rx.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %and5.i = and i32 %7, 3075
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %and8.i = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %rx_err.i = getelementptr inbounds %struct.brcmuart_priv, ptr %13, i32 0, i32 27
  %and12.i = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %rx_timeout.i = getelementptr inbounds %struct.brcmuart_priv, ptr %13, i32 0, i32 28
  %and20.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %rx_abort.i = getelementptr inbounds %struct.brcmuart_priv, ptr %13, i32 0, i32 29
  %rx_running.i = getelementptr inbounds %struct.brcmuart_priv, ptr %13, i32 0, i32 20
  %arrayidx.i.i = getelementptr %struct.brcmuart_priv, ptr %13, i32 0, i32 11, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end30.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %rx_done_isr.063.i = phi i32 [ %and.i, %while.body.lr.ph.i ], [ %and31.i, %if.end30.i.while.body.i_crit_edge ]
  %14 = ptrtoint ptr %rx_next_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_next_buf.i, align 8
  %shl.i = shl i32 4, %15
  %and2.i = and i32 %shl.i, %rx_done_isr.063.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data, align 4
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state.i.i, align 4
  %mul.i.i = shl i32 %15, 4
  %add.i.i = add i32 %mul.i.i, 48
  %arrayidx.i.i.i = getelementptr %struct.brcmuart_priv, ptr %17, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %add.i.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !201
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  %add2.i.i = add i32 %mul.i.i, 52
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i97.i.i = getelementptr i8, ptr %25, i32 %add2.i.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.i.i) #6, !srcloc !201
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.61) #9
  br label %brcmuart_rx_buf_done_isr.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %and4.i.i = and i32 %23, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end34.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end34.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %and6.i.i = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then5.i.i.if.end13.i.i_crit_edge, label %if.then8.i.i

if.then5.i.i.if.end13.i.i_crit_edge:              ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i.i

if.then8.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %overrun.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %overrun.i.i, align 4
  %inc.i.i = add i32 %31, 1
  store i32 %inc.i.i, ptr %overrun.i.i, align 4
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.64) #9
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then8.i.i, %if.then5.i.i.if.end13.i.i_crit_edge
  %and14.i.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end13.i.i.if.end23.i.i_crit_edge, label %if.then16.i.i

if.end13.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i

if.then16.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %frame.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frame.i.i, align 4
  %inc18.i.i = add i32 %35, 1
  store i32 %inc18.i.i, ptr %frame.i.i, align 4
  %36 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.67) #9
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then16.i.i, %if.end13.i.i.if.end23.i.i_crit_edge
  %and24.i.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end23.i.i.if.end34.i.i_crit_edge, label %if.then26.i.i

if.end23.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i.i

if.then26.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %parity.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %parity.i.i, align 4
  %inc28.i.i = add i32 %39, 1
  store i32 %inc28.i.i, ptr %parity.i.i, align 4
  %40 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.70) #9
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then26.i.i, %if.end23.i.i.if.end34.i.i_crit_edge, %if.end.i.i.if.end34.i.i_crit_edge
  %rx_bufs.i.i = getelementptr inbounds %struct.brcmuart_priv, ptr %17, i32 0, i32 13
  %42 = ptrtoint ptr %rx_bufs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_bufs.i.i, align 8
  %mul35.i.i = shl i32 %15, 12
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %mul35.i.i
  %call.i.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %19, ptr noundef %add.ptr.i.i, i8 noundef zeroext 0, i32 noundef %27) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %call.i.i.i)
  %cmp37.not.i.i = icmp eq i32 %27, %call.i.i.i
  br i1 %cmp37.not.i.i, label %if.end34.i.i.if.end47.i.i_crit_edge, label %do.end41.i.i

if.end34.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i.i

do.end41.i.i:                                     ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1, align 4
  %sub.i.i = sub i32 %27, %call.i.i.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.73, i32 noundef %sub.i.i) #9
  %46 = ptrtoint ptr %overrun.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %overrun.i.i, align 4
  %add46.i.i = add i32 %47, %sub.i.i
  store i32 %add46.i.i, ptr %overrun.i.i, align 4
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %do.end41.i.i, %if.end34.i.i.if.end47.i.i_crit_edge
  %48 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx.i.i, align 4
  %add49.i.i = add i32 %49, %27
  store i32 %add49.i.i, ptr %rx.i.i, align 4
  %and50.i.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i.i)
  %tobool51.not.i.i = icmp eq i32 %and50.i.i, 0
  br i1 %tobool51.not.i.i, label %if.else.i.i, label %if.then52.i.i

if.then52.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma_rx_partial_buf.i.i = getelementptr inbounds %struct.brcmuart_priv, ptr %17, i32 0, i32 22
  %50 = ptrtoint ptr %dma_rx_partial_buf.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %dma_rx_partial_buf.i.i, align 8
  %inc53.i.i = add i64 %51, 1
  store i64 %inc53.i.i, ptr %dma_rx_partial_buf.i.i, align 8
  br label %if.end60.i.i

if.else.i.i:                                      ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %26)
  %cmp54.not.i.i = icmp eq i32 %26, 1048576
  br i1 %cmp54.not.i.i, label %if.else57.i.i, label %if.then55.i.i

if.then55.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rx_missing_close_timeout.i.i = getelementptr inbounds %struct.brcmuart_priv, ptr %17, i32 0, i32 26
  %52 = ptrtoint ptr %rx_missing_close_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_missing_close_timeout.i.i, align 8
  %inc56.i.i = add i32 %53, 1
  store i32 %inc56.i.i, ptr %rx_missing_close_timeout.i.i, align 8
  br label %if.end60.i.i

if.else57.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma_rx_full_buf.i.i = getelementptr inbounds %struct.brcmuart_priv, ptr %17, i32 0, i32 23
  %54 = ptrtoint ptr %dma_rx_full_buf.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %dma_rx_full_buf.i.i, align 8
  %inc58.i.i = add i64 %55, 1
  store i64 %inc58.i.i, ptr %dma_rx_full_buf.i.i, align 8
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %if.else57.i.i, %if.then55.i.i, %if.then52.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %19) #6
  br label %brcmuart_rx_buf_done_isr.exit.i

brcmuart_rx_buf_done_isr.exit.i:                  ; preds = %if.end60.i.i, %do.end.i.i
  br i1 %tobool6.not.i, label %brcmuart_rx_buf_done_isr.exit.i.if.end25.i_crit_edge, label %if.then7.i

brcmuart_rx_buf_done_isr.exit.i.if.end25.i_crit_edge: ; preds = %brcmuart_rx_buf_done_isr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.56) #9
  tail call fastcc void @start_rx_dma(ptr noundef %dev_id) #6
  br label %if.end9

if.then7.i:                                       ; preds = %brcmuart_rx_buf_done_isr.exit.i
  br i1 %tobool9.not.i, label %if.then7.i.if.end11.i_crit_edge, label %if.then10.i

if.then7.i.if.end11.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %rx_err.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_err.i, align 4
  %inc.i = add i32 %57, 1
  store i32 %inc.i, ptr %rx_err.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.then7.i.if.end11.i_crit_edge
  br i1 %tobool13.not.i, label %if.end11.i.if.end19.i_crit_edge, label %if.then14.i

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %rx_timeout.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_timeout.i, align 8
  %inc15.i = add i32 %59, 1
  store i32 %inc15.i, ptr %rx_timeout.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.59) #9
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end19.i_crit_edge
  br i1 %tobool21.not.i, label %if.end19.i.if.end24.i_crit_edge, label %if.then22.i

if.end19.i.if.end24.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %rx_abort.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_abort.i, align 4
  %inc23.i = add i32 %61, 1
  store i32 %inc23.i, ptr %rx_abort.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end24.i_crit_edge
  %62 = ptrtoint ptr %rx_running.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %rx_running.i, align 1
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end24.i, %brcmuart_rx_buf_done_isr.exit.i.if.end25.i_crit_edge
  br i1 %tobool21.not.i, label %if.then28.i, label %if.end25.i.if.end30.i_crit_edge

if.end25.i.if.end30.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %rx_next_buf.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_next_buf.i, align 8
  %mul.i = shl i32 %64, 4
  %add.i = add i32 %mul.i, 48
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %66, i32 %add.i
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60.i) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %68 = and i32 %67, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %68) #6, !srcloc !207
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.end25.i.if.end30.i_crit_edge
  %neg.i = xor i32 %shl.i, -1
  %and31.i = and i32 %rx_done_isr.063.i, %neg.i
  %69 = ptrtoint ptr %rx_next_buf.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_next_buf.i, align 8
  %inc33.i = add i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc33.i)
  %cmp.i = icmp eq i32 %inc33.i, 2
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %inc33.i
  %71 = ptrtoint ptr %rx_next_buf.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %spec.select.i, ptr %rx_next_buf.i, align 8
  %tobool.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool.not.i, label %if.end30.i.if.end9_crit_edge, label %if.end30.i.while.body.i_crit_edge

if.end30.i.while.body.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end30.i.if.end9_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end9:                                          ; preds = %if.end30.i.if.end9_crit_edge, %do.end.i, %if.then8.if.end9_crit_edge, %do.body2.if.end9_crit_edge
  %and10 = and i32 %7, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  %72 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %private_data, align 4
  %74 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev1, align 4
  %and.i45 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool.not.i46 = icmp eq i32 %and.i45, 0
  br i1 %tobool.not.i46, label %if.end5.i, label %if.then.i48

if.then.i48:                                      ; preds = %if.then12
  %tx_running.i = getelementptr inbounds %struct.brcmuart_priv, ptr %73, i32 0, i32 19
  %76 = ptrtoint ptr %tx_running.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tx_running.i, align 8, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool3.not.i47 = icmp eq i8 %77, 0
  br i1 %tobool3.not.i47, label %if.then.i48.if.end13_crit_edge, label %do.end.i49

if.then.i48.if.end13_crit_edge:                   ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end.i49:                                       ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.75) #9
  br label %if.end13

if.end5.i:                                        ; preds = %if.then12
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %78 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %state.i, align 4
  %tx_running6.i = getelementptr inbounds %struct.brcmuart_priv, ptr %73, i32 0, i32 19
  %80 = ptrtoint ptr %tx_running6.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %tx_running6.i, align 8
  %head.i = getelementptr inbounds %struct.uart_state, ptr %79, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %79, i32 0, i32 2, i32 2
  %83 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp.i50 = icmp eq i32 %82, %84
  br i1 %cmp.i50, label %if.end5.i.if.end13_crit_edge, label %land.lhs.true.i

if.end5.i.if.end13_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true.i:                                  ; preds = %if.end5.i
  %85 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %state.i, align 4
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i51 = icmp eq ptr %88, null
  br i1 %tobool.not.i.i51, label %land.lhs.true.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uart_tx_stopped.exit.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %88, i32 0, i32 19, i32 1
  %89 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %stopped.i.i, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool3.not.i.i = icmp eq i8 %90, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i.if.end13_crit_edge

land.lhs.true.i.i.if.end13_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uart_tx_stopped.exit.i

uart_tx_stopped.exit.i:                           ; preds = %land.lhs.true.i.i.uart_tx_stopped.exit.i_crit_edge, %land.lhs.true.i.uart_tx_stopped.exit.i_crit_edge
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 35
  %91 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool4.not.i.not.i = icmp eq i32 %92, 0
  br i1 %tobool4.not.i.not.i, label %if.then9.i, label %uart_tx_stopped.exit.i.if.end13_crit_edge

uart_tx_stopped.exit.i.if.end13_crit_edge:        ; preds = %uart_tx_stopped.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then9.i:                                       ; preds = %uart_tx_stopped.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = tail call i32 @brcmuart_tx_dma(ptr noundef %dev_id) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then9.i, %uart_tx_stopped.exit.i.if.end13_crit_edge, %land.lhs.true.i.i.if.end13_crit_edge, %if.end5.i.if.end13_crit_edge, %do.end.i49, %if.then.i48.if.end13_crit_edge, %if.end9.if.end13_crit_edge
  %or = and i32 %7, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp14 = icmp eq i32 %or, 0
  br i1 %cmp14, label %do.end19, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.54, i32 noundef %7) #9
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %if.end13.if.end20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end20 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_handle_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_do_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmuart_tx_dma(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %xmit2 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

entry.uart_tx_stopped.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %entry
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stopped.i, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not.i = icmp eq i8 %7, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %entry.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 35
  %8 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.i.not = icmp eq i32 %9, 0
  br i1 %tobool4.not.i.not, label %lor.lhs.false, label %uart_tx_stopped.exit.cleanup_crit_edge

uart_tx_stopped.exit.cleanup_crit_edge:           ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %uart_tx_stopped.exit
  %tx_running = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %tx_running to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_running, align 8, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %head = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp eq i32 %13, %15
  br i1 %cmp, label %lor.lhs.false5.cleanup_crit_edge, label %if.end

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %sub = sub i32 4096, %15
  %add = add i32 %sub, %13
  %and = and i32 %add, 4095
  %16 = tail call i32 @llvm.smin.i32(i32 %and, i32 %sub)
  %tx_err = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 10, i32 19
  %17 = ptrtoint ptr %tx_err to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %tx_err, align 1
  %tx_buf = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_buf, align 8
  %20 = ptrtoint ptr %xmit2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xmit2, align 4
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %21, i32 %23
  %24 = call ptr @memcpy(ptr %19, ptr %arrayidx, i32 %16)
  %25 = load i32, ptr %tail, align 4
  %add11 = add i32 %25, %16
  %and13 = and i32 %add11, 4095
  store i32 %and13, ptr %tail, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 31, i32 5
  %26 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx, align 4
  %add15 = add i32 %27, %16
  store i32 %add15, ptr %tx, align 4
  %28 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %head, align 4
  %30 = load i32, ptr %tail, align 4
  %sub18 = sub i32 %29, %30
  %and19 = and i32 %sub18, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %if.then21, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @uart_write_wakeup(ptr noundef %p) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end.if.end23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %arrayidx.i = getelementptr %struct.brcmuart_priv, ptr %1, i32 0, i32 11, i32 2
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %31) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %35, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %31) #6, !srcloc !207
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %37, i32 44
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %39 = and i32 %38, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %39) #6, !srcloc !207
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %41, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %43 = or i32 %42, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %43) #6, !srcloc !207
  %44 = ptrtoint ptr %tx_running to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %tx_running, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %uart_tx_stopped.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmuart_init_dma_hardware(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %arrayidx.i = getelementptr %struct.brcmuart_priv, ptr %priv, i32 0, i32 11, i32 3
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %arrayidx.i29 = getelementptr %struct.brcmuart_priv, ptr %priv, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 1048576) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i29, align 4
  %add.ptr.i32 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 1310720) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i29, align 4
  %add.ptr.i34 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 -1879047936) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i29, align 4
  %add.ptr.i36 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 0) #6, !srcloc !207
  %rx_addr = getelementptr inbounds %struct.brcmuart_priv, ptr %priv, i32 0, i32 12
  %10 = ptrtoint ptr %rx_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i29, align 4
  %add.ptr.i38 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 0) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %15 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i29, align 4
  %add.ptr.i40 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %14) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i29, align 4
  %add.ptr.i42 = getelementptr i8, ptr %18, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 0) #6, !srcloc !207
  %add4 = add i32 %11, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i29, align 4
  %add.ptr.i38.1 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.1, i32 0) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %add4) #6
  %22 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i29, align 4
  %add.ptr.i40.1 = getelementptr i8, ptr %23, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.1, i32 %21) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i29, align 4
  %add.ptr.i42.1 = getelementptr i8, ptr %25, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.1, i32 0) #6, !srcloc !207
  %tx_addr = getelementptr inbounds %struct.brcmuart_priv, ptr %priv, i32 0, i32 16
  %26 = ptrtoint ptr %tx_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %arrayidx.i43 = getelementptr %struct.brcmuart_priv, ptr %priv, i32 0, i32 11, i32 2
  %29 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i43, align 4
  %add.ptr.i44 = getelementptr i8, ptr %30, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %28) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i43, align 4
  %add.ptr.i46 = getelementptr i8, ptr %32, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 0) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i43, align 4
  %add.ptr.i48 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 268435456) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 -1) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %38, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 -12648448) #6, !srcloc !207
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_rx_dma(ptr nocapture noundef readonly %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx.i = getelementptr %struct.brcmuart_priv, ptr %1, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #6, !srcloc !207
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %9 = and i32 %8, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %9) #6, !srcloc !207
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i9.1 = getelementptr i8, ptr %11, i32 64
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.1) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %13 = and i32 %12, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.1, i32 %13) #6, !srcloc !207
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %17 = and i32 %16, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %17) #6, !srcloc !207
  %rx_next_buf = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %rx_next_buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %rx_next_buf, align 8
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #6, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %22 = or i32 %21, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %22) #6, !srcloc !207
  %rx_running = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 20
  %23 = ptrtoint ptr %rx_running to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %rx_running, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_clock_mux(ptr nocapture noundef %up, ptr nocapture noundef %priv, i32 noundef %baud) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %baud_mux_clk = getelementptr inbounds %struct.brcmuart_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %baud_mux_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %baud_mux_clk, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %div7448 = lshr i32 %baud, 1
  %conv11 = zext i32 %baud to i64
  %mul12 = mul nuw nsw i64 %conv11, 10000
  %conv22 = zext i32 %div7448 to i64
  %dev = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 45
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %percent.0490 = phi i32 [ -1, %for.cond.preheader ], [ %percent.1, %for.inc.for.body_crit_edge ]
  %best_percent.0489 = phi i32 [ -1, %for.cond.preheader ], [ %best_percent.1, %for.inc.for.body_crit_edge ]
  %best_quot.0488 = phi i32 [ 1, %for.cond.preheader ], [ %best_quot.1, %for.inc.for.body_crit_edge ]
  %best_index.0487 = phi i32 [ -1, %for.cond.preheader ], [ %best_index.1, %for.inc.for.body_crit_edge ]
  %i.0486 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.brcmuart_priv, ptr %priv, i32 0, i32 3, i32 %i.0486
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %div447 = lshr i32 %3, 4
  %add = add nuw i32 %div447, %div7448
  %div8 = udiv i32 %add, %baud
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %baud)
  %tobool.not = icmp ult i32 %add, %baud
  br i1 %tobool.not, label %if.end4.for.inc_crit_edge, label %if.end10

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end10:                                         ; preds = %if.end4
  %conv = zext i32 %div447 to i64
  %mul = mul nuw nsw i64 %conv, 10000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !211

if.then168.i.i:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %div8
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div8, i64 %mul) #10, !srcloc !212
  %asmresult1.i.i.i = extractvalue { i64, i64 } %4, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %dividend.addr.0.i.i, i64 %mul12)
  %cmp15 = icmp ugt i64 %dividend.addr.0.i.i, %mul12
  %sub = sub i64 %dividend.addr.0.i.i, %mul12
  %sub18 = sub i64 %mul12, %dividend.addr.0.i.i
  %hires_err.0 = select i1 %cmp15, i64 %sub, i64 %sub18
  %add23 = add i64 %hires_err.0, %conv22
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add23)
  %cmp200 = icmp ult i64 %add23, 4294967296
  br i1 %cmp200, label %if.then204, label %if.else210, !prof !211

if.then204:                                       ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv205 = trunc i64 %add23 to i32
  %div208 = udiv i32 %conv205, %baud
  br label %if.end214

if.else210:                                       ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %baud, i64 %add23) #10, !srcloc !212
  %asmresult1.i = extractvalue { i64, i64 } %5, 1
  %extract.t484 = trunc i64 %asmresult1.i to i32
  br label %if.end214

if.end214:                                        ; preds = %if.else210, %if.then204
  %_tmp.0.off0 = phi i32 [ %div208, %if.then204 ], [ %extract.t484, %if.else210 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_clock_mux.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_clock_mux, %if.then227)) #6
          to label %do.end [label %if.then227], !srcloc !203

if.then227:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %_tmp.0.off0.frozen = freeze i32 %_tmp.0.off0
  %div230 = udiv i32 %_tmp.0.off0.frozen, 100
  %10 = mul i32 %div230, 100
  %rem231.decomposed = sub i32 %_tmp.0.off0.frozen, %10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_clock_mux.__UNIQUE_ID_ddebug236, ptr noundef %7, ptr noundef nonnull @.str.44, i32 noundef %baud, i32 noundef %9, i32 noundef %div230, i32 noundef %rem231.decomposed) #6
  br label %do.end

do.end:                                           ; preds = %if.then227, %if.end214
  call void @__sanitizer_cov_trace_cmp4(i32 %best_percent.0489, i32 %_tmp.0.off0)
  %cmp233 = icmp ugt i32 %best_percent.0489, %_tmp.0.off0
  br i1 %cmp233, label %if.then235, label %do.end.for.inc_crit_edge

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then235:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.then235, %do.end.for.inc_crit_edge, %if.end4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %best_index.1 = phi i32 [ %best_index.0487, %for.body.for.inc_crit_edge ], [ %i.0486, %if.then235 ], [ %best_index.0487, %do.end.for.inc_crit_edge ], [ %best_index.0487, %if.end4.for.inc_crit_edge ]
  %best_quot.1 = phi i32 [ %best_quot.0488, %for.body.for.inc_crit_edge ], [ %div8, %if.then235 ], [ %best_quot.0488, %do.end.for.inc_crit_edge ], [ %best_quot.0488, %if.end4.for.inc_crit_edge ]
  %best_percent.1 = phi i32 [ %best_percent.0489, %for.body.for.inc_crit_edge ], [ %_tmp.0.off0, %if.then235 ], [ %best_percent.0489, %do.end.for.inc_crit_edge ], [ %best_percent.0489, %if.end4.for.inc_crit_edge ]
  %percent.1 = phi i32 [ %percent.0490, %for.body.for.inc_crit_edge ], [ %_tmp.0.off0, %if.then235 ], [ %_tmp.0.off0, %do.end.for.inc_crit_edge ], [ %percent.0490, %if.end4.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0486, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_index.1)
  %cmp237 = icmp eq i32 %best_index.1, -1
  br i1 %cmp237, label %do.end242, label %if.end244

do.end242:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.45, i32 noundef %baud) #9
  br label %cleanup

if.end244:                                        ; preds = %for.end
  %arrayidx246 = getelementptr %struct.brcmuart_priv, ptr %priv, i32 0, i32 3, i32 %best_index.1
  %13 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx246, align 4
  %15 = ptrtoint ptr %baud_mux_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %baud_mux_clk, align 4
  %call248 = tail call i32 @clk_set_rate(ptr noundef %16, i32 noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %if.end244.if.end255_crit_edge, label %do.end253

if.end244.if.end255_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end255

do.end253:                                        ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.47) #9
  br label %if.end255

if.end255:                                        ; preds = %do.end253, %if.end244.if.end255_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %best_percent.1)
  %cmp256 = icmp ugt i32 %best_percent.1, 300
  br i1 %cmp256, label %do.end261, label %if.end255.if.end265_crit_edge

if.end255.if.end265_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end265

do.end261:                                        ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %percent.1.frozen = freeze i32 %percent.1
  %div263 = udiv i32 %percent.1.frozen, 100
  %21 = mul i32 %div263, 100
  %rem264.decomposed = sub i32 %percent.1.frozen, %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.50, i32 noundef %baud, i32 noundef %div263, i32 noundef %rem264.decomposed) #9
  br label %if.end265

if.end265:                                        ; preds = %do.end261, %if.end255.if.end265_crit_edge
  %div266446 = lshr i32 %14, 4
  %div267 = udiv i32 %div266446, %best_quot.1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_clock_mux.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_clock_mux, %if.then280)) #6
          to label %do.body285 [label %if.then280], !srcloc !203

if.then280:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_clock_mux.__UNIQUE_ID_ddebug237, ptr noundef %23, ptr noundef nonnull @.str.52, i32 noundef %14) #6
  br label %do.body285

do.body285:                                       ; preds = %if.then280, %if.end265
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_clock_mux.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_clock_mux, %if.then297)) #6
          to label %do.end301 [label %if.then297], !srcloc !203

if.then297:                                       ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_clock_mux.__UNIQUE_ID_ddebug238, ptr noundef %25, ptr noundef nonnull @.str.53, i32 noundef %baud, i32 noundef %div267) #6
  br label %do.end301

do.end301:                                        ; preds = %if.then297, %do.body285
  %div302 = udiv i32 1000000000, %div267
  %div303 = udiv i32 %div302, 10
  %div304 = udiv i32 %div302, 20
  %add305 = add nuw nsw i32 %div303, %div304
  %26 = zext i32 %add305 to i64
  %char_wait = getelementptr inbounds %struct.brcmuart_priv, ptr %priv, i32 0, i32 5
  %27 = ptrtoint ptr %char_wait to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %char_wait, align 8
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 22
  %28 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %14, ptr %uartclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end301, %do.end242, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_termios(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debugfs_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @debugfs_stats_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debugfs_stats_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %rx_err = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %rx_err to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_err, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.78, i32 noundef %3) #6
  %rx_timeout = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %rx_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_timeout, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, i32 noundef %5) #6
  %rx_abort = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %rx_abort to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_abort, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.80, i32 noundef %7) #6
  %rx_bad_timeout_late_char = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %rx_bad_timeout_late_char to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_bad_timeout_late_char, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.81, i32 noundef %9) #6
  %rx_bad_timeout_no_char = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %rx_bad_timeout_no_char to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_bad_timeout_no_char, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i32 noundef %11) #6
  %rx_missing_close_timeout = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %rx_missing_close_timeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_missing_close_timeout, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.83, i32 noundef %13) #6
  %dma_enabled = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %dma_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dma_enabled, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dma_rx_partial_buf = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 22
  %16 = ptrtoint ptr %dma_rx_partial_buf to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dma_rx_partial_buf, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.84, i64 noundef %17) #6
  %dma_rx_full_buf = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %dma_rx_full_buf to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dma_rx_full_buf, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, i64 noundef %19) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmuart_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call1 = tail call ptr @serial8250_get_port(i32 noundef %3) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  tail call void @serial8250_suspend_port(i32 noundef %5) #6
  %baud_mux_clk = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %baud_mux_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %baud_mux_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %mctrl = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 36
  %8 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mctrl, align 4
  %saved_mctrl = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 30
  %10 = ptrtoint ptr %saved_mctrl to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %saved_mctrl, align 8
  store i32 0, ptr %mctrl, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmuart_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call1 = tail call ptr @serial8250_get_port(i32 noundef %3) #6
  %baud_mux_clk = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %baud_mux_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %baud_mux_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.86) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end.i.if.end_crit_edge
  %6 = ptrtoint ptr %baud_mux_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %baud_mux_clk, align 4
  %default_mux_rate = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %default_mux_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %default_mux_rate, align 8
  %call5 = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %do.end10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.89) #9
  br label %if.end11

if.end11:                                         ; preds = %do.end10, %if.end.if.end11_crit_edge
  %dma_enabled = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %dma_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dma_enabled, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  br i1 %tobool12.not, label %if.end11.if.end23_crit_edge, label %if.then13

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then13:                                        ; preds = %if.end11
  %call14 = tail call fastcc i32 @brcmuart_arbitration(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.92) #9
  br label %cleanup

if.end20:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @brcmuart_init_dma_hardware(ptr noundef %1)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 8
  %call22 = tail call ptr @serial8250_get_port(i32 noundef %13) #6
  tail call fastcc void @start_rx_dma(ptr noundef %call22)
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %if.end11.if.end23_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 8
  tail call void @serial8250_resume_port(i32 noundef %15) #6
  %saved_mctrl = getelementptr inbounds %struct.brcmuart_priv, ptr %1, i32 0, i32 30
  %16 = ptrtoint ptr %saved_mctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saved_mctrl, align 8
  %mctrl = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 36
  %18 = ptrtoint ptr %mctrl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end19
  %retval.0 = phi i32 [ -16, %do.end19 ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !82, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @__initcall__kmod_8250_bcm7271__242_1207_brcmuart_init6, !1, !"__initcall__kmod_8250_bcm7271__242_1207_brcmuart_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1207, i32 1}
!2 = !{ptr @__exitcall_brcmuart_deinit, !3, !"__exitcall_brcmuart_deinit", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1214, i32 1}
!4 = !{ptr @__UNIQUE_ID_author243, !5, !"__UNIQUE_ID_author243", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1216, i32 1}
!6 = !{ptr @__UNIQUE_ID_description244, !7, !"__UNIQUE_ID_description244", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1217, i32 1}
!8 = !{ptr @__UNIQUE_ID_file245, !9, !"__UNIQUE_ID_file245", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1218, i32 1}
!10 = !{ptr @__UNIQUE_ID_license246, !9, !"__UNIQUE_ID_license246", i1 false, i1 false}
!11 = !{ptr @brcmuart_debugfs_root, !12, !"brcmuart_debugfs_root", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 243, i32 23}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1193, i32 11}
!15 = !{ptr @brcmuart_platform_driver, !16, !"brcmuart_platform_driver", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1191, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 952, i32 3}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 952, i32 11}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 952, i32 21}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 952, i32 31}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 952, i32 44}
!27 = !{ptr @brcmuart_probe.reg_names, !28, !"reg_names", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 951, i32 28}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 986, i32 3}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @brcmuart_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @brcmuart_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1005, i32 5}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @brcmuart_probe._entry.11, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @brcmuart_probe._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1009, i32 4}
!44 = !{ptr @brcmuart_probe._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @brcmuart_probe._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1014, i32 27}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1017, i32 40}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1021, i32 3}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @brcmuart_probe.__UNIQUE_ID_ddebug239, !51, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1023, i32 3}
!56 = !{ptr @brcmuart_probe.__UNIQUE_ID_ddebug240, !55, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1033, i32 3}
!59 = !{ptr @brcmuart_probe._entry.23, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @brcmuart_probe._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1037, i32 2}
!63 = !{ptr @brcmuart_probe.__UNIQUE_ID_ddebug241, !62, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!64 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1058, i32 28}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1093, i32 3}
!70 = !{ptr @brcmuart_probe._entry.30, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @brcmuart_probe._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1100, i32 44}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1103, i32 4}
!76 = !{ptr @brcmuart_probe._entry.34, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @brcmuart_probe._entry_ptr.36, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1107, i32 18}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1109, i32 4}
!82 = !{ptr @brcmuart_probe._entry.38, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @brcmuart_probe._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @brcmstb_rate_table, !85, !"brcmstb_rate_table", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 193, i32 18}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 667, i32 4}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @init_real_clk_rates._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @init_real_clk_rates._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 719, i32 3}
!93 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @set_clock_mux.__UNIQUE_ID_ddebug236, !92, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 730, i32 3}
!97 = !{ptr @set_clock_mux._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @set_clock_mux._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 736, i32 3}
!101 = !{ptr @set_clock_mux._entry.46, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @set_clock_mux._entry_ptr.48, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 740, i32 3}
!105 = !{ptr @set_clock_mux._entry.49, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @set_clock_mux._entry_ptr.51, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 744, i32 2}
!109 = !{ptr @set_clock_mux.__UNIQUE_ID_ddebug237, !108, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 745, i32 2}
!112 = !{ptr @set_clock_mux.__UNIQUE_ID_ddebug238, !111, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 584, i32 3}
!115 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @brcmuart_isr._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @brcmuart_isr._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 513, i32 4}
!120 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @brcmuart_rx_isr._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @brcmuart_rx_isr._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 523, i32 5}
!125 = !{ptr @brcmuart_rx_isr._entry.58, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @brcmuart_rx_isr._entry_ptr.60, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 457, i32 3}
!129 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @brcmuart_rx_buf_done_isr._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @brcmuart_rx_buf_done_isr._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 465, i32 4}
!134 = !{ptr @brcmuart_rx_buf_done_isr._entry.63, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @brcmuart_rx_buf_done_isr._entry_ptr.65, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 469, i32 4}
!138 = !{ptr @brcmuart_rx_buf_done_isr._entry.66, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @brcmuart_rx_buf_done_isr._entry_ptr.68, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 473, i32 4}
!142 = !{ptr @brcmuart_rx_buf_done_isr._entry.69, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @brcmuart_rx_buf_done_isr._entry_ptr.71, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 481, i32 3}
!146 = !{ptr @brcmuart_rx_buf_done_isr._entry.72, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @brcmuart_rx_buf_done_isr._entry_ptr.74, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 550, i32 4}
!150 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @brcmuart_tx_isr._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @brcmuart_tx_isr._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 929, i32 22}
!155 = !{ptr @debugfs_stats_fops, !156, !"debugfs_stats_fops", i1 false, i1 false}
!156 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 923, i32 1}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 903, i32 16}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 905, i32 16}
!161 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 907, i32 16}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 909, i32 16}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 911, i32 16}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 913, i32 16}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 916, i32 17}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 918, i32 17}
!173 = !{ptr @brcmuart_dt_ids, !174, !"brcmuart_dt_ids", i1 false, i1 false}
!174 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 860, i32 34}
!175 = !{ptr @brcmstb_rate_table_7278, !176, !"brcmstb_rate_table_7278", i1 false, i1 false}
!176 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 200, i32 18}
!177 = !{ptr @brcmuart_dev_pm_ops, !178, !"brcmuart_dev_pm_ops", i1 false, i1 false}
!178 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1187, i32 32}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1165, i32 3}
!181 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @brcmuart_resume._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @brcmuart_resume._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1173, i32 3}
!186 = !{ptr @brcmuart_resume._entry.88, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @brcmuart_resume._entry_ptr.90, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/tty/serial/8250/8250_bcm7271.c", i32 1176, i32 4}
!190 = !{ptr @brcmuart_resume._entry.91, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @brcmuart_resume._entry_ptr.93, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{i64 5761651}
!202 = !{i64 2154695873}
!203 = !{i64 2148985253, i64 2148985258, i64 2148985271, i64 2148985315, i64 2148985349, i64 2148985370}
!204 = !{i8 0, i8 2}
!205 = !{i64 2154697523}
!206 = !{i64 2154697725}
!207 = !{i64 5761233}
!208 = !{i64 2154696724}
!209 = !{i64 2154696926}
!210 = !{i64 2154696101}
!211 = !{!"branch_weights", i32 2000, i32 1}
!212 = !{i64 2148218300, i64 2148218580, i64 2148218914, i64 2148219248}
