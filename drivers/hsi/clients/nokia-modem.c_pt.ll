; ModuleID = '/llk/IR_all_yes/drivers/hsi/clients/nokia-modem.c_pt.bc'
source_filename = "../drivers/hsi/clients/nokia-modem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.hsi_client_driver = type { %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hsi_board_info = type { ptr, i32, i32, %struct.hsi_config, %struct.hsi_config, ptr, ptr }
%struct.hsi_config = type { i32, ptr, i32, i32, i32, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.nokia_modem_device = type { %struct.tasklet_struct, i32, ptr, ptr, i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.nokia_modem_gpio = type { ptr, ptr }
%struct.hsi_client = type { %struct.device, %struct.hsi_config, %struct.hsi_config, ptr, i8, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_pm = internal constant [15 x i8] c"nokia_modem.pm\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pm = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_pm = internal constant %struct.kernel_param { ptr @__param_str_pm, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @pm } }, section "__param", align 4
@__UNIQUE_ID_pmtype232 = internal constant [28 x i8] c"nokia_modem.parmtype=pm:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pm233 = internal constant [85 x i8] c"nokia_modem.parm=pm:Enable power management (0=disabled, 1=userland based [default])\00", section ".modinfo", align 1
@__initcall__kmod_nokia_modem__236_289_nokia_modem_init6 = internal global ptr @nokia_modem_init, section ".initcall6.init", align 4
@nokia_modem_driver = internal global { %struct.hsi_client_driver, [52 x i8] } { %struct.hsi_client_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nokia_modem_of_match, ptr null, ptr @nokia_modem_probe, ptr null, ptr @nokia_modem_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [52 x i8] zeroinitializer }, align 32
@__exitcall_nokia_modem_exit = internal global ptr @nokia_modem_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias237 = internal constant [34 x i8] c"nokia_modem.alias=hsi:nokia-modem\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [54 x i8] c"nokia_modem.author=Sebastian Reichel <sre@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [63 x i8] c"nokia_modem.description=HSI driver module for Nokia N900 Modem\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [49 x i8] c"nokia_modem.file=drivers/hsi/clients/nokia-modem\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [24 x i8] c"nokia_modem.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nokia-modem\00", [20 x i8] zeroinitializer }, align 32
@nokia_modem_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nokia,n900-modem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nokia,n950-modem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nokia,n9-modem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device tree node not found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nokia_modem_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/hsi/clients/nokia-modem.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry_ptr = internal global ptr @nokia_modem_probe._entry, section ".printk_index", align 4
@nokia_modem_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid rst_ind interrupt (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry_ptr.8 = internal global ptr @nokia_modem_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"modem_rst_ind\00", [18 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Request rst_ind irq(%d) failed (flags %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry_ptr.12 = internal global ptr @nokia_modem_probe._entry.10, section ".printk_index", align 4
@nokia_modem_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not probe GPIOs\0A\00", [41 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry_ptr.15 = internal global ptr @nokia_modem_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssi-protocol\00", [19 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Could not register ssi-protocol device\0A\00", [56 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry_ptr.19 = internal global ptr @nokia_modem_probe._entry.17, section ".printk_index", align 4
@nokia_modem_probe.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.2, ptr @.str.3, ptr @.str.21, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nokia_modem\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Missing ssi-protocol driver\0A\00", [35 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Could not load ssi-protocol driver (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry_ptr.24 = internal global ptr @nokia_modem_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cmt-speech\00", [21 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not register cmt-speech device\0A\00", [58 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry_ptr.28 = internal global ptr @nokia_modem_probe._entry.26, section ".printk_index", align 4
@nokia_modem_probe.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.2, ptr @.str.3, ptr @.str.29, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Missing cmt-speech driver\0A\00", [37 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not load cmt-speech driver (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry_ptr.32 = internal global ptr @nokia_modem_probe._entry.30, section ".printk_index", align 4
@nokia_modem_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 223, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Registered Nokia HSI modem\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nokia_modem_probe._entry_ptr.36 = internal global ptr @nokia_modem_probe._entry.33, section ".printk_index", align 4
@do_nokia_modem_rst_ind_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 46, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CMT rst line change detected\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"do_nokia_modem_rst_ind_tasklet\00", [33 x i8] zeroinitializer }, align 32
@do_nokia_modem_rst_ind_tasklet._entry_ptr = internal global ptr @do_nokia_modem_rst_ind_tasklet._entry, section ".printk_index", align 4
@nokia_modem_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 81, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"missing gpios: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nokia_modem_gpio_probe\00", [41 x i8] zeroinitializer }, align 32
@nokia_modem_gpio_probe._entry_ptr = internal global ptr @nokia_modem_gpio_probe._entry, section ".printk_index", align 4
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio-names\00", [21 x i8] zeroinitializer }, align 32
@nokia_modem_gpio_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"number of gpios does not equal number of gpio names\0A\00", [43 x i8] zeroinitializer }, align 32
@nokia_modem_gpio_probe._entry_ptr.44 = internal global ptr @nokia_modem_gpio_probe._entry.42, section ".printk_index", align 4
@nokia_modem_gpio_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.40, ptr @.str.3, i32 103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not get gpio %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nokia_modem_gpio_probe._entry_ptr.47 = internal global ptr @nokia_modem_gpio_probe._entry.45, section ".printk_index", align 4
@nokia_modem_gpio_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.40, ptr @.str.3, i32 110, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not get gpio name %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nokia_modem_gpio_probe._entry_ptr.50 = internal global ptr @nokia_modem_gpio_probe._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpios\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#gpio-cells\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.53 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 19, i32 21 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"nokia_modem_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 275, i32 33 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 277, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"nokia_modem_of_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 266, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 139, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 152, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 161, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 163, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 172, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 177, i32 14 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 185, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 192, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 196, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 200, i32 19 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 208, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 215, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 219, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 223, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 46, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 81, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 85, i32 50 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 88, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 103, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private constant [37 x i8] c"../drivers/hsi/clients/nokia-modem.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 110, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 115, i32 33 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [27 x i8] c"../include/linux/of_gpio.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 104, i32 50 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_pm233, ptr @__UNIQUE_ID_pmtype232, ptr @__exitcall_nokia_modem_exit, ptr @__initcall__kmod_nokia_modem__236_289_nokia_modem_init6, ptr @__param_pm, ptr @do_nokia_modem_rst_ind_tasklet._entry, ptr @do_nokia_modem_rst_ind_tasklet._entry_ptr, ptr @nokia_modem_exit, ptr @nokia_modem_gpio_probe._entry, ptr @nokia_modem_gpio_probe._entry.42, ptr @nokia_modem_gpio_probe._entry.45, ptr @nokia_modem_gpio_probe._entry.48, ptr @nokia_modem_gpio_probe._entry_ptr, ptr @nokia_modem_gpio_probe._entry_ptr.44, ptr @nokia_modem_gpio_probe._entry_ptr.47, ptr @nokia_modem_gpio_probe._entry_ptr.50, ptr @nokia_modem_probe._entry, ptr @nokia_modem_probe._entry.10, ptr @nokia_modem_probe._entry.13, ptr @nokia_modem_probe._entry.17, ptr @nokia_modem_probe._entry.22, ptr @nokia_modem_probe._entry.26, ptr @nokia_modem_probe._entry.30, ptr @nokia_modem_probe._entry.33, ptr @nokia_modem_probe._entry.6, ptr @nokia_modem_probe._entry_ptr, ptr @nokia_modem_probe._entry_ptr.12, ptr @nokia_modem_probe._entry_ptr.15, ptr @nokia_modem_probe._entry_ptr.19, ptr @nokia_modem_probe._entry_ptr.24, ptr @nokia_modem_probe._entry_ptr.28, ptr @nokia_modem_probe._entry_ptr.32, ptr @nokia_modem_probe._entry_ptr.36, ptr @nokia_modem_probe._entry_ptr.8, ptr @pm, ptr @nokia_modem_driver, ptr @.str, ptr @nokia_modem_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_driver to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_nokia_modem_rst_ind_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_gpio_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_gpio_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_modem_gpio_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_modem_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hsi_register_client_driver(ptr noundef nonnull @nokia_modem_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nokia_modem_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef nonnull @nokia_modem_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_register_client_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_modem_probe(ptr noundef %dev) #2 align 64 {
entry:
  %ssip = alloca %struct.hsi_board_info, align 4
  %cmtspeech = alloca %struct.hsi_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %ssip) #6
  %2 = call ptr @memset(ptr %ssip, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %cmtspeech) #6
  %3 = call ptr @memset(ptr %cmtspeech, i32 255, i32 68)
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i, align 4
  %device7 = getelementptr inbounds %struct.nokia_modem_device, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %device7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %device7, align 4
  %call8 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %5, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end13, label %if.end14

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 0) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %nokia_modem_rst_ind_irq = getelementptr inbounds %struct.nokia_modem_device, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %nokia_modem_rst_ind_irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call8, ptr %nokia_modem_rst_ind_irq, align 4
  %call.i188 = tail call ptr @irq_get_irq_data(i32 noundef %call8) #6
  %tobool.not.i = icmp eq ptr %call.i188, null
  br i1 %tobool.not.i, label %if.end14.irq_get_trigger_type.exit_crit_edge, label %cond.true.i

if.end14.irq_get_trigger_type.exit_crit_edge:     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_get_trigger_type.exit

cond.true.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i188, i32 0, i32 3
  %9 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i.i = and i32 %12, 15
  br label %irq_get_trigger_type.exit

irq_get_trigger_type.exit:                        ; preds = %cond.true.i, %if.end14.irq_get_trigger_type.exit_crit_edge
  %cond.i = phi i32 [ %and.i.i, %cond.true.i ], [ 0, %if.end14.irq_get_trigger_type.exit_crit_edge ]
  %13 = ptrtoint ptr %call.i to i32
  tail call void @tasklet_init(ptr noundef nonnull %call.i, ptr noundef nonnull @do_nokia_modem_rst_ind_tasklet, i32 noundef %13) #6
  %call.i189 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call8, ptr noundef nonnull @nokia_modem_rst_ind_isr, ptr noundef null, i32 noundef %cond.i, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %cmp = icmp slt i32 %call.i189, 0
  br i1 %cmp, label %do.end20, label %if.end21

do.end20:                                         ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call8, i32 noundef %cond.i) #9
  br label %cleanup

if.end21:                                         ; preds = %irq_get_trigger_type.exit
  %call.i190 = tail call i32 @irq_set_irq_wake(i32 noundef %call8, i32 noundef 1) #6
  %14 = load i32, ptr @pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool23.not = icmp eq i32 %14, 0
  br i1 %tobool23.not, label %if.end21.if.end32_crit_edge, label %if.then24

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then24:                                        ; preds = %if.end21
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i, align 4
  %call.i.i.i = tail call i32 @of_count_phandle_with_args(ptr noundef %16, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %call.i.i.i) #9
  br label %do.end30

if.end.i:                                         ; preds = %if.then24
  %call.i.i = tail call i32 @of_property_read_string_helper(ptr noundef %16, ptr noundef nonnull @.str.41, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %call.i.i)
  %cmp3.not.i = icmp eq i32 %call.i.i.i, %call.i.i
  br i1 %cmp3.not.i, label %if.end8.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #9
  br label %do.end30

if.end8.i:                                        ; preds = %if.end.i
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i.i.i, i32 8) #6
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !118

devm_kcalloc.exit.thread.i:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %gpios104.i = getelementptr inbounds %struct.nokia_modem_device, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %gpios104.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %gpios104.i, align 4
  br label %do.end30

devm_kcalloc.exit.i:                              ; preds = %if.end8.i
  %22 = extractvalue { i32, i1 } %19, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %22, i32 noundef 3520) #6
  %gpios.i = getelementptr inbounds %struct.nokia_modem_device, ptr %18, i32 0, i32 3
  %23 = ptrtoint ptr %gpios.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i.i, ptr %gpios.i, align 4
  %tobool.not.i191 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i191, label %devm_kcalloc.exit.i.do.end30_crit_edge, label %if.end12.i

devm_kcalloc.exit.i.do.end30_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

if.end12.i:                                       ; preds = %devm_kcalloc.exit.i
  %gpio_amount.i = getelementptr inbounds %struct.nokia_modem_device, ptr %18, i32 0, i32 4
  %24 = ptrtoint ptr %gpio_amount.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i.i.i, ptr %gpio_amount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp13108.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp13108.not.i, label %if.end12.i.if.end32_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  br label %for.body.i

if.end12.i.if.end32_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12.i.for.body.i_crit_edge
  %i.0109.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end12.i.for.body.i_crit_edge ]
  %call14.i = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef null, i32 noundef %i.0109.i, i32 noundef 3) #6
  %25 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpios.i, align 4
  %arrayidx.i = getelementptr %struct.nokia_modem_gpio, ptr %26, i32 %i.0109.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call14.i, ptr %arrayidx.i, align 4
  %28 = load ptr, ptr %gpios.i, align 4
  %arrayidx17.i = getelementptr %struct.nokia_modem_gpio, ptr %28, i32 %i.0109.i
  %29 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx17.i, align 4
  %cmp.i.i = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end23.i, label %if.end28.i

do.end23.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %i.0109.i) #9
  %31 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gpios.i, align 4
  %arrayidx25.i = getelementptr %struct.nokia_modem_gpio, ptr %32, i32 %i.0109.i
  %33 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx25.i, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %nokia_modem_gpio_probe.exit

if.end28.i:                                       ; preds = %for.body.i
  %name.i = getelementptr %struct.nokia_modem_gpio, ptr %28, i32 %i.0109.i, i32 1
  %call.i102.i = tail call i32 @of_property_read_string_helper(ptr noundef %16, ptr noundef nonnull @.str.41, ptr noundef %name.i, i32 noundef 1, i32 noundef %i.0109.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i102.i)
  %tobool32.not.i = icmp sgt i32 %call.i102.i, -1
  br i1 %tobool32.not.i, label %if.end37.i, label %do.end36.i

do.end36.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %i.0109.i) #9
  br label %do.end30

if.end37.i:                                       ; preds = %if.end28.i
  %36 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gpios.i, align 4
  %arrayidx39.i = getelementptr %struct.nokia_modem_gpio, ptr %37, i32 %i.0109.i
  %38 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx39.i, align 4
  %call41.i = tail call i32 @gpiod_export(ptr noundef %39, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end37.i.nokia_modem_gpio_probe.exit_crit_edge

if.end37.i.nokia_modem_gpio_probe.exit_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nokia_modem_gpio_probe.exit

if.end44.i:                                       ; preds = %if.end37.i
  %40 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gpios.i, align 4
  %arrayidx46.i = getelementptr %struct.nokia_modem_gpio, ptr %41, i32 %i.0109.i
  %name47.i = getelementptr %struct.nokia_modem_gpio, ptr %41, i32 %i.0109.i, i32 1
  %42 = ptrtoint ptr %name47.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name47.i, align 4
  %44 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx46.i, align 4
  %call51.i = tail call i32 @gpiod_export_link(ptr noundef %dev, ptr noundef %43, ptr noundef %45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %for.inc.i, label %if.end44.i.nokia_modem_gpio_probe.exit_crit_edge

if.end44.i.nokia_modem_gpio_probe.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nokia_modem_gpio_probe.exit

for.inc.i:                                        ; preds = %if.end44.i
  %inc.i = add nuw nsw i32 %i.0109.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i.i.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end32_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end32_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

nokia_modem_gpio_probe.exit:                      ; preds = %if.end44.i.nokia_modem_gpio_probe.exit_crit_edge, %if.end37.i.nokia_modem_gpio_probe.exit_crit_edge, %do.end23.i
  %retval.0.i192 = phi i32 [ %35, %do.end23.i ], [ %call51.i, %if.end44.i.nokia_modem_gpio_probe.exit_crit_edge ], [ %call41.i, %if.end37.i.nokia_modem_gpio_probe.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i192)
  %cmp26 = icmp slt i32 %retval.0.i192, 0
  br i1 %cmp26, label %nokia_modem_gpio_probe.exit.do.end30_crit_edge, label %nokia_modem_gpio_probe.exit.if.end32_crit_edge

nokia_modem_gpio_probe.exit.if.end32_crit_edge:   ; preds = %nokia_modem_gpio_probe.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

nokia_modem_gpio_probe.exit.do.end30_crit_edge:   ; preds = %nokia_modem_gpio_probe.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

do.end30:                                         ; preds = %nokia_modem_gpio_probe.exit.do.end30_crit_edge, %do.end36.i, %devm_kcalloc.exit.i.do.end30_crit_edge, %devm_kcalloc.exit.thread.i, %do.end7.i, %do.end.i
  %retval.0.i192203 = phi i32 [ %retval.0.i192, %nokia_modem_gpio_probe.exit.do.end30_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.do.end30_crit_edge ], [ %call.i102.i, %do.end36.i ], [ -22, %do.end7.i ], [ %call.i.i.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %error1

if.end32:                                         ; preds = %nokia_modem_gpio_probe.exit.if.end32_crit_edge, %for.inc.i.if.end32_crit_edge, %if.end12.i.if.end32_crit_edge, %if.end21.if.end32_crit_edge
  %46 = ptrtoint ptr %ssip to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.16, ptr %ssip, align 4
  %tx_cfg = getelementptr inbounds %struct.hsi_board_info, ptr %ssip, i32 0, i32 3
  %tx_cfg33 = getelementptr inbounds %struct.hsi_client, ptr %dev, i32 0, i32 1
  %47 = call ptr @memcpy(ptr %tx_cfg, ptr %tx_cfg33, i32 24)
  %rx_cfg = getelementptr inbounds %struct.hsi_board_info, ptr %ssip, i32 0, i32 4
  %rx_cfg34 = getelementptr inbounds %struct.hsi_client, ptr %dev, i32 0, i32 2
  %48 = call ptr @memcpy(ptr %rx_cfg, ptr %rx_cfg34, i32 24)
  %platform_data = getelementptr inbounds %struct.hsi_board_info, ptr %ssip, i32 0, i32 5
  %49 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %platform_data, align 4
  %archdata = getelementptr inbounds %struct.hsi_board_info, ptr %ssip, i32 0, i32 6
  %50 = ptrtoint ptr %archdata to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %archdata, align 4
  %call35 = call ptr @hsi_new_client(ptr noundef %1, ptr noundef nonnull %ssip) #6
  %ssi_protocol = getelementptr inbounds %struct.nokia_modem_device, ptr %call.i, i32 0, i32 5
  %51 = ptrtoint ptr %ssi_protocol to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call35, ptr %ssi_protocol, align 4
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %error2

if.end42:                                         ; preds = %if.end32
  %call45 = call i32 @device_attach(ptr noundef nonnull %call35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %do.body48, label %if.else

do.body48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_modem_probe.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nokia_modem_probe, %if.then54)) #6
          to label %error3 [label %if.then54], !srcloc !119

if.then54:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nokia_modem_probe.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.21) #6
  br label %error3

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp58 = icmp slt i32 %call45, 0
  br i1 %cmp58, label %do.end62, label %if.end64

do.end62:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call45) #9
  br label %error3

if.end64:                                         ; preds = %if.else
  %52 = ptrtoint ptr %cmtspeech to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.25, ptr %cmtspeech, align 4
  %tx_cfg66 = getelementptr inbounds %struct.hsi_board_info, ptr %cmtspeech, i32 0, i32 3
  %53 = call ptr @memcpy(ptr %tx_cfg66, ptr %tx_cfg33, i32 24)
  %rx_cfg68 = getelementptr inbounds %struct.hsi_board_info, ptr %cmtspeech, i32 0, i32 4
  %54 = call ptr @memcpy(ptr %rx_cfg68, ptr %rx_cfg34, i32 24)
  %platform_data70 = getelementptr inbounds %struct.hsi_board_info, ptr %cmtspeech, i32 0, i32 5
  %55 = ptrtoint ptr %platform_data70 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %platform_data70, align 4
  %archdata71 = getelementptr inbounds %struct.hsi_board_info, ptr %cmtspeech, i32 0, i32 6
  %56 = ptrtoint ptr %archdata71 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %archdata71, align 4
  %call72 = call ptr @hsi_new_client(ptr noundef %1, ptr noundef nonnull %cmtspeech) #6
  %cmt_speech = getelementptr inbounds %struct.nokia_modem_device, ptr %call.i, i32 0, i32 6
  %57 = ptrtoint ptr %cmt_speech to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call72, ptr %cmt_speech, align 4
  %tobool74.not = icmp eq ptr %call72, null
  br i1 %tobool74.not, label %do.end78, label %if.end79

do.end78:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  br label %error3

if.end79:                                         ; preds = %if.end64
  %call82 = call i32 @device_attach(ptr noundef nonnull %call72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %do.body85, label %if.else101

do.body85:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_modem_probe.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nokia_modem_probe, %if.then97)) #6
          to label %error4 [label %if.then97], !srcloc !119

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nokia_modem_probe.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.29) #6
  br label %error4

if.else101:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp102 = icmp slt i32 %call82, 0
  br i1 %cmp102, label %do.end106, label %do.end111

do.end106:                                        ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call82) #9
  br label %error4

do.end111:                                        ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.34) #9
  br label %cleanup

error4:                                           ; preds = %do.end106, %if.then97, %do.body85
  %err.0 = phi i32 [ %call82, %do.end106 ], [ -517, %if.then97 ], [ -517, %do.body85 ]
  %58 = ptrtoint ptr %cmt_speech to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cmt_speech, align 4
  %call114 = call i32 @hsi_remove_client(ptr noundef %59, ptr noundef null) #6
  br label %error3

error3:                                           ; preds = %error4, %do.end78, %do.end62, %if.then54, %do.body48
  %err.1 = phi i32 [ %call45, %do.end62 ], [ %err.0, %error4 ], [ -12, %do.end78 ], [ -517, %if.then54 ], [ -517, %do.body48 ]
  %60 = ptrtoint ptr %ssi_protocol to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ssi_protocol, align 4
  %call117 = call i32 @hsi_remove_client(ptr noundef %61, ptr noundef null) #6
  br label %error2

error2:                                           ; preds = %error3, %do.end41
  %err.2 = phi i32 [ %err.1, %error3 ], [ -12, %do.end41 ]
  %62 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver_data.i, align 4
  %gpio_amount.i194 = getelementptr inbounds %struct.nokia_modem_device, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %gpio_amount.i194 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %gpio_amount.i194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp9.i = icmp sgt i32 %65, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %error2.error1_crit_edge

error2.error1_crit_edge:                          ; preds = %error2
  call void @__sanitizer_cov_trace_pc() #8
  br label %error1

for.body.lr.ph.i:                                 ; preds = %error2
  %gpios.i195 = getelementptr inbounds %struct.nokia_modem_device, ptr %63, i32 0, i32 3
  br label %for.body.i199

for.body.i199:                                    ; preds = %for.body.i199.for.body.i199_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i197, %for.body.i199.for.body.i199_crit_edge ]
  %66 = ptrtoint ptr %gpios.i195 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gpios.i195, align 4
  %name.i196 = getelementptr %struct.nokia_modem_gpio, ptr %67, i32 %i.010.i, i32 1
  %68 = ptrtoint ptr %name.i196 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name.i196, align 4
  call void @sysfs_remove_link(ptr noundef %dev, ptr noundef %69) #6
  %70 = ptrtoint ptr %gpios.i195 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %gpios.i195, align 4
  %arrayidx2.i = getelementptr %struct.nokia_modem_gpio, ptr %71, i32 %i.010.i
  %72 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx2.i, align 4
  call void @gpiod_unexport(ptr noundef %73) #6
  %inc.i197 = add nuw nsw i32 %i.010.i, 1
  %74 = ptrtoint ptr %gpio_amount.i194 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %gpio_amount.i194, align 4
  %cmp.i198 = icmp slt i32 %inc.i197, %75
  br i1 %cmp.i198, label %for.body.i199.for.body.i199_crit_edge, label %for.body.i199.error1_crit_edge

for.body.i199.error1_crit_edge:                   ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #8
  br label %error1

for.body.i199.for.body.i199_crit_edge:            ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i199

error1:                                           ; preds = %for.body.i199.error1_crit_edge, %error2.error1_crit_edge, %do.end30
  %err.3 = phi i32 [ %retval.0.i192203, %do.end30 ], [ %err.2, %error2.error1_crit_edge ], [ %err.2, %for.body.i199.error1_crit_edge ]
  %76 = ptrtoint ptr %nokia_modem_rst_ind_irq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nokia_modem_rst_ind_irq, align 4
  %call.i200 = call i32 @irq_set_irq_wake(i32 noundef %77, i32 noundef 0) #6
  call void @tasklet_kill(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error1, %do.end111, %do.end20, %do.end13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i189, %do.end20 ], [ %err.3, %error1 ], [ 0, %do.end111 ], [ -22, %do.end13 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %cmtspeech) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %ssip) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_modem_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmt_speech = getelementptr inbounds %struct.nokia_modem_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cmt_speech to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmt_speech, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @hsi_remove_client(ptr noundef nonnull %3, ptr noundef null) #6
  %4 = ptrtoint ptr %cmt_speech to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cmt_speech, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %ssi_protocol = getelementptr inbounds %struct.nokia_modem_device, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %ssi_protocol to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ssi_protocol, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.end6.if.end13_crit_edge, label %if.then8

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 @hsi_remove_client(ptr noundef nonnull %6, ptr noundef null) #6
  %7 = ptrtoint ptr %ssi_protocol to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ssi_protocol, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end6.if.end13_crit_edge
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %gpio_amount.i = getelementptr inbounds %struct.nokia_modem_device, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %gpio_amount.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_amount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.i = icmp sgt i32 %11, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %if.end13.nokia_modem_gpio_unexport.exit_crit_edge

if.end13.nokia_modem_gpio_unexport.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %nokia_modem_gpio_unexport.exit

for.body.lr.ph.i:                                 ; preds = %if.end13
  %gpios.i = getelementptr inbounds %struct.nokia_modem_device, ptr %9, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpios.i, align 4
  %name.i = getelementptr %struct.nokia_modem_gpio, ptr %13, i32 %i.010.i, i32 1
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 4
  tail call void @sysfs_remove_link(ptr noundef %dev, ptr noundef %15) #6
  %16 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpios.i, align 4
  %arrayidx2.i = getelementptr %struct.nokia_modem_gpio, ptr %17, i32 %i.010.i
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @gpiod_unexport(ptr noundef %19) #6
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %20 = ptrtoint ptr %gpio_amount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gpio_amount.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %21
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.nokia_modem_gpio_unexport.exit_crit_edge

for.body.i.nokia_modem_gpio_unexport.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nokia_modem_gpio_unexport.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

nokia_modem_gpio_unexport.exit:                   ; preds = %for.body.i.nokia_modem_gpio_unexport.exit_crit_edge, %if.end13.nokia_modem_gpio_unexport.exit_crit_edge
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %driver_data.i, align 4
  %nokia_modem_rst_ind_irq = getelementptr inbounds %struct.nokia_modem_device, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %nokia_modem_rst_ind_irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nokia_modem_rst_ind_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %24, i32 noundef 0) #6
  tail call void @tasklet_kill(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %nokia_modem_gpio_unexport.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_nokia_modem_rst_ind_tasklet(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool.not = icmp eq i32 %data, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %0 = inttoptr i32 %data to ptr
  %device = getelementptr inbounds %struct.nokia_modem_device, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.37) #9
  %ssi_protocol = getelementptr inbounds %struct.nokia_modem_device, ptr %0, i32 0, i32 5
  %3 = ptrtoint ptr %ssi_protocol to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ssi_protocol, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %do.end.cleanup_crit_edge, label %if.then2

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ssip_reset_event(ptr noundef nonnull %4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_modem_rst_ind_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %data, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__tasklet_schedule(ptr noundef %data) #6
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hsi_new_client(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_remove_client(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssip_reset_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_export(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_export_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_unexport(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__param_pm, !1, !"__param_pm", i1 false, i1 false}
!1 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_pmtype232, !1, !"__UNIQUE_ID_pmtype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_pm233, !4, !"__UNIQUE_ID_pm233", i1 false, i1 false}
!4 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 21, i32 1}
!5 = !{ptr @__initcall__kmod_nokia_modem__236_289_nokia_modem_init6, !6, !"__initcall__kmod_nokia_modem__236_289_nokia_modem_init6", i1 false, i1 false}
!6 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 289, i32 1}
!7 = !{ptr @__exitcall_nokia_modem_exit, !8, !"__exitcall_nokia_modem_exit", i1 false, i1 false}
!8 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 295, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias237, !10, !"__UNIQUE_ID_alias237", i1 false, i1 false}
!10 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 297, i32 1}
!11 = !{ptr @__UNIQUE_ID_author238, !12, !"__UNIQUE_ID_author238", i1 false, i1 false}
!12 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 298, i32 1}
!13 = !{ptr @__UNIQUE_ID_description239, !14, !"__UNIQUE_ID_description239", i1 false, i1 false}
!14 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 299, i32 1}
!15 = !{ptr @__UNIQUE_ID_file240, !16, !"__UNIQUE_ID_file240", i1 false, i1 false}
!16 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 300, i32 1}
!17 = !{ptr @__UNIQUE_ID_license241, !16, !"__UNIQUE_ID_license241", i1 false, i1 false}
!18 = !{ptr @__param_str_pm, !1, !"__param_str_pm", i1 false, i1 false}
!19 = !{ptr @pm, !20, !"pm", i1 false, i1 false}
!20 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 19, i32 21}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 277, i32 11}
!23 = !{ptr @nokia_modem_driver, !24, !"nokia_modem_driver", i1 false, i1 false}
!24 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 275, i32 33}
!25 = !{ptr @nokia_modem_of_match, !26, !"nokia_modem_of_match", i1 false, i1 false}
!26 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 266, i32 34}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 139, i32 3}
!29 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nokia_modem_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @nokia_modem_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 152, i32 3}
!37 = !{ptr @nokia_modem_probe._entry.6, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @nokia_modem_probe._entry_ptr.8, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 161, i32 13}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 163, i32 3}
!43 = !{ptr @nokia_modem_probe._entry.10, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @nokia_modem_probe._entry_ptr.12, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 172, i32 4}
!47 = !{ptr @nokia_modem_probe._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @nokia_modem_probe._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 177, i32 14}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 185, i32 3}
!53 = !{ptr @nokia_modem_probe._entry.17, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @nokia_modem_probe._entry_ptr.19, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 192, i32 3}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @nokia_modem_probe.__UNIQUE_ID_ddebug234, !56, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 196, i32 3}
!61 = !{ptr @nokia_modem_probe._entry.22, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @nokia_modem_probe._entry_ptr.24, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 200, i32 19}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 208, i32 3}
!67 = !{ptr @nokia_modem_probe._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @nokia_modem_probe._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 215, i32 3}
!71 = !{ptr @nokia_modem_probe.__UNIQUE_ID_ddebug235, !70, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 219, i32 3}
!74 = !{ptr @nokia_modem_probe._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @nokia_modem_probe._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 223, i32 2}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @nokia_modem_probe._entry.33, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @nokia_modem_probe._entry_ptr.36, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 46, i32 2}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @do_nokia_modem_rst_ind_tasklet._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @do_nokia_modem_rst_ind_tasklet._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 81, i32 3}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @nokia_modem_gpio_probe._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @nokia_modem_gpio_probe._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 85, i32 50}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 88, i32 3}
!95 = !{ptr @nokia_modem_gpio_probe._entry.42, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @nokia_modem_gpio_probe._entry_ptr.44, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 103, i32 4}
!99 = !{ptr @nokia_modem_gpio_probe._entry.45, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @nokia_modem_gpio_probe._entry_ptr.47, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hsi/clients/nokia-modem.c", i32 110, i32 4}
!103 = !{ptr @nokia_modem_gpio_probe._entry.48, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @nokia_modem_gpio_probe._entry_ptr.50, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/of_gpio.h", i32 115, i32 33}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/of_gpio.h", i32 104, i32 50}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"branch_weights", i32 1, i32 2000}
!119 = !{i64 2148172917, i64 2148172922, i64 2148172935, i64 2148172979, i64 2148173013, i64 2148173034}
