; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-sis96x.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-sis96x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }

@__initcall__kmod_i2c_sis96x__300_314_sis96x_driver_init6 = internal global ptr @sis96x_driver_init, section ".initcall6.init", align 4
@sis96x_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @sis96x_ids, ptr @sis96x_probe, ptr @sis96x_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sis96x_driver_exit = internal global ptr @sis96x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [59 x i8] c"i2c_sis96x.author=Mark M. Hoffman <mhoffman@lightlink.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [43 x i8] c"i2c_sis96x.description=SiS96x SMBus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [46 x i8] c"i2c_sis96x.file=drivers/i2c/busses/i2c-sis96x\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [23 x i8] c"i2c_sis96x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_sis96x\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sis96x_smbus\00", [19 x i8] zeroinitializer }, align 32
@sis96x_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4153, i32 22, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sis96x_smbus_base = internal global { i16, [30 x i8] } zeroinitializer, align 32
@sis96x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 249, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Only one device supported.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sis96x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-sis96x.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sis96x_probe._entry_ptr = internal global ptr @sis96x_probe._entry, section ".printk_index", align 4
@sis96x_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 255, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported device class 0x%04x!\0A\00", [62 x i8] zeroinitializer }, align 32
@sis96x_probe._entry_ptr.9 = internal global ptr @sis96x_probe._entry.7, section ".printk_index", align 4
@sis96x_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 262, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"SiS96x SMBus base address not initialized!\0A\00", [52 x i8] zeroinitializer }, align 32
@sis96x_probe._entry_ptr.12 = internal global ptr @sis96x_probe._entry.10, section ".printk_index", align 4
@sis96x_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 266, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SiS96x SMBus base address: 0x%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sis96x_probe._entry_ptr.16 = internal global ptr @sis96x_probe._entry.13, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@sis96x_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 277, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SMBus registers 0x%04x-0x%04x already in use!\0A\00", [49 x i8] zeroinitializer }, align 32
@sis96x_probe._entry_ptr.19 = internal global ptr @sis96x_probe._entry.17, section ".printk_index", align 4
@sis96x_adapter = internal global { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 129, ptr @smbus_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] zeroinitializer, %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SiS96x SMBus adapter at 0x%04x\00", [33 x i8] zeroinitializer }, align 32
@sis96x_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 290, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't register adapter!\0A\00", [36 x i8] zeroinitializer }, align 32
@sis96x_probe._entry_ptr.23 = internal global ptr @sis96x_probe._entry.21, section ".printk_index", align 4
@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @sis96x_access, ptr null, ptr @sis96x_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sis96x_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 190, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sis96x_access\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sis96x_access._entry_ptr = internal global ptr @sis96x_access._entry, section ".printk_index", align 4
@sis96x_transaction.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 0, i8 21, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sis96x_transaction\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SMBus transaction %d\0A\00", [42 x i8] zeroinitializer }, align 32
@sis96x_transaction.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.29, i8 0, i8 22, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SMBus busy (0x%02x). Resetting...\0A\00", [61 x i8] zeroinitializer }, align 32
@sis96x_transaction.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.30, i8 0, i8 24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Failed (0x%02x)\0A\00", [47 x i8] zeroinitializer }, align 32
@sis96x_transaction.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.31, i8 0, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Successful\0A\00", [20 x i8] zeroinitializer }, align 32
@sis96x_transaction.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.32, i8 0, i8 30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SMBus Timeout! (0x%02x)\0A\00", [39 x i8] zeroinitializer }, align 32
@sis96x_transaction.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.33, i8 0, i8 32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed bus transaction!\0A\00", [39 x i8] zeroinitializer }, align 32
@sis96x_transaction.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.34, i8 0, i8 33, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bus collision!\0A\00", [16 x i8] zeroinitializer }, align 32
@sis96x_transaction.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.35, i8 0, i8 35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed reset at end of transaction! (0x%02x)\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"sis96x_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 307, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 314, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 308, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"sis96x_ids\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 235, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"sis96x_smbus_base\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 64, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 249, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 255, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 261, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 265, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 275, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"sis96x_adapter\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 229, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 287, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 290, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 224, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 190, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 85, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 90, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 98, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 101, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 123, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 129, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 135, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-sis96x.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 142, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_sis96x_driver_exit, ptr @__initcall__kmod_i2c_sis96x__300_314_sis96x_driver_init6, ptr @sis96x_access._entry, ptr @sis96x_access._entry_ptr, ptr @sis96x_driver_exit, ptr @sis96x_probe._entry, ptr @sis96x_probe._entry.10, ptr @sis96x_probe._entry.13, ptr @sis96x_probe._entry.17, ptr @sis96x_probe._entry.21, ptr @sis96x_probe._entry.7, ptr @sis96x_probe._entry_ptr, ptr @sis96x_probe._entry_ptr.12, ptr @sis96x_probe._entry_ptr.16, ptr @sis96x_probe._entry_ptr.19, ptr @sis96x_probe._entry_ptr.23, ptr @sis96x_probe._entry_ptr.9, ptr @sis96x_driver, ptr @.str, ptr @.str.1, ptr @sis96x_ids, ptr @sis96x_smbus_base, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @sis96x_adapter, ptr @.str.20, ptr @.str.22, ptr @smbus_algorithm, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis96x_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis96x_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis96x_smbus_base to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis96x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis96x_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis96x_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis96x_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis96x_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis96x_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis96x_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis96x_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sis96x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sis96x_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sis96x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @sis96x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis96x_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ww = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ww) #7
  %0 = ptrtoint ptr %ww to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %ww, align 2
  %1 = load i16, ptr @sis96x_smbus_base, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 10, ptr noundef nonnull %ww) #7
  %2 = ptrtoint ptr %ww to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ww, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3077, i16 %3)
  %cmp.not = icmp eq i16 %3, 3077
  br i1 %cmp.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %3 to i32
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.8, i32 noundef %conv) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %conv11 = trunc i32 %5 to i16
  store i16 %conv11, ptr @sis96x_smbus_base, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv11)
  %tobool12.not = icmp eq i16 %conv11, 0
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br i1 %tobool12.not, label %do.end16, label %do.end21

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.11) #10
  br label %cleanup

do.end21:                                         ; preds = %if.end10
  %conv23 = and i32 %5, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17, ptr noundef nonnull @.str.14, i32 noundef %conv23) #10
  %6 = load i16, ptr @sis96x_smbus_base, align 2
  %conv30 = zext i16 %6 to i32
  %7 = load ptr, ptr getelementptr inbounds (%struct.pci_driver, ptr @sis96x_driver, i32 0, i32 1), align 4
  %call31 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv30, i32 noundef 32, ptr noundef %7, i32 noundef 0) #7
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.end36, label %if.end40

do.end36:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i16, ptr @sis96x_smbus_base, align 2
  %conv38 = zext i16 %8 to i32
  %sub = add nuw nsw i32 %conv38, 31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.18, i32 noundef %conv38, i32 noundef %sub) #10
  store i16 0, ptr @sis96x_smbus_base, align 2
  br label %cleanup

if.end40:                                         ; preds = %do.end21
  store ptr %dev17, ptr getelementptr inbounds (%struct.i2c_adapter, ptr @sis96x_adapter, i32 0, i32 9, i32 1), align 8
  %9 = load i16, ptr @sis96x_smbus_base, align 2
  %conv42 = zext i16 %9 to i32
  %call43 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sis96x_adapter, i32 0, i32 12), i32 noundef 48, ptr noundef nonnull @.str.20, i32 noundef %conv42)
  %call44 = call i32 @i2c_add_adapter(ptr noundef nonnull @sis96x_adapter) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end40.cleanup_crit_edge, label %do.end49

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end49:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.22) #10
  %10 = load i16, ptr @sis96x_smbus_base, align 2
  %conv51 = zext i16 %10 to i32
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv51, i32 noundef 32) #7
  store i16 0, ptr @sis96x_smbus_base, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.end40.cleanup_crit_edge, %do.end36, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ -19, %do.end7 ], [ -22, %do.end36 ], [ -22, %do.end16 ], [ %call44, %do.end49 ], [ 0, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ww) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis96x_remove(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @sis96x_smbus_base, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_adapter(ptr noundef nonnull @sis96x_adapter) #7
  %1 = load i16, ptr @sis96x_smbus_base, align 2
  %conv = zext i16 %1 to i32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv, i32 noundef 32) #7
  store i16 0, ptr @sis96x_smbus_base, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis96x_access(ptr noundef %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb14
    i32 4, label %entry.sw.bb27_crit_edge
    i32 3, label %entry.sw.bb27_crit_edge132
  ]

entry.sw.bb27_crit_edge132:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

entry.sw.bb27_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %addr.tr94 = trunc i16 %addr to i8
  %shl = shl i8 %addr.tr94, 1
  %1 = and i8 %read_write, 1
  %or = or i8 %1, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %2 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i = zext i16 %2 to i32
  %add2.i = add nuw nsw i32 %conv.i, -18874364
  %3 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %or) #7, !srcloc !95
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %addr.tr93 = trunc i16 %addr to i8
  %shl7 = shl i8 %addr.tr93, 1
  %and9 = and i8 %read_write, 1
  %or10 = or i8 %and9, %shl7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %4 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i96 = zext i16 %4 to i32
  %add2.i98 = add nuw nsw i32 %conv.i96, -18874364
  %5 = inttoptr i32 %add2.i98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %or10) #7, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp = icmp eq i8 %read_write, 0
  br i1 %cmp, label %if.then, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %6 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i99 = zext i16 %6 to i32
  %add2.i101 = add nuw nsw i32 %conv.i99, -18874363
  %7 = inttoptr i32 %add2.i101 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %command) #7, !srcloc !95
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %addr.tr92 = trunc i16 %addr to i8
  %shl17 = shl i8 %addr.tr92, 1
  %and19 = and i8 %read_write, 1
  %or20 = or i8 %and19, %shl17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %8 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i102 = zext i16 %8 to i32
  %add2.i104 = add nuw nsw i32 %conv.i102, -18874364
  %9 = inttoptr i32 %add2.i104 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %or20) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %10 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i105 = zext i16 %10 to i32
  %add2.i107 = add nuw nsw i32 %conv.i105, -18874363
  %11 = inttoptr i32 %add2.i107 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %command) #7, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp23 = icmp eq i8 %read_write, 0
  br i1 %cmp23, label %if.then25, label %sw.bb14.sw.epilog_crit_edge

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then25:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %14 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i108 = zext i16 %14 to i32
  %add2.i110 = add nuw nsw i32 %conv.i108, -18874360
  %15 = inttoptr i32 %add2.i110 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %13) #7, !srcloc !95
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry.sw.bb27_crit_edge, %entry.sw.bb27_crit_edge132
  %addr.tr = trunc i16 %addr to i8
  %shl30 = shl i8 %addr.tr, 1
  %and32 = and i8 %read_write, 1
  %or33 = or i8 %and32, %shl30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %16 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i111 = zext i16 %16 to i32
  %add2.i113 = add nuw nsw i32 %conv.i111, -18874364
  %17 = inttoptr i32 %add2.i113 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %or33) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %18 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i114 = zext i16 %18 to i32
  %add2.i116 = add nuw nsw i32 %conv.i114, -18874363
  %19 = inttoptr i32 %add2.i116 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %command) #7, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp36 = icmp eq i8 %read_write, 0
  br i1 %cmp36, label %if.then38, label %sw.bb27.if.end45_crit_edge

sw.bb27.if.end45_crit_edge:                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then38:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %data, align 2
  %conv41 = trunc i16 %21 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %22 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i117 = zext i16 %22 to i32
  %add2.i119 = add nuw nsw i32 %conv.i117, -18874360
  %23 = inttoptr i32 %add2.i119 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv41) #7, !srcloc !95
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %data, align 2
  %26 = lshr i16 %25, 8
  %conv44 = trunc i16 %26 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %27 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i120 = zext i16 %27 to i32
  %add2.i122 = add nuw nsw i32 %conv.i120, -18874359
  %28 = inttoptr i32 %add2.i122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv44) #7, !srcloc !95
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %sw.bb27.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp46 = icmp eq i32 %size, 4
  %cond = select i1 %cmp46, i32 4, i32 3
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %size) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end45, %if.then25, %sw.bb14.sw.epilog_crit_edge, %if.then, %sw.bb4.sw.epilog_crit_edge, %sw.bb
  %size.addr.0 = phi i32 [ %cond, %if.end45 ], [ 0, %sw.bb ], [ 1, %if.then ], [ 1, %sw.bb4.sw.epilog_crit_edge ], [ 2, %if.then25 ], [ 2, %sw.bb14.sw.epilog_crit_edge ]
  %call = tail call fastcc i32 @sis96x_transaction(i32 noundef %size.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end49, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size.addr.0)
  %cond95 = icmp eq i32 %size.addr.0, 4
  br i1 %cond95, label %if.end49.sw.bb61_crit_edge, label %land.lhs.true

if.end49.sw.bb61_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb61

land.lhs.true:                                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp53 = icmp eq i8 %read_write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0)
  %cmp55 = icmp eq i32 %size.addr.0, 0
  %or.cond = or i1 %cmp53, %cmp55
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %if.end58

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58:                                         ; preds = %land.lhs.true
  %29 = zext i32 %size.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %size.addr.0, label %if.end58.cleanup_crit_edge [
    i32 1, label %if.end58.sw.bb59_crit_edge
    i32 2, label %if.end58.sw.bb59_crit_edge133
    i32 3, label %if.end58.sw.bb61_crit_edge
  ]

if.end58.sw.bb61_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb61

if.end58.sw.bb59_crit_edge133:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb59

if.end58.sw.bb59_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb59

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb59:                                          ; preds = %if.end58.sw.bb59_crit_edge, %if.end58.sw.bb59_crit_edge133
  %30 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i123 = zext i16 %30 to i32
  %add2.i125 = add nuw nsw i32 %conv.i123, -18874360
  %31 = inttoptr i32 %add2.i125 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %33 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %data, align 2
  br label %cleanup

sw.bb61:                                          ; preds = %if.end58.sw.bb61_crit_edge, %if.end49.sw.bb61_crit_edge
  %34 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i126 = zext i16 %34 to i32
  %add2.i128 = add nuw nsw i32 %conv.i126, -18874360
  %35 = inttoptr i32 %add2.i128 to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %conv63 = zext i8 %36 to i16
  %37 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i129 = zext i16 %37 to i32
  %add2.i131 = add nuw nsw i32 %conv.i129, -18874359
  %38 = inttoptr i32 %add2.i131 to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %conv65 = zext i8 %39 to i16
  %shl66 = shl nuw i16 %conv65, 8
  %add = or i16 %shl66, %conv63
  %40 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %add, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb61, %sw.bb59, %if.end58.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ %call, %sw.epilog.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ], [ 0, %sw.bb61 ], [ 0, %sw.bb59 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sis96x_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16711680
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sis96x_transaction(i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis96x_transaction.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis96x_transaction, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis96x_transaction.__UNIQUE_ID_ddebug292, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sis96x_adapter, i32 0, i32 9), ptr noundef nonnull @.str.28, i32 noundef %size) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i = zext i16 %0 to i32
  %add2.i = add nuw nsw i32 %conv.i, -18874366
  %1 = inttoptr i32 %add2.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.end.if.end68_crit_edge, label %do.body7

do.end.if.end68_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis96x_transaction.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis96x_transaction, %do.end24)) #7
          to label %if.then21 [label %do.end24], !srcloc !98

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis96x_transaction.__UNIQUE_ID_ddebug293, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sis96x_adapter, i32 0, i32 9), ptr noundef nonnull @.str.29, i32 noundef %conv) #7
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %3 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i207 = zext i16 %3 to i32
  %add2.i209 = add nuw nsw i32 %conv.i207, -18874365
  %4 = inttoptr i32 %add2.i209 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 32) #7, !srcloc !95
  %5 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i210 = zext i16 %5 to i32
  %add2.i212 = add nuw nsw i32 %conv.i210, -18874366
  %6 = inttoptr i32 %add2.i212 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %conv26 = zext i8 %7 to i32
  %and27 = and i32 %conv26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp28.not = icmp eq i32 %and27, 0
  br i1 %cmp28.not, label %do.body49, label %do.body31

do.body31:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis96x_transaction.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis96x_transaction, %cleanup)) #7
          to label %if.then45 [label %cleanup], !srcloc !98

if.then45:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis96x_transaction.__UNIQUE_ID_ddebug294, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sis96x_adapter, i32 0, i32 9), ptr noundef nonnull @.str.30, i32 noundef %conv26) #7
  br label %cleanup

do.body49:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis96x_transaction.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis96x_transaction, %if.end68)) #7
          to label %if.then63 [label %if.end68], !srcloc !98

if.then63:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis96x_transaction.__UNIQUE_ID_ddebug295, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sis96x_adapter, i32 0, i32 9), ptr noundef nonnull @.str.31) #7
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %do.body49, %do.end.if.end68_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %8 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i213 = zext i16 %8 to i32
  %add2.i215 = add nuw nsw i32 %conv.i213, -18874366
  %9 = inttoptr i32 %add2.i215 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 32) #7, !srcloc !95
  %10 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i216 = zext i16 %10 to i32
  %add2.i217 = or i32 %conv.i216, -18874368
  %11 = inttoptr i32 %add2.i217 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %13 = and i8 %12, 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %14 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i218 = zext i16 %14 to i32
  %add2.i219 = or i32 %conv.i218, -18874368
  %15 = inttoptr i32 %add2.i219 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %13) #7, !srcloc !95
  %16 = trunc i32 %size to i8
  %17 = and i8 %16, 7
  %conv74 = or i8 %17, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %18 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i220 = zext i16 %18 to i32
  %add2.i222 = add nuw nsw i32 %conv.i220, -18874365
  %19 = inttoptr i32 %add2.i222 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv74) #7, !srcloc !95
  br label %do.body75

do.body75:                                        ; preds = %land.rhs.do.body75_crit_edge, %if.end68
  %timeout.0 = phi i32 [ 0, %if.end68 ], [ %inc, %land.rhs.do.body75_crit_edge ]
  tail call void @msleep(i32 noundef 1) #7
  %20 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i223 = zext i16 %20 to i32
  %add2.i224 = or i32 %conv.i223, -18874368
  %21 = inttoptr i32 %add2.i224 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %conv77 = zext i8 %22 to i32
  %and79 = and i32 %conv77, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %land.rhs, label %do.body75.if.end105_crit_edge

do.body75.if.end105_crit_edge:                    ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

land.rhs:                                         ; preds = %do.body75
  %inc = add nuw nsw i32 %timeout.0, 1
  %exitcond.not = icmp eq i32 %inc, 501
  br i1 %exitcond.not, label %do.body87, label %land.rhs.do.body75_crit_edge

land.rhs.do.body75_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body75

do.body87:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis96x_transaction.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis96x_transaction, %if.end105)) #7
          to label %if.then101 [label %if.end105], !srcloc !98

if.then101:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis96x_transaction.__UNIQUE_ID_ddebug296, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sis96x_adapter, i32 0, i32 9), ptr noundef nonnull @.str.32, i32 noundef %conv77) #7
  br label %if.end105

if.end105:                                        ; preds = %if.then101, %do.body87, %do.body75.if.end105_crit_edge
  %result.0 = phi i32 [ -110, %if.then101 ], [ -110, %do.body87 ], [ 0, %do.body75.if.end105_crit_edge ]
  %and106 = and i32 %conv77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end105.if.end127_crit_edge, label %do.body109

if.end105.if.end127_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

do.body109:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis96x_transaction.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis96x_transaction, %if.end127)) #7
          to label %if.then123 [label %if.end127], !srcloc !98

if.then123:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis96x_transaction.__UNIQUE_ID_ddebug297, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sis96x_adapter, i32 0, i32 9), ptr noundef nonnull @.str.33) #7
  br label %if.end127

if.end127:                                        ; preds = %if.then123, %do.body109, %if.end105.if.end127_crit_edge
  %result.1 = phi i32 [ %result.0, %if.end105.if.end127_crit_edge ], [ -6, %if.then123 ], [ -6, %do.body109 ]
  %and128 = and i32 %conv77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end127.if.end149_crit_edge, label %do.body131

if.end127.if.end149_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

do.body131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis96x_transaction.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis96x_transaction, %if.end149)) #7
          to label %if.then145 [label %if.end149], !srcloc !98

if.then145:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis96x_transaction.__UNIQUE_ID_ddebug298, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sis96x_adapter, i32 0, i32 9), ptr noundef nonnull @.str.34) #7
  br label %if.end149

if.end149:                                        ; preds = %if.then145, %do.body131, %if.end127.if.end149_crit_edge
  %result.2 = phi i32 [ %result.1, %if.end127.if.end149_crit_edge ], [ -5, %if.then145 ], [ -5, %do.body131 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %23 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i225 = zext i16 %23 to i32
  %add2.i226 = or i32 %conv.i225, -18874368
  %24 = inttoptr i32 %add2.i226 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %22) #7, !srcloc !95
  %25 = load i16, ptr @sis96x_smbus_base, align 2
  %conv.i227 = zext i16 %25 to i32
  %add2.i228 = or i32 %conv.i227, -18874368
  %26 = inttoptr i32 %add2.i228 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %conv152 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool153.not = icmp eq i8 %27, 0
  br i1 %tobool153.not, label %if.end149.cleanup_crit_edge, label %do.body155

if.end149.cleanup_crit_edge:                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body155:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis96x_transaction.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis96x_transaction, %cleanup)) #7
          to label %if.then169 [label %cleanup], !srcloc !98

if.then169:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis96x_transaction.__UNIQUE_ID_ddebug299, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sis96x_adapter, i32 0, i32 9), ptr noundef nonnull @.str.35, i32 noundef %conv152) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then169, %do.body155, %if.end149.cleanup_crit_edge, %if.then45, %do.body31
  %retval.0 = phi i32 [ -16, %if.then45 ], [ %result.2, %if.then169 ], [ %result.2, %if.end149.cleanup_crit_edge ], [ -16, %do.body31 ], [ %result.2, %do.body155 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !50, !52, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_i2c_sis96x__300_314_sis96x_driver_init6, !1, !"__initcall__kmod_i2c_sis96x__300_314_sis96x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 314, i32 1}
!2 = !{ptr @__exitcall_sis96x_driver_exit, !1, !"__exitcall_sis96x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author301, !4, !"__UNIQUE_ID_author301", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 316, i32 1}
!5 = !{ptr @__UNIQUE_ID_description302, !6, !"__UNIQUE_ID_description302", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 317, i32 1}
!7 = !{ptr @__UNIQUE_ID_file303, !8, !"__UNIQUE_ID_file303", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 318, i32 1}
!9 = !{ptr @__UNIQUE_ID_license304, !8, !"__UNIQUE_ID_license304", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 308, i32 11}
!13 = !{ptr @sis96x_driver, !14, !"sis96x_driver", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 307, i32 26}
!15 = !{ptr @sis96x_ids, !16, !"sis96x_ids", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 235, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 249, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sis96x_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @sis96x_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 255, i32 3}
!27 = !{ptr @sis96x_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sis96x_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 261, i32 3}
!31 = !{ptr @sis96x_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sis96x_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 265, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sis96x_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @sis96x_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 275, i32 3}
!40 = !{ptr @sis96x_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sis96x_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 287, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 290, i32 3}
!46 = !{ptr @sis96x_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sis96x_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @sis96x_smbus_base, !49, !"sis96x_smbus_base", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 64, i32 12}
!50 = !{ptr @sis96x_adapter, !51, !"sis96x_adapter", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 229, i32 27}
!52 = !{ptr @smbus_algorithm, !53, !"smbus_algorithm", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 224, i32 35}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 190, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sis96x_access._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @sis96x_access._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 85, i32 2}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sis96x_transaction.__UNIQUE_ID_ddebug292, !61, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 90, i32 3}
!66 = !{ptr @sis96x_transaction.__UNIQUE_ID_ddebug293, !65, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 98, i32 4}
!69 = !{ptr @sis96x_transaction.__UNIQUE_ID_ddebug294, !68, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 101, i32 4}
!72 = !{ptr @sis96x_transaction.__UNIQUE_ID_ddebug295, !71, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 123, i32 3}
!75 = !{ptr @sis96x_transaction.__UNIQUE_ID_ddebug296, !74, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 129, i32 3}
!78 = !{ptr @sis96x_transaction.__UNIQUE_ID_ddebug297, !77, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 135, i32 3}
!81 = !{ptr @sis96x_transaction.__UNIQUE_ID_ddebug298, !80, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/i2c/busses/i2c-sis96x.c", i32 142, i32 3}
!84 = !{ptr @sis96x_transaction.__UNIQUE_ID_ddebug299, !83, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2155892999}
!95 = !{i64 4985790}
!96 = !{i64 4986185}
!97 = !{i64 2155892605}
!98 = !{i64 2148959557, i64 2148959562, i64 2148959575, i64 2148959619, i64 2148959653, i64 2148959674}
