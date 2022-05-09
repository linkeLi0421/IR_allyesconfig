; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_aspeed_vuart.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_aspeed_vuart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.aspeed_vuart = type { ptr, ptr, i32, %struct.timer_list, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_8250_aspeed_vuart__237_598_aspeed_vuart_driver_init6 = internal global ptr @aspeed_vuart_driver_init, section ".initcall6.init", align 4
@aspeed_vuart_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_vuart_probe, ptr @aspeed_vuart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_vuart_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aspeed_vuart_driver_exit = internal global ptr @aspeed_vuart_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [53 x i8] c"8250_aspeed_vuart.author=Jeremy Kerr <jk@ozlabs.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [65 x i8] c"8250_aspeed_vuart.file=drivers/tty/serial/8250/8250_aspeed_vuart\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [30 x i8] c"8250_aspeed_vuart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [61 x i8] c"8250_aspeed_vuart.description=Driver for Aspeed VUART device\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aspeed-vuart\00", [19 x i8] zeroinitializer }, align 32
@aspeed_vuart_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-vuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-vuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@aspeed_vuart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&vuart->unthrottle_timer)\00", [37 x i8] zeroinitializer }, align 32
@aspeed_vuart_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @aspeed_vuart_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@aspeed_vuart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 454, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clk or clock-frequency not defined\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed_vuart_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/tty/serial/8250/8250_aspeed_vuart.c\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_vuart_probe._entry_ptr = internal global ptr @aspeed_vuart_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"current-speed\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg-offset\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-shift\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fifo-size\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no-loopback-test\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"auto-flow-control\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aspeed,sirq-polarity-sense\00", [37 x i8] zeroinitializer }, align 32
@aspeed_vuart_probe.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.4, ptr @.str.5, ptr @.str.17, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"8250_aspeed_vuart\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"aspeed,sirq-polarity-sense property not found\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aspeed,lpc-io-reg\00", [46 x i8] zeroinitializer }, align 32
@aspeed_vuart_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 531, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid value in aspeed,lpc-io-reg property\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@aspeed_vuart_probe._entry_ptr.22 = internal global ptr @aspeed_vuart_probe._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed,lpc-interrupts\00", [42 x i8] zeroinitializer }, align 32
@aspeed_vuart_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 543, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid sirq number in aspeed,lpc-interrupts property\0A\00", [41 x i8] zeroinitializer }, align 32
@aspeed_vuart_probe._entry_ptr.26 = internal global ptr @aspeed_vuart_probe._entry.24, section ".printk_index", align 4
@aspeed_vuart_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 549, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"invalid sirq polarity in aspeed,lpc-interrupts property\0A\00", [39 x i8] zeroinitializer }, align 32
@aspeed_vuart_probe._entry_ptr.29 = internal global ptr @aspeed_vuart_probe._entry.27, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@aspeed_vuart_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_sirq, ptr @dev_attr_sirq_polarity, ptr @dev_attr_lpc_address, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_sirq = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sirq_show, ptr @sirq_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sirq_polarity = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sirq_polarity_show, ptr @sirq_polarity_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lpc_address = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lpc_address_show, ptr @lpc_address_store }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sirq\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sirq_polarity\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lpc_address\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@aspeed_vuart_auto_configure_sirq_polarity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 389, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"could not get regmap for aspeed,sirq-polarity-sense\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"aspeed_vuart_auto_configure_sirq_polarity\00", [54 x i8] zeroinitializer }, align 32
@aspeed_vuart_auto_configure_sirq_polarity._entry_ptr = internal global ptr @aspeed_vuart_auto_configure_sirq_polarity._entry, section ".printk_index", align 4
@aspeed_vuart_auto_configure_sirq_polarity._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.5, i32 393, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not read hw strap table\0A\00", [33 x i8] zeroinitializer }, align 32
@aspeed_vuart_auto_configure_sirq_polarity._entry_ptr.39 = internal global ptr @aspeed_vuart_auto_configure_sirq_polarity._entry.37, section ".printk_index", align 4
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"aspeed_vuart_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 589, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 591, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"aspeed_vuart_table\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 583, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 429, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [24 x i8] c"aspeed_vuart_attr_group\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 216, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 450, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 453, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 467, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 471, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 475, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 479, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 483, i32 27 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 495, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 501, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 512, i32 7 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 515, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 525, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 531, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 535, i32 38 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 543, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 549, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"aspeed_vuart_attrs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 209, i32 26 }
@___asan_gen_.139 = private unnamed_addr constant [14 x i8] c"dev_attr_sirq\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"dev_attr_sirq_polarity\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [21 x i8] c"dev_attr_lpc_address\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 163, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 127, i32 38 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 207, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 115, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 85, i32 38 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 388, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [47 x i8] c"../drivers/tty/serial/8250/8250_aspeed_vuart.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 393, i32 3 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_aspeed_vuart_driver_exit, ptr @__initcall__kmod_8250_aspeed_vuart__237_598_aspeed_vuart_driver_init6, ptr @aspeed_vuart_auto_configure_sirq_polarity._entry, ptr @aspeed_vuart_auto_configure_sirq_polarity._entry.37, ptr @aspeed_vuart_auto_configure_sirq_polarity._entry_ptr, ptr @aspeed_vuart_auto_configure_sirq_polarity._entry_ptr.39, ptr @aspeed_vuart_driver_exit, ptr @aspeed_vuart_probe._entry, ptr @aspeed_vuart_probe._entry.19, ptr @aspeed_vuart_probe._entry.24, ptr @aspeed_vuart_probe._entry.27, ptr @aspeed_vuart_probe._entry_ptr, ptr @aspeed_vuart_probe._entry_ptr.22, ptr @aspeed_vuart_probe._entry_ptr.26, ptr @aspeed_vuart_probe._entry_ptr.29, ptr @aspeed_vuart_driver, ptr @.str, ptr @aspeed_vuart_table, ptr @aspeed_vuart_probe.__key, ptr @.str.1, ptr @aspeed_vuart_attr_group, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @aspeed_vuart_attrs, ptr @dev_attr_sirq, ptr @dev_attr_sirq_polarity, ptr @dev_attr_lpc_address, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_vuart_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_vuart_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_vuart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_vuart_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_vuart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_vuart_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_vuart_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_vuart_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_vuart_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sirq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sirq_polarity to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lpc_address to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_vuart_auto_configure_sirq_polarity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_vuart_auto_configure_sirq_polarity._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_vuart_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_vuart_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_vuart_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_vuart_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_vuart_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  %sirq_polarity_sense_args = alloca %struct.of_phandle_args, align 4
  %port = alloca %struct.uart_8250_port, align 4
  %clk = alloca i32, align 4
  %prop = alloca i32, align 4
  %sirq = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %sirq_polarity_sense_args) #7
  %0 = call ptr @memset(ptr %sirq_polarity_sense_args, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %port) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk) #7
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %clk, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #7
  %2 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %prop, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sirq) #7
  %3 = ptrtoint ptr %sirq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sirq, align 4, !annotation !101
  %4 = getelementptr inbounds [2 x i32], ptr %sirq, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !101
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 4
  %unthrottle_timer = getelementptr inbounds %struct.aspeed_vuart, ptr %call.i, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %unthrottle_timer, ptr noundef nonnull @aspeed_vuart_unthrottle_exp, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @aspeed_vuart_probe.__key) #7
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %9 = call ptr @memset(ptr %port, i32 0, i32 584)
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %private_data, align 4
  %11 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call4, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %13 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mapbase, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call4, i32 0, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %16 = load i32, ptr %call4, align 4
  %sub.i = add i32 %15, 1
  %add.i = sub i32 %sub.i, %16
  %mapsize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 44
  %17 = ptrtoint ptr %mapsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %mapsize, align 4
  %startup = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 11
  %18 = ptrtoint ptr %startup to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @aspeed_vuart_startup, ptr %startup, align 4
  %shutdown = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 12
  %19 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @aspeed_vuart_shutdown, ptr %shutdown, align 4
  %throttle = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 13
  %20 = ptrtoint ptr %throttle to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @aspeed_vuart_throttle, ptr %throttle, align 4
  %unthrottle = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 14
  %21 = ptrtoint ptr %unthrottle to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @aspeed_vuart_unthrottle, ptr %unthrottle, align 4
  %status = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %22 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %status, align 4
  %dev16 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %23 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %dev16, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 48
  %24 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %has_sysrq, align 4
  %bugs = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 4
  %25 = ptrtoint ptr %bugs to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 32, ptr %bugs, align 4
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %call20 = tail call i32 @sysfs_create_group(ptr noundef %27, ptr noundef nonnull @aspeed_vuart_attr_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef nonnull %clk, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool25.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool25.not, label %if.end23.if.end48_crit_edge, label %if.then26

if.end23.if.end48_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then26:                                        ; preds = %if.end23
  %call28 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk29 = getelementptr inbounds %struct.aspeed_vuart, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %clk29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call28, ptr %clk29, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end35, label %if.end39

do.end35:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  %29 = ptrtoint ptr %clk29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk29, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %err_sysfs_remove

if.end39:                                         ; preds = %if.then26
  %call.i246 = call i32 @clk_prepare(ptr noundef %call28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %tobool.not.i = icmp eq i32 %call.i246, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end39.clk_prepare_enable.exit_crit_edge

if.end39.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end39
  %call1.i = call i32 @clk_enable(ptr noundef %call28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end45_crit_edge, label %if.then3.i

if.end.i.if.end45_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call28) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end39.clk_prepare_enable.exit_crit_edge
  %retval.0.i247 = phi i32 [ %call.i246, %if.end39.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i247)
  %cmp42 = icmp slt i32 %retval.0.i247, 0
  br i1 %cmp42, label %clk_prepare_enable.exit.err_sysfs_remove_crit_edge, label %clk_prepare_enable.exit.if.end45_crit_edge

clk_prepare_enable.exit.if.end45_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

clk_prepare_enable.exit.err_sysfs_remove_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_sysfs_remove

if.end45:                                         ; preds = %clk_prepare_enable.exit.if.end45_crit_edge, %if.end.i.if.end45_crit_edge
  %32 = ptrtoint ptr %clk29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk29, align 4
  %call47 = call i32 @clk_get_rate(ptr noundef %33) #7
  %34 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call47, ptr %clk, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end45, %if.end23.if.end48_crit_edge
  %call.i.i248 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i248)
  %cmp50 = icmp sgt i32 %call.i.i248, -1
  br i1 %cmp50, label %if.then52, label %if.end48.if.end54_crit_edge

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %clk, align 4
  %37 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prop, align 4
  %mul = shl i32 %38, 4
  %div = udiv i32 %36, %mul
  %custom_divisor = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 40
  %39 = ptrtoint ptr %custom_divisor to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div, ptr %custom_divisor, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end48.if.end54_crit_edge
  %call.i.i249 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i249)
  %cmp56 = icmp sgt i32 %call.i.i249, -1
  br i1 %cmp56, label %if.then58, label %if.end54.if.end61_crit_edge

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %prop, align 4
  %42 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mapbase, align 4
  %add = add i32 %43, %41
  store i32 %add, ptr %mapbase, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end54.if.end61_crit_edge
  %call.i.i250 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i250)
  %cmp63 = icmp sgt i32 %call.i.i250, -1
  br i1 %cmp63, label %if.then65, label %if.end61.if.end68_crit_edge

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %prop, align 4
  %conv66 = trunc i32 %45 to i8
  %regshift = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %46 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv66, ptr %regshift, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end61.if.end68_crit_edge
  %call.i.i251 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.11, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i251)
  %cmp70 = icmp sgt i32 %call.i.i251, -1
  br i1 %cmp70, label %if.then72, label %if.end68.if.end74_crit_edge

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %prop, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %49 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %fifosize, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end68.if.end74_crit_edge
  %call75 = call i32 @of_alias_get_id(ptr noundef %7, ptr noundef nonnull @.str.12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call75)
  %cmp76 = icmp sgt i32 %call75, -1
  br i1 %cmp76, label %if.then78, label %if.end74.if.end80_crit_edge

if.end74.if.end80_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %50 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call75, ptr %line, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end74.if.end80_crit_edge
  %call81 = call i32 @irq_of_parse_and_map(ptr noundef %7, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call81, ptr %irq, align 4
  %handle_irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 15
  %52 = ptrtoint ptr %handle_irq to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @aspeed_vuart_handle_irq, ptr %handle_irq, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %53 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %iotype, align 2
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %54 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4, ptr %type, align 4
  %55 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %clk, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %57 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %uartclk, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1190658048, ptr %flags, align 4
  %call.i252 = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.13, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i252, null
  br i1 %tobool.i.not, label %if.end80.if.end93_crit_edge, label %if.then89

if.end80.if.end93_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then89:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  %or92 = or i32 %60, 64
  store i32 %or92, ptr %flags, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.end80.if.end93_crit_edge
  %fifosize95 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %61 = ptrtoint ptr %fifosize95 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fifosize95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool96.not = icmp eq i32 %62, 0
  br i1 %tobool96.not, label %if.end93.if.end98_crit_edge, label %if.then97

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %capabilities = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 3
  %63 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 256, ptr %capabilities, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end93.if.end98_crit_edge
  %call.i253 = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %tobool.i254.not = icmp eq ptr %call.i253, null
  br i1 %tobool.i254.not, label %if.end98.if.end103_crit_edge, label %if.then100

if.end98.if.end103_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %capabilities101 = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 3
  %64 = ptrtoint ptr %capabilities101 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %capabilities101, align 4
  %or102 = or i32 %65, 2048
  store i32 %or102, ptr %capabilities101, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end98.if.end103_crit_edge
  %call104 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %port) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.end103.err_clk_disable_crit_edge, label %if.end108

if.end103.err_clk_disable_crit_edge:              ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_disable

if.end108:                                        ; preds = %if.end103
  %line109 = getelementptr inbounds %struct.aspeed_vuart, ptr %call.i, i32 0, i32 2
  %66 = ptrtoint ptr %line109 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call104, ptr %line109, align 4
  %call111 = call ptr @serial8250_get_port(i32 noundef %call104) #7
  %port112 = getelementptr inbounds %struct.aspeed_vuart, ptr %call.i, i32 0, i32 4
  %67 = ptrtoint ptr %port112 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call111, ptr %port112, align 4
  %call.i255 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %sirq_polarity_sense_args) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %cmp114 = icmp slt i32 %call.i255, 0
  br i1 %cmp114, label %do.body117, label %if.else

do.body117:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_vuart_probe.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_vuart_probe, %if.then122)) #7
          to label %if.end131 [label %if.then122], !srcloc !102

if.then122:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_vuart_probe.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.17) #7
  br label %if.end131

if.else:                                          ; preds = %if.end108
  %68 = ptrtoint ptr %sirq_polarity_sense_args to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sirq_polarity_sense_args, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %sirq_polarity_sense_args, i32 0, i32 2
  %70 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %args, align 4
  %arrayidx129 = getelementptr inbounds %struct.of_phandle_args, ptr %sirq_polarity_sense_args, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx129, align 4
  %shl = shl nuw i32 1, %73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %74 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %value.i, align 4, !annotation !101
  %call.i256 = call ptr @syscon_node_to_regmap(ptr noundef %69) #7
  %cmp.i.i = icmp ugt ptr %call.i256, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i258

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.35) #10
  br label %aspeed_vuart_auto_configure_sirq_polarity.exit

if.end.i258:                                      ; preds = %if.else
  %call2.i = call i32 @regmap_read(ptr noundef %call.i256, i32 noundef %71, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i257 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i257, label %if.end8.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.38) #10
  br label %aspeed_vuart_auto_configure_sirq_polarity.exit

if.end8.i:                                        ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %value.i, align 4
  %and.i = and i32 %80, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i259 = icmp eq i32 %and.i, 0
  %81 = ptrtoint ptr %port112 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %port112, align 4
  %membase.i.i.i = getelementptr inbounds %struct.uart_port, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %84, i32 32
  %85 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %86 = and i8 %85, -3
  %masksel.i.i = select i1 %cmp.i259, i8 2, i8 0
  %reg.0.i.i = or i8 %86, %masksel.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %87 = ptrtoint ptr %port112 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %port112, align 4
  %membase.i8.i.i = getelementptr inbounds %struct.uart_port, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %membase.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %membase.i8.i.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %90, i32 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i.i, i8 %reg.0.i.i) #7, !srcloc !106
  br label %aspeed_vuart_auto_configure_sirq_polarity.exit

aspeed_vuart_auto_configure_sirq_polarity.exit:   ; preds = %if.end8.i, %do.end6.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  %91 = ptrtoint ptr %sirq_polarity_sense_args to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sirq_polarity_sense_args, align 4
  call void @of_node_put(ptr noundef %92) #7
  br label %if.end131

if.end131:                                        ; preds = %aspeed_vuart_auto_configure_sirq_polarity.exit, %if.then122, %do.body117
  %call.i.i260 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i260)
  %cmp133 = icmp slt i32 %call.i.i260, 0
  br i1 %cmp133, label %if.end136.thread, label %if.end136

if.end136.thread:                                 ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1016, ptr %prop, align 4
  br label %if.end145

if.end136:                                        ; preds = %if.end131
  %94 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr = load i32, ptr %prop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %.pr)
  %cmp.i261 = icmp ugt i32 %.pr, 65535
  br i1 %cmp.i261, label %if.end136.err_clk_disable.sink.split_crit_edge, label %if.end136.if.end145_crit_edge

if.end136.if.end145_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

if.end136.err_clk_disable.sink.split_crit_edge:   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_disable.sink.split

if.end145:                                        ; preds = %if.end136.if.end145_crit_edge, %if.end136.thread
  %95 = phi i32 [ 1016, %if.end136.thread ], [ %.pr, %if.end136.if.end145_crit_edge ]
  %shr.i = lshr i32 %95, 8
  %conv.i = trunc i32 %shr.i to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %96 = ptrtoint ptr %port112 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %port112, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %99, i32 44
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i) #7, !srcloc !106
  %conv2.i = trunc i32 %95 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %100 = ptrtoint ptr %port112 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %port112, align 4
  %membase.i7.i = getelementptr inbounds %struct.uart_port, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %membase.i7.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %membase.i7.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %103, i32 40
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i, i8 %conv2.i) #7, !srcloc !106
  %call.i264 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.23, ptr noundef nonnull %sirq, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %cmp147 = icmp slt i32 %call.i264, 0
  br i1 %cmp147, label %if.end152.thread, label %if.end152

if.end152.thread:                                 ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %sirq to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 4, ptr %sirq, align 4
  %105 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 8, ptr %4, align 4
  br label %if.end162

if.end152:                                        ; preds = %if.end145
  %106 = ptrtoint ptr %sirq to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pr292 = load i32, ptr %sirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %.pr292)
  %cmp.i265 = icmp ugt i32 %.pr292, 15
  br i1 %cmp.i265, label %if.end152.err_clk_disable.sink.split_crit_edge, label %if.end152.if.end162_crit_edge

if.end152.if.end162_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162

if.end152.err_clk_disable.sink.split_crit_edge:   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_disable.sink.split

if.end162:                                        ; preds = %if.end152.if.end162_crit_edge, %if.end152.thread
  %107 = phi i32 [ 4, %if.end152.thread ], [ %.pr292, %if.end152.if.end162_crit_edge ]
  %108 = ptrtoint ptr %port112 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %port112, align 4
  %membase.i.i267 = getelementptr inbounds %struct.uart_port, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %membase.i.i267 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %membase.i.i267, align 4
  %add.ptr.i.i268 = getelementptr i8, ptr %111, i32 36
  %112 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i268) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %113 = and i8 %112, 15
  %sirq.tr.i = trunc i32 %107 to i8
  %114 = shl nuw i8 %sirq.tr.i, 4
  %conv4.i = or i8 %113, %114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %115 = ptrtoint ptr %port112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %port112, align 4
  %membase.i12.i = getelementptr inbounds %struct.uart_port, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %membase.i12.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %membase.i12.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %118, i32 36
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i, i8 %conv4.i) #7, !srcloc !106
  %119 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %120)
  %switch.selectcmp.i = icmp eq i32 %120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %120)
  %switch.selectcmp2.i = icmp eq i32 %120, 8
  %121 = xor i1 %switch.selectcmp.i, %switch.selectcmp2.i
  br i1 %121, label %if.end172, label %do.end170

do.end170:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 -22
  br label %err_clk_disable.sink.split

if.end172:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %port112 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %port112, align 4
  %membase.i.i272 = getelementptr inbounds %struct.uart_port, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %membase.i.i272 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %membase.i.i272, align 4
  %add.ptr.i.i273 = getelementptr i8, ptr %125, i32 32
  %126 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i273) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %127 = and i8 %126, -3
  %masksel.i = select i1 %switch.selectcmp2.i, i8 0, i8 2
  %reg.0.i = or i8 %127, %masksel.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %128 = ptrtoint ptr %port112 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %port112, align 4
  %membase.i8.i = getelementptr inbounds %struct.uart_port, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %membase.i8.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %membase.i8.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %131, i32 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i, i8 %reg.0.i) #7, !srcloc !106
  %132 = ptrtoint ptr %port112 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %port112, align 4
  %membase.i.i275 = getelementptr inbounds %struct.uart_port, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %membase.i.i275 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %membase.i.i275, align 4
  %add.ptr.i.i276 = getelementptr i8, ptr %135, i32 32
  %136 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i276) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %reg.0.i277 = or i8 %136, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %137 = ptrtoint ptr %port112 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %port112, align 4
  %membase.i8.i278 = getelementptr inbounds %struct.uart_port, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %membase.i8.i278 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %membase.i8.i278, align 4
  %add.ptr.i9.i279 = getelementptr i8, ptr %140, i32 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i279, i8 %reg.0.i277) #7, !srcloc !106
  %141 = ptrtoint ptr %port112 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %port112, align 4
  %membase.i.i281 = getelementptr inbounds %struct.uart_port, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %membase.i.i281 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %membase.i.i281, align 4
  %add.ptr.i.i282 = getelementptr i8, ptr %144, i32 32
  %145 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i282) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %146 = and i8 %145, -33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %147 = ptrtoint ptr %port112 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %port112, align 4
  %membase.i8.i283 = getelementptr inbounds %struct.uart_port, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %membase.i8.i283 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %membase.i8.i283, align 4
  %add.ptr.i9.i284 = getelementptr i8, ptr %150, i32 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i284, i8 %146) #7, !srcloc !106
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %151 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_clk_disable.sink.split:                       ; preds = %do.end170, %if.end152.err_clk_disable.sink.split_crit_edge, %if.end136.err_clk_disable.sink.split_crit_edge
  %.str.28.sink = phi ptr [ @.str.28, %do.end170 ], [ @.str.20, %if.end136.err_clk_disable.sink.split_crit_edge ], [ @.str.25, %if.end152.err_clk_disable.sink.split_crit_edge ]
  %rc.0.ph = phi i32 [ %switch.select.i, %do.end170 ], [ -22, %if.end136.err_clk_disable.sink.split_crit_edge ], [ -22, %if.end152.err_clk_disable.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.28.sink) #10
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_clk_disable.sink.split, %if.end103.err_clk_disable_crit_edge
  %rc.0 = phi i32 [ %call104, %if.end103.err_clk_disable_crit_edge ], [ %rc.0.ph, %err_clk_disable.sink.split ]
  %clk174 = getelementptr inbounds %struct.aspeed_vuart, ptr %call.i, i32 0, i32 1
  %152 = ptrtoint ptr %clk174 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %clk174, align 4
  call void @clk_disable(ptr noundef %153) #7
  call void @clk_unprepare(ptr noundef %153) #7
  %154 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %irq, align 4
  call void @irq_dispose_mapping(i32 noundef %155) #7
  br label %err_sysfs_remove

err_sysfs_remove:                                 ; preds = %err_clk_disable, %clk_prepare_enable.exit.err_sysfs_remove_crit_edge, %do.end35
  %rc.1 = phi i32 [ %31, %do.end35 ], [ %retval.0.i247, %clk_prepare_enable.exit.err_sysfs_remove_crit_edge ], [ %rc.0, %err_clk_disable ]
  %156 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %call.i, align 4
  call void @sysfs_remove_group(ptr noundef %157, ptr noundef nonnull @aspeed_vuart_attr_group) #7
  br label %cleanup

cleanup:                                          ; preds = %err_sysfs_remove, %if.end172, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %err_sysfs_remove ], [ 0, %if.end172 ], [ -12, %entry.cleanup_crit_edge ], [ %call20, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sirq) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk) #7
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %port) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %sirq_polarity_sense_args) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_vuart_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %unthrottle_timer = getelementptr inbounds %struct.aspeed_vuart, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @del_timer_sync(ptr noundef %unthrottle_timer) #7
  %port.i.i = getelementptr inbounds %struct.aspeed_vuart, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i.i, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %7 = and i8 %6, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i.i, align 4
  %membase.i8.i = getelementptr inbounds %struct.uart_port, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %membase.i8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i8.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i, i8 %7) #7, !srcloc !106
  %line = getelementptr inbounds %struct.aspeed_vuart, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line, align 4
  tail call void @serial8250_unregister_port(i32 noundef %13) #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void @sysfs_remove_group(ptr noundef %15, ptr noundef nonnull @aspeed_vuart_attr_group) #7
  %clk = getelementptr inbounds %struct.aspeed_vuart, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %17) #7
  tail call void @clk_unprepare(ptr noundef %17) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_vuart_unthrottle_exp(ptr noundef %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr i8, ptr %timer, i32 48
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %call = tail call i32 @tty_buffer_space_avail(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 10
  %call3 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %ier.i.i.i = getelementptr inbounds %struct.uart_8250_port, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %ier.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ier.i.i.i, align 2
  %spec.select.i.i.i = or i8 %6, 5
  store i8 %spec.select.i.i.i, ptr %ier.i.i.i, align 2
  %conv8.i.i.i = zext i8 %spec.select.i.i.i to i32
  %serial_out.i.i.i.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %serial_out.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial_out.i.i.i.i, align 4
  tail call void %8(ptr noundef %1, i32 noundef 1, i32 noundef %conv8.i.i.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_vuart_startup(ptr noundef %uart_port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %uart_port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call1 = tail call i32 @serial8250_do_startup(ptr noundef %uart_port) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %port.i.i = getelementptr inbounds %struct.aspeed_vuart, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i.i, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %reg.0.i = or i8 %6, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port.i.i, align 4
  %membase.i8.i = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i8.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i, i8 %reg.0.i) #7, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_vuart_shutdown(ptr noundef %uart_port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %uart_port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port.i.i = getelementptr inbounds %struct.aspeed_vuart, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i.i, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %7 = and i8 %6, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i.i, align 4
  %membase.i8.i = getelementptr inbounds %struct.uart_port, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %membase.i8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i8.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i, i8 %7) #7, !srcloc !106
  tail call void @serial8250_do_shutdown(ptr noundef %uart_port) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_vuart_throttle(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  %ier.i.i = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 9
  %0 = ptrtoint ptr %ier.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ier.i.i, align 2
  %2 = and i8 %1, -6
  store i8 %2, ptr %ier.i.i, align 2
  %conv8.i.i = zext i8 %2 to i32
  %serial_out.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %3 = ptrtoint ptr %serial_out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serial_out.i.i.i, align 4
  tail call void %4(ptr noundef %port, i32 noundef 1, i32 noundef %conv8.i.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_vuart_unthrottle(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  %ier.i.i = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 9
  %0 = ptrtoint ptr %ier.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ier.i.i, align 2
  %spec.select.i.i = or i8 %1, 5
  store i8 %spec.select.i.i, ptr %ier.i.i, align 2
  %conv8.i.i = zext i8 %spec.select.i.i to i32
  %serial_out.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %2 = ptrtoint ptr %serial_out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_out.i.i.i, align 4
  tail call void %3(ptr noundef %port, i32 noundef 1, i32 noundef %conv8.i.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_vuart_handle_irq(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %1(ptr noundef %port, i32 noundef 2) #7
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body2:                                         ; preds = %entry
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  %2 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_in.i, align 4
  %call.i68 = tail call i32 %3(ptr noundef %port, i32 noundef 5) #7
  %and8 = and i32 %call.i68, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body2.if.end38_crit_edge, label %if.then10

do.body2.if.end38_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then10:                                        ; preds = %do.body2
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %call12 = tail call i32 @tty_buffer_space_avail(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then10
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %ier.i = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 9
  %8 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ier.i, align 2
  %10 = and i8 %9, -6
  store i8 %10, ptr %ier.i, align 2
  %conv8.i = zext i8 %10 to i32
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %11 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %12(ptr noundef %port, i32 noundef 1, i32 noundef %conv8.i) #7
  %pprev.i.i = getelementptr inbounds %struct.aspeed_vuart, ptr %7, i32 0, i32 3, i32 0, i32 1
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.not, label %if.then17, label %if.then14.if.end38_crit_edge

if.then14.if.end38_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %unthrottle_timer = getelementptr inbounds %struct.aspeed_vuart, ptr %7, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %15, 10
  %call19 = tail call i32 @mod_timer(ptr noundef %unthrottle_timer, i32 noundef %add) #7
  br label %if.end38

if.else:                                          ; preds = %if.then10
  %16 = tail call i32 @llvm.umin.i32(i32 %call12, i32 256)
  br label %do.body24

do.body24:                                        ; preds = %do.body24.do.body24_crit_edge, %if.else
  %lsr.0 = phi i32 [ %call.i68, %if.else ], [ %call.i70, %do.body24.do.body24_crit_edge ]
  %count.0 = phi i32 [ %16, %if.else ], [ %dec, %do.body24.do.body24_crit_edge ]
  %conv25 = trunc i32 %lsr.0 to i8
  tail call void @serial8250_read_char(ptr noundef %port, i8 noundef zeroext %conv25) #7
  %17 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serial_in.i, align 4
  %call.i70 = tail call i32 %18(ptr noundef %port, i32 noundef 5) #7
  %dec = add nsw i32 %count.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp27 = icmp eq i32 %dec, 0
  %and32 = and i32 %call.i70, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %or.cond = select i1 %cmp27, i1 true, i1 %tobool33.not
  br i1 %or.cond, label %do.end34, label %do.body24.do.body24_crit_edge

do.body24.do.body24_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body24

do.end34:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %20) #7
  br label %if.end38

if.end38:                                         ; preds = %do.end34, %if.then17, %if.then14.if.end38_crit_edge, %do.body2.if.end38_crit_edge
  %lsr.1 = phi i32 [ %call.i70, %do.end34 ], [ %call.i68, %do.body2.if.end38_crit_edge ], [ %call.i68, %if.then17 ], [ %call.i68, %if.then14.if.end38_crit_edge ]
  %call39 = tail call i32 @serial8250_modem_status(ptr noundef %port) #7
  %and40 = and i32 %lsr.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end43_crit_edge, label %if.then42

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @serial8250_tx_chars(ptr noundef %port) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end38.if.end43_crit_edge
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 48
  %21 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call4) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end43
  %sysrq_ch1.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 47
  %23 = ptrtoint ptr %sysrq_ch1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sysrq_ch1.i, align 4
  store i32 0, ptr %sysrq_ch1.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not.i = icmp eq i32 %24, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.then5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @handle_sysrq(i32 noundef %24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %if.end.i.cleanup_crit_edge, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then.i ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.then5.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_space_avail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_do_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sirq_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %port.i = getelementptr inbounds %struct.aspeed_vuart, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 36
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %7 = lshr i8 %6, 4
  %conv5 = zext i8 %7 to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4095, ptr noundef nonnull @.str.31, i32 noundef %conv5)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sirq_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !101
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %4)
  %cmp.i = icmp ugt i32 %4, 15
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

5:                                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %port.i.i = getelementptr inbounds %struct.aspeed_vuart, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i.i, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 36
  %10 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %11 = and i8 %10, 15
  %sirq.tr.i = trunc i32 %4 to i8
  %12 = shl nuw i8 %sirq.tr.i, 4
  %conv4.i = or i8 %11, %12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port.i.i, align 4
  %membase.i12.i = getelementptr inbounds %struct.uart_port, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %membase.i12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i12.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %16, i32 36
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i, i8 %conv4.i) #7, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count, %5 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sirq_polarity_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %port.i = getelementptr inbounds %struct.aspeed_vuart, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %7 = lshr i8 %6, 1
  %.lobit = and i8 %7, 1
  %8 = zext i8 %.lobit to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4095, ptr noundef nonnull @.str.31, i32 noundef %8)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sirq_polarity_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !101
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  %port.i.i = getelementptr inbounds %struct.aspeed_vuart, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port.i.i, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 32
  %9 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %10 = and i8 %9, -3
  %masksel.i = select i1 %cmp.not, i8 0, i8 2
  %reg.0.i = or i8 %10, %masksel.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port.i.i, align 4
  %membase.i8.i = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %membase.i8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i8.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %14, i32 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i, i8 %reg.0.i) #7, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_address_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %port.i = getelementptr inbounds %struct.aspeed_vuart, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 44
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %conv = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port.i, align 4
  %membase.i9 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %10, i32 40
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i10) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %conv3 = zext i8 %11 to i32
  %or = or i32 %shl, %conv3
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4095, ptr noundef nonnull @.str.34, i32 noundef %or)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_address_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !101
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp.i = icmp ugt i32 %4, 65535
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

5:                                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %4, 8
  %conv.i = trunc i32 %shr.i to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %port.i.i = getelementptr inbounds %struct.aspeed_vuart, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i.i, align 4
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 44
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i) #7, !srcloc !106
  %conv2.i = trunc i32 %4 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port.i.i, align 4
  %membase.i7.i = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %membase.i7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i7.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %13, i32 40
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i, i8 %conv2.i) #7, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count, %5 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_read_char(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_modem_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_tx_chars(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !71, !73, !75, !76, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_8250_aspeed_vuart__237_598_aspeed_vuart_driver_init6, !1, !"__initcall__kmod_8250_aspeed_vuart__237_598_aspeed_vuart_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 598, i32 1}
!2 = !{ptr @__exitcall_aspeed_vuart_driver_exit, !1, !"__exitcall_aspeed_vuart_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author238, !4, !"__UNIQUE_ID_author238", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 600, i32 1}
!5 = !{ptr @__UNIQUE_ID_file239, !6, !"__UNIQUE_ID_file239", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 601, i32 1}
!7 = !{ptr @__UNIQUE_ID_license240, !6, !"__UNIQUE_ID_license240", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description241, !9, !"__UNIQUE_ID_description241", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 602, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 591, i32 11}
!12 = !{ptr @aspeed_vuart_driver, !13, !"aspeed_vuart_driver", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 589, i32 31}
!14 = !{ptr @aspeed_vuart_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 429, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 450, i32 31}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 453, i32 4}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @aspeed_vuart_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @aspeed_vuart_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 467, i32 31}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 471, i32 31}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 475, i32 31}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 479, i32 31}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 483, i32 27}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 495, i32 32}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 501, i32 32}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 512, i32 7}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 515, i32 3}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @aspeed_vuart_probe.__UNIQUE_ID_ddebug236, !44, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 525, i32 32}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 531, i32 3}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @aspeed_vuart_probe._entry.19, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @aspeed_vuart_probe._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 535, i32 38}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 543, i32 3}
!58 = !{ptr @aspeed_vuart_probe._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @aspeed_vuart_probe._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 549, i32 3}
!62 = !{ptr @aspeed_vuart_probe._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @aspeed_vuart_probe._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @aspeed_vuart_attr_group, !65, !"aspeed_vuart_attr_group", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 216, i32 37}
!66 = !{ptr @aspeed_vuart_attrs, !67, !"aspeed_vuart_attrs", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 209, i32 26}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 163, i32 8}
!70 = !{ptr @dev_attr_sirq, !69, !"dev_attr_sirq", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 127, i32 38}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 207, i32 8}
!75 = !{ptr @dev_attr_sirq_polarity, !74, !"dev_attr_sirq_polarity", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 115, i32 8}
!78 = !{ptr @dev_attr_lpc_address, !77, !"dev_attr_lpc_address", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 85, i32 38}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 388, i32 3}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @aspeed_vuart_auto_configure_sirq_polarity._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @aspeed_vuart_auto_configure_sirq_polarity._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 393, i32 3}
!88 = !{ptr @aspeed_vuart_auto_configure_sirq_polarity._entry.37, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @aspeed_vuart_auto_configure_sirq_polarity._entry_ptr.39, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @aspeed_vuart_table, !91, !"aspeed_vuart_table", i1 false, i1 false}
!91 = !{!"../drivers/tty/serial/8250/8250_aspeed_vuart.c", i32 583, i32 34}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"auto-init"}
!102 = !{i64 2148291566, i64 2148291571, i64 2148291584, i64 2148291628, i64 2148291662, i64 2148291683}
!103 = !{i64 4903604}
!104 = !{i64 2154793856}
!105 = !{i64 2154794253}
!106 = !{i64 4903209}
