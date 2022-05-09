; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-sis630.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-sis630.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }

@__param_str_high_clock = internal constant [22 x i8] c"i2c_sis630.high_clock\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@high_clock = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_high_clock = internal constant %struct.kernel_param { ptr @__param_str_high_clock, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @high_clock } }, section "__param", align 4
@__UNIQUE_ID_high_clocktype292 = internal constant [36 x i8] c"i2c_sis630.parmtype=high_clock:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_high_clock293 = internal constant [93 x i8] c"i2c_sis630.parm=high_clock:Set Host Master Clock to 56KHz (default 14KHz) (SIS630/730 only).\00", section ".modinfo", align 1
@__param_str_force = internal constant [17 x i8] c"i2c_sis630.force\00", align 1
@force = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force = internal constant %struct.kernel_param { ptr @__param_str_force, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @force } }, section "__param", align 4
@__UNIQUE_ID_forcetype294 = internal constant [31 x i8] c"i2c_sis630.parmtype=force:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force295 = internal constant [61 x i8] c"i2c_sis630.parm=force:Forcibly enable the SIS630. DANGEROUS!\00", section ".modinfo", align 1
@__initcall__kmod_i2c_sis630__315_545_sis630_driver_init6 = internal global ptr @sis630_driver_init, section ".initcall6.init", align 4
@sis630_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @sis630_ids, ptr @sis630_probe, ptr @sis630_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sis630_driver_exit = internal global ptr @sis630_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file316 = internal constant [46 x i8] c"i2c_sis630.file=drivers/i2c/busses/i2c-sis630\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [23 x i8] c"i2c_sis630.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author318 = internal constant [52 x i8] c"i2c_sis630.author=Alexander Malysh <amalysh@web.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description319 = internal constant [43 x i8] c"i2c_sis630.description=SIS630 SMBus driver\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_sis630\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sis630_smbus\00", [19 x i8] zeroinitializer }, align 32
@sis630_ids = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4153, i32 8, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 24, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 2404, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sis630_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 515, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"SIS630 compatible bus not detected, module not inserted.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sis630_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-sis630.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sis630_probe._entry_ptr = internal global ptr @sis630_probe._entry, section ".printk_index", align 4
@sis630_adapter = internal global { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 129, ptr @smbus_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 3, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] zeroinitializer, %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SMBus SIS630 adapter at %04x\00", [35 x i8] zeroinitializer }, align 32
@smbus_base = internal global { i16, [30 x i8] } zeroinitializer, align 32
@sis630_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 424, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"WARNING: Can't detect SIS630 compatible device, but loading because of force option enabled\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sis630_setup\00", [19 x i8] zeroinitializer }, align 32
@sis630_setup._entry_ptr = internal global ptr @sis630_setup._entry, section ".printk_index", align 4
@sis630_setup._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 434, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error: Can't read bios ctl reg\0A\00", [32 x i8] zeroinitializer }, align 32
@sis630_setup._entry_ptr.12 = internal global ptr @sis630_setup._entry.10, section ".printk_index", align 4
@sis630_setup._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.4, i32 441, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error: Can't enable ACPI\0A\00", [38 x i8] zeroinitializer }, align 32
@sis630_setup._entry_ptr.15 = internal global ptr @sis630_setup._entry.13, section ".printk_index", align 4
@sis630_setup._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.4, i32 450, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error: Can't determine ACPI base address\0A\00", [54 x i8] zeroinitializer }, align 32
@sis630_setup._entry_ptr.18 = internal global ptr @sis630_setup._entry.16, section ".printk_index", align 4
@sis630_setup.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.19, i8 0, i8 113, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ACPI base at 0x%04hx\0A\00", [42 x i8] zeroinitializer }, align 32
@sis630_setup.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.20, i8 0, i8 115, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SMBus base at 0x%04hx\0A\00", [41 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@sis630_setup._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.9, ptr @.str.4, i32 475, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"I/O Region 0x%04x-0x%04x for SMBus already in use.\0A\00", [44 x i8] zeroinitializer }, align 32
@sis630_setup._entry_ptr.23 = internal global ptr @sis630_setup._entry.21, section ".printk_index", align 4
@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @sis630_access, ptr null, ptr @sis630_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sis630_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 369, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sis630_access\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sis630_access._entry_ptr = internal global ptr @sis630_access._entry, section ".printk_index", align 4
@sis630_block_data.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 0, i8 61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sis630_block_data\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"set data 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@sis630_block_data.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.29, i8 0, i8 62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"start trans len=%d i=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@sis630_block_data.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.30, i8 0, i8 64, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"trans_wait len=%d i=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@sis630_block_data.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.31, i8 0, i8 65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clear smbary_sts len=%d i=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@sis630_block_data.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.32, i8 0, i8 68, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trans_wait failed\0A\00", [45 x i8] zeroinitializer }, align 32
@sis630_block_data.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.32, i8 0, i8 72, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@sis630_block_data.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.33, i8 0, i8 75, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"block data read len=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@sis630_block_data.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.34, i8 0, i8 76, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read i=%d len=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@sis630_block_data.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.31, i8 0, i8 77, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@sis630_transaction_start.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sis630_transaction_start\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SMBus busy (%02x). Resetting...\0A\00", [63 x i8] zeroinitializer }, align 32
@sis630_transaction_start.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.37, i8 0, i8 33, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Failed! (%02x)\0A\00", [16 x i8] zeroinitializer }, align 32
@sis630_transaction_start.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.38, i8 0, i8 34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Successful!\0A\00", [19 x i8] zeroinitializer }, align 32
@sis630_transaction_start.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.39, i8 0, i8 36, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saved clock 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@sis630_transaction_wait.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sis630_transaction_wait\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMBus Timeout!\0A\00", [16 x i8] zeroinitializer }, align 32
@sis630_transaction_wait.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.4, ptr @.str.42, i8 0, i8 46, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error: Failed bus transaction\0A\00", [33 x i8] zeroinitializer }, align 32
@sis630_transaction_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.4, i32 189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bus collision!\0A\00", [16 x i8] zeroinitializer }, align 32
@sis630_transaction_wait._entry_ptr = internal global ptr @sis630_transaction_wait._entry, section ".printk_index", align 4
@sis630_transaction_end.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 50, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sis630_transaction_end\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SMB_CNT before clock restore 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@sis630_transaction_end.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.4, ptr @.str.46, i8 0, i8 53, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SMB_CNT after clock restore 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.48 = private unnamed_addr constant [11 x i8] c"high_clock\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 92, i32 13 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 93, i32 13 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"sis630_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 538, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 545, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 539, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"sis630_ids\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 501, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 513, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"sis630_adapter\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 494, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 523, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [11 x i8] c"smbus_base\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 101, i32 23 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 422, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 434, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 441, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 449, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 455, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 462, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 472, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 489, i32 35 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 369, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 243, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 248, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 256, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 259, i32 6 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 272, i32 6 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 299, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 303, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 129, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 135, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 138, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 145, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 179, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 184, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 189, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 201, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-sis630.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 211, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file316, ptr @__UNIQUE_ID_force295, ptr @__UNIQUE_ID_forcetype294, ptr @__UNIQUE_ID_high_clock293, ptr @__UNIQUE_ID_high_clocktype292, ptr @__UNIQUE_ID_license317, ptr @__exitcall_sis630_driver_exit, ptr @__initcall__kmod_i2c_sis630__315_545_sis630_driver_init6, ptr @__param_force, ptr @__param_high_clock, ptr @sis630_access._entry, ptr @sis630_access._entry_ptr, ptr @sis630_driver_exit, ptr @sis630_probe._entry, ptr @sis630_probe._entry_ptr, ptr @sis630_setup._entry, ptr @sis630_setup._entry.10, ptr @sis630_setup._entry.13, ptr @sis630_setup._entry.16, ptr @sis630_setup._entry.21, ptr @sis630_setup._entry_ptr, ptr @sis630_setup._entry_ptr.12, ptr @sis630_setup._entry_ptr.15, ptr @sis630_setup._entry_ptr.18, ptr @sis630_setup._entry_ptr.23, ptr @sis630_transaction_wait._entry, ptr @sis630_transaction_wait._entry_ptr, ptr @high_clock, ptr @force, ptr @sis630_driver, ptr @.str, ptr @.str.1, ptr @sis630_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sis630_adapter, ptr @.str.7, ptr @smbus_base, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @smbus_algorithm, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @high_clock to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis630_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis630_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis630_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis630_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_base to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis630_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis630_setup._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis630_setup._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis630_setup._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis630_setup._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis630_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis630_transaction_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sis630_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sis630_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sis630_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @sis630_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis630_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sis630_setup(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.2) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %dev2, ptr getelementptr inbounds (%struct.i2c_adapter, ptr @sis630_adapter, i32 0, i32 9, i32 1), align 8
  %0 = load i16, ptr @smbus_base, align 2
  %conv = zext i16 %0 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sis630_adapter, i32 0, i32 12), i32 noundef 48, ptr noundef nonnull @.str.7, i32 noundef %conv)
  %call4 = tail call i32 @i2c_add_adapter(ptr noundef nonnull @sis630_adapter) #8
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis630_remove(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @smbus_base, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_adapter(ptr noundef nonnull @sis630_adapter) #8
  %1 = load i16, ptr @smbus_base, align 2
  %conv = zext i16 %1 to i32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv, i32 noundef 20) #8
  store i16 0, ptr @smbus_base, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sis630_setup(ptr noundef %sis630_dev) unnamed_addr #2 align 64 {
entry:
  %b = alloca i8, align 1
  %acpi_base = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #8
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b, align 1, !annotation !150
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %acpi_base) #8
  %1 = ptrtoint ptr %acpi_base to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %acpi_base, align 2, !annotation !150
  %call = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1584, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.cond, label %entry.if.then4_crit_edge

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.cond:                                         ; preds = %entry
  %call.1 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1840, ptr noundef null) #8
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.if.then4_crit_edge

for.cond.if.then4_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1888, ptr noundef null) #8
  %tobool.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.if.then4_crit_edge

for.cond.1.if.then4_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.cond.2:                                       ; preds = %for.cond.1
  %2 = load i8, ptr @force, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool5.not = icmp eq i8 %2, 0
  br i1 %tobool5.not, label %for.cond.2.cleanup_crit_edge, label %do.end

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %for.cond.1.if.then4_crit_edge, %for.cond.if.then4_crit_edge, %entry.if.then4_crit_edge
  %.lcssa = phi i32 [ 0, %entry.if.then4_crit_edge ], [ 1, %for.cond.if.then4_crit_edge ], [ 2, %for.cond.1.if.then4_crit_edge ]
  %call.lcssa = phi ptr [ %call, %entry.if.then4_crit_edge ], [ %call.1, %for.cond.if.then4_crit_edge ], [ %call.2, %for.cond.1.if.then4_crit_edge ]
  tail call void @pci_dev_put(ptr noundef nonnull %call.lcssa) #8
  br label %if.end9

do.end:                                           ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %sis630_dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then4
  %3 = phi i32 [ 3, %do.end ], [ %.lcssa, %if.then4 ]
  %call10 = call i32 @pci_read_config_byte(ptr noundef %sis630_dev, i32 noundef 64, ptr noundef nonnull %b) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %sis630_dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.11) #11
  br label %if.then102

if.end17:                                         ; preds = %if.end9
  %4 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool18.not = icmp sgt i8 %5, -1
  br i1 %tobool18.not, label %land.lhs.true, label %if.end17.if.end28_crit_edge

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end17
  %or = or i8 %5, -128
  %call21 = call i32 @pci_write_config_byte(ptr noundef %sis630_dev, i32 noundef 64, i8 noundef zeroext %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end28_crit_edge, label %do.end26

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.end26:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %sis630_dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.14) #11
  br label %if.then102

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end17.if.end28_crit_edge
  %call29 = call i32 @pci_read_config_word(ptr noundef %sis630_dev, i32 noundef 116, ptr noundef nonnull %acpi_base) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body37, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %sis630_dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.17) #11
  br label %if.then102

do.body37:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_setup.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_setup, %do.end48)) #8
          to label %if.then43 [label %do.end48], !srcloc !152

if.then43:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %sis630_dev, i32 0, i32 44
  %6 = ptrtoint ptr %acpi_base to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %acpi_base, align 2
  %conv45 = zext i16 %7 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_setup.__UNIQUE_ID_ddebug313, ptr noundef %dev44, ptr noundef nonnull @.str.19, i32 noundef %conv45) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.body37
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp50 = icmp eq i32 %3, 2
  %8 = ptrtoint ptr %acpi_base to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %acpi_base, align 2
  %. = select i1 %cmp50, i16 224, i16 128
  %add = add i16 %9, %.
  store i16 %add, ptr @smbus_base, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_setup.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_setup, %do.end79)) #8
          to label %if.then74 [label %do.end79], !srcloc !152

if.then74:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %sis630_dev, i32 0, i32 44
  %10 = load i16, ptr @smbus_base, align 2
  %conv76 = zext i16 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_setup.__UNIQUE_ID_ddebug314, ptr noundef %dev75, ptr noundef nonnull @.str.20, i32 noundef %conv76) #8
  br label %do.end79

do.end79:                                         ; preds = %if.then74, %do.end48
  %11 = load i16, ptr @smbus_base, align 2
  %conv86 = zext i16 %11 to i32
  %12 = load ptr, ptr getelementptr inbounds (%struct.pci_driver, ptr @sis630_driver, i32 0, i32 1), align 4
  %call88 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv86, i32 noundef 20, ptr noundef %12, i32 noundef 0) #8
  %tobool89.not = icmp eq ptr %call88, null
  br i1 %tobool89.not, label %do.end93, label %do.end79.cleanup_crit_edge

do.end79.cleanup_crit_edge:                       ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end93:                                         ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #10
  %dev94 = getelementptr inbounds %struct.pci_dev, ptr %sis630_dev, i32 0, i32 44
  %13 = load i16, ptr @smbus_base, align 2
  %conv95 = zext i16 %13 to i32
  %sub = add nuw nsw i32 %conv95, 19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.22, i32 noundef %conv95, i32 noundef %sub) #11
  br label %if.then102

if.then102:                                       ; preds = %do.end93, %do.end34, %do.end26, %do.end15
  %retval1.0.ph = phi i32 [ -19, %do.end15 ], [ -19, %do.end26 ], [ -19, %do.end34 ], [ -16, %do.end93 ]
  store i16 0, ptr @smbus_base, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %do.end79.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %for.cond.2.cleanup_crit_edge ], [ %retval1.0.ph, %if.then102 ], [ 0, %do.end79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %acpi_base) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis630_access(ptr noundef %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  %oldclock.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb14
    i32 4, label %entry.sw.bb27_crit_edge
    i32 3, label %entry.sw.bb27_crit_edge158
    i32 5, label %sw.bb48
  ]

entry.sw.bb27_crit_edge158:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

entry.sw.bb27_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %addr.tr112 = trunc i16 %addr to i8
  %shl = shl i8 %addr.tr112, 1
  %1 = and i8 %read_write, 1
  %or = or i8 %1, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %2 = load i16, ptr @smbus_base, align 2
  %conv.i = zext i16 %2 to i32
  %add2.i = add nuw nsw i32 %conv.i, -18874364
  %3 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %or) #8, !srcloc !154
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %addr.tr111 = trunc i16 %addr to i8
  %shl7 = shl i8 %addr.tr111, 1
  %and9 = and i8 %read_write, 1
  %or10 = or i8 %and9, %shl7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %4 = load i16, ptr @smbus_base, align 2
  %conv.i114 = zext i16 %4 to i32
  %add2.i116 = add nuw nsw i32 %conv.i114, -18874364
  %5 = inttoptr i32 %add2.i116 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %or10) #8, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp = icmp eq i8 %read_write, 0
  br i1 %cmp, label %if.then, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %6 = load i16, ptr @smbus_base, align 2
  %conv.i117 = zext i16 %6 to i32
  %add2.i119 = add nuw nsw i32 %conv.i117, -18874363
  %7 = inttoptr i32 %add2.i119 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %command) #8, !srcloc !154
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %addr.tr110 = trunc i16 %addr to i8
  %shl17 = shl i8 %addr.tr110, 1
  %and19 = and i8 %read_write, 1
  %or20 = or i8 %and19, %shl17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %8 = load i16, ptr @smbus_base, align 2
  %conv.i120 = zext i16 %8 to i32
  %add2.i122 = add nuw nsw i32 %conv.i120, -18874364
  %9 = inttoptr i32 %add2.i122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %or20) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %10 = load i16, ptr @smbus_base, align 2
  %conv.i123 = zext i16 %10 to i32
  %add2.i125 = add nuw nsw i32 %conv.i123, -18874363
  %11 = inttoptr i32 %add2.i125 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %command) #8, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp23 = icmp eq i8 %read_write, 0
  br i1 %cmp23, label %if.then25, label %sw.bb14.sw.epilog_crit_edge

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then25:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %14 = load i16, ptr @smbus_base, align 2
  %conv.i126 = zext i16 %14 to i32
  %add2.i128 = add nuw nsw i32 %conv.i126, -18874360
  %15 = inttoptr i32 %add2.i128 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %13) #8, !srcloc !154
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry.sw.bb27_crit_edge, %entry.sw.bb27_crit_edge158
  %addr.tr109 = trunc i16 %addr to i8
  %shl30 = shl i8 %addr.tr109, 1
  %and32 = and i8 %read_write, 1
  %or33 = or i8 %and32, %shl30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %16 = load i16, ptr @smbus_base, align 2
  %conv.i129 = zext i16 %16 to i32
  %add2.i131 = add nuw nsw i32 %conv.i129, -18874364
  %17 = inttoptr i32 %add2.i131 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %or33) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %18 = load i16, ptr @smbus_base, align 2
  %conv.i132 = zext i16 %18 to i32
  %add2.i134 = add nuw nsw i32 %conv.i132, -18874363
  %19 = inttoptr i32 %add2.i134 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %command) #8, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp36 = icmp eq i8 %read_write, 0
  br i1 %cmp36, label %if.then38, label %sw.bb27.if.end45_crit_edge

sw.bb27.if.end45_crit_edge:                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then38:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %data, align 2
  %conv41 = trunc i16 %21 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %22 = load i16, ptr @smbus_base, align 2
  %conv.i135 = zext i16 %22 to i32
  %add2.i137 = add nuw nsw i32 %conv.i135, -18874360
  %23 = inttoptr i32 %add2.i137 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv41) #8, !srcloc !154
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %data, align 2
  %26 = lshr i16 %25, 8
  %conv44 = trunc i16 %26 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %27 = load i16, ptr @smbus_base, align 2
  %conv.i138 = zext i16 %27 to i32
  %add2.i140 = add nuw nsw i32 %conv.i138, -18874359
  %28 = inttoptr i32 %add2.i140 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv44) #8, !srcloc !154
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %sw.bb27.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp46 = icmp eq i32 %size, 4
  %cond = select i1 %cmp46, i32 4, i32 3
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %addr.tr = trunc i16 %addr to i8
  %shl51 = shl i8 %addr.tr, 1
  %conv52 = zext i8 %read_write to i32
  %and53 = and i8 %read_write, 1
  %or54 = or i8 %and53, %shl51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %29 = load i16, ptr @smbus_base, align 2
  %conv.i141 = zext i16 %29 to i32
  %add2.i143 = add nuw nsw i32 %conv.i141, -18874364
  %30 = inttoptr i32 %add2.i143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %or54) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %31 = load i16, ptr @smbus_base, align 2
  %conv.i144 = zext i16 %31 to i32
  %add2.i146 = add nuw nsw i32 %conv.i144, -18874363
  %32 = inttoptr i32 %add2.i146 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %command) #8, !srcloc !154
  %call = tail call fastcc i32 @sis630_block_data(ptr noundef %adap, ptr noundef %data, i32 noundef %conv52)
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %size) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end45, %if.then25, %sw.bb14.sw.epilog_crit_edge, %if.then, %sw.bb4.sw.epilog_crit_edge, %sw.bb
  %size.addr.0 = phi i32 [ %cond, %if.end45 ], [ 0, %sw.bb ], [ 1, %if.then ], [ 1, %sw.bb4.sw.epilog_crit_edge ], [ 2, %if.then25 ], [ 2, %sw.bb14.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %oldclock.i) #8
  %33 = ptrtoint ptr %oldclock.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %oldclock.i, align 1
  %call.i = call fastcc i32 @sis630_transaction_start(ptr noundef %adap, i32 noundef %size.addr.0, ptr noundef nonnull %oldclock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sis630_transaction.exit, label %sis630_transaction.exit.thread

sis630_transaction.exit.thread:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %oldclock.i) #8
  br label %cleanup

sis630_transaction.exit:                          ; preds = %sw.epilog
  %call1.i = tail call fastcc i32 @sis630_transaction_wait(ptr noundef %adap, i32 noundef %size.addr.0) #8
  %34 = ptrtoint ptr %oldclock.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %oldclock.i, align 1
  tail call fastcc void @sis630_transaction_end(ptr noundef %adap, i8 noundef zeroext %35) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %oldclock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end59, label %sis630_transaction.exit.cleanup_crit_edge

sis630_transaction.exit.cleanup_crit_edge:        ; preds = %sis630_transaction.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %sis630_transaction.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size.addr.0)
  %cond113 = icmp eq i32 %size.addr.0, 4
  br i1 %cond113, label %if.end59.sw.bb71_crit_edge, label %land.lhs.true

if.end59.sw.bb71_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb71

land.lhs.true:                                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp63 = icmp eq i8 %read_write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0)
  %cmp65 = icmp eq i32 %size.addr.0, 0
  %or.cond = or i1 %cmp63, %cmp65
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %if.end68

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end68:                                         ; preds = %land.lhs.true
  %36 = zext i32 %size.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %size.addr.0, label %if.end68.cleanup_crit_edge [
    i32 1, label %if.end68.sw.bb69_crit_edge
    i32 2, label %if.end68.sw.bb69_crit_edge159
    i32 3, label %if.end68.sw.bb71_crit_edge
  ]

if.end68.sw.bb71_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb71

if.end68.sw.bb69_crit_edge159:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb69

if.end68.sw.bb69_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb69

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb69:                                          ; preds = %if.end68.sw.bb69_crit_edge, %if.end68.sw.bb69_crit_edge159
  %37 = load i16, ptr @smbus_base, align 2
  %conv.i147 = zext i16 %37 to i32
  %add2.i149 = add nuw nsw i32 %conv.i147, -18874360
  %38 = inttoptr i32 %add2.i149 to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %40 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %data, align 2
  br label %cleanup

sw.bb71:                                          ; preds = %if.end68.sw.bb71_crit_edge, %if.end59.sw.bb71_crit_edge
  %41 = load i16, ptr @smbus_base, align 2
  %conv.i150 = zext i16 %41 to i32
  %add2.i152 = add nuw nsw i32 %conv.i150, -18874360
  %42 = inttoptr i32 %add2.i152 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %conv73 = zext i8 %43 to i16
  %44 = load i16, ptr @smbus_base, align 2
  %conv.i153 = zext i16 %44 to i32
  %add2.i155 = add nuw nsw i32 %conv.i153, -18874359
  %45 = inttoptr i32 %add2.i155 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %conv75 = zext i8 %46 to i16
  %shl76 = shl nuw i16 %conv75, 8
  %add = or i16 %shl76, %conv73
  %47 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %add, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb71, %sw.bb69, %if.end68.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sis630_transaction.exit.cleanup_crit_edge, %sis630_transaction.exit.thread, %do.end, %sw.bb48
  %retval.0 = phi i32 [ -95, %do.end ], [ %call, %sw.bb48 ], [ %call1.i, %sis630_transaction.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ], [ 0, %sw.bb71 ], [ 0, %sw.bb69 ], [ %call.i, %sis630_transaction.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sis630_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 67043328
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sis630_block_data(ptr noundef %adap, ptr nocapture noundef %data, i32 noundef %read_write) unnamed_addr #2 align 64 {
entry:
  %oldclock = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %oldclock) #8
  %0 = ptrtoint ptr %oldclock to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %oldclock, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_write)
  %cmp = icmp eq i32 %read_write, 0
  br i1 %cmp, label %if.else, label %if.else126

if.else:                                          ; preds = %entry
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 2
  %3 = tail call i8 @llvm.umin.i8(i8 %2, i8 32)
  %spec.select = zext i8 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %4 = load i16, ptr @smbus_base, align 2
  %conv.i = zext i16 %4 to i32
  %add2.i = add nuw nsw i32 %conv.i, -18874361
  %5 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %3) #8, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp9.not370 = icmp eq i8 %3, 0
  br i1 %cmp9.not370, label %if.else.if.end251_crit_edge, label %do.body.lr.ph

if.else.if.end251_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end251

do.body.lr.ph:                                    ; preds = %if.else
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp22 = icmp ult i8 %3, 8
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %i.0371 = phi i32 [ 1, %do.body.lr.ph ], [ %inc, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_block_data.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_block_data, %do.end)) #8
          to label %if.then14 [label %do.end], !srcloc !152

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.0371
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_block_data.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %conv16) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %sub = add nuw i32 %i.0371, 7
  %rem.urem = and i32 %sub, 7
  %conv18 = or i32 %rem.urem, 8
  %arrayidx19 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.0371
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx19, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %10 = load i16, ptr @smbus_base, align 2
  %conv.i342 = zext i16 %10 to i32
  %add.i343 = add nuw nsw i32 %conv18, %conv.i342
  %add2.i344 = or i32 %add.i343, -18874368
  %11 = inttoptr i32 %add2.i344 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %9) #8, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0371)
  %cmp20 = icmp eq i32 %i.0371, 8
  br i1 %cmp20, label %do.end.do.body27_crit_edge, label %lor.lhs.false

do.end.do.body27_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

lor.lhs.false:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0371, i32 %spec.select)
  %cmp24 = icmp eq i32 %i.0371, %spec.select
  %or.cond = select i1 %cmp22, i1 %cmp24, i1 false
  br i1 %or.cond, label %lor.lhs.false.do.body27_crit_edge, label %if.else50

lor.lhs.false.do.body27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

do.body27:                                        ; preds = %lor.lhs.false.do.body27_crit_edge, %do.end.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_block_data.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_block_data, %do.end45)) #8
          to label %if.then41 [label %do.end45], !srcloc !152

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_block_data.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %spec.select, i32 noundef %i.0371) #8
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body27
  %call46 = call fastcc i32 @sis630_transaction_start(ptr noundef %adap, i32 noundef 5, ptr noundef nonnull %oldclock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.end45.for.inc_crit_edge, label %do.end45.cleanup_crit_edge

do.end45.cleanup_crit_edge:                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end45.for.inc_crit_edge:                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else50:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %rem.urem)
  %cmp53 = icmp eq i32 %rem.urem, 7
  %or.cond317 = select i1 %cmp53, i1 true, i1 %cmp24
  br i1 %or.cond317, label %do.body59, label %if.else50.for.inc_crit_edge

if.else50.for.inc_crit_edge:                      ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body59:                                        ; preds = %if.else50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_block_data.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_block_data, %do.end77)) #8
          to label %if.then73 [label %do.end77], !srcloc !152

if.then73:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_block_data.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %spec.select, i32 noundef %i.0371) #8
  br label %do.end77

do.end77:                                         ; preds = %if.then73, %do.body59
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0371)
  %cmp78 = icmp ugt i32 %i.0371, 8
  br i1 %cmp78, label %do.body81, label %do.end77.if.end100_crit_edge

do.end77.if.end100_crit_edge:                     ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

do.body81:                                        ; preds = %do.end77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_block_data.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_block_data, %do.end99)) #8
          to label %if.then95 [label %do.end99], !srcloc !152

if.then95:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_block_data.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %spec.select, i32 noundef %i.0371) #8
  br label %do.end99

do.end99:                                         ; preds = %if.then95, %do.body81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %12 = load i16, ptr @smbus_base, align 2
  %conv.i345 = zext i16 %12 to i32
  %add2.i346 = or i32 %conv.i345, -18874368
  %13 = inttoptr i32 %add2.i346 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 16) #8, !srcloc !154
  br label %if.end100

if.end100:                                        ; preds = %do.end99, %do.end77.if.end100_crit_edge
  %call101 = tail call fastcc i32 @sis630_transaction_wait(ptr noundef %adap, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end100.for.inc_crit_edge, label %do.body104

if.end100.for.inc_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_block_data.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_block_data, %if.end251)) #8
          to label %if.then118 [label %if.end251], !srcloc !152

if.then118:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_block_data.__UNIQUE_ID_ddebug308, ptr noundef %dev, ptr noundef nonnull @.str.32) #8
  br label %if.end251

for.inc:                                          ; preds = %if.end100.for.inc_crit_edge, %if.else50.for.inc_crit_edge, %do.end45.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0371, 1
  %exitcond379 = icmp eq i32 %i.0371, %spec.select
  br i1 %exitcond379, label %for.inc.if.end251_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.if.end251_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end251

if.else126:                                       ; preds = %entry
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %data, align 2
  %call128 = call fastcc i32 @sis630_transaction_start(ptr noundef %adap, i32 noundef 5, ptr noundef nonnull %oldclock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %do.body132.preheader, label %if.else126.cleanup_crit_edge

if.else126.cleanup_crit_edge:                     ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body132.preheader:                             ; preds = %if.else126
  %dev184 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  br label %do.body132

do.body132:                                       ; preds = %do.end244.do.body132_crit_edge, %do.body132.preheader
  %len.1 = phi i32 [ %len.2.lcssa, %do.end244.do.body132_crit_edge ], [ 0, %do.body132.preheader ]
  %call133 = tail call fastcc i32 @sis630_transaction_wait(ptr noundef %adap, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end155, label %do.body136

do.body136:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_block_data.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_block_data, %if.end251)) #8
          to label %if.then150 [label %if.end251], !srcloc !152

if.then150:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_block_data.__UNIQUE_ID_ddebug309, ptr noundef %dev184, ptr noundef nonnull @.str.32) #8
  br label %if.end251

if.end155:                                        ; preds = %do.body132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %cmp156 = icmp eq i32 %len.1, 0
  br i1 %cmp156, label %if.then158, label %if.end161thread-pre-split

if.then158:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i16, ptr @smbus_base, align 2
  %conv.i347 = zext i16 %15 to i32
  %add2.i349 = add nuw nsw i32 %conv.i347, -18874361
  %16 = inttoptr i32 %add2.i349 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %data, align 2
  br label %if.end161

if.end161thread-pre-split:                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %.pr = load i8, ptr %data, align 2
  br label %if.end161

if.end161:                                        ; preds = %if.end161thread-pre-split, %if.then158
  %20 = phi i8 [ %.pr, %if.end161thread-pre-split ], [ %17, %if.then158 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %20)
  %cmp164 = icmp ugt i8 %20, 32
  br i1 %cmp164, label %if.then166, label %if.end161.do.body169_crit_edge

if.end161.do.body169_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body169

if.then166:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 32, ptr %data, align 2
  br label %do.body169

do.body169:                                       ; preds = %if.then166, %if.end161.do.body169_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_block_data.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_block_data, %land.rhs)) #8
          to label %if.then183 [label %land.rhs], !srcloc !152

if.then183:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data, align 2
  %conv186 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_block_data.__UNIQUE_ID_ddebug310, ptr noundef %dev184, ptr noundef nonnull @.str.33, i32 noundef %conv186) #8
  br label %land.rhs

land.rhs:                                         ; preds = %do.end216.land.rhs_crit_edge, %if.then183, %do.body169
  %i.1369 = phi i32 [ %inc223, %do.end216.land.rhs_crit_edge ], [ 0, %do.body169 ], [ 0, %if.then183 ]
  %len.2367 = phi i32 [ %add220, %do.end216.land.rhs_crit_edge ], [ %len.1, %do.body169 ], [ %len.1, %if.then183 ]
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data, align 2
  %conv194 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len.2367, i32 %conv194)
  %cmp195 = icmp slt i32 %len.2367, %conv194
  br i1 %cmp195, label %do.body198, label %land.rhs.do.body226_crit_edge

land.rhs.do.body226_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body226

do.body198:                                       ; preds = %land.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_block_data.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_block_data, %do.end216)) #8
          to label %if.then212 [label %do.end216], !srcloc !152

if.then212:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_block_data.__UNIQUE_ID_ddebug311, ptr noundef %dev184, ptr noundef nonnull @.str.34, i32 noundef %i.1369, i32 noundef %len.2367) #8
  br label %do.end216

do.end216:                                        ; preds = %if.then212, %do.body198
  %conv218 = add nuw nsw i32 %i.1369, 8
  %26 = load i16, ptr @smbus_base, align 2
  %conv.i350 = zext i16 %26 to i32
  %add.i352 = add nuw nsw i32 %conv218, %conv.i350
  %add2.i353 = or i32 %add.i352, -18874368
  %27 = inttoptr i32 %add2.i353 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %add220 = add nsw i32 %len.2367, 1
  %arrayidx221 = getelementptr [34 x i8], ptr %data, i32 0, i32 %add220
  %29 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx221, align 1
  %inc223 = add nuw nsw i32 %i.1369, 1
  %exitcond.not = icmp eq i32 %inc223, 8
  br i1 %exitcond.not, label %do.end216.do.body226_crit_edge, label %do.end216.land.rhs_crit_edge

do.end216.land.rhs_crit_edge:                     ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

do.end216.do.body226_crit_edge:                   ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body226

do.body226:                                       ; preds = %do.end216.do.body226_crit_edge, %land.rhs.do.body226_crit_edge
  %len.2.lcssa = phi i32 [ %len.2367, %land.rhs.do.body226_crit_edge ], [ %add220, %do.end216.do.body226_crit_edge ]
  %i.1.lcssa = phi i32 [ %i.1369, %land.rhs.do.body226_crit_edge ], [ 8, %do.end216.do.body226_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_block_data.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_block_data, %do.end244)) #8
          to label %if.then240 [label %do.end244], !srcloc !152

if.then240:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_block_data.__UNIQUE_ID_ddebug312, ptr noundef %dev184, ptr noundef nonnull @.str.31, i32 noundef %len.2.lcssa, i32 noundef %i.1.lcssa) #8
  br label %do.end244

do.end244:                                        ; preds = %if.then240, %do.body226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %30 = load i16, ptr @smbus_base, align 2
  %conv.i354 = zext i16 %30 to i32
  %add2.i355 = or i32 %conv.i354, -18874368
  %31 = inttoptr i32 %add2.i355 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 16) #8, !srcloc !154
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %data, align 2
  %conv247 = zext i8 %33 to i32
  %cmp248 = icmp slt i32 %len.2.lcssa, %conv247
  br i1 %cmp248, label %do.end244.do.body132_crit_edge, label %do.end244.if.end251_crit_edge

do.end244.if.end251_crit_edge:                    ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end251

do.end244.do.body132_crit_edge:                   ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body132

if.end251:                                        ; preds = %do.end244.if.end251_crit_edge, %if.then150, %do.body136, %for.inc.if.end251_crit_edge, %if.then118, %do.body104, %if.else.if.end251_crit_edge
  %rc.2 = phi i32 [ %call101, %if.then118 ], [ %call133, %if.then150 ], [ %call101, %do.body104 ], [ %call133, %do.body136 ], [ 0, %if.else.if.end251_crit_edge ], [ 0, %for.inc.if.end251_crit_edge ], [ 0, %do.end244.if.end251_crit_edge ]
  %34 = ptrtoint ptr %oldclock to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %oldclock, align 1
  tail call fastcc void @sis630_transaction_end(ptr noundef %adap, i8 noundef zeroext %35)
  br label %cleanup

cleanup:                                          ; preds = %if.end251, %if.else126.cleanup_crit_edge, %do.end45.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %if.end251 ], [ %call128, %if.else126.cleanup_crit_edge ], [ %call46, %do.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %oldclock) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sis630_transaction_start(ptr noundef %adap, i32 noundef %size, ptr nocapture noundef %oldclock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @smbus_base, align 2
  %conv.i = zext i16 %0 to i32
  %add2.i = add nuw nsw i32 %conv.i, -18874366
  %1 = inttoptr i32 %add2.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end51_crit_edge, label %do.body

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_transaction_start.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_transaction_start, %do.end)) #8
          to label %if.then6 [label %do.end], !srcloc !152

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_transaction_start.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %3 = load i16, ptr @smbus_base, align 2
  %conv.i104 = zext i16 %3 to i32
  %add2.i106 = add nuw nsw i32 %conv.i104, -18874365
  %4 = inttoptr i32 %add2.i106 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 32) #8, !srcloc !154
  %5 = load i16, ptr @smbus_base, align 2
  %conv.i107 = zext i16 %5 to i32
  %add2.i109 = add nuw nsw i32 %conv.i107, -18874366
  %6 = inttoptr i32 %add2.i109 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %conv8 = zext i8 %7 to i32
  %and9 = and i32 %conv8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body31, label %do.body12

do.body12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_transaction_start.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_transaction_start, %cleanup)) #8
          to label %if.then26 [label %cleanup], !srcloc !152

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %dev27 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_transaction_start.__UNIQUE_ID_ddebug297, ptr noundef %dev27, ptr noundef nonnull @.str.37, i32 noundef %conv8) #8
  br label %cleanup

do.body31:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_transaction_start.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_transaction_start, %if.end51)) #8
          to label %if.then45 [label %if.end51], !srcloc !152

if.then45:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %dev46 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_transaction_start.__UNIQUE_ID_ddebug298, ptr noundef %dev46, ptr noundef nonnull @.str.38) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %do.body31, %entry.if.end51_crit_edge
  %8 = load i16, ptr @smbus_base, align 2
  %conv.i110 = zext i16 %8 to i32
  %add2.i112 = add nuw nsw i32 %conv.i110, -18874366
  %9 = inttoptr i32 %add2.i112 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %11 = ptrtoint ptr %oldclock to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %oldclock, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_transaction_start.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_transaction_start, %do.end72)) #8
          to label %if.then67 [label %do.end72], !srcloc !152

if.then67:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %dev68 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %12 = ptrtoint ptr %oldclock to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %oldclock, align 1
  %conv69 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_transaction_start.__UNIQUE_ID_ddebug299, ptr noundef %dev68, ptr noundef nonnull @.str.39, i32 noundef %conv69) #8
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %if.end51
  %14 = load i8, ptr @high_clock, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool73.not = icmp eq i8 %14, 0
  br i1 %tobool73.not, label %if.else75, label %if.then74

if.then74:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %15 = load i16, ptr @smbus_base, align 2
  %conv.i113 = zext i16 %15 to i32
  %add2.i115 = add nuw nsw i32 %conv.i113, -18874366
  %16 = inttoptr i32 %add2.i115 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 32) #8, !srcloc !154
  br label %if.end79

if.else75:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %oldclock to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %oldclock, align 1
  %19 = and i8 %18, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %20 = load i16, ptr @smbus_base, align 2
  %conv.i116 = zext i16 %20 to i32
  %add2.i118 = add nuw nsw i32 %conv.i116, -18874366
  %21 = inttoptr i32 %add2.i118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %19) #8, !srcloc !154
  br label %if.end79

if.end79:                                         ; preds = %if.else75, %if.then74
  %22 = load i16, ptr @smbus_base, align 2
  %conv.i119 = zext i16 %22 to i32
  %add2.i120 = or i32 %conv.i119, -18874368
  %23 = inttoptr i32 %add2.i120 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %25 = and i8 %24, 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %26 = load i16, ptr @smbus_base, align 2
  %conv.i121 = zext i16 %26 to i32
  %add2.i122 = or i32 %conv.i121, -18874368
  %27 = inttoptr i32 %add2.i122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %25) #8, !srcloc !154
  %28 = trunc i32 %size to i8
  %29 = and i8 %28, 7
  %conv85 = or i8 %29, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %30 = load i16, ptr @smbus_base, align 2
  %conv.i123 = zext i16 %30 to i32
  %add2.i125 = add nuw nsw i32 %conv.i123, -18874365
  %31 = inttoptr i32 %add2.i125 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv85) #8, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.then26, %do.body12
  %retval.0 = phi i32 [ 0, %if.end79 ], [ -16, %if.then26 ], [ -16, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sis630_transaction_wait(ptr noundef %adap, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %size)
  %cmp = icmp ne i32 %size, 5
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 0, %entry ], [ %inc, %land.rhs.do.body_crit_edge ]
  tail call void @msleep(i32 noundef 1) #8
  %0 = load i16, ptr @smbus_base, align 2
  %conv.i = zext i16 %0 to i32
  %add2.i = or i32 %conv.i, -18874368
  %1 = inttoptr i32 %add2.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  %and2 = and i32 %conv, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond57 = select i1 %or.cond, i1 %tobool3.not, i1 false
  br i1 %or.cond57, label %land.rhs, label %do.body.if.end19_crit_edge

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.rhs:                                         ; preds = %do.body
  %inc = add nuw nsw i32 %timeout.0, 1
  %exitcond.not = icmp eq i32 %inc, 501
  br i1 %exitcond.not, label %do.body9, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_transaction_wait.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_transaction_wait, %if.end19)) #8
          to label %if.then15 [label %if.end19], !srcloc !152

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_transaction_wait.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.41) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %do.body9, %do.body.if.end19_crit_edge
  %result.0 = phi i32 [ -110, %if.then15 ], [ -110, %do.body9 ], [ 0, %do.body.if.end19_crit_edge ]
  %and20 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end42_crit_edge, label %do.body23

if.end19.if.end42_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.body23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_transaction_wait.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_transaction_wait, %if.end42)) #8
          to label %if.then37 [label %if.end42], !srcloc !152

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %dev38 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_transaction_wait.__UNIQUE_ID_ddebug301, ptr noundef %dev38, ptr noundef nonnull @.str.42) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %do.body23, %if.end19.if.end42_crit_edge
  %result.1 = phi i32 [ %result.0, %if.end19.if.end42_crit_edge ], [ -6, %if.then37 ], [ -6, %do.body23 ]
  %and43 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end50_crit_edge, label %do.end48

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %dev49 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.43) #11
  br label %if.end50

if.end50:                                         ; preds = %do.end48, %if.end42.if.end50_crit_edge
  %result.2 = phi i32 [ -11, %do.end48 ], [ %result.1, %if.end42.if.end50_crit_edge ]
  ret i32 %result.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sis630_transaction_end(ptr noundef %adap, i8 noundef zeroext %oldclock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %0 = load i16, ptr @smbus_base, align 2
  %conv.i = zext i16 %0 to i32
  %add2.i = or i32 %conv.i, -18874368
  %1 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 -1) #8, !srcloc !154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_transaction_end.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_transaction_end, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %2 = load i16, ptr @smbus_base, align 2
  %conv.i39 = zext i16 %2 to i32
  %add2.i40 = add nuw nsw i32 %conv.i39, -18874366
  %3 = inttoptr i32 %add2.i40 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_transaction_end.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = load i8, ptr @high_clock, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp ne i8 %5, 0
  %6 = and i8 %oldclock, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  %or.cond = and i1 %tobool8.not, %tobool5.not
  br i1 %or.cond, label %if.then9, label %do.end.do.body15_crit_edge

do.end.do.body15_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i16, ptr @smbus_base, align 2
  %conv.i41 = zext i16 %7 to i32
  %add2.i43 = add nuw nsw i32 %conv.i41, -18874366
  %8 = inttoptr i32 %add2.i43 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %10 = and i8 %9, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %11 = load i16, ptr @smbus_base, align 2
  %conv.i44 = zext i16 %11 to i32
  %add2.i46 = add nuw nsw i32 %conv.i44, -18874366
  %12 = inttoptr i32 %add2.i46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %10) #8, !srcloc !154
  br label %do.body15

do.body15:                                        ; preds = %if.then9, %do.end.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis630_transaction_end.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis630_transaction_end, %do.end34)) #8
          to label %if.then29 [label %do.end34], !srcloc !152

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %dev30 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %13 = load i16, ptr @smbus_base, align 2
  %conv.i47 = zext i16 %13 to i32
  %add2.i49 = add nuw nsw i32 %conv.i47, -18874366
  %14 = inttoptr i32 %add2.i49 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %conv32 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis630_transaction_end.__UNIQUE_ID_ddebug303, ptr noundef %dev30, ptr noundef nonnull @.str.46, i32 noundef %conv32) #8
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %do.body15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !70, !72, !74, !76, !78, !79, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !102, !103, !105, !106, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @__param_high_clock, !1, !"__param_high_clock", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 94, i32 1}
!2 = !{ptr @__UNIQUE_ID_high_clocktype292, !1, !"__UNIQUE_ID_high_clocktype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_high_clock293, !4, !"__UNIQUE_ID_high_clock293", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 95, i32 1}
!5 = !{ptr @__param_force, !6, !"__param_force", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 97, i32 1}
!7 = !{ptr @__UNIQUE_ID_forcetype294, !6, !"__UNIQUE_ID_forcetype294", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_force295, !9, !"__UNIQUE_ID_force295", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 98, i32 1}
!10 = !{ptr @__initcall__kmod_i2c_sis630__315_545_sis630_driver_init6, !11, !"__initcall__kmod_i2c_sis630__315_545_sis630_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 545, i32 1}
!12 = !{ptr @__exitcall_sis630_driver_exit, !11, !"__exitcall_sis630_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file316, !14, !"__UNIQUE_ID_file316", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 547, i32 1}
!15 = !{ptr @__UNIQUE_ID_license317, !14, !"__UNIQUE_ID_license317", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author318, !17, !"__UNIQUE_ID_author318", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 548, i32 1}
!18 = !{ptr @__UNIQUE_ID_description319, !19, !"__UNIQUE_ID_description319", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 549, i32 1}
!20 = !{ptr @high_clock, !21, !"high_clock", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 92, i32 13}
!22 = !{ptr @force, !23, !"force", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 93, i32 13}
!24 = !{ptr @__param_str_high_clock, !1, !"__param_str_high_clock", i1 false, i1 false}
!25 = !{ptr @__param_str_force, !6, !"__param_str_force", i1 false, i1 false}
!26 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 539, i32 11}
!29 = !{ptr @sis630_driver, !30, !"sis630_driver", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 538, i32 26}
!31 = !{ptr @sis630_ids, !32, !"sis630_ids", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 501, i32 35}
!33 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 513, i32 3}
!35 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sis630_probe._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @sis630_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 523, i32 4}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 422, i32 3}
!45 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sis630_setup._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @sis630_setup._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 434, i32 3}
!50 = !{ptr @sis630_setup._entry.10, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sis630_setup._entry_ptr.12, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 441, i32 3}
!54 = !{ptr @sis630_setup._entry.13, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sis630_setup._entry_ptr.15, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 449, i32 3}
!58 = !{ptr @sis630_setup._entry.16, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @sis630_setup._entry_ptr.18, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 455, i32 2}
!62 = !{ptr @sis630_setup.__UNIQUE_ID_ddebug313, !61, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 462, i32 2}
!65 = !{ptr @sis630_setup.__UNIQUE_ID_ddebug314, !64, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 472, i32 3}
!68 = !{ptr @sis630_setup._entry.21, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sis630_setup._entry_ptr.23, !67, !"_entry_ptr", i1 false, i1 false}
!70 = distinct !{null, !71, !"supported", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 104, i32 12}
!72 = !{ptr @sis630_adapter, !73, !"sis630_adapter", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 494, i32 27}
!74 = !{ptr @smbus_algorithm, !75, !"smbus_algorithm", i1 false, i1 false}
!75 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 489, i32 35}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 369, i32 3}
!78 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @sis630_access._entry, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @sis630_access._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 243, i32 4}
!84 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sis630_block_data.__UNIQUE_ID_ddebug304, !83, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 248, i32 5}
!88 = !{ptr @sis630_block_data.__UNIQUE_ID_ddebug305, !87, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 256, i32 5}
!91 = !{ptr @sis630_block_data.__UNIQUE_ID_ddebug306, !90, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 259, i32 6}
!94 = !{ptr @sis630_block_data.__UNIQUE_ID_ddebug307, !93, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 272, i32 6}
!97 = !{ptr @sis630_block_data.__UNIQUE_ID_ddebug308, !96, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!98 = !{ptr @sis630_block_data.__UNIQUE_ID_ddebug309, !99, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!99 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 288, i32 5}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 299, i32 4}
!102 = !{ptr @sis630_block_data.__UNIQUE_ID_ddebug310, !101, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!103 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 303, i32 5}
!105 = !{ptr @sis630_block_data.__UNIQUE_ID_ddebug311, !104, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!106 = !{ptr @sis630_block_data.__UNIQUE_ID_ddebug312, !107, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!107 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 309, i32 4}
!108 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 129, i32 3}
!110 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @sis630_transaction_start.__UNIQUE_ID_ddebug296, !109, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 135, i32 4}
!114 = !{ptr @sis630_transaction_start.__UNIQUE_ID_ddebug297, !113, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 138, i32 4}
!117 = !{ptr @sis630_transaction_start.__UNIQUE_ID_ddebug298, !116, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 145, i32 2}
!120 = !{ptr @sis630_transaction_start.__UNIQUE_ID_ddebug299, !119, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!121 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 179, i32 3}
!123 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @sis630_transaction_wait.__UNIQUE_ID_ddebug300, !122, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!125 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 184, i32 3}
!127 = !{ptr @sis630_transaction_wait.__UNIQUE_ID_ddebug301, !126, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!128 = !{ptr @.str.43, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 189, i32 3}
!130 = !{ptr @sis630_transaction_wait._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @sis630_transaction_wait._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 201, i32 2}
!134 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @sis630_transaction_end.__UNIQUE_ID_ddebug302, !133, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 211, i32 2}
!138 = !{ptr @sis630_transaction_end.__UNIQUE_ID_ddebug303, !137, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!139 = !{ptr @smbus_base, !140, !"smbus_base", i1 false, i1 false}
!140 = !{!"../drivers/i2c/busses/i2c-sis630.c", i32 101, i32 23}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{!"auto-init"}
!151 = !{i8 0, i8 2}
!152 = !{i64 2148703852, i64 2148703857, i64 2148703870, i64 2148703914, i64 2148703948, i64 2148703969}
!153 = !{i64 2155906839}
!154 = !{i64 4999705}
!155 = !{i64 5000100}
!156 = !{i64 2155906452}
