; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_men_mcb.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_men_mcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mcb_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mcb_device_id = type { i16, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mcb_device = type { %struct.device, ptr, i8, ptr, i16, i32, i32, i32, i32, i32, %struct.resource, %struct.resource, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.serial_8250_men_mcb_data = type { %struct.uart_8250_port, i32 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.mcb_bus = type { %struct.device, ptr, i32, i8, i8, i8, [13 x i8], ptr }

@__initcall__kmod_8250_men_mcb__228_169_mcb_driver_init6 = internal global ptr @mcb_driver_init, section ".initcall6.init", align 4
@mcb_driver = internal global { %struct.mcb_driver, [36 x i8] } { %struct.mcb_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @serial_8250_men_mcb_ids, ptr @serial_8250_men_mcb_probe, ptr @serial_8250_men_mcb_remove, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mcb_driver_exit = internal global ptr @mcb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [55 x i8] c"8250_men_mcb.file=drivers/tty/serial/8250/8250_men_mcb\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [28 x i8] c"8250_men_mcb.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [46 x i8] c"8250_men_mcb.description=MEN 8250 UART driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [56 x i8] c"8250_men_mcb.author=Michael Moese <michael.moese@men.de\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [30 x i8] c"8250_men_mcb.alias=mcb:16z125\00", section ".modinfo", align 1
@__UNIQUE_ID_alias234 = internal constant [30 x i8] c"8250_men_mcb.alias=mcb:16z025\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [30 x i8] c"8250_men_mcb.alias=mcb:16z057\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns236 = internal constant [27 x i8] c"8250_men_mcb.import_ns=MCB\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"8250_men_mcb\00", [19 x i8] zeroinitializer }, align 32
@serial_8250_men_mcb_ids = internal constant { [4 x %struct.mcb_device_id], [32 x i8] } { [4 x %struct.mcb_device_id] [%struct.mcb_device_id { i16 25, i32 0 }, %struct.mcb_device_id { i16 57, i32 0 }, %struct.mcb_device_id { i16 125, i32 0 }, %struct.mcb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@serial_8250_men_mcb_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"serial_8250_men_mcb_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/tty/serial/8250/8250_men_mcb.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"found a 16z%03u with %u ports\0A\00", [33 x i8] zeroinitializer }, align 32
@serial_8250_men_mcb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 93, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unexpected number of ports: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@serial_8250_men_mcb_probe._entry_ptr = internal global ptr @serial_8250_men_mcb_probe._entry, section ".printk_index", align 4
@serial_8250_men_mcb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&data[i].uart.port.lock\00", [40 x i8] zeroinitializer }, align 32
@serial_8250_men_mcb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 125, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to register UART port\0A\00", [34 x i8] zeroinitializer }, align 32
@serial_8250_men_mcb_probe._entry_ptr.10 = internal global ptr @serial_8250_men_mcb_probe._entry.8, section ".printk_index", align 4
@serial_8250_men_mcb_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 128, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"found MCB UART: ttyS%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@serial_8250_men_mcb_probe._entry_ptr.14 = internal global ptr @serial_8250_men_mcb_probe._entry.11, section ".printk_index", align 4
@get_num_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 65, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no supported device!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_num_ports\00", [18 x i8] zeroinitializer }, align 32
@get_num_ports._entry_ptr = internal global ptr @get_num_ports._entry, section ".printk_index", align 4
@men_lookup_uartclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 36, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s on board %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"men_lookup_uartclk\00", [45 x i8] zeroinitializer }, align 32
@men_lookup_uartclk._entry_ptr = internal global ptr @men_lookup_uartclk._entry, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"F075\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"F216\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"G215\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"F210\00", [27 x i8] zeroinitializer }, align 32
@men_lookup_uartclk._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.2, i32 47, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"board not detected, using default uartclk\0A\00", [53 x i8] zeroinitializer }, align 32
@men_lookup_uartclk._entry_ptr.25 = internal global ptr @men_lookup_uartclk._entry.23, section ".printk_index", align 4
@serial_8250_men_mcb_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error retrieving number of ports!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"serial_8250_men_mcb_remove\00", [37 x i8] zeroinitializer }, align 32
@serial_8250_men_mcb_remove._entry_ptr = internal global ptr @serial_8250_men_mcb_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 25, i64 57, i64 125]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 16, i64 25, i64 57, i64 125]
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"mcb_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 160, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 169, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"serial_8250_men_mcb_ids\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 152, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 88, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 92, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 107, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 125, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 128, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 65, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 34, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 37, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 39, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 41, i32 36 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 43, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 46, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private constant [42 x i8] c"../drivers/tty/serial/8250/8250_men_mcb.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 144, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_import_ns236, ptr @__UNIQUE_ID_license230, ptr @__exitcall_mcb_driver_exit, ptr @__initcall__kmod_8250_men_mcb__228_169_mcb_driver_init6, ptr @get_num_ports._entry, ptr @get_num_ports._entry_ptr, ptr @mcb_driver_exit, ptr @men_lookup_uartclk._entry, ptr @men_lookup_uartclk._entry.23, ptr @men_lookup_uartclk._entry_ptr, ptr @men_lookup_uartclk._entry_ptr.25, ptr @serial_8250_men_mcb_probe._entry, ptr @serial_8250_men_mcb_probe._entry.11, ptr @serial_8250_men_mcb_probe._entry.8, ptr @serial_8250_men_mcb_probe._entry_ptr, ptr @serial_8250_men_mcb_probe._entry_ptr.10, ptr @serial_8250_men_mcb_probe._entry_ptr.14, ptr @serial_8250_men_mcb_remove._entry, ptr @serial_8250_men_mcb_remove._entry_ptr, ptr @mcb_driver, ptr @.str, ptr @serial_8250_men_mcb_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @serial_8250_men_mcb_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcb_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_8250_men_mcb_ids to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_8250_men_mcb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_8250_men_mcb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_8250_men_mcb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_8250_men_mcb_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_num_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_lookup_uartclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_lookup_uartclk._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_8250_men_mcb_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__mcb_register_driver(ptr noundef nonnull @mcb_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mcb_unregister_driver(ptr noundef nonnull @mcb_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcb_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mcb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_8250_men_mcb_probe(ptr noundef %mdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mcb_get_resource(ptr noundef %mdev, i32 noundef 512) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_ioremap_resource(ptr noundef %mdev, ptr noundef nonnull %call) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %id.i = getelementptr inbounds %struct.mcb_device, ptr %mdev, i32 0, i32 4
  %1 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %id.i, align 4
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %do.end.i [
    i16 125, label %if.end5.get_num_ports.exit_crit_edge
    i16 25, label %sw.bb1.i
    i16 57, label %sw.bb4.i
  ]

if.end5.get_num_ports.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_num_ports.exit

sw.bb1.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %call1) #5, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %5 = lshr i8 %4, 4
  %6 = zext i8 %5 to i32
  br label %get_num_ports.exit

sw.bb4.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_num_ports.exit

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdev, ptr noundef nonnull @.str.15) #8
  br label %get_num_ports.exit

get_num_ports.exit:                               ; preds = %do.end.i, %sw.bb4.i, %sw.bb1.i, %if.end5.get_num_ports.exit_crit_edge
  %retval.0.i163 = phi i32 [ -19, %do.end.i ], [ 4, %sw.bb4.i ], [ %6, %sw.bb1.i ], [ 1, %if.end5.get_num_ports.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serial_8250_men_mcb_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serial_8250_men_mcb_probe, %if.then10)) #5
          to label %do.end [label %if.then10], !srcloc !84

if.then10:                                        ; preds = %get_num_ports.exit
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id.i, align 4
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @serial_8250_men_mcb_probe.__UNIQUE_ID_ddebug227, ptr noundef %mdev, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %retval.0.i163) #5
  br label %do.end

do.end:                                           ; preds = %if.then10, %get_num_ports.exit
  %9 = add nsw i32 %retval.0.i163, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %9)
  %10 = icmp ult i32 %9, -4
  br i1 %10, label %do.end21, label %devm_kcalloc.exit

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdev, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i163) #8
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %do.end
  %11 = mul nuw nsw i32 %retval.0.i163, 588
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %mdev, i32 noundef %11, i32 noundef 3520) #5
  %tobool26.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool26.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.body.lr.ph

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %devm_kcalloc.exit
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i, ptr %driver_data.i.i, align 4
  %dma_dev = getelementptr inbounds %struct.mcb_device, ptr %mdev, i32 0, i32 12
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 3
  %bus.i = getelementptr inbounds %struct.mcb_device, ptr %mdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end94.for.body_crit_edge, %for.body.lr.ph
  %i.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end94.for.body_crit_edge ]
  %13 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_dev, align 4
  %arrayidx = getelementptr %struct.serial_8250_men_mcb_data, ptr %call5.i.i, i32 %i.0171
  %dev31 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 45
  %15 = ptrtoint ptr %dev31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dev31, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.7, ptr noundef nonnull @serial_8250_men_mcb_probe.__key, i16 noundef signext 3) #5
  %type = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 38
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %type, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 33
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 150995008, ptr %flags, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 26
  %18 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %iotype, align 2
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i164, label %for.body.dev_name.exit.i_crit_edge

for.body.dev_name.exit.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i164:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i164, %for.body.dev_name.exit.i_crit_edge
  %retval.0.i.i165 = phi ptr [ %22, %if.end.i.i164 ], [ %20, %for.body.dev_name.exit.i_crit_edge ]
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 8
  %name.i = getelementptr inbounds %struct.mcb_bus, ptr %24, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %mdev, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i165, ptr noundef %name.i) #8
  %25 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i, align 8
  %name3.i = getelementptr inbounds %struct.mcb_bus, ptr %26, i32 0, i32 6
  %call5.i = tail call i32 @strncmp(ptr noundef %name3.i, ptr noundef nonnull dereferenceable(5) @.str.19, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i166 = icmp eq i32 %call5.i, 0
  br i1 %cmp.i166, label %dev_name.exit.i.men_lookup_uartclk.exit_crit_edge, label %if.else.i

dev_name.exit.i.men_lookup_uartclk.exit_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %men_lookup_uartclk.exit

if.else.i:                                        ; preds = %dev_name.exit.i
  %call9.i = tail call i32 @strncmp(ptr noundef %name3.i, ptr noundef nonnull dereferenceable(5) @.str.20, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.i, label %if.else.i.men_lookup_uartclk.exit_crit_edge, label %if.else12.i

if.else.i.men_lookup_uartclk.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %men_lookup_uartclk.exit

if.else12.i:                                      ; preds = %if.else.i
  %call16.i = tail call i32 @strncmp(ptr noundef %name3.i, ptr noundef nonnull dereferenceable(5) @.str.21, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp eq i32 %call16.i, 0
  br i1 %cmp17.i, label %if.else12.i.men_lookup_uartclk.exit_crit_edge, label %if.else19.i

if.else12.i.men_lookup_uartclk.exit_crit_edge:    ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %men_lookup_uartclk.exit

if.else19.i:                                      ; preds = %if.else12.i
  %call23.i = tail call i32 @strncmp(ptr noundef %name3.i, ptr noundef nonnull dereferenceable(5) @.str.22, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp eq i32 %call23.i, 0
  br i1 %cmp24.i, label %if.else19.i.men_lookup_uartclk.exit_crit_edge, label %do.end29.i

if.else19.i.men_lookup_uartclk.exit_crit_edge:    ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %men_lookup_uartclk.exit

do.end29.i:                                       ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %mdev, ptr noundef nonnull @.str.24) #8
  br label %men_lookup_uartclk.exit

men_lookup_uartclk.exit:                          ; preds = %do.end29.i, %if.else19.i.men_lookup_uartclk.exit_crit_edge, %if.else12.i.men_lookup_uartclk.exit_crit_edge, %if.else.i.men_lookup_uartclk.exit_crit_edge, %dev_name.exit.i.men_lookup_uartclk.exit_crit_edge
  %clkval.0.i = phi i32 [ 16666656, %do.end29.i ], [ 16666656, %dev_name.exit.i.men_lookup_uartclk.exit_crit_edge ], [ 29491200, %if.else.i.men_lookup_uartclk.exit_crit_edge ], [ 29491200, %if.else12.i.men_lookup_uartclk.exit_crit_edge ], [ 1843200, %if.else19.i.men_lookup_uartclk.exit_crit_edge ]
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 22
  %27 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %clkval.0.i, ptr %uartclk, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 25
  %28 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %regshift, align 1
  %call55 = tail call i32 @mcb_get_irq(ptr noundef %mdev) #5
  %irq = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 20
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call55, ptr %irq, align 4
  %membase62 = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %30 = ptrtoint ptr %membase62 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call1, ptr %membase62, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 23
  %31 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 60, ptr %fifosize, align 4
  %32 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call, align 4
  %mul = shl i32 %i.0171, 4
  %add = add i32 %33, %mul
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 43
  %34 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %mapbase, align 4
  %iobase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 1
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add, ptr %iobase, align 4
  %call78 = tail call i32 @serial8250_register_8250_port(ptr noundef %arrayidx) #5
  %line = getelementptr %struct.serial_8250_men_mcb_data, ptr %call5.i.i, i32 %i.0171, i32 1
  %36 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call78, ptr %line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp82 = icmp slt i32 %call78, 0
  br i1 %cmp82, label %do.end87, label %do.end94

do.end87:                                         ; preds = %men_lookup_uartclk.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdev, ptr noundef nonnull @.str.9) #8
  %37 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %line, align 4
  br label %cleanup

do.end94:                                         ; preds = %men_lookup_uartclk.exit
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %mdev, ptr noundef nonnull @.str.12, i32 noundef %call78) #8
  %inc = add nuw nsw i32 %i.0171, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i163
  br i1 %exitcond.not, label %do.end94.cleanup_crit_edge, label %do.end94.for.body_crit_edge

do.end94.for.body_crit_edge:                      ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end94.cleanup_crit_edge:                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %do.end94.cleanup_crit_edge, %do.end87, %devm_kcalloc.exit.cleanup_crit_edge, %do.end21, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then3 ], [ -19, %do.end21 ], [ %38, %do.end87 ], [ -6, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %do.end94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_8250_men_mcb_remove(ptr noundef %mdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %id.i = getelementptr inbounds %struct.mcb_device, ptr %mdev, i32 0, i32 4
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id.i, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %3, label %get_num_ports.exit.thread [
    i16 125, label %if.end.for.body.preheader_crit_edge
    i16 25, label %get_num_ports.exit
    i16 57, label %sw.bb4.i
  ]

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

get_num_ports.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdev, ptr noundef nonnull @.str.15) #8
  br label %do.end

get_num_ports.exit:                               ; preds = %if.end
  %membase = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #5, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %8 = lshr i8 %7, 4
  %9 = zext i8 %8 to i32
  %10 = add nsw i32 %9, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %10)
  %11 = icmp ult i32 %10, -4
  br i1 %11, label %get_num_ports.exit.do.end_crit_edge, label %get_num_ports.exit.for.body.preheader_crit_edge

get_num_ports.exit.for.body.preheader_crit_edge:  ; preds = %get_num_ports.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

get_num_ports.exit.do.end_crit_edge:              ; preds = %get_num_ports.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body.preheader:                               ; preds = %get_num_ports.exit.for.body.preheader_crit_edge, %sw.bb4.i, %if.end.for.body.preheader_crit_edge
  %retval.0.i25 = phi i32 [ %9, %get_num_ports.exit.for.body.preheader_crit_edge ], [ 1, %if.end.for.body.preheader_crit_edge ], [ 4, %sw.bb4.i ]
  br label %for.body

do.end:                                           ; preds = %get_num_ports.exit.do.end_crit_edge, %get_num_ports.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdev, ptr noundef nonnull @.str.26) #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %line = getelementptr %struct.serial_8250_men_mcb_data, ptr %1, i32 %i.022, i32 1
  %12 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line, align 4
  tail call void @serial8250_unregister_port(i32 noundef %13) #5
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i25
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mcb_get_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcb_get_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !67, !68, !70, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_8250_men_mcb__228_169_mcb_driver_init6, !1, !"__initcall__kmod_8250_men_mcb__228_169_mcb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 169, i32 1}
!2 = !{ptr @__exitcall_mcb_driver_exit, !1, !"__exitcall_mcb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file229, !4, !"__UNIQUE_ID_file229", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 171, i32 1}
!5 = !{ptr @__UNIQUE_ID_license230, !4, !"__UNIQUE_ID_license230", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description231, !7, !"__UNIQUE_ID_description231", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 172, i32 1}
!8 = !{ptr @__UNIQUE_ID_author232, !9, !"__UNIQUE_ID_author232", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 173, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias233, !11, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 174, i32 1}
!12 = !{ptr @__UNIQUE_ID_alias234, !13, !"__UNIQUE_ID_alias234", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 175, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias235, !15, !"__UNIQUE_ID_alias235", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 176, i32 1}
!16 = !{ptr @__UNIQUE_ID_import_ns236, !17, !"__UNIQUE_ID_import_ns236", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 177, i32 1}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mcb_driver, !20, !"mcb_driver", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 160, i32 26}
!21 = !{ptr @serial_8250_men_mcb_ids, !22, !"serial_8250_men_mcb_ids", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 152, i32 35}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 88, i32 2}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @serial_8250_men_mcb_probe.__UNIQUE_ID_ddebug227, !24, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 92, i32 3}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @serial_8250_men_mcb_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @serial_8250_men_mcb_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @serial_8250_men_mcb_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 107, i32 3}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 125, i32 4}
!39 = !{ptr @serial_8250_men_mcb_probe._entry.8, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @serial_8250_men_mcb_probe._entry_ptr.10, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 128, i32 3}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @serial_8250_men_mcb_probe._entry.11, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @serial_8250_men_mcb_probe._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 65, i32 3}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @get_num_ports._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @get_num_ports._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 34, i32 2}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @men_lookup_uartclk._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @men_lookup_uartclk._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 37, i32 32}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 39, i32 36}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 41, i32 36}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 43, i32 36}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 46, i32 3}
!66 = !{ptr @men_lookup_uartclk._entry.23, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @men_lookup_uartclk._entry_ptr.25, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/tty/serial/8250/8250_men_mcb.c", i32 144, i32 3}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @serial_8250_men_mcb_remove._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @serial_8250_men_mcb_remove._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 4773616}
!83 = !{i64 2154028732}
!84 = !{i64 2148280109, i64 2148280114, i64 2148280127, i64 2148280171, i64 2148280205, i64 2148280226}
