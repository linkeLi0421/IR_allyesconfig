; ModuleID = '/llk/IR_all_yes/drivers/nfc/fdp/i2c.c_pt.bc'
source_filename = "../drivers/nfc/fdp/i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nfc_phy_ops = type { ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.fdp_i2c_phy = type { ptr, ptr, ptr, i32, i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.89, %union.anon.92, %union.anon.93, [48 x i8], %union.anon.94, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.96, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr, %union.anon.91 }
%union.anon.91 = type { ptr }
%union.anon.92 = type { ptr }
%union.anon.93 = type { i64 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { i32, ptr }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.98, i32, i32, i32, i16, i16, %union.anon.100, i32, %union.anon.101, %union.anon.102, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.98 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { i32 }
%union.anon.102 = type { i16 }

@__initcall__kmod_fdp_i2c__323_363_fdp_nci_i2c_driver_init6 = internal global ptr @fdp_nci_i2c_driver_init, section ".initcall6.init", align 4
@fdp_nci_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @fdp_nci_i2c_remove, ptr @fdp_nci_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @fdp_nci_i2c_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_fdp_nci_i2c_driver_exit = internal global ptr @fdp_nci_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file324 = internal constant [37 x i8] c"fdp_i2c.file=drivers/nfc/fdp/fdp_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [20 x i8] c"fdp_i2c.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description326 = internal constant [68 x i8] c"fdp_i2c.description=I2C driver for Intel Fields Peak NFC controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author327 = internal constant [53 x i8] c"fdp_i2c.author=Robert Dolca <robert.dolca@intel.com>\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fdp_nci_i2c\00", [20 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_acpi_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"INT339A\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFC: No I2C_FUNC_I2C support\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fdp_nci_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/nfc/fdp/i2c.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_probe._entry_ptr = internal global ptr @fdp_nci_i2c_probe._entry, section ".printk_index", align 4
@fdp_nci_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NFC: IRQ not present\0A\00", [42 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_probe._entry_ptr.8 = internal global ptr @fdp_nci_i2c_probe._entry.6, section ".printk_index", align 4
@fdp_nci_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFC: Unable to register IRQ handler\0A\00", [59 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_probe._entry_ptr.11 = internal global ptr @fdp_nci_i2c_probe._entry.9, section ".printk_index", align 4
@fdp_nci_i2c_probe.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fdp_i2c\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to add GPIO mapping table\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NFC: Power GPIO request failed\0A\00", [32 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_probe._entry_ptr.17 = internal global ptr @fdp_nci_i2c_probe._entry.15, section ".printk_index", align 4
@i2c_phy_ops = internal constant { %struct.nfc_phy_ops, [20 x i8] } { %struct.nfc_phy_ops { ptr @fdp_nci_i2c_write, ptr @fdp_nci_i2c_enable, ptr @fdp_nci_i2c_disable }, [20 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFC: NCI probing error\0A\00", [40 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_probe._entry_ptr.20 = internal global ptr @fdp_nci_i2c_probe._entry.18, section ".printk_index", align 4
@fdp_nci_i2c_irq_thread_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fdp_nci_i2c_read.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fdp_nci_i2c_read\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: i2c recv err: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_read.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.3, ptr @.str.23, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: corrupted packet\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fdp_rd: \00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clock-type\00", [21 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fdp_nci_i2c_read_device_properties\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Using default clock type\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clock-freq\00", [21 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.28, ptr @.str.3, ptr @.str.31, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using default clock frequency\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw-vsc-cfg\00", [21 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.28, ptr @.str.3, ptr @.str.33, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"FW vendor specific commands not present\0A\00", [55 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.28, ptr @.str.3, ptr @.str.34, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Clock type: %d, clock frequency: %d, VSC: %s\00", [51 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fdp_wr: \00", [23 x i8] zeroinitializer }, align 32
@fdp_nci_i2c_write.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fdp_nci_i2c_write\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: error err=%d len=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967175, i64 4294967222, i64 4294967284]
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"fdp_nci_i2c_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 355, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 357, i32 14 }
@___asan_gen_.46 = private unnamed_addr constant [23 x i8] c"fdp_nci_i2c_acpi_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 349, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 284, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 290, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 308, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 314, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 317, i32 40 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 319, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"i2c_phy_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 123, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 332, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 145, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 160, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 179, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 224, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 226, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 230, i32 36 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 232, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 236, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 259, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 263, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 97, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [25 x i8] c"../drivers/nfc/fdp/i2c.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 106, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author327, ptr @__UNIQUE_ID_description326, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__exitcall_fdp_nci_i2c_driver_exit, ptr @__initcall__kmod_fdp_i2c__323_363_fdp_nci_i2c_driver_init6, ptr @fdp_nci_i2c_driver_exit, ptr @fdp_nci_i2c_probe._entry, ptr @fdp_nci_i2c_probe._entry.15, ptr @fdp_nci_i2c_probe._entry.18, ptr @fdp_nci_i2c_probe._entry.6, ptr @fdp_nci_i2c_probe._entry.9, ptr @fdp_nci_i2c_probe._entry_ptr, ptr @fdp_nci_i2c_probe._entry_ptr.11, ptr @fdp_nci_i2c_probe._entry_ptr.17, ptr @fdp_nci_i2c_probe._entry_ptr.20, ptr @fdp_nci_i2c_probe._entry_ptr.8, ptr @fdp_nci_i2c_driver, ptr @.str, ptr @fdp_nci_i2c_acpi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @i2c_phy_ops, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_i2c_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_phy_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdp_nci_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @fdp_nci_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fdp_nci_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @fdp_nci_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ndev = getelementptr inbounds %struct.fdp_i2c_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void @fdp_nci_remove(ptr noundef %3) #5
  %power_gpio.i.i = getelementptr inbounds %struct.fdp_i2c_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %power_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power_gpio.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 4000, i32 noundef 2) #5
  %6 = ptrtoint ptr %power_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %power_gpio.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 14000, i32 noundef 2) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_i2c_probe(ptr noundef %client) #2 align 64 {
entry:
  %fw_vsc_cfg = alloca ptr, align 4
  %clock_type = alloca i8, align 1
  %clock_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_vsc_cfg) #5
  %0 = ptrtoint ptr %fw_vsc_cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_vsc_cfg, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %clock_type) #5
  %1 = ptrtoint ptr %clock_type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %clock_type, align 1, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock_freq) #5
  %2 = ptrtoint ptr %clock_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %clock_freq, align 4, !annotation !102
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %4) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp slt i32 %10, 1
  br i1 %cmp, label %do.end5, label %if.end6

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #5
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %call.i, align 4
  %next_read_size = getelementptr inbounds %struct.fdp_i2c_phy, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %next_read_size to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 5, ptr %next_read_size, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call12 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %15, ptr noundef null, ptr noundef nonnull @fdp_nci_i2c_irq_thread_fn, i32 noundef 8193, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_i2c_probe.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_i2c_probe, %if.then28)) #5
          to label %if.end32 [label %if.then28], !srcloc !103

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_i2c_probe.__UNIQUE_ID_ddebug322, ptr noundef %dev1, ptr noundef nonnull @.str.13) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end19
  %call33 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 3) #5
  %power_gpio = getelementptr inbounds %struct.fdp_i2c_phy, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %power_gpio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call33, ptr %power_gpio, align 4
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  %17 = ptrtoint ptr %power_gpio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %power_gpio, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  call fastcc void @fdp_nci_i2c_read_device_properties(ptr noundef %dev1, ptr noundef nonnull %clock_type, ptr noundef nonnull %clock_freq, ptr noundef nonnull %fw_vsc_cfg)
  %ndev = getelementptr inbounds %struct.fdp_i2c_phy, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %clock_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %clock_type, align 1
  %22 = ptrtoint ptr %clock_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clock_freq, align 4
  %24 = ptrtoint ptr %fw_vsc_cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw_vsc_cfg, align 4
  %call43 = call i32 @fdp_nci_probe(ptr noundef nonnull %call.i, ptr noundef nonnull @i2c_phy_ops, ptr noundef %ndev, i32 noundef 2, i32 noundef 1, i8 noundef zeroext %21, i32 noundef %23, ptr noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %if.end42.cleanup_crit_edge, %do.end39, %do.end17, %if.end6.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -19, %do.end5 ], [ %call12, %do.end17 ], [ %19, %do.end39 ], [ %call43, %do.end48 ], [ -19, %do.end ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock_freq) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %clock_type) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_vsc_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fdp_nci_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fdp_nci_i2c_disable(ptr nocapture noundef readonly %phy_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %power_gpio.i = getelementptr inbounds %struct.fdp_i2c_phy, ptr %phy_id, i32 0, i32 1
  %0 = ptrtoint ptr %power_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 4000, i32 noundef 2) #5
  %2 = ptrtoint ptr %power_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 14000, i32 noundef 2) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_i2c_irq_thread_fn(i32 noundef %irq, ptr noundef %phy_id) #2 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #5
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !102
  %tobool.not = icmp eq ptr %phy_id, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %lor.lhs.false

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_id, align 4
  %irq1 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %irq)
  %cmp.not = icmp eq i32 %4, %irq
  br i1 %cmp.not, label %if.end36, label %lor.lhs.false.land.end_crit_edge

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.end:                                         ; preds = %lor.lhs.false.land.end_crit_edge, %entry.land.end_crit_edge
  %.b57 = load i1, ptr @fdp_nci_i2c_irq_thread_fn.__already_done, align 1
  br i1 %.b57, label %land.end.cleanup_crit_edge, label %if.then7, !prof !104

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @fdp_nci_i2c_irq_thread_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 202, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false
  %call = call fastcc i32 @fdp_nci_i2c_read(ptr noundef nonnull %phy_id, ptr noundef nonnull %skb)
  %5 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end43 [
    i32 -121, label %if.end36.cleanup_crit_edge
    i32 -12, label %if.end36.cleanup_crit_edge58
    i32 -74, label %if.end36.cleanup_crit_edge59
  ]

if.end36.cleanup_crit_edge59:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36.cleanup_crit_edge58:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb, align 4
  %cmp44.not = icmp eq ptr %7, null
  br i1 %cmp44.not, label %if.end43.cleanup_crit_edge, label %if.then45

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %ndev = getelementptr inbounds %struct.fdp_i2c_phy, ptr %phy_id, i32 0, i32 2
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 4
  %call46 = tail call i32 @nci_recv_frame(ptr noundef %9, ptr noundef nonnull %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end43.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end36.cleanup_crit_edge58, %if.end36.cleanup_crit_edge59, %if.then7, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 0, %land.end.cleanup_crit_edge ], [ 1, %if.end36.cleanup_crit_edge ], [ 1, %if.end36.cleanup_crit_edge58 ], [ 1, %if.end36.cleanup_crit_edge59 ], [ 1, %if.then45 ], [ 1, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdp_nci_i2c_read_device_properties(ptr noundef %dev, ptr noundef %clock_type, ptr noundef %clock_freq, ptr nocapture noundef %fw_vsc_cfg) unnamed_addr #2 align 64 {
entry:
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #5
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %len, align 1, !annotation !102
  %call.i = tail call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef %clock_type, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_i2c_read_device_properties, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !103

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.29) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %1 = ptrtoint ptr %clock_type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %clock_type, align 1
  br label %if.end6

if.end6:                                          ; preds = %do.end, %entry.if.end6_crit_edge
  %call.i107 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef %clock_freq, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool8.not = icmp eq i32 %call.i107, 0
  br i1 %tobool8.not, label %if.end6.if.end26_crit_edge, label %do.body10

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.body10:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_i2c_read_device_properties, %if.then22)) #5
          to label %do.end25 [label %if.then22], !srcloc !103

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.31) #5
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body10
  %2 = ptrtoint ptr %clock_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 26000, ptr %clock_freq, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %if.end6.if.end26_crit_edge
  %call27 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.32) #5
  br i1 %call27, label %if.then28, label %if.end26.do.body41_crit_edge

if.end26.do.body41_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

if.then28:                                        ; preds = %if.end26
  %call.i108 = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull %len, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool30.not = icmp eq i32 %call.i108, 0
  br i1 %tobool30.not, label %lor.lhs.false, label %if.then28.do.body41_crit_edge

if.then28.do.body41_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

lor.lhs.false:                                    ; preds = %if.then28
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %lor.lhs.false.do.body41_crit_edge, label %if.end33

lor.lhs.false.do.body41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

if.end33:                                         ; preds = %lor.lhs.false
  %inc = add i8 %4, 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %inc, ptr %len, align 1
  %conv34 = zext i8 %inc to i32
  %call5.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %conv34, i32 noundef 3264) #5
  %6 = ptrtoint ptr %fw_vsc_cfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i, ptr %fw_vsc_cfg, align 4
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 1
  %conv36 = zext i8 %8 to i32
  %call37 = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef %call5.i, i32 noundef %conv36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end33.do.body58_crit_edge, label %if.then39

if.end33.do.body58_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body58

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %fw_vsc_cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw_vsc_cfg, align 4
  call void @devm_kfree(ptr noundef %dev, ptr noundef %10) #5
  br label %do.body41

do.body41:                                        ; preds = %if.then39, %lor.lhs.false.do.body41_crit_edge, %if.then28.do.body41_crit_edge, %if.end26.do.body41_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_i2c_read_device_properties, %if.then53)) #5
          to label %do.end56 [label %if.then53], !srcloc !103

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.33) #5
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.body41
  %11 = ptrtoint ptr %fw_vsc_cfg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %fw_vsc_cfg, align 4
  br label %do.body58

do.body58:                                        ; preds = %do.end56, %if.end33.do.body58_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_i2c_read_device_properties, %if.then70)) #5
          to label %do.end76 [label %if.then70], !srcloc !103

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %clock_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %clock_type, align 1
  %conv71 = zext i8 %13 to i32
  %14 = ptrtoint ptr %clock_freq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clock_freq, align 4
  %16 = ptrtoint ptr %fw_vsc_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw_vsc_cfg, align 4
  %cmp72.not = icmp eq ptr %17, null
  %cond = select i1 %cmp72.not, ptr @.str.36, ptr @.str.35
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug321, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %conv71, i32 noundef %15, ptr noundef nonnull %cond) #5
  br label %do.end76

do.end76:                                         ; preds = %if.then70, %do.body58
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdp_nci_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fdp_nci_i2c_read(ptr nocapture noundef %phy, ptr nocapture noundef %skb) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca [261 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 261, ptr nonnull %tmp) #5
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 261)
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy, align 4
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %skb, align 4
  %next_read_size = getelementptr inbounds %struct.fdp_i2c_phy, ptr %phy, i32 0, i32 4
  %arrayidx44 = getelementptr inbounds [261 x i8], ptr %tmp, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [261 x i8], ptr %tmp, i32 0, i32 2
  %arrayidx51 = getelementptr inbounds [261 x i8], ptr %tmp, i32 0, i32 3
  %4 = ptrtoint ptr %next_read_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next_read_size, align 4
  %conv2 = zext i16 %5 to i32
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %tmp, i32 noundef %conv2, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv2)
  %cmp3.not = icmp eq i32 %call.i, %conv2
  br i1 %cmp3.not, label %for.cond11.preheader, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.cond11.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp13118.not = icmp eq i16 %5, 0
  br i1 %cmp13118.not, label %for.cond11.preheader.if.end39_crit_edge, label %for.cond11.preheader.for.body15_crit_edge

for.cond11.preheader.for.body15_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body15

for.cond11.preheader.if.end39_crit_edge:          ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

do.body:                                          ; preds = %for.inc66.do.body_crit_edge, %entry.do.body_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.do.body_crit_edge ], [ %call.i.1, %for.inc66.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_i2c_read.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_i2c_read, %if.then9)) #5
          to label %flush [label %if.then9], !srcloc !103

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_i2c_read.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %call.i.lcssa) #5
  br label %flush

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.cond11.preheader.for.body15_crit_edge
  %conv12121 = phi i32 [ %conv12, %for.body15.for.body15_crit_edge ], [ 0, %for.cond11.preheader.for.body15_crit_edge ]
  %lrc.0120 = phi i8 [ %xor104, %for.body15.for.body15_crit_edge ], [ 0, %for.cond11.preheader.for.body15_crit_edge ]
  %i.0119 = phi i16 [ %inc, %for.body15.for.body15_crit_edge ], [ 0, %for.cond11.preheader.for.body15_crit_edge ]
  %arrayidx = getelementptr [261 x i8], ptr %tmp, i32 0, i32 %conv12121
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %xor104 = xor i8 %7, %lrc.0120
  %inc = add nuw i16 %i.0119, 1
  %conv12 = zext i16 %inc to i32
  %cmp13 = icmp ugt i16 %5, %inc
  br i1 %cmp13, label %for.body15.for.body15_crit_edge, label %for.end

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15

for.end:                                          ; preds = %for.body15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor104)
  %phi.cmp = icmp eq i8 %xor104, 0
  br i1 %phi.cmp, label %for.end.if.end39_crit_edge, label %for.end.do.body21_crit_edge

for.end.do.body21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

do.body21:                                        ; preds = %for.end.1.do.body21_crit_edge, %for.end.do.body21_crit_edge
  %call.i.lcssa123 = phi i32 [ %conv2, %for.end.do.body21_crit_edge ], [ %conv2.1, %for.end.1.do.body21_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_i2c_read.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_i2c_read, %if.then33)) #5
          to label %do.end37 [label %if.then33], !srcloc !103

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %dev34 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_i2c_read.__UNIQUE_ID_ddebug317, ptr noundef %dev34, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21) #5
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %do.body21
  %8 = ptrtoint ptr %next_read_size to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 5, ptr %next_read_size, align 4
  br label %flush

if.end39:                                         ; preds = %for.end.if.end39_crit_edge, %for.cond11.preheader.if.end39_crit_edge
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp42 = icmp eq i8 %10, 0
  br i1 %cmp42, label %land.lhs.true, label %if.end39.if.else_crit_edge

if.end39.if.else_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end39
  %11 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp46 = icmp eq i8 %12, 0
  br i1 %cmp46, label %if.then48, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %14 to i16
  %shl = shl nuw i16 %conv50, 8
  %15 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %16 to i16
  %add = or i16 %shl, %conv52
  %add53 = add i16 %add, 3
  %17 = ptrtoint ptr %next_read_size to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %add53, ptr %next_read_size, align 4
  br label %for.inc66

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end39.if.else_crit_edge
  %18 = ptrtoint ptr %next_read_size to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 5, ptr %next_read_size, align 4
  %call.i108 = call ptr @__alloc_skb(i32 noundef %conv2, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i108, ptr %skb, align 4
  %cmp58 = icmp eq ptr %call.i108, null
  br i1 %cmp58, label %if.else.flush_crit_edge, label %if.end61

if.else.flush_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %flush

if.end61:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call.i109 = call ptr @skb_put(ptr noundef nonnull %call.i108, i32 noundef %conv2) #5
  %20 = call ptr @memcpy(ptr %call.i109, ptr %tmp, i32 %conv2)
  %21 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %len64 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 6
  %25 = ptrtoint ptr %len64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len64, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %24, i32 noundef %26, i1 noundef zeroext false) #5
  %27 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb, align 4
  %call.i110 = call ptr @skb_pull(ptr noundef %28, i32 noundef 2) #5
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %30, -1
  call void @skb_trim(ptr noundef %28, i32 noundef %sub.i) #5
  %31 = ptrtoint ptr %next_read_size to i32
  call void @__asan_load2_noabort(i32 %31)
  %.pr = load i16, ptr %next_read_size, align 4
  br label %for.inc66

for.inc66:                                        ; preds = %if.end61, %if.then48
  %32 = phi i16 [ %add53, %if.then48 ], [ %.pr, %if.end61 ]
  %conv2.1 = zext i16 %32 to i32
  %call.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %tmp, i32 noundef %conv2.1, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.1, i32 %conv2.1)
  %cmp3.not.1 = icmp eq i32 %call.i.1, %conv2.1
  br i1 %cmp3.not.1, label %for.cond11.preheader.1, label %for.inc66.do.body_crit_edge

for.inc66.do.body_crit_edge:                      ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.cond11.preheader.1:                           ; preds = %for.inc66
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp13118.1.not = icmp eq i16 %32, 0
  br i1 %cmp13118.1.not, label %for.cond11.preheader.1.if.end39.1_crit_edge, label %for.cond11.preheader.1.for.body15.1_crit_edge

for.cond11.preheader.1.for.body15.1_crit_edge:    ; preds = %for.cond11.preheader.1
  br label %for.body15.1

for.cond11.preheader.1.if.end39.1_crit_edge:      ; preds = %for.cond11.preheader.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.1

for.body15.1:                                     ; preds = %for.body15.1.for.body15.1_crit_edge, %for.cond11.preheader.1.for.body15.1_crit_edge
  %conv12121.1 = phi i32 [ %conv12.1, %for.body15.1.for.body15.1_crit_edge ], [ 0, %for.cond11.preheader.1.for.body15.1_crit_edge ]
  %lrc.0120.1 = phi i8 [ %xor104.1, %for.body15.1.for.body15.1_crit_edge ], [ 0, %for.cond11.preheader.1.for.body15.1_crit_edge ]
  %i.0119.1 = phi i16 [ %inc.1, %for.body15.1.for.body15.1_crit_edge ], [ 0, %for.cond11.preheader.1.for.body15.1_crit_edge ]
  %arrayidx.1 = getelementptr [261 x i8], ptr %tmp, i32 0, i32 %conv12121.1
  %33 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.1, align 1
  %xor104.1 = xor i8 %34, %lrc.0120.1
  %inc.1 = add nuw i16 %i.0119.1, 1
  %conv12.1 = zext i16 %inc.1 to i32
  %cmp13.1 = icmp ugt i16 %32, %inc.1
  br i1 %cmp13.1, label %for.body15.1.for.body15.1_crit_edge, label %for.end.1

for.body15.1.for.body15.1_crit_edge:              ; preds = %for.body15.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15.1

for.end.1:                                        ; preds = %for.body15.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor104.1)
  %phi.cmp126 = icmp eq i8 %xor104.1, 0
  br i1 %phi.cmp126, label %for.end.1.if.end39.1_crit_edge, label %for.end.1.do.body21_crit_edge

for.end.1.do.body21_crit_edge:                    ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21

for.end.1.if.end39.1_crit_edge:                   ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.1

if.end39.1:                                       ; preds = %for.end.1.if.end39.1_crit_edge, %for.cond11.preheader.1.if.end39.1_crit_edge
  %35 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp42.1 = icmp eq i8 %36, 0
  br i1 %cmp42.1, label %land.lhs.true.1, label %if.end39.1.if.else.1_crit_edge

if.end39.1.if.else.1_crit_edge:                   ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.1

land.lhs.true.1:                                  ; preds = %if.end39.1
  %37 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp46.1 = icmp eq i8 %38, 0
  br i1 %cmp46.1, label %if.then48.1, label %land.lhs.true.1.if.else.1_crit_edge

land.lhs.true.1.if.else.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.1

if.else.1:                                        ; preds = %land.lhs.true.1.if.else.1_crit_edge, %if.end39.1.if.else.1_crit_edge
  %39 = ptrtoint ptr %next_read_size to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 5, ptr %next_read_size, align 4
  %call.i108.1 = call ptr @__alloc_skb(i32 noundef %conv2.1, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %40 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i108.1, ptr %skb, align 4
  %cmp58.1 = icmp eq ptr %call.i108.1, null
  br i1 %cmp58.1, label %if.else.1.flush_crit_edge, label %if.end61.1

if.else.1.flush_crit_edge:                        ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %flush

if.end61.1:                                       ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  %call.i109.1 = call ptr @skb_put(ptr noundef nonnull %call.i108.1, i32 noundef %conv2.1) #5
  %41 = call ptr @memcpy(ptr %call.i109.1, ptr %tmp, i32 %conv2.1)
  %42 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skb, align 4
  %data.1 = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 19
  %44 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.1, align 4
  %len64.1 = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 6
  %46 = ptrtoint ptr %len64.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len64.1, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %45, i32 noundef %47, i1 noundef zeroext false) #5
  %48 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skb, align 4
  %call.i110.1 = call ptr @skb_pull(ptr noundef %49, i32 noundef 2) #5
  %len.i.1 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %len.i.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i.1, align 4
  %sub.i.1 = add i32 %51, -1
  call void @skb_trim(ptr noundef %49, i32 noundef %sub.i.1) #5
  br label %cleanup

if.then48.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx49, align 1
  %conv50.1 = zext i8 %53 to i16
  %shl.1 = shl nuw i16 %conv50.1, 8
  %54 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx51, align 1
  %conv52.1 = zext i8 %55 to i16
  %add.1 = or i16 %shl.1, %conv52.1
  %add53.1 = add i16 %add.1, 3
  %56 = ptrtoint ptr %next_read_size to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %add53.1, ptr %next_read_size, align 4
  br label %cleanup

flush:                                            ; preds = %if.else.1.flush_crit_edge, %if.else.flush_crit_edge, %do.end37, %if.then9, %do.body
  %r.0 = phi i32 [ %call.i.lcssa, %if.then9 ], [ %call.i.lcssa123, %do.end37 ], [ %call.i.lcssa, %do.body ], [ -12, %if.else.1.flush_crit_edge ], [ -12, %if.else.flush_crit_edge ]
  %call.i111 = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %tmp, i32 noundef 261, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp71 = icmp slt i32 %call.i111, 0
  %spec.select = select i1 %cmp71, i32 -121, i32 %r.0
  br label %cleanup

cleanup:                                          ; preds = %flush, %if.then48.1, %if.end61.1
  %retval.0 = phi i32 [ %spec.select, %flush ], [ 0, %if.then48.1 ], [ 0, %if.end61.1 ]
  call void @llvm.lifetime.end.p0(i64 261, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_i2c_write(ptr nocapture noundef %phy_id, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_id, align 4
  %hard_fault = getelementptr inbounds %struct.fdp_i2c_phy, ptr %phy_id, i32 0, i32 3
  %2 = ptrtoint ptr %hard_fault to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hard_fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1.i, align 4
  %conv2.i = and i32 %5, 65535
  %conv3.i = trunc i32 %5 to i8
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #5
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3.i, ptr %call.i, align 1
  %7 = lshr i32 %5, 8
  %conv5.i = trunc i32 %7 to i8
  %call6.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #5
  %8 = ptrtoint ptr %call6.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5.i, ptr %call6.i, align 1
  %add.i = add nuw nsw i32 %conv2.i, 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %conv725.i = phi i32 [ 0, %if.end ], [ %conv7.i, %for.body.i.for.body.i_crit_edge ]
  %i.024.i = phi i16 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %lrc.023.i = phi i8 [ 0, %if.end ], [ %xor22.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %10, i32 %conv725.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %xor22.i = xor i8 %12, %lrc.023.i
  %inc.i = add i16 %i.024.i, 1
  %conv7.i = zext i16 %inc.i to i32
  %cmp.i = icmp ugt i32 %add.i, %conv7.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %fdp_nci_i2c_add_len_lrc.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

fdp_nci_i2c_add_len_lrc.exit:                     ; preds = %for.body.i
  %call.i.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #5
  %13 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %xor22.i, ptr %call.i.i, align 1
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %16 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len1.i, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.37, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %15, i32 noundef %17, i1 noundef zeroext false) #5
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %20 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len1.i, align 4
  %call.i53 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %19, i32 noundef %21, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -121, i32 %call.i53)
  %cmp4 = icmp eq i32 %call.i53, -121
  br i1 %cmp4, label %if.then5, label %fdp_nci_i2c_add_len_lrc.exit.if.end9_crit_edge

fdp_nci_i2c_add_len_lrc.exit.if.end9_crit_edge:   ; preds = %fdp_nci_i2c_add_len_lrc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then5:                                         ; preds = %fdp_nci_i2c_add_len_lrc.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 4000, i32 noundef 2) #5
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %24 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len1.i, align 4
  %call.i54 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %23, i32 noundef %25, i16 noundef zeroext 0) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %fdp_nci_i2c_add_len_lrc.exit.if.end9_crit_edge
  %r.0 = phi i32 [ %call.i54, %if.then5 ], [ %call.i53, %fdp_nci_i2c_add_len_lrc.exit.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %cmp10 = icmp slt i32 %r.0, 0
  br i1 %cmp10, label %if.end9.do.body_crit_edge, label %lor.lhs.false

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end9
  %26 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %r.0, i32 %27)
  %cmp12.not = icmp eq i32 %r.0, %27
  br i1 %cmp12.not, label %lor.lhs.false.if.then22_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end9.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fdp_nci_i2c_write.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fdp_nci_i2c_write, %if.then17)) #5
          to label %if.end20 [label %if.then17], !srcloc !103

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fdp_nci_i2c_write.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %r.0, i32 noundef %29) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %r.0)
  %cmp21 = icmp sgt i32 %r.0, -1
  br i1 %cmp21, label %if.end20.if.then22_crit_edge, label %if.end20.if.end28_crit_edge

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end20.if.then22_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

if.then22:                                        ; preds = %if.end20.if.then22_crit_edge, %lor.lhs.false.if.then22_crit_edge
  %30 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %r.0, i32 %31)
  %cmp24.not = icmp eq i32 %r.0, %31
  br i1 %cmp24.not, label %if.then22.if.end28_crit_edge, label %if.then25

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %hard_fault to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %r.0, ptr %hard_fault, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.then22.if.end28_crit_edge, %if.end20.if.end28_crit_edge
  %r.1 = phi i32 [ -121, %if.then25 ], [ %r.0, %if.end20.if.end28_crit_edge ], [ 0, %if.then22.if.end28_crit_edge ]
  %call.i55 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #5
  %33 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %34, -1
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %if.end28 ], [ %3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdp_nci_i2c_enable(ptr nocapture noundef readonly %phy_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %power_gpio.i = getelementptr inbounds %struct.fdp_i2c_phy, ptr %phy_id, i32 0, i32 1
  %0 = ptrtoint ptr %power_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 4000, i32 noundef 2) #5
  %2 = ptrtoint ptr %power_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 14000, i32 noundef 2) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !55, !56, !58, !60, !62, !64, !66, !67, !68, !70, !72, !73, !75, !77, !78, !80, !81, !82, !83, !85, !87, !89, !90, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_fdp_i2c__323_363_fdp_nci_i2c_driver_init6, !1, !"__initcall__kmod_fdp_i2c__323_363_fdp_nci_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/fdp/i2c.c", i32 363, i32 1}
!2 = !{ptr @__exitcall_fdp_nci_i2c_driver_exit, !1, !"__exitcall_fdp_nci_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file324, !4, !"__UNIQUE_ID_file324", i1 false, i1 false}
!4 = !{!"../drivers/nfc/fdp/i2c.c", i32 365, i32 1}
!5 = !{ptr @__UNIQUE_ID_license325, !4, !"__UNIQUE_ID_license325", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description326, !7, !"__UNIQUE_ID_description326", i1 false, i1 false}
!7 = !{!"../drivers/nfc/fdp/i2c.c", i32 366, i32 1}
!8 = !{ptr @__UNIQUE_ID_author327, !9, !"__UNIQUE_ID_author327", i1 false, i1 false}
!9 = !{!"../drivers/nfc/fdp/i2c.c", i32 367, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nfc/fdp/i2c.c", i32 357, i32 14}
!12 = !{ptr @fdp_nci_i2c_driver, !13, !"fdp_nci_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/nfc/fdp/i2c.c", i32 355, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nfc/fdp/i2c.c", i32 284, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @fdp_nci_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @fdp_nci_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/nfc/fdp/i2c.c", i32 290, i32 3}
!24 = !{ptr @fdp_nci_i2c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @fdp_nci_i2c_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/nfc/fdp/i2c.c", i32 308, i32 3}
!28 = !{ptr @fdp_nci_i2c_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @fdp_nci_i2c_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/nfc/fdp/i2c.c", i32 314, i32 3}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @fdp_nci_i2c_probe.__UNIQUE_ID_ddebug322, !31, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/nfc/fdp/i2c.c", i32 317, i32 40}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/nfc/fdp/i2c.c", i32 319, i32 3}
!38 = !{ptr @fdp_nci_i2c_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @fdp_nci_i2c_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/nfc/fdp/i2c.c", i32 332, i32 3}
!42 = !{ptr @fdp_nci_i2c_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @fdp_nci_i2c_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/nfc/fdp/i2c.c", i32 202, i32 3}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/nfc/fdp/i2c.c", i32 145, i32 4}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @fdp_nci_i2c_read.__UNIQUE_ID_ddebug316, !47, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/nfc/fdp/i2c.c", i32 160, i32 4}
!52 = !{ptr @fdp_nci_i2c_read.__UNIQUE_ID_ddebug317, !51, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/nfc/fdp/i2c.c", i32 179, i32 4}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/nfc/fdp/i2c.c", i32 270, i32 4}
!58 = distinct !{null, !59, !"acpi_fdp_gpios", i1 false, i1 false}
!59 = !{!"../drivers/nfc/fdp/i2c.c", i32 269, i32 39}
!60 = distinct !{null, !61, !"power_gpios", i1 false, i1 false}
!61 = !{!"../drivers/nfc/fdp/i2c.c", i32 267, i32 38}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/nfc/fdp/i2c.c", i32 224, i32 35}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/nfc/fdp/i2c.c", i32 226, i32 3}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug318, !65, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/nfc/fdp/i2c.c", i32 230, i32 36}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/nfc/fdp/i2c.c", i32 232, i32 3}
!72 = !{ptr @fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug319, !71, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/nfc/fdp/i2c.c", i32 236, i32 35}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/nfc/fdp/i2c.c", i32 259, i32 3}
!77 = !{ptr @fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug320, !76, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/nfc/fdp/i2c.c", i32 263, i32 2}
!80 = !{ptr @fdp_nci_i2c_read_device_properties.__UNIQUE_ID_ddebug321, !79, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!81 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @i2c_phy_ops, !84, !"i2c_phy_ops", i1 false, i1 false}
!84 = !{!"../drivers/nfc/fdp/i2c.c", i32 123, i32 33}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/nfc/fdp/i2c.c", i32 97, i32 2}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/nfc/fdp/i2c.c", i32 106, i32 3}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @fdp_nci_i2c_write.__UNIQUE_ID_ddebug315, !88, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!91 = !{ptr @fdp_nci_i2c_acpi_match, !92, !"fdp_nci_i2c_acpi_match", i1 false, i1 false}
!92 = !{!"../drivers/nfc/fdp/i2c.c", i32 349, i32 36}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
!103 = !{i64 2148959971, i64 2148959976, i64 2148959989, i64 2148960033, i64 2148960067, i64 2148960088}
!104 = !{!"branch_weights", i32 2000, i32 1}
