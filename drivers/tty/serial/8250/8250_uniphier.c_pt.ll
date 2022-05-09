; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_uniphier.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_uniphier.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.uniphier8250_priv = type { i32, ptr, %struct.spinlock }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }

@__UNIQUE_ID___earlycon_uniphier234 = internal constant %struct.earlycon_id { [15 x i8] c"uniphier\00\00\00\00\00\00\00", i8 0, [128 x i8] c"socionext,uniphier-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_early_console_setup }, section "__earlycon_table", align 4
@__initcall__kmod_8250_uniphier__235_303_uniphier_uart_platform_driver_init6 = internal global ptr @uniphier_uart_platform_driver_init, section ".initcall6.init", align 4
@uniphier_uart_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_uart_probe, ptr @uniphier_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_uart_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_uart_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_uart_platform_driver_exit = internal global ptr @uniphier_uart_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author236 = internal constant [69 x i8] c"8250_uniphier.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [47 x i8] c"8250_uniphier.description=UniPhier UART driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [57 x i8] c"8250_uniphier.file=drivers/tty/serial/8250/8250_uniphier\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [26 x i8] c"8250_uniphier.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uniphier-uart\00", [18 x i8] zeroinitializer }, align 32
@uniphier_uart_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@uniphier_uart_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @uniphier_uart_suspend, ptr @uniphier_uart_resume, ptr @uniphier_uart_suspend, ptr @uniphier_uart_resume, ptr @uniphier_uart_suspend, ptr @uniphier_uart_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@uniphier_uart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get memory resource\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uniphier_uart_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/tty/serial/8250/8250_uniphier.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_uart_probe._entry_ptr = internal global ptr @uniphier_uart_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@uniphier_uart_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get alias id\0A\00", [40 x i8] zeroinitializer }, align 32
@uniphier_uart_probe._entry_ptr.9 = internal global ptr @uniphier_uart_probe._entry.7, section ".printk_index", align 4
@uniphier_uart_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@uniphier_uart_probe._entry_ptr.12 = internal global ptr @uniphier_uart_probe._entry.10, section ".printk_index", align 4
@uniphier_uart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&priv->atomic_write_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"auto-flow-control\00", [46 x i8] zeroinitializer }, align 32
@uniphier_uart_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register 8250 port\0A\00", [34 x i8] zeroinitializer }, align 32
@uniphier_uart_probe._entry_ptr.17 = internal global ptr @uniphier_uart_probe._entry.15, section ".printk_index", align 4
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 7]
@___asan_gen_.19 = private unnamed_addr constant [30 x i8] c"uniphier_uart_platform_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 294, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 298, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"uniphier_uart_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 288, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"uniphier_uart_pm_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 284, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 170, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 188, i32 38 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 190, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 197, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 207, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 223, i32 42 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [43 x i8] c"../drivers/tty/serial/8250/8250_uniphier.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 233, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID___earlycon_uniphier234, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_uniphier_uart_platform_driver_exit, ptr @__initcall__kmod_8250_uniphier__235_303_uniphier_uart_platform_driver_init6, ptr @uniphier_uart_platform_driver_exit, ptr @uniphier_uart_probe._entry, ptr @uniphier_uart_probe._entry.10, ptr @uniphier_uart_probe._entry.15, ptr @uniphier_uart_probe._entry.7, ptr @uniphier_uart_probe._entry_ptr, ptr @uniphier_uart_probe._entry_ptr.12, ptr @uniphier_uart_probe._entry_ptr.17, ptr @uniphier_uart_probe._entry_ptr.9, ptr @uniphier_uart_platform_driver, ptr @.str, ptr @uniphier_uart_match, ptr @uniphier_uart_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @uniphier_uart_probe.__key, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_uart_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_uart_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_uart_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_uart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_uart_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_uart_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_uart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_uart_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_early_console_setup(ptr noundef %device, ptr noundef %options) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %iotype = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 26
  %2 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %iotype, align 2
  %regshift = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 25
  %3 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %regshift, align 1
  %baud = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 3
  %4 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %baud, align 4
  %call = tail call i32 @early_serial8250_setup(ptr noundef %device, ptr noundef %options) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_uart_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_uart_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_uart_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_uart_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @early_serial8250_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_uart_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %up = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %up) #6
  %0 = call ptr @memset(ptr %up, i32 255, i32 584)
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  %call3 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %2, i32 noundef %add.i) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 52, i32 noundef 3520) #6
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %5 = call ptr @memset(ptr %up, i32 0, i32 584)
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call14 = tail call i32 @of_alias_get_id(ptr noundef %7, ptr noundef nonnull @.str.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.end20

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %line = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 41
  %8 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call14, ptr %line, align 4
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.uniphier8250_priv, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %call.i117 = tail call i32 @clk_prepare(ptr noundef %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool.not.i = icmp eq i32 %call.i117, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end30
  %call1.i = tail call i32 @clk_enable(ptr noundef %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end35, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call21) #6
  br label %cleanup

if.end35:                                         ; preds = %if.end.i
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call37 = tail call i32 @clk_get_rate(ptr noundef %14) #6
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 22
  %15 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call37, ptr %uartclk, align 4
  %atomic_write_lock = getelementptr inbounds %struct.uniphier8250_priv, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %atomic_write_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @uniphier_uart_probe.__key, i16 noundef signext 3) #6
  %dev44 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 45
  %16 = ptrtoint ptr %dev44 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev1, ptr %dev44, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 59
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %private_data, align 4
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 43
  %20 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %mapbase, align 4
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i, align 4
  %23 = load i32, ptr %call, align 4
  %sub.i119 = add i32 %22, 1
  %add.i120 = sub i32 %sub.i119, %23
  %mapsize = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 44
  %24 = ptrtoint ptr %mapsize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i120, ptr %mapsize, align 4
  %membase51 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 2
  %25 = ptrtoint ptr %membase51 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call3, ptr %membase51, align 4
  %irq53 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 20
  %26 = ptrtoint ptr %irq53 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call7, ptr %irq53, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 38
  %27 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 26
  %28 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %iotype, align 2
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 23
  %29 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 64, ptr %fifosize, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 25
  %30 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %regshift, align 1
  %flags = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 33
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 671088640, ptr %flags, align 4
  %capabilities = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 3
  %32 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 256, ptr %capabilities, align 4
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %call.i121 = tail call ptr @of_find_property(ptr noundef %34, ptr noundef nonnull @.str.14, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i121, null
  br i1 %tobool.i.not, label %if.end35.if.end63_crit_edge, label %if.then61

if.end35.if.end63_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then61:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %capabilities, align 4
  %or = or i32 %36, 2048
  store i32 %or, ptr %capabilities, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end35.if.end63_crit_edge
  %serial_in = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 3
  %37 = ptrtoint ptr %serial_in to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @uniphier_serial_in, ptr %serial_in, align 4
  %serial_out = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 4
  %38 = ptrtoint ptr %serial_out to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @uniphier_serial_out, ptr %serial_out, align 4
  %dl_read = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 21
  %39 = ptrtoint ptr %dl_read to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @uniphier_serial_dl_read, ptr %dl_read, align 4
  %dl_write = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 22
  %40 = ptrtoint ptr %dl_write to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @uniphier_serial_dl_write, ptr %dl_write, align 4
  %call66 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %up) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.end71, label %if.end73

do.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #9
  %41 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %42) #6
  call void @clk_unprepare(ptr noundef %42) #6
  br label %cleanup

if.end73:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call66, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %do.end71, %if.then3.i, %if.end30.cleanup_crit_edge, %do.end27, %do.end19, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call14, %do.end19 ], [ %12, %do.end27 ], [ %call66, %do.end71 ], [ 0, %if.end73 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i117, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %up) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_uart_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void @serial8250_unregister_port(i32 noundef %3) #6
  %clk = getelementptr inbounds %struct.uniphier8250_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_serial_in(ptr nocapture noundef readonly %p, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %offset, label %sw.default [
    i32 7, label %entry.sw.epilog_crit_edge
    i32 3, label %sw.bb1
    i32 4, label %entry.sw.bb2_crit_edge
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb1, %entry.sw.bb2_crit_edge
  %valshift.0 = phi i32 [ 0, %entry.sw.bb2_crit_edge ], [ 8, %sw.bb1 ]
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl i32 %offset, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %entry.sw.epilog_crit_edge
  %valshift.1 = phi i32 [ 0, %sw.default ], [ %valshift.0, %sw.bb2 ], [ 8, %entry.sw.epilog_crit_edge ]
  %offset.addr.0 = phi i32 [ %shl, %sw.default ], [ 16, %sw.bb2 ], [ 12, %entry.sw.epilog_crit_edge ]
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %1 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %offset.addr.0
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !56
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %shr = lshr i32 %4, %valshift.1
  %and = and i32 %shr, 255
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_serial_out(ptr nocapture noundef readonly %p, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %offset, label %do.body [
    i32 7, label %sw.bb
    i32 2, label %entry.if.else_crit_edge
    i32 3, label %sw.bb2
    i32 4, label %entry.sw.bb3_crit_edge
  ]

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %value, -129
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb2, %entry.sw.bb3_crit_edge
  %valshift.1 = phi i32 [ 0, %entry.sw.bb3_crit_edge ], [ 8, %sw.bb2 ]
  %value.addr.0 = phi i32 [ %value, %entry.sw.bb3_crit_edge ], [ %and, %sw.bb2 ]
  br label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl i32 %offset, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %1 = tail call i32 @llvm.bswap.i32(i32 %value)
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #6, !srcloc !59
  br label %if.end

if.else:                                          ; preds = %sw.bb3, %sw.bb, %entry.if.else_crit_edge
  %valshift.2.ph = phi i32 [ 8, %sw.bb ], [ 0, %entry.if.else_crit_edge ], [ %valshift.1, %sw.bb3 ]
  %value.addr.1.ph = phi i32 [ %value, %sw.bb ], [ %value, %entry.if.else_crit_edge ], [ %value.addr.0, %sw.bb3 ]
  %offset.addr.0.ph = phi i32 [ 12, %sw.bb ], [ 12, %entry.if.else_crit_edge ], [ 16, %sw.bb3 ]
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %atomic_write_lock = getelementptr inbounds %struct.uniphier8250_priv, ptr %5, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %atomic_write_lock) #6
  %membase12 = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %6 = ptrtoint ptr %membase12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase12, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 %offset.addr.0.ph
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !56
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %shl17 = shl nuw nsw i32 255, %valshift.2.ph
  %neg = xor i32 %shl17, -1
  %and18 = and i32 %9, %neg
  %shl19 = shl i32 %value.addr.1.ph, %valshift.2.ph
  %or = or i32 %and18, %shl19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %membase12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase12, align 4
  %add.ptr24 = getelementptr i8, ptr %12, i32 %offset.addr.0.ph
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %10) #6, !srcloc !59
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %atomic_write_lock, i32 noundef %call7) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_serial_dl_read(ptr nocapture noundef readonly %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !56
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_serial_dl_write(ptr nocapture noundef readonly %up, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %membase = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 2
  %1 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !59
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
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_uart_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call1 = tail call ptr @serial8250_get_port(i32 noundef %3) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  tail call void @serial8250_suspend_port(i32 noundef %5) #6
  %cons = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 32
  %6 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %land.lhs.true

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %index, align 2
  %conv = sext i16 %9 to i32
  %line6 = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 41
  %10 = ptrtoint ptr %line6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp = icmp eq i32 %11, %conv
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %12 = load i8, ptr @console_suspend_enabled, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %clk = getelementptr inbounds %struct.uniphier8250_priv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_uart_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call1 = tail call ptr @serial8250_get_port(i32 noundef %3) #6
  %cons = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 32
  %4 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %land.lhs.true

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index, align 2
  %conv = sext i16 %7 to i32
  %line5 = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 41
  %8 = ptrtoint ptr %line5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %line5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp = icmp eq i32 %9, %conv
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %10 = load i8, ptr @console_suspend_enabled, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end12_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %clk = getelementptr inbounds %struct.uniphier8250_priv, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end12_crit_edge, label %if.then3.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %12) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end.i.if.end12_crit_edge, %lor.lhs.false.if.end12_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  tail call void @serial8250_resume_port(i32 noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !42, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__UNIQUE_ID___earlycon_uniphier234, !1, !"__UNIQUE_ID___earlycon_uniphier234", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 58, i32 1}
!2 = !{ptr @__initcall__kmod_8250_uniphier__235_303_uniphier_uart_platform_driver_init6, !3, !"__initcall__kmod_8250_uniphier__235_303_uniphier_uart_platform_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 303, i32 1}
!4 = !{ptr @__exitcall_uniphier_uart_platform_driver_exit, !3, !"__exitcall_uniphier_uart_platform_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author236, !6, !"__UNIQUE_ID_author236", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 305, i32 1}
!7 = !{ptr @__UNIQUE_ID_description237, !8, !"__UNIQUE_ID_description237", i1 false, i1 false}
!8 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 306, i32 1}
!9 = !{ptr @__UNIQUE_ID_file238, !10, !"__UNIQUE_ID_file238", i1 false, i1 false}
!10 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 307, i32 1}
!11 = !{ptr @__UNIQUE_ID_license239, !10, !"__UNIQUE_ID_license239", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 298, i32 11}
!14 = !{ptr @uniphier_uart_platform_driver, !15, !"uniphier_uart_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 294, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 170, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @uniphier_uart_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @uniphier_uart_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 188, i32 38}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 190, i32 3}
!28 = !{ptr @uniphier_uart_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @uniphier_uart_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 197, i32 3}
!32 = !{ptr @uniphier_uart_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @uniphier_uart_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @uniphier_uart_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 207, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 223, i32 42}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 233, i32 3}
!41 = !{ptr @uniphier_uart_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @uniphier_uart_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @uniphier_uart_match, !44, !"uniphier_uart_match", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 288, i32 34}
!45 = !{ptr @uniphier_uart_pm_ops, !46, !"uniphier_uart_pm_ops", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/8250/8250_uniphier.c", i32 284, i32 32}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2042478}
!57 = !{i64 2154617120}
!58 = !{i64 2154617487}
!59 = !{i64 2042060}
!60 = !{i64 2154618544}
!61 = !{i64 2154618760}
!62 = !{i64 2154619513}
!63 = !{i64 2154619777}
!64 = !{i8 0, i8 2}
