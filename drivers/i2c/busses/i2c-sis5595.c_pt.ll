; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-sis5595.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-sis5595.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }

@__param_str_force_addr = internal constant [23 x i8] c"i2c_sis5595.force_addr\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_addr = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_addr = internal constant %struct.kernel_param { ptr @__param_str_force_addr, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 2, %union.anon.76 { ptr @force_addr } }, section "__param", align 4
@__UNIQUE_ID_force_addrtype292 = internal constant [39 x i8] c"i2c_sis5595.parmtype=force_addr:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_addr293 = internal constant [78 x i8] c"i2c_sis5595.parm=force_addr:Initialize the base address of the i2c controller\00", section ".modinfo", align 1
@sis5595_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @sis5595_ids, ptr @sis5595_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@sis5595_pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sis5595_adapter = internal global { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 129, ptr @smbus_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] zeroinitializer, %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@sis5595_base = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author301 = internal constant [51 x i8] c"i2c_sis5595.author=Frodo Looijaard <frodol@dds.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [45 x i8] c"i2c_sis5595.description=SIS5595 SMBus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [48 x i8] c"i2c_sis5595.file=drivers/i2c/busses/i2c-sis5595\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [24 x i8] c"i2c_sis5595.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_i2c_sis5595__305_421_i2c_sis5595_init6 = internal global ptr @i2c_sis5595_init, section ".initcall6.init", align 4
@__exitcall_i2c_sis5595_exit = internal global ptr @i2c_sis5595_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sis5595_smbus\00", [18 x i8] zeroinitializer }, align 32
@sis5595_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4153, i32 8, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sis5595_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 372, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"SIS5595 not detected, module not inserted.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sis5595_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-sis5595.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sis5595_probe._entry_ptr = internal global ptr @sis5595_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SMBus SIS5595 adapter at %04x\00", [34 x i8] zeroinitializer }, align 32
@blacklist = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1344, i32 1360, i32 1584, i32 1605, i32 1606, i32 1608, i32 1616, i32 1617, i32 1840, i32 1845, i32 1861, i32 1862, i32 21777, i32 21911, i32 21912, i32 0], [32 x i8] zeroinitializer }, align 32
@sis5595_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Looked for SIS5595 but found unsupported device %.4x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sis5595_setup\00", [18 x i8] zeroinitializer }, align 32
@sis5595_setup._entry_ptr = internal global ptr @sis5595_setup._entry, section ".printk_index", align 4
@sis5595_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"ACPI base address uninitialized - upgrade BIOS or use force_addr=0xaddr\0A\00", [55 x i8] zeroinitializer }, align 32
@sis5595_setup._entry_ptr.11 = internal global ptr @sis5595_setup._entry.9, section ".printk_index", align 4
@sis5595_setup.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.8, ptr @.str.3, ptr @.str.13, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_sis5595\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ACPI Base address: %04x\0A\00", [39 x i8] zeroinitializer }, align 32
@sis5595_setup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SMBus registers 0x%04x-0x%04x already in use!\0A\00", [49 x i8] zeroinitializer }, align 32
@sis5595_setup._entry_ptr.16 = internal global ptr @sis5595_setup._entry.14, section ".printk_index", align 4
@sis5595_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.3, i32 177, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"forcing ISA address 0x%04X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sis5595_setup._entry_ptr.20 = internal global ptr @sis5595_setup._entry.17, section ".printk_index", align 4
@sis5595_setup._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.3, i32 186, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"force address failed - not supported?\0A\00", [57 x i8] zeroinitializer }, align 32
@sis5595_setup._entry_ptr.23 = internal global ptr @sis5595_setup._entry.21, section ".printk_index", align 4
@sis5595_setup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.3, i32 195, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enabling ACPI\0A\00", [17 x i8] zeroinitializer }, align 32
@sis5595_setup._entry_ptr.26 = internal global ptr @sis5595_setup._entry.24, section ".printk_index", align 4
@sis5595_setup._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ACPI enable failed - not supported?\0A\00", [59 x i8] zeroinitializer }, align 32
@sis5595_setup._entry_ptr.29 = internal global ptr @sis5595_setup._entry.27, section ".printk_index", align 4
@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @sis5595_access, ptr null, ptr @sis5595_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sis5595_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 314, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sis5595_access\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sis5595_access._entry_ptr = internal global ptr @sis5595_access._entry, section ".printk_index", align 4
@sis5595_transaction.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 56, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sis5595_transaction\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SMBus busy (%04x). Resetting...\0A\00", [63 x i8] zeroinitializer }, align 32
@sis5595_transaction.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.33, ptr @.str.3, ptr @.str.35, i8 0, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Failed! (%02x)\0A\00", [16 x i8] zeroinitializer }, align 32
@sis5595_transaction.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.33, ptr @.str.3, ptr @.str.36, i8 0, i8 58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Successful!\0A\00", [19 x i8] zeroinitializer }, align 32
@sis5595_transaction.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.33, ptr @.str.3, ptr @.str.37, i8 0, i8 62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMBus Timeout!\0A\00", [16 x i8] zeroinitializer }, align 32
@sis5595_transaction.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.33, ptr @.str.3, ptr @.str.38, i8 0, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error: Failed bus transaction\0A\00", [33 x i8] zeroinitializer }, align 32
@sis5595_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.33, ptr @.str.3, i32 259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Bus collision! SMBus may be locked until next hard reset (or not...)\0A\00", [58 x i8] zeroinitializer }, align 32
@sis5595_transaction._entry_ptr = internal global ptr @sis5595_transaction._entry, section ".printk_index", align 4
@sis5595_transaction.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.33, ptr @.str.3, ptr @.str.40, i8 0, i8 68, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed reset at end of transaction (%02x)\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"force_addr\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 113, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"sis5595_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 395, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"sis5595_pdev\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 119, i32 24 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"sis5595_adapter\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 354, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"sis5595_base\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 118, i32 23 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 396, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [12 x i8] c"sis5595_ids\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 360, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 372, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 380, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [10 x i8] c"blacklist\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 54, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 145, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 154, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 160, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 171, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 177, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 186, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 195, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 204, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 349, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 314, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 226, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 230, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 233, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 248, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 253, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 258, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-sis5595.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 272, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_force_addr293, ptr @__UNIQUE_ID_force_addrtype292, ptr @__UNIQUE_ID_license304, ptr @__exitcall_i2c_sis5595_exit, ptr @__initcall__kmod_i2c_sis5595__305_421_i2c_sis5595_init6, ptr @__param_force_addr, ptr @i2c_sis5595_exit, ptr @sis5595_access._entry, ptr @sis5595_access._entry_ptr, ptr @sis5595_probe._entry, ptr @sis5595_probe._entry_ptr, ptr @sis5595_setup._entry, ptr @sis5595_setup._entry.14, ptr @sis5595_setup._entry.17, ptr @sis5595_setup._entry.21, ptr @sis5595_setup._entry.24, ptr @sis5595_setup._entry.27, ptr @sis5595_setup._entry.9, ptr @sis5595_setup._entry_ptr, ptr @sis5595_setup._entry_ptr.11, ptr @sis5595_setup._entry_ptr.16, ptr @sis5595_setup._entry_ptr.20, ptr @sis5595_setup._entry_ptr.23, ptr @sis5595_setup._entry_ptr.26, ptr @sis5595_setup._entry_ptr.29, ptr @sis5595_transaction._entry, ptr @sis5595_transaction._entry_ptr, ptr @force_addr, ptr @sis5595_driver, ptr @sis5595_pdev, ptr @sis5595_adapter, ptr @sis5595_base, ptr @.str, ptr @sis5595_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @blacklist, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @smbus_algorithm, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_addr to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_base to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blacklist to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_setup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_setup._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_setup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_setup._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_sis5595_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @sis5595_driver) #7
  %0 = load ptr, ptr @sis5595_pdev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_adapter(ptr noundef nonnull @sis5595_adapter) #7
  %1 = load i16, ptr @sis5595_base, align 2
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 56
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %add, i32 noundef 2) #7
  %2 = load ptr, ptr @sis5595_pdev, align 4
  tail call void @pci_dev_put(ptr noundef %2) #7
  store ptr null, ptr @sis5595_pdev, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_sis5595_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sis5595_driver, ptr noundef null, ptr noundef nonnull @.str.12) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis5595_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sis5595_setup(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr %dev2, ptr getelementptr inbounds (%struct.i2c_adapter, ptr @sis5595_adapter, i32 0, i32 9, i32 1), align 8
  %0 = load i16, ptr @sis5595_base, align 2
  %conv = zext i16 %0 to i32
  %add = add nuw nsw i32 %conv, 56
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sis5595_adapter, i32 0, i32 12), i32 noundef 48, ptr noundef nonnull @.str.6, i32 noundef %add)
  %call4 = tail call i32 @i2c_add_adapter(ptr noundef nonnull @sis5595_adapter) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load i16, ptr @sis5595_base, align 2
  %conv7 = zext i16 %1 to i32
  %add8 = add nuw nsw i32 %conv7, 56
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %add8, i32 noundef 2) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call ptr @pci_dev_get(ptr noundef %dev) #7
  store ptr %call10, ptr @sis5595_pdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call4, %if.then6 ], [ -19, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sis5595_setup(ptr noundef %SIS5595_dev) unnamed_addr #2 align 64 {
entry:
  %a = alloca i16, align 2
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %a) #7
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %a, align 2, !annotation !117
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val, align 1, !annotation !117
  %call = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1344, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.inc.critedge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.inc.critedge.13.do.end_crit_edge, %for.inc.critedge.12.do.end_crit_edge, %for.inc.critedge.11.do.end_crit_edge, %for.inc.critedge.10.do.end_crit_edge, %for.inc.critedge.9.do.end_crit_edge, %for.inc.critedge.8.do.end_crit_edge, %for.inc.critedge.7.do.end_crit_edge, %for.inc.critedge.6.do.end_crit_edge, %for.inc.critedge.5.do.end_crit_edge, %for.inc.critedge.4.do.end_crit_edge, %for.inc.critedge.3.do.end_crit_edge, %for.inc.critedge.2.do.end_crit_edge, %for.inc.critedge.1.do.end_crit_edge, %for.inc.critedge.do.end_crit_edge, %entry.do.end_crit_edge
  %i.0146.lcssa = phi ptr [ @blacklist, %entry.do.end_crit_edge ], [ getelementptr inbounds ([16 x i32], ptr @blacklist, i32 0, i32 1), %for.inc.critedge.do.end_crit_edge ], [ getelementptr inbounds ([16 x i32], ptr @blacklist, i32 0, i32 2), %for.inc.critedge.1.do.end_crit_edge ], [ getelementptr inbounds ([16 x i32], ptr @blacklist, i32 0, i32 3), %for.inc.critedge.2.do.end_crit_edge ], [ getelementptr inbounds ([16 x i32], ptr @blacklist, i32 0, i32 4), %for.inc.critedge.3.do.end_crit_edge ], [ getelementptr inbounds ([16 x i32], ptr @blacklist, i32 0, i32 5), %for.inc.critedge.4.do.end_crit_edge ], [ getelementptr inbounds ([16 x i32], ptr @blacklist, i32 0, i32 6), %for.inc.critedge.5.do.end_crit_edge ], [ getelementptr inbounds ([16 x i32], ptr @blacklist, i32 0, i32 7), %for.inc.critedge.6.do.end_crit_edge ], [ getelementptr inbounds ([16 x i32], ptr @blacklist, i32 0, i32 8), %for.inc.critedge.7.do.end_crit_edge ], [ getelementptr inbounds ([16 x i32], ptr @blacklist, i32 0, i32 9), %for.inc.critedge.8.do.end_crit_edge ], [ getelementptr inbounds ([16 x i32], ptr @blacklist, i32 0, i32 10), %for.inc.critedge.9.do.end_crit_edge ], [ getelementptr inbounds ([16 x i32], ptr @blacklist, i32 0, i32 11), %for.inc.critedge.10.do.end_crit_edge ], [ getelementptr inbounds ([16 x i32], ptr @blacklist, i32 0, i32 12), %for.inc.critedge.11.do.end_crit_edge ], [ getelementptr inbounds ([16 x i32], ptr @blacklist, i32 0, i32 13), %for.inc.critedge.12.do.end_crit_edge ], [ getelementptr inbounds ([16 x i32], ptr @blacklist, i32 0, i32 14), %for.inc.critedge.13.do.end_crit_edge ]
  %call.lcssa = phi ptr [ %call, %entry.do.end_crit_edge ], [ %call.1, %for.inc.critedge.do.end_crit_edge ], [ %call.2, %for.inc.critedge.1.do.end_crit_edge ], [ %call.3, %for.inc.critedge.2.do.end_crit_edge ], [ %call.4, %for.inc.critedge.3.do.end_crit_edge ], [ %call.5, %for.inc.critedge.4.do.end_crit_edge ], [ %call.6, %for.inc.critedge.5.do.end_crit_edge ], [ %call.7, %for.inc.critedge.6.do.end_crit_edge ], [ %call.8, %for.inc.critedge.7.do.end_crit_edge ], [ %call.9, %for.inc.critedge.8.do.end_crit_edge ], [ %call.10, %for.inc.critedge.9.do.end_crit_edge ], [ %call.11, %for.inc.critedge.10.do.end_crit_edge ], [ %call.12, %for.inc.critedge.11.do.end_crit_edge ], [ %call.13, %for.inc.critedge.12.do.end_crit_edge ], [ %call.14, %for.inc.critedge.13.do.end_crit_edge ]
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %SIS5595_dev, i32 0, i32 44
  %2 = ptrtoint ptr %i.0146.lcssa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i.0146.lcssa, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.7, i32 noundef %3) #10
  tail call void @pci_dev_put(ptr noundef nonnull %call.lcssa) #7
  br label %cleanup120

for.inc.critedge:                                 ; preds = %entry
  %call.1 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1360, ptr noundef null) #7
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %for.inc.critedge.1, label %for.inc.critedge.do.end_crit_edge

for.inc.critedge.do.end_crit_edge:                ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.critedge.1:                               ; preds = %for.inc.critedge
  %call.2 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1584, ptr noundef null) #7
  %tobool.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool.not.2, label %for.inc.critedge.2, label %for.inc.critedge.1.do.end_crit_edge

for.inc.critedge.1.do.end_crit_edge:              ; preds = %for.inc.critedge.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.critedge.2:                               ; preds = %for.inc.critedge.1
  %call.3 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1605, ptr noundef null) #7
  %tobool.not.3 = icmp eq ptr %call.3, null
  br i1 %tobool.not.3, label %for.inc.critedge.3, label %for.inc.critedge.2.do.end_crit_edge

for.inc.critedge.2.do.end_crit_edge:              ; preds = %for.inc.critedge.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.critedge.3:                               ; preds = %for.inc.critedge.2
  %call.4 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1606, ptr noundef null) #7
  %tobool.not.4 = icmp eq ptr %call.4, null
  br i1 %tobool.not.4, label %for.inc.critedge.4, label %for.inc.critedge.3.do.end_crit_edge

for.inc.critedge.3.do.end_crit_edge:              ; preds = %for.inc.critedge.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.critedge.4:                               ; preds = %for.inc.critedge.3
  %call.5 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1608, ptr noundef null) #7
  %tobool.not.5 = icmp eq ptr %call.5, null
  br i1 %tobool.not.5, label %for.inc.critedge.5, label %for.inc.critedge.4.do.end_crit_edge

for.inc.critedge.4.do.end_crit_edge:              ; preds = %for.inc.critedge.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.critedge.5:                               ; preds = %for.inc.critedge.4
  %call.6 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1616, ptr noundef null) #7
  %tobool.not.6 = icmp eq ptr %call.6, null
  br i1 %tobool.not.6, label %for.inc.critedge.6, label %for.inc.critedge.5.do.end_crit_edge

for.inc.critedge.5.do.end_crit_edge:              ; preds = %for.inc.critedge.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.critedge.6:                               ; preds = %for.inc.critedge.5
  %call.7 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1617, ptr noundef null) #7
  %tobool.not.7 = icmp eq ptr %call.7, null
  br i1 %tobool.not.7, label %for.inc.critedge.7, label %for.inc.critedge.6.do.end_crit_edge

for.inc.critedge.6.do.end_crit_edge:              ; preds = %for.inc.critedge.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.critedge.7:                               ; preds = %for.inc.critedge.6
  %call.8 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1840, ptr noundef null) #7
  %tobool.not.8 = icmp eq ptr %call.8, null
  br i1 %tobool.not.8, label %for.inc.critedge.8, label %for.inc.critedge.7.do.end_crit_edge

for.inc.critedge.7.do.end_crit_edge:              ; preds = %for.inc.critedge.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.critedge.8:                               ; preds = %for.inc.critedge.7
  %call.9 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1845, ptr noundef null) #7
  %tobool.not.9 = icmp eq ptr %call.9, null
  br i1 %tobool.not.9, label %for.inc.critedge.9, label %for.inc.critedge.8.do.end_crit_edge

for.inc.critedge.8.do.end_crit_edge:              ; preds = %for.inc.critedge.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.critedge.9:                               ; preds = %for.inc.critedge.8
  %call.10 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1861, ptr noundef null) #7
  %tobool.not.10 = icmp eq ptr %call.10, null
  br i1 %tobool.not.10, label %for.inc.critedge.10, label %for.inc.critedge.9.do.end_crit_edge

for.inc.critedge.9.do.end_crit_edge:              ; preds = %for.inc.critedge.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.critedge.10:                              ; preds = %for.inc.critedge.9
  %call.11 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1862, ptr noundef null) #7
  %tobool.not.11 = icmp eq ptr %call.11, null
  br i1 %tobool.not.11, label %for.inc.critedge.11, label %for.inc.critedge.10.do.end_crit_edge

for.inc.critedge.10.do.end_crit_edge:             ; preds = %for.inc.critedge.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.critedge.11:                              ; preds = %for.inc.critedge.10
  %call.12 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 21777, ptr noundef null) #7
  %tobool.not.12 = icmp eq ptr %call.12, null
  br i1 %tobool.not.12, label %for.inc.critedge.12, label %for.inc.critedge.11.do.end_crit_edge

for.inc.critedge.11.do.end_crit_edge:             ; preds = %for.inc.critedge.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.critedge.12:                              ; preds = %for.inc.critedge.11
  %call.13 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 21911, ptr noundef null) #7
  %tobool.not.13 = icmp eq ptr %call.13, null
  br i1 %tobool.not.13, label %for.inc.critedge.13, label %for.inc.critedge.12.do.end_crit_edge

for.inc.critedge.12.do.end_crit_edge:             ; preds = %for.inc.critedge.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.critedge.13:                              ; preds = %for.inc.critedge.12
  %call.14 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 21912, ptr noundef null) #7
  %tobool.not.14 = icmp eq ptr %call.14, null
  br i1 %tobool.not.14, label %for.inc.critedge.14, label %for.inc.critedge.13.do.end_crit_edge

for.inc.critedge.13.do.end_crit_edge:             ; preds = %for.inc.critedge.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.critedge.14:                              ; preds = %for.inc.critedge.13
  %call3 = tail call i32 @pci_read_config_word(ptr noundef %SIS5595_dev, i32 noundef 144, ptr noundef nonnull @sis5595_base) #7
  %4 = load i16, ptr @sis5595_base, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp4 = icmp eq i16 %4, 0
  %5 = load i16, ptr @force_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp7 = icmp eq i16 %5, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %for.inc.critedge.14
  br i1 %cmp7, label %do.end12, label %land.lhs.true.if.then16_crit_edge

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

do.end12:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %SIS5595_dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.10) #10
  br label %cleanup120

if.end14:                                         ; preds = %for.inc.critedge.14
  br i1 %cmp7, label %if.end14.do.body20_crit_edge, label %if.end14.if.then16_crit_edge

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.end14.do.body20_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

if.then16:                                        ; preds = %if.end14.if.then16_crit_edge, %land.lhs.true.if.then16_crit_edge
  %6 = and i16 %5, -8
  store i16 %6, ptr @sis5595_base, align 2
  br label %do.body20

do.body20:                                        ; preds = %if.then16, %if.end14.do.body20_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis5595_setup.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis5595_setup, %do.end31)) #7
          to label %if.then26 [label %do.end31], !srcloc !118

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %SIS5595_dev, i32 0, i32 44
  %7 = load i16, ptr @sis5595_base, align 2
  %conv28 = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis5595_setup.__UNIQUE_ID_ddebug294, ptr noundef %dev27, ptr noundef nonnull @.str.13, i32 noundef %conv28) #7
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %do.body20
  %8 = load i16, ptr @sis5595_base, align 2
  %conv37 = zext i16 %8 to i32
  %add38 = add nuw nsw i32 %conv37, 56
  %9 = load ptr, ptr getelementptr inbounds (%struct.pci_driver, ptr @sis5595_driver, i32 0, i32 1), align 4
  %call39 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %add38, i32 noundef 2, ptr noundef %9, i32 noundef 0) #7
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %do.end44, label %if.end51

do.end44:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %SIS5595_dev, i32 0, i32 44
  %10 = load i16, ptr @sis5595_base, align 2
  %conv46 = zext i16 %10 to i32
  %add47 = add nuw nsw i32 %conv46, 56
  %add50 = add nuw nsw i32 %conv46, 57
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.15, i32 noundef %add47, i32 noundef %add50) #10
  br label %cleanup120

if.end51:                                         ; preds = %do.end31
  %11 = load i16, ptr @force_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool52.not = icmp eq i16 %11, 0
  br i1 %tobool52.not, label %if.end51.if.end80_crit_edge, label %do.end56

if.end51.if.end80_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

do.end56:                                         ; preds = %if.end51
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %SIS5595_dev, i32 0, i32 44
  %12 = load i16, ptr @sis5595_base, align 2
  %conv58 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev57, ptr noundef nonnull @.str.18, i32 noundef %conv58) #10
  %13 = load i16, ptr @sis5595_base, align 2
  %call59 = tail call i32 @pci_write_config_word(ptr noundef %SIS5595_dev, i32 noundef 144, i16 noundef zeroext %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60.not = icmp eq i32 %call59, 0
  br i1 %cmp60.not, label %if.end63, label %do.end56.error_crit_edge

do.end56.error_crit_edge:                         ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end63:                                         ; preds = %do.end56
  %call64 = call i32 @pci_read_config_word(ptr noundef %SIS5595_dev, i32 noundef 144, ptr noundef nonnull %a) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65.not = icmp eq i32 %call64, 0
  br i1 %cmp65.not, label %if.end68, label %if.end63.error_crit_edge

if.end63.error_crit_edge:                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end68:                                         ; preds = %if.end63
  %14 = ptrtoint ptr %a to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %a, align 2
  %16 = and i16 %15, -8
  %17 = load i16, ptr @sis5595_base, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %17)
  %cmp72.not = icmp eq i16 %16, %17
  br i1 %cmp72.not, label %if.end68.if.end80_crit_edge, label %do.end77

if.end68.if.end80_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

do.end77:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57, ptr noundef nonnull @.str.22) #10
  br label %error

if.end80:                                         ; preds = %if.end68.if.end80_crit_edge, %if.end51.if.end80_crit_edge
  %call81 = call i32 @pci_read_config_byte(ptr noundef %SIS5595_dev, i32 noundef 64, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82.not = icmp eq i32 %call81, 0
  br i1 %cmp82.not, label %if.end85, label %if.end80.error_crit_edge

if.end80.error_crit_edge:                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end85:                                         ; preds = %if.end80
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp88 = icmp sgt i8 %19, -1
  br i1 %cmp88, label %do.end93, label %if.end85.cleanup120_crit_edge

if.end85.cleanup120_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup120

do.end93:                                         ; preds = %if.end85
  %dev94 = getelementptr inbounds %struct.pci_dev, ptr %SIS5595_dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev94, ptr noundef nonnull @.str.25) #10
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val, align 1
  %22 = or i8 %21, -128
  %call97 = call i32 @pci_write_config_byte(ptr noundef %SIS5595_dev, i32 noundef 64, i8 noundef zeroext %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98.not = icmp eq i32 %call97, 0
  br i1 %cmp98.not, label %if.end101, label %do.end93.error_crit_edge

do.end93.error_crit_edge:                         ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end101:                                        ; preds = %do.end93
  %call102 = call i32 @pci_read_config_byte(ptr noundef %SIS5595_dev, i32 noundef 64, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103.not = icmp eq i32 %call102, 0
  br i1 %cmp103.not, label %if.end106, label %if.end101.error_crit_edge

if.end101.error_crit_edge:                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end106:                                        ; preds = %if.end101
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp109 = icmp sgt i8 %24, -1
  br i1 %cmp109, label %do.end114, label %if.end106.cleanup120_crit_edge

if.end106.cleanup120_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup120

do.end114:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.28) #10
  br label %error

error:                                            ; preds = %do.end114, %if.end101.error_crit_edge, %do.end93.error_crit_edge, %if.end80.error_crit_edge, %do.end77, %if.end63.error_crit_edge, %do.end56.error_crit_edge
  %25 = load i16, ptr @sis5595_base, align 2
  %conv118 = zext i16 %25 to i32
  %add119 = add nuw nsw i32 %conv118, 56
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %add119, i32 noundef 2) #7
  br label %cleanup120

cleanup120:                                       ; preds = %error, %if.end106.cleanup120_crit_edge, %if.end85.cleanup120_crit_edge, %do.end44, %do.end12, %do.end
  %retval.2 = phi i32 [ -19, %do.end12 ], [ -19, %error ], [ -19, %do.end44 ], [ -19, %do.end ], [ 0, %if.end106.cleanup120_crit_edge ], [ 0, %if.end85.cleanup120_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %a) #7
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis5595_access(ptr noundef %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
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
    i32 3, label %entry.sw.bb27_crit_edge149
  ]

entry.sw.bb27_crit_edge149:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

entry.sw.bb27_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %addr.tr97 = trunc i16 %addr to i8
  %shl = shl i8 %addr.tr97, 1
  %1 = and i8 %read_write, 1
  %or = or i8 %1, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %2 = load i16, ptr @sis5595_base, align 2
  %conv.i = zext i16 %2 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874312
  %3 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 4) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %4 = load i16, ptr @sis5595_base, align 2
  %conv4.i = zext i16 %4 to i32
  %add7.i = add nuw nsw i32 %conv4.i, -18874311
  %5 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %or) #7, !srcloc !120
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %addr.tr96 = trunc i16 %addr to i8
  %shl7 = shl i8 %addr.tr96, 1
  %and9 = and i8 %read_write, 1
  %or10 = or i8 %and9, %shl7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %6 = load i16, ptr @sis5595_base, align 2
  %conv.i99 = zext i16 %6 to i32
  %add1.i100 = add nuw nsw i32 %conv.i99, -18874312
  %7 = inttoptr i32 %add1.i100 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 4) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %8 = load i16, ptr @sis5595_base, align 2
  %conv4.i101 = zext i16 %8 to i32
  %add7.i102 = add nuw nsw i32 %conv4.i101, -18874311
  %9 = inttoptr i32 %add7.i102 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %or10) #7, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp = icmp eq i8 %read_write, 0
  br i1 %cmp, label %if.then, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %10 = load i16, ptr @sis5595_base, align 2
  %conv.i103 = zext i16 %10 to i32
  %add1.i104 = add nuw nsw i32 %conv.i103, -18874312
  %11 = inttoptr i32 %add1.i104 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 5) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %12 = load i16, ptr @sis5595_base, align 2
  %conv4.i105 = zext i16 %12 to i32
  %add7.i106 = add nuw nsw i32 %conv4.i105, -18874311
  %13 = inttoptr i32 %add7.i106 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %command) #7, !srcloc !120
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %addr.tr95 = trunc i16 %addr to i8
  %shl17 = shl i8 %addr.tr95, 1
  %and19 = and i8 %read_write, 1
  %or20 = or i8 %and19, %shl17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %14 = load i16, ptr @sis5595_base, align 2
  %conv.i107 = zext i16 %14 to i32
  %add1.i108 = add nuw nsw i32 %conv.i107, -18874312
  %15 = inttoptr i32 %add1.i108 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 4) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %16 = load i16, ptr @sis5595_base, align 2
  %conv4.i109 = zext i16 %16 to i32
  %add7.i110 = add nuw nsw i32 %conv4.i109, -18874311
  %17 = inttoptr i32 %add7.i110 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %or20) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %18 = load i16, ptr @sis5595_base, align 2
  %conv.i111 = zext i16 %18 to i32
  %add1.i112 = add nuw nsw i32 %conv.i111, -18874312
  %19 = inttoptr i32 %add1.i112 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 5) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %20 = load i16, ptr @sis5595_base, align 2
  %conv4.i113 = zext i16 %20 to i32
  %add7.i114 = add nuw nsw i32 %conv4.i113, -18874311
  %21 = inttoptr i32 %add7.i114 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %command) #7, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp23 = icmp eq i8 %read_write, 0
  br i1 %cmp23, label %if.then25, label %sw.bb14.sw.epilog_crit_edge

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then25:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %24 = load i16, ptr @sis5595_base, align 2
  %conv.i115 = zext i16 %24 to i32
  %add1.i116 = add nuw nsw i32 %conv.i115, -18874312
  %25 = inttoptr i32 %add1.i116 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 8) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %26 = load i16, ptr @sis5595_base, align 2
  %conv4.i117 = zext i16 %26 to i32
  %add7.i118 = add nuw nsw i32 %conv4.i117, -18874311
  %27 = inttoptr i32 %add7.i118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %23) #7, !srcloc !120
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry.sw.bb27_crit_edge, %entry.sw.bb27_crit_edge149
  %addr.tr = trunc i16 %addr to i8
  %shl30 = shl i8 %addr.tr, 1
  %and32 = and i8 %read_write, 1
  %or33 = or i8 %and32, %shl30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %28 = load i16, ptr @sis5595_base, align 2
  %conv.i119 = zext i16 %28 to i32
  %add1.i120 = add nuw nsw i32 %conv.i119, -18874312
  %29 = inttoptr i32 %add1.i120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 4) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %30 = load i16, ptr @sis5595_base, align 2
  %conv4.i121 = zext i16 %30 to i32
  %add7.i122 = add nuw nsw i32 %conv4.i121, -18874311
  %31 = inttoptr i32 %add7.i122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %or33) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %32 = load i16, ptr @sis5595_base, align 2
  %conv.i123 = zext i16 %32 to i32
  %add1.i124 = add nuw nsw i32 %conv.i123, -18874312
  %33 = inttoptr i32 %add1.i124 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 5) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %34 = load i16, ptr @sis5595_base, align 2
  %conv4.i125 = zext i16 %34 to i32
  %add7.i126 = add nuw nsw i32 %conv4.i125, -18874311
  %35 = inttoptr i32 %add7.i126 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %command) #7, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp36 = icmp eq i8 %read_write, 0
  br i1 %cmp36, label %if.then38, label %sw.bb27.if.end45_crit_edge

sw.bb27.if.end45_crit_edge:                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then38:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %data, align 2
  %conv41 = trunc i16 %37 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %38 = load i16, ptr @sis5595_base, align 2
  %conv.i127 = zext i16 %38 to i32
  %add1.i128 = add nuw nsw i32 %conv.i127, -18874312
  %39 = inttoptr i32 %add1.i128 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 8) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %40 = load i16, ptr @sis5595_base, align 2
  %conv4.i129 = zext i16 %40 to i32
  %add7.i130 = add nuw nsw i32 %conv4.i129, -18874311
  %41 = inttoptr i32 %add7.i130 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %conv41) #7, !srcloc !120
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %data, align 2
  %44 = lshr i16 %43, 8
  %conv44 = trunc i16 %44 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %45 = load i16, ptr @sis5595_base, align 2
  %conv.i131 = zext i16 %45 to i32
  %add1.i132 = add nuw nsw i32 %conv.i131, -18874312
  %46 = inttoptr i32 %add1.i132 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 9) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %47 = load i16, ptr @sis5595_base, align 2
  %conv4.i133 = zext i16 %47 to i32
  %add7.i134 = add nuw nsw i32 %conv4.i133, -18874311
  %48 = inttoptr i32 %add7.i134 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %conv44) #7, !srcloc !120
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %sw.bb27.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp46 = icmp eq i32 %size, 4
  %cond = select i1 %cmp46, i32 8, i32 6
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %size) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end45, %if.then25, %sw.bb14.sw.epilog_crit_edge, %if.then, %sw.bb4.sw.epilog_crit_edge, %sw.bb
  %size.addr.0 = phi i32 [ %cond, %if.end45 ], [ 0, %sw.bb ], [ 2, %if.then ], [ 2, %sw.bb4.sw.epilog_crit_edge ], [ 4, %if.then25 ], [ 4, %sw.bb14.sw.epilog_crit_edge ]
  %conv49 = trunc i32 %size.addr.0 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %49 = load i16, ptr @sis5595_base, align 2
  %conv.i135 = zext i16 %49 to i32
  %add1.i136 = add nuw nsw i32 %conv.i135, -18874312
  %50 = inttoptr i32 %add1.i136 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 2) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %51 = load i16, ptr @sis5595_base, align 2
  %conv4.i137 = zext i16 %51 to i32
  %add7.i138 = add nuw nsw i32 %conv4.i137, -18874311
  %52 = inttoptr i32 %add7.i138 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %conv49) #7, !srcloc !120
  %call = tail call fastcc i32 @sis5595_transaction(ptr noundef %adap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end51, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size.addr.0)
  %cond98 = icmp eq i32 %size.addr.0, 8
  br i1 %cond98, label %if.end51.sw.bb63_crit_edge, label %land.lhs.true

if.end51.sw.bb63_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb63

land.lhs.true:                                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp55 = icmp eq i8 %read_write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0)
  %cmp57 = icmp eq i32 %size.addr.0, 0
  %or.cond = or i1 %cmp55, %cmp57
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %if.end60

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %land.lhs.true
  %53 = zext i32 %size.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %size.addr.0, label %if.end60.cleanup_crit_edge [
    i32 2, label %if.end60.sw.bb61_crit_edge
    i32 4, label %if.end60.sw.bb61_crit_edge150
    i32 6, label %if.end60.sw.bb63_crit_edge
  ]

if.end60.sw.bb63_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb63

if.end60.sw.bb61_crit_edge150:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb61

if.end60.sw.bb61_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb61

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb61:                                          ; preds = %if.end60.sw.bb61_crit_edge, %if.end60.sw.bb61_crit_edge150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %54 = load i16, ptr @sis5595_base, align 2
  %conv.i139 = zext i16 %54 to i32
  %add1.i140 = add nuw nsw i32 %conv.i139, -18874312
  %55 = inttoptr i32 %add1.i140 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 8) #7, !srcloc !120
  %56 = load i16, ptr @sis5595_base, align 2
  %conv2.i = zext i16 %56 to i32
  %add5.i = add nuw nsw i32 %conv2.i, -18874311
  %57 = inttoptr i32 %add5.i to ptr
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %57) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %59 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %data, align 2
  br label %cleanup

sw.bb63:                                          ; preds = %if.end60.sw.bb63_crit_edge, %if.end51.sw.bb63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %60 = load i16, ptr @sis5595_base, align 2
  %conv.i141 = zext i16 %60 to i32
  %add1.i142 = add nuw nsw i32 %conv.i141, -18874312
  %61 = inttoptr i32 %add1.i142 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 8) #7, !srcloc !120
  %62 = load i16, ptr @sis5595_base, align 2
  %conv2.i143 = zext i16 %62 to i32
  %add5.i144 = add nuw nsw i32 %conv2.i143, -18874311
  %63 = inttoptr i32 %add5.i144 to ptr
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %63) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %conv65 = zext i8 %64 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %65 = load i16, ptr @sis5595_base, align 2
  %conv.i145 = zext i16 %65 to i32
  %add1.i146 = add nuw nsw i32 %conv.i145, -18874312
  %66 = inttoptr i32 %add1.i146 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 9) #7, !srcloc !120
  %67 = load i16, ptr @sis5595_base, align 2
  %conv2.i147 = zext i16 %67 to i32
  %add5.i148 = add nuw nsw i32 %conv2.i147, -18874311
  %68 = inttoptr i32 %add5.i148 to ptr
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %conv67 = zext i8 %69 to i16
  %shl68 = shl nuw i16 %conv67, 8
  %add = or i16 %shl68, %conv65
  %70 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %add, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb63, %sw.bb61, %if.end60.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ %call, %sw.epilog.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ], [ 0, %sw.bb63 ], [ 0, %sw.bb61 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sis5595_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16711680
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sis5595_transaction(ptr noundef %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %0 = load i16, ptr @sis5595_base, align 2
  %conv.i = zext i16 %0 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874312
  %1 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 0) #7, !srcloc !120
  %2 = load i16, ptr @sis5595_base, align 2
  %conv2.i = zext i16 %2 to i32
  %add5.i = add nuw nsw i32 %conv2.i, -18874311
  %3 = inttoptr i32 %add5.i to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %conv = zext i8 %4 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %5 = load i16, ptr @sis5595_base, align 2
  %conv.i205 = zext i16 %5 to i32
  %add1.i206 = add nuw nsw i32 %conv.i205, -18874312
  %6 = inttoptr i32 %add1.i206 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 1) #7, !srcloc !120
  %7 = load i16, ptr @sis5595_base, align 2
  %conv2.i207 = zext i16 %7 to i32
  %add5.i208 = add nuw nsw i32 %conv2.i207, -18874311
  %8 = inttoptr i32 %add5.i208 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %conv2 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %add = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp.not = icmp eq i32 %add, 0
  br i1 %cmp.not, label %entry.if.end59_crit_edge, label %do.body

entry.if.end59_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis5595_transaction.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis5595_transaction, %do.end)) #7
          to label %if.then8 [label %do.end], !srcloc !118

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis5595_transaction.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %add) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %10 = load i16, ptr @sis5595_base, align 2
  %conv.i209 = zext i16 %10 to i32
  %add1.i210 = add nuw nsw i32 %conv.i209, -18874312
  %11 = inttoptr i32 %add1.i210 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %12 = load i16, ptr @sis5595_base, align 2
  %conv4.i = zext i16 %12 to i32
  %add7.i = add nuw nsw i32 %conv4.i, -18874311
  %13 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %4) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %14 = load i16, ptr @sis5595_base, align 2
  %conv.i211 = zext i16 %14 to i32
  %add1.i212 = add nuw nsw i32 %conv.i211, -18874312
  %15 = inttoptr i32 %add1.i212 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 1) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %16 = load i16, ptr @sis5595_base, align 2
  %conv4.i213 = zext i16 %16 to i32
  %add7.i214 = add nuw nsw i32 %conv4.i213, -18874311
  %17 = inttoptr i32 %add7.i214 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %9) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %18 = load i16, ptr @sis5595_base, align 2
  %conv.i215 = zext i16 %18 to i32
  %add1.i216 = add nuw nsw i32 %conv.i215, -18874312
  %19 = inttoptr i32 %add1.i216 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 0) #7, !srcloc !120
  %20 = load i16, ptr @sis5595_base, align 2
  %conv2.i217 = zext i16 %20 to i32
  %add5.i218 = add nuw nsw i32 %conv2.i217, -18874311
  %21 = inttoptr i32 %add5.i218 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %conv12 = zext i8 %22 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %23 = load i16, ptr @sis5595_base, align 2
  %conv.i219 = zext i16 %23 to i32
  %add1.i220 = add nuw nsw i32 %conv.i219, -18874312
  %24 = inttoptr i32 %add1.i220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 1) #7, !srcloc !120
  %25 = load i16, ptr @sis5595_base, align 2
  %conv2.i221 = zext i16 %25 to i32
  %add5.i222 = add nuw nsw i32 %conv2.i221, -18874311
  %26 = inttoptr i32 %add5.i222 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %conv14 = zext i8 %27 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %add16 = or i32 %shl15, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add16)
  %cmp17.not = icmp eq i32 %add16, 0
  br i1 %cmp17.not, label %do.body39, label %do.body20

do.body20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis5595_transaction.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis5595_transaction, %cleanup)) #7
          to label %if.then34 [label %cleanup], !srcloc !118

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %dev35 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis5595_transaction.__UNIQUE_ID_ddebug296, ptr noundef %dev35, ptr noundef nonnull @.str.35, i32 noundef %add16) #7
  br label %cleanup

do.body39:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis5595_transaction.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis5595_transaction, %if.end59)) #7
          to label %if.then53 [label %if.end59], !srcloc !118

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %dev54 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis5595_transaction.__UNIQUE_ID_ddebug297, ptr noundef %dev54, ptr noundef nonnull @.str.36) #7
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %do.body39, %entry.if.end59_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %28 = load i16, ptr @sis5595_base, align 2
  %conv.i223 = zext i16 %28 to i32
  %add1.i224 = add nuw nsw i32 %conv.i223, -18874312
  %29 = inttoptr i32 %add1.i224 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 2) #7, !srcloc !120
  %30 = load i16, ptr @sis5595_base, align 2
  %conv2.i225 = zext i16 %30 to i32
  %add5.i226 = add nuw nsw i32 %conv2.i225, -18874311
  %31 = inttoptr i32 %add5.i226 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %33 = or i8 %32, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %34 = load i16, ptr @sis5595_base, align 2
  %conv.i227 = zext i16 %34 to i32
  %add1.i228 = add nuw nsw i32 %conv.i227, -18874312
  %35 = inttoptr i32 %add1.i228 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 2) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %36 = load i16, ptr @sis5595_base, align 2
  %conv4.i229 = zext i16 %36 to i32
  %add7.i230 = add nuw nsw i32 %conv4.i229, -18874311
  %37 = inttoptr i32 %add7.i230 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %33) #7, !srcloc !120
  br label %do.body63

do.body63:                                        ; preds = %land.rhs.do.body63_crit_edge, %if.end59
  %timeout.0 = phi i32 [ 0, %if.end59 ], [ %inc, %land.rhs.do.body63_crit_edge ]
  tail call void @msleep(i32 noundef 1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %38 = load i16, ptr @sis5595_base, align 2
  %conv.i231 = zext i16 %38 to i32
  %add1.i232 = add nuw nsw i32 %conv.i231, -18874312
  %39 = inttoptr i32 %add1.i232 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 0) #7, !srcloc !120
  %40 = load i16, ptr @sis5595_base, align 2
  %conv2.i233 = zext i16 %40 to i32
  %add5.i234 = add nuw nsw i32 %conv2.i233, -18874311
  %41 = inttoptr i32 %add5.i234 to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %conv65 = zext i8 %42 to i32
  %and67 = and i32 %conv65, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %land.rhs, label %do.body63.if.end94_crit_edge

do.body63.if.end94_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

land.rhs:                                         ; preds = %do.body63
  %inc = add nuw nsw i32 %timeout.0, 1
  %exitcond.not = icmp eq i32 %inc, 501
  br i1 %exitcond.not, label %do.body75, label %land.rhs.do.body63_crit_edge

land.rhs.do.body63_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body63

do.body75:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis5595_transaction.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis5595_transaction, %if.end94)) #7
          to label %if.then89 [label %if.end94], !srcloc !118

if.then89:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  %dev90 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis5595_transaction.__UNIQUE_ID_ddebug298, ptr noundef %dev90, ptr noundef nonnull @.str.37) #7
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %do.body75, %do.body63.if.end94_crit_edge
  %result.0 = phi i32 [ -110, %if.then89 ], [ -110, %do.body75 ], [ 0, %do.body63.if.end94_crit_edge ]
  %and95 = and i32 %conv65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end117_crit_edge, label %do.body98

if.end94.if.end117_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

do.body98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis5595_transaction.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis5595_transaction, %if.end117)) #7
          to label %if.then112 [label %if.end117], !srcloc !118

if.then112:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  %dev113 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis5595_transaction.__UNIQUE_ID_ddebug299, ptr noundef %dev113, ptr noundef nonnull @.str.38) #7
  br label %if.end117

if.end117:                                        ; preds = %if.then112, %do.body98, %if.end94.if.end117_crit_edge
  %result.1 = phi i32 [ %result.0, %if.end94.if.end117_crit_edge ], [ -6, %if.then112 ], [ -6, %do.body98 ]
  %and118 = and i32 %conv65, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end117.if.end125_crit_edge, label %do.end123

if.end117.if.end125_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

do.end123:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %dev124 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev124, ptr noundef nonnull @.str.39) #10
  br label %if.end125

if.end125:                                        ; preds = %do.end123, %if.end117.if.end125_crit_edge
  %result.2 = phi i32 [ -5, %do.end123 ], [ %result.1, %if.end117.if.end125_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %43 = load i16, ptr @sis5595_base, align 2
  %conv.i235 = zext i16 %43 to i32
  %add1.i236 = add nuw nsw i32 %conv.i235, -18874312
  %44 = inttoptr i32 %add1.i236 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 0) #7, !srcloc !120
  %45 = load i16, ptr @sis5595_base, align 2
  %conv2.i237 = zext i16 %45 to i32
  %add5.i238 = add nuw nsw i32 %conv2.i237, -18874311
  %46 = inttoptr i32 %add5.i238 to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %conv127 = zext i8 %47 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %48 = load i16, ptr @sis5595_base, align 2
  %conv.i239 = zext i16 %48 to i32
  %add1.i240 = add nuw nsw i32 %conv.i239, -18874312
  %49 = inttoptr i32 %add1.i240 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 1) #7, !srcloc !120
  %50 = load i16, ptr @sis5595_base, align 2
  %conv2.i241 = zext i16 %50 to i32
  %add5.i242 = add nuw nsw i32 %conv2.i241, -18874311
  %51 = inttoptr i32 %add5.i242 to ptr
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %conv129 = zext i8 %52 to i32
  %shl130 = shl nuw nsw i32 %conv129, 8
  %add131 = or i32 %shl130, %conv127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add131)
  %cmp132.not = icmp eq i32 %add131, 0
  br i1 %cmp132.not, label %if.end125.if.end139_crit_edge, label %if.then134

if.end125.if.end139_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then134:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %53 = load i16, ptr @sis5595_base, align 2
  %conv.i243 = zext i16 %53 to i32
  %add1.i244 = add nuw nsw i32 %conv.i243, -18874312
  %54 = inttoptr i32 %add1.i244 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 0) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %55 = load i16, ptr @sis5595_base, align 2
  %conv4.i245 = zext i16 %55 to i32
  %add7.i246 = add nuw nsw i32 %conv4.i245, -18874311
  %56 = inttoptr i32 %add7.i246 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %47) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %57 = load i16, ptr @sis5595_base, align 2
  %conv.i247 = zext i16 %57 to i32
  %add1.i248 = add nuw nsw i32 %conv.i247, -18874312
  %58 = inttoptr i32 %add1.i248 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 1) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %59 = load i16, ptr @sis5595_base, align 2
  %conv4.i249 = zext i16 %59 to i32
  %add7.i250 = add nuw nsw i32 %conv4.i249, -18874311
  %60 = inttoptr i32 %add7.i250 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 %52) #7, !srcloc !120
  br label %if.end139

if.end139:                                        ; preds = %if.then134, %if.end125.if.end139_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %61 = load i16, ptr @sis5595_base, align 2
  %conv.i251 = zext i16 %61 to i32
  %add1.i252 = add nuw nsw i32 %conv.i251, -18874312
  %62 = inttoptr i32 %add1.i252 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 0) #7, !srcloc !120
  %63 = load i16, ptr @sis5595_base, align 2
  %conv2.i253 = zext i16 %63 to i32
  %add5.i254 = add nuw nsw i32 %conv2.i253, -18874311
  %64 = inttoptr i32 %add5.i254 to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %conv141 = zext i8 %65 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %66 = load i16, ptr @sis5595_base, align 2
  %conv.i255 = zext i16 %66 to i32
  %add1.i256 = add nuw nsw i32 %conv.i255, -18874312
  %67 = inttoptr i32 %add1.i256 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 1) #7, !srcloc !120
  %68 = load i16, ptr @sis5595_base, align 2
  %conv2.i257 = zext i16 %68 to i32
  %add5.i258 = add nuw nsw i32 %conv2.i257, -18874311
  %69 = inttoptr i32 %add5.i258 to ptr
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %69) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %conv143 = zext i8 %70 to i32
  %shl144 = shl nuw nsw i32 %conv143, 8
  %add145 = or i32 %shl144, %conv141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add145)
  %cmp146.not = icmp eq i32 %add145, 0
  br i1 %cmp146.not, label %if.end139.cleanup_crit_edge, label %do.body149

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body149:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis5595_transaction.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis5595_transaction, %cleanup)) #7
          to label %if.then163 [label %cleanup], !srcloc !118

if.then163:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #9
  %dev164 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis5595_transaction.__UNIQUE_ID_ddebug300, ptr noundef %dev164, ptr noundef nonnull @.str.40, i32 noundef %add145) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then163, %do.body149, %if.end139.cleanup_crit_edge, %if.then34, %do.body20
  %retval.0 = phi i32 [ -16, %if.then34 ], [ %result.2, %if.then163 ], [ %result.2, %if.end139.cleanup_crit_edge ], [ -16, %do.body20 ], [ %result.2, %do.body149 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !82, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !105, !107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__param_force_addr, !1, !"__param_force_addr", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 114, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_addrtype292, !1, !"__UNIQUE_ID_force_addrtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_addr293, !4, !"__UNIQUE_ID_force_addr293", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 115, i32 1}
!5 = !{ptr @__UNIQUE_ID_author301, !6, !"__UNIQUE_ID_author301", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 417, i32 1}
!7 = !{ptr @__UNIQUE_ID_description302, !8, !"__UNIQUE_ID_description302", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 418, i32 1}
!9 = !{ptr @__UNIQUE_ID_file303, !10, !"__UNIQUE_ID_file303", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 419, i32 1}
!11 = !{ptr @__UNIQUE_ID_license304, !10, !"__UNIQUE_ID_license304", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_i2c_sis5595__305_421_i2c_sis5595_init6, !13, !"__initcall__kmod_i2c_sis5595__305_421_i2c_sis5595_init6", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 421, i32 1}
!14 = !{ptr @__exitcall_i2c_sis5595_exit, !15, !"__exitcall_i2c_sis5595_exit", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 422, i32 1}
!16 = !{ptr @force_addr, !17, !"force_addr", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 113, i32 12}
!18 = !{ptr @sis5595_base, !19, !"sis5595_base", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 118, i32 23}
!20 = !{ptr @sis5595_pdev, !21, !"sis5595_pdev", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 119, i32 24}
!22 = !{ptr @__param_str_force_addr, !1, !"__param_str_force_addr", i1 false, i1 false}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 396, i32 11}
!25 = !{ptr @sis5595_driver, !26, !"sis5595_driver", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 395, i32 26}
!27 = !{ptr @sis5595_ids, !28, !"sis5595_ids", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 360, i32 35}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 372, i32 3}
!31 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @sis5595_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @sis5595_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 380, i32 4}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 145, i32 4}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sis5595_setup._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @sis5595_setup._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 154, i32 3}
!46 = !{ptr @sis5595_setup._entry.9, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sis5595_setup._entry_ptr.11, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 160, i32 2}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sis5595_setup.__UNIQUE_ID_ddebug294, !49, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 171, i32 3}
!54 = !{ptr @sis5595_setup._entry.14, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sis5595_setup._entry_ptr.16, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 177, i32 3}
!58 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @sis5595_setup._entry.17, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @sis5595_setup._entry_ptr.20, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 186, i32 4}
!63 = !{ptr @sis5595_setup._entry.21, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @sis5595_setup._entry_ptr.23, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 195, i32 3}
!67 = !{ptr @sis5595_setup._entry.24, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @sis5595_setup._entry_ptr.26, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 204, i32 4}
!71 = !{ptr @sis5595_setup._entry.27, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @sis5595_setup._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @blacklist, !74, !"blacklist", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 54, i32 12}
!75 = !{ptr @sis5595_adapter, !76, !"sis5595_adapter", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 354, i32 27}
!77 = !{ptr @smbus_algorithm, !78, !"smbus_algorithm", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 349, i32 35}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 314, i32 3}
!81 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sis5595_access._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @sis5595_access._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 226, i32 3}
!87 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @sis5595_transaction.__UNIQUE_ID_ddebug295, !86, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 230, i32 4}
!91 = !{ptr @sis5595_transaction.__UNIQUE_ID_ddebug296, !90, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 233, i32 4}
!94 = !{ptr @sis5595_transaction.__UNIQUE_ID_ddebug297, !93, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 248, i32 3}
!97 = !{ptr @sis5595_transaction.__UNIQUE_ID_ddebug298, !96, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 253, i32 3}
!100 = !{ptr @sis5595_transaction.__UNIQUE_ID_ddebug299, !99, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 258, i32 3}
!103 = !{ptr @sis5595_transaction._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @sis5595_transaction._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/i2c/busses/i2c-sis5595.c", i32 272, i32 3}
!107 = !{ptr @sis5595_transaction.__UNIQUE_ID_ddebug300, !106, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}
!118 = !{i64 2148700823, i64 2148700828, i64 2148700841, i64 2148700885, i64 2148700919, i64 2148700940}
!119 = !{i64 2155900320}
!120 = !{i64 4996676}
!121 = !{i64 2155900674}
!122 = !{i64 2155899663}
!123 = !{i64 4997071}
!124 = !{i64 2155900095}
