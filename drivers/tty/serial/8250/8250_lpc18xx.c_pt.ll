; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_lpc18xx.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_lpc18xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.lpc18xx_uart_data = type { %struct.uart_8250_dma, ptr, ptr, i32 }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }

@__initcall__kmod_8250_lpc18xx__234_220_lpc18xx_serial_driver_init6 = internal global ptr @lpc18xx_serial_driver_init, section ".initcall6.init", align 4
@lpc18xx_serial_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpc18xx_serial_probe, ptr @lpc18xx_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpc18xx_serial_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lpc18xx_serial_driver_exit = internal global ptr @lpc18xx_serial_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [58 x i8] c"8250_lpc18xx.author=Joachim Eastwood <manabian@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [69 x i8] c"8250_lpc18xx.description=Serial port driver NXP LPC18xx/43xx devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [55 x i8] c"8250_lpc18xx.file=drivers/tty/serial/8250/8250_lpc18xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [28 x i8] c"8250_lpc18xx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpc18xx-uart\00", [19 x i8] zeroinitializer }, align 32
@lpc18xx_serial_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc1850-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lpc18xx_serial_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 114, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"memory resource not found\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lpc18xx_serial_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/tty/serial/8250/8250_lpc18xx.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpc18xx_serial_probe._entry_ptr = internal global ptr @lpc18xx_serial_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uartclk\00", [24 x i8] zeroinitializer }, align 32
@lpc18xx_serial_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uart clock not found\0A\00", [42 x i8] zeroinitializer }, align 32
@lpc18xx_serial_probe._entry_ptr.9 = internal global ptr @lpc18xx_serial_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@lpc18xx_serial_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg clock not found\0A\00", [43 x i8] zeroinitializer }, align 32
@lpc18xx_serial_probe._entry_ptr.13 = internal global ptr @lpc18xx_serial_probe._entry.11, section ".printk_index", align 4
@lpc18xx_serial_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to enable reg clock\0A\00", [36 x i8] zeroinitializer }, align 32
@lpc18xx_serial_probe._entry_ptr.16 = internal global ptr @lpc18xx_serial_probe._entry.14, section ".printk_index", align 4
@lpc18xx_serial_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to enable uart clock\0A\00", [35 x i8] zeroinitializer }, align 32
@lpc18xx_serial_probe._entry_ptr.19 = internal global ptr @lpc18xx_serial_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@lpc18xx_serial_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&uart.port.lock\00", [16 x i8] zeroinitializer }, align 32
@lpc18xx_serial_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 179, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to register 8250 port\0A\00", [34 x i8] zeroinitializer }, align 32
@lpc18xx_serial_probe._entry_ptr.24 = internal global ptr @lpc18xx_serial_probe._entry.22, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"lpc18xx_serial_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 212, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 216, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"lpc18xx_serial_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 206, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 114, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 129, i32 44 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 131, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 135, i32 43 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 137, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 143, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 149, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 153, i32 43 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 160, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [42 x i8] c"../drivers/tty/serial/8250/8250_lpc18xx.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 179, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_lpc18xx_serial_driver_exit, ptr @__initcall__kmod_8250_lpc18xx__234_220_lpc18xx_serial_driver_init6, ptr @lpc18xx_serial_driver_exit, ptr @lpc18xx_serial_probe._entry, ptr @lpc18xx_serial_probe._entry.11, ptr @lpc18xx_serial_probe._entry.14, ptr @lpc18xx_serial_probe._entry.17, ptr @lpc18xx_serial_probe._entry.22, ptr @lpc18xx_serial_probe._entry.7, ptr @lpc18xx_serial_probe._entry_ptr, ptr @lpc18xx_serial_probe._entry_ptr.13, ptr @lpc18xx_serial_probe._entry_ptr.16, ptr @lpc18xx_serial_probe._entry_ptr.19, ptr @lpc18xx_serial_probe._entry_ptr.24, ptr @lpc18xx_serial_probe._entry_ptr.9, ptr @lpc18xx_serial_driver, ptr @.str, ptr @lpc18xx_serial_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @lpc18xx_serial_probe.__key, ptr @.str.21, ptr @.str.23], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_serial_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_serial_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_serial_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_serial_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_serial_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_serial_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_serial_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_serial_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_serial_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_serial_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpc18xx_serial_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpc18xx_serial_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpc18xx_serial_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_serial_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %uart = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart) #6
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = call ptr @memset(ptr %uart, i32 0, i32 584)
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %1 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  %call6 = tail call ptr @devm_ioremap(ptr noundef %dev4, i32 noundef %2, i32 noundef %add.i) #6
  %membase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %membase, align 4
  %tobool9.not = icmp eq ptr %call6, null
  br i1 %tobool9.not, label %if.end3.cleanup_crit_edge, label %if.end11

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev4, i32 noundef 176, i32 noundef 3520) #6
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev4, ptr noundef nonnull @.str.6) #6
  %clk_uart = getelementptr inbounds %struct.lpc18xx_uart_data, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %clk_uart to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call18, ptr %clk_uart, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end24, label %if.end28

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.8) #9
  %7 = ptrtoint ptr %clk_uart to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_uart, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  %call30 = tail call ptr @devm_clk_get(ptr noundef %dev4, ptr noundef nonnull @.str.10) #6
  %clk_reg = getelementptr inbounds %struct.lpc18xx_uart_data, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %clk_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call30, ptr %clk_reg, align 4
  %cmp.i152 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %do.end36, label %if.end40

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.12) #9
  %11 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_reg, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %call.i153 = tail call i32 @clk_prepare(ptr noundef %call30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool.not.i = icmp eq i32 %call.i153, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end40.do.end47_crit_edge

if.end40.do.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47

if.end.i:                                         ; preds = %if.end40
  %call1.i = tail call i32 @clk_enable(ptr noundef %call30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end49, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call30) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then3.i, %if.end40.do.end47_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i153, %if.end40.do.end47_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end49:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %clk_uart to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_uart, align 4
  %call.i154 = tail call i32 @clk_prepare(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool.not.i155 = icmp eq i32 %call.i154, 0
  br i1 %tobool.not.i155, label %if.end.i158, label %if.end49.do.end56_crit_edge

if.end49.do.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end56

if.end.i158:                                      ; preds = %if.end49
  %call1.i156 = tail call i32 @clk_enable(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i156)
  %tobool2.not.i157 = icmp eq i32 %call1.i156, 0
  br i1 %tobool2.not.i157, label %if.end58, label %if.then3.i159

if.then3.i159:                                    ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %do.end56

do.end56:                                         ; preds = %if.then3.i159, %if.end49.do.end56_crit_edge
  %retval.0.i160.ph = phi i32 [ %call1.i156, %if.then3.i159 ], [ %call.i154, %if.end49.do.end56_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.18) #9
  br label %dis_clk_reg

if.end58:                                         ; preds = %if.end.i158
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call60 = tail call i32 @of_alias_get_id(ptr noundef %17, ptr noundef nonnull @.str.20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call60)
  %cmp61 = icmp sgt i32 %call60, -1
  br i1 %cmp61, label %if.then62, label %if.end58.if.end64_crit_edge

if.end58.if.end64_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %line = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 41
  %18 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call60, ptr %line, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end58.if.end64_crit_edge
  %rx_param = getelementptr inbounds %struct.uart_8250_dma, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %rx_param to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %rx_param, align 4
  %tx_param = getelementptr inbounds %struct.uart_8250_dma, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %tx_param to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %tx_param, align 4
  call void @__raw_spin_lock_init(ptr noundef nonnull %uart, ptr noundef nonnull @.str.21, ptr noundef nonnull @lpc18xx_serial_probe.__key, i16 noundef signext 3) #6
  %dev73 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 45
  %21 = ptrtoint ptr %dev73 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev4, ptr %dev73, align 4
  %irq75 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 20
  %22 = ptrtoint ptr %irq75 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call, ptr %irq75, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 26
  %23 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %iotype, align 2
  %24 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call1, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 43
  %26 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mapbase, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 25
  %27 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %regshift, align 1
  %type = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 38
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %type, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 33
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 671088704, ptr %flags, align 4
  %30 = ptrtoint ptr %clk_uart to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_uart, align 4
  %call83 = call i32 @clk_get_rate(ptr noundef %31) #6
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 22
  %32 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call83, ptr %uartclk, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 59
  %33 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %private_data, align 4
  %rs485_config = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 18
  %34 = ptrtoint ptr %rs485_config to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @lpc18xx_rs485_config, ptr %rs485_config, align 4
  %serial_out = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 4
  %35 = ptrtoint ptr %serial_out to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @lpc18xx_uart_serial_out, ptr %serial_out, align 4
  %dma89 = getelementptr inbounds %struct.uart_8250_port, ptr %uart, i32 0, i32 19
  %36 = ptrtoint ptr %dma89 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %dma89, align 4
  %src_maxburst = getelementptr inbounds %struct.uart_8250_dma, ptr %call.i, i32 0, i32 5, i32 5
  %37 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.uart_8250_dma, ptr %call.i, i32 0, i32 6, i32 6
  %38 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %dst_maxburst, align 4
  %call92 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %do.end97, label %if.end99

do.end97:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.23) #9
  %39 = ptrtoint ptr %clk_uart to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk_uart, align 4
  call void @clk_disable(ptr noundef %40) #6
  call void @clk_unprepare(ptr noundef %40) #6
  br label %dis_clk_reg

if.end99:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %line100 = getelementptr inbounds %struct.lpc18xx_uart_data, ptr %call.i, i32 0, i32 3
  %41 = ptrtoint ptr %line100 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call92, ptr %line100, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

dis_clk_reg:                                      ; preds = %do.end97, %do.end56
  %ret.0 = phi i32 [ %retval.0.i160.ph, %do.end56 ], [ %call92, %do.end97 ]
  %43 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk_reg, align 4
  call void @clk_disable(ptr noundef %44) #6
  call void @clk_unprepare(ptr noundef %44) #6
  br label %cleanup

cleanup:                                          ; preds = %dis_clk_reg, %if.end99, %do.end47, %do.end36, %do.end24, %if.end11.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %do.end24 ], [ %13, %do.end36 ], [ %retval.0.i.ph, %do.end47 ], [ %ret.0, %dis_clk_reg ], [ 0, %if.end99 ], [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_serial_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %line = getelementptr inbounds %struct.lpc18xx_uart_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void @serial8250_unregister_port(i32 noundef %3) #6
  %clk_uart = getelementptr inbounds %struct.lpc18xx_uart_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk_uart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_uart, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %clk_reg = getelementptr inbounds %struct.lpc18xx_uart_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_reg, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
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
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_rs485_config(ptr noundef %port, ptr nocapture noundef %rs485) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rs485, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %padding = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 3
  %2 = call ptr @memset(ptr %padding, i32 0, i32 20)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = call ptr @memset(ptr %rs485, i32 0, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rs485, align 4
  %and2 = and i32 %5, 7
  %and4 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end18_crit_edge, label %if.then6

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and8 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %and13 = and i32 %5, 3
  %or16 = or i32 %and2, 4
  %and13.sink = select i1 %tobool9.not, i32 %or16, i32 %and13
  %rs485_ctrl_reg.0.ph = select i1 %tobool9.not, i32 17, i32 49
  br label %if.end18

if.end18:                                         ; preds = %if.then6, %if.end.if.end18_crit_edge
  %storemerge = phi i32 [ %and13.sink, %if.then6 ], [ %and2, %if.end.if.end18_crit_edge ]
  %rs485_ctrl_reg.0 = phi i32 [ %rs485_ctrl_reg.0.ph, %if.then6 ], [ 0, %if.end.if.end18_crit_edge ]
  %6 = ptrtoint ptr %rs485 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %rs485, align 4
  %delay_rts_after_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 2
  %7 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay_rts_after_send, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool19.not = icmp eq i32 %8, 0
  br i1 %tobool19.not, label %if.end18.if.end29_crit_edge, label %if.then20

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %9 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uartclk, align 4
  %dl_read = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 21
  %11 = ptrtoint ptr %dl_read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dl_read, align 4
  %call21 = tail call i32 %12(ptr noundef %port) #6
  %div = udiv i32 %10, %call21
  %13 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %delay_rts_after_send, align 4
  %mul = mul i32 %14, %div
  %sub = add i32 %mul, 999
  %div23 = udiv i32 %sub, 1000
  %15 = tail call i32 @llvm.umin.i32(i32 %div23, i32 255)
  %mul26 = mul nuw nsw i32 %15, 1000
  %div27 = udiv i32 %mul26, %div
  %16 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div27, ptr %delay_rts_after_send, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then20, %if.end18.if.end29_crit_edge
  %rs485_dly_reg.0 = phi i32 [ %15, %if.then20 ], [ 0, %if.end18.if.end29_crit_edge ]
  %delay_rts_before_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 1
  %17 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %delay_rts_before_send, align 4
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %18 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serial_out.i, align 4
  tail call void %19(ptr noundef %port, i32 noundef 19, i32 noundef %rs485_ctrl_reg.0) #6
  %20 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serial_out.i, align 4
  tail call void %21(ptr noundef %port, i32 noundef 21, i32 noundef %rs485_dly_reg.0) #6
  %rs48530 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %22 = call ptr @memcpy(ptr %rs48530, ptr %rs485, i32 32)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc18xx_uart_serial_out(ptr nocapture noundef readonly %p, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %offset)
  %cmp = icmp ne i32 %offset, 2
  %and = and i32 %value, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp, %tobool.not
  %or = or i32 %value, 8
  %value.addr.0 = select i1 %or.cond, i32 %value, i32 %or
  %regshift = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 25
  %0 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regshift, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %offset, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.addr.0)
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !49, !50, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_8250_lpc18xx__234_220_lpc18xx_serial_driver_init6, !1, !"__initcall__kmod_8250_lpc18xx__234_220_lpc18xx_serial_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 220, i32 1}
!2 = !{ptr @__exitcall_lpc18xx_serial_driver_exit, !1, !"__exitcall_lpc18xx_serial_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 222, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 223, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 224, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 216, i32 11}
!12 = !{ptr @lpc18xx_serial_driver, !13, !"lpc18xx_serial_driver", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 212, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 114, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lpc18xx_serial_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lpc18xx_serial_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 129, i32 44}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 131, i32 3}
!26 = !{ptr @lpc18xx_serial_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lpc18xx_serial_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 135, i32 43}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 137, i32 3}
!32 = !{ptr @lpc18xx_serial_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @lpc18xx_serial_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 143, i32 3}
!36 = !{ptr @lpc18xx_serial_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @lpc18xx_serial_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 149, i32 3}
!40 = !{ptr @lpc18xx_serial_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @lpc18xx_serial_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 153, i32 43}
!44 = !{ptr @lpc18xx_serial_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 160, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 179, i32 3}
!49 = !{ptr @lpc18xx_serial_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @lpc18xx_serial_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @lpc18xx_serial_match, !52, !"lpc18xx_serial_match", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/8250/8250_lpc18xx.c", i32 206, i32 34}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2154614186}
!63 = !{i64 2032785}
