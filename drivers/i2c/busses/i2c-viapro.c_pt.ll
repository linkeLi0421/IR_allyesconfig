; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-viapro.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-viapro.c"
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

@__param_str_force = internal constant [17 x i8] c"i2c_viapro.force\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@force = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force = internal constant %struct.kernel_param { ptr @__param_str_force, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @force } }, section "__param", align 4
@__UNIQUE_ID_forcetype292 = internal constant [31 x i8] c"i2c_viapro.parmtype=force:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force293 = internal constant [60 x i8] c"i2c_viapro.parm=force:Forcibly enable the SMBus. DANGEROUS!\00", section ".modinfo", align 1
@__param_str_force_addr = internal constant [22 x i8] c"i2c_viapro.force_addr\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_addr = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_addr = internal constant %struct.kernel_param { ptr @__param_str_force_addr, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 2, %union.anon.76 { ptr @force_addr } }, section "__param", align 4
@__UNIQUE_ID_force_addrtype294 = internal constant [38 x i8] c"i2c_viapro.parmtype=force_addr:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_addr295 = internal constant [96 x i8] c"i2c_viapro.parm=force_addr:Forcibly enable the SMBus at the given address. EXTREMELY DANGEROUS!\00", section ".modinfo", align 1
@vt596_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @vt596_ids, ptr @vt596_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@vt596_pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vt596_adapter = internal global { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 129, ptr @smbus_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] zeroinitializer, %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@vt596_smba = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author302 = internal constant [52 x i8] c"i2c_viapro.author=Kyosti Malkki <kmalkki@cc.hut.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [59 x i8] c"i2c_viapro.author=Mark D. Studebaker <mdsxyz123@yahoo.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [50 x i8] c"i2c_viapro.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [45 x i8] c"i2c_viapro.description=vt82c596 SMBus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [46 x i8] c"i2c_viapro.file=drivers/i2c/busses/i2c-viapro\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [23 x i8] c"i2c_viapro.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_i2c_viapro__308_498_i2c_vt596_init6 = internal global ptr @i2c_vt596_init, section ".initcall6.init", align 4
@__exitcall_i2c_vt596_exit = internal global ptr @i2c_vt596_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vt596_smbus\00", [20 x i8] zeroinitializer }, align 32
@vt596_ids = internal constant { [16 x %struct.pci_device_id], [128 x i8] } { [16 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 12368, i32 -1, i32 -1, i32 0, i32 0, i32 144, i32 0 }, %struct.pci_device_id { i32 4358, i32 12369, i32 -1, i32 -1, i32 0, i32 0, i32 144, i32 0 }, %struct.pci_device_id { i32 4358, i32 12375, i32 -1, i32 -1, i32 0, i32 0, i32 144, i32 0 }, %struct.pci_device_id { i32 4358, i32 12404, i32 -1, i32 -1, i32 0, i32 0, i32 208, i32 0 }, %struct.pci_device_id { i32 4358, i32 12615, i32 -1, i32 -1, i32 0, i32 0, i32 208, i32 0 }, %struct.pci_device_id { i32 4358, i32 12663, i32 -1, i32 -1, i32 0, i32 0, i32 208, i32 0 }, %struct.pci_device_id { i32 4358, i32 12839, i32 -1, i32 -1, i32 0, i32 0, i32 208, i32 0 }, %struct.pci_device_id { i32 4358, i32 13111, i32 -1, i32 -1, i32 0, i32 0, i32 208, i32 0 }, %struct.pci_device_id { i32 4358, i32 13170, i32 -1, i32 -1, i32 0, i32 0, i32 208, i32 0 }, %struct.pci_device_id { i32 4358, i32 33333, i32 -1, i32 -1, i32 0, i32 0, i32 144, i32 0 }, %struct.pci_device_id { i32 4358, i32 12935, i32 -1, i32 -1, i32 0, i32 0, i32 208, i32 0 }, %struct.pci_device_id { i32 4358, i32 33572, i32 -1, i32 -1, i32 0, i32 0, i32 208, i32 0 }, %struct.pci_device_id { i32 4358, i32 33619, i32 -1, i32 -1, i32 0, i32 0, i32 208, i32 0 }, %struct.pci_device_id { i32 4358, i32 33801, i32 -1, i32 -1, i32 0, i32 0, i32 208, i32 0 }, %struct.pci_device_id { i32 4358, i32 33808, i32 -1, i32 -1, i32 0, i32 0, i32 208, i32 0 }, %struct.pci_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@SMBHSTCFG = internal global { i1, [31 x i8] } zeroinitializer, align 32
@vt596_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot configure SMBus I/O Base address\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vt596_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-viapro.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vt596_probe._entry_ptr = internal global ptr @vt596_probe._entry, section ".printk_index", align 4
@vt596_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"SMBus base address uninitialized - upgrade BIOS or use force_addr=0xaddr\0A\00", [54 x i8] zeroinitializer }, align 32
@vt596_probe._entry_ptr.8 = internal global ptr @vt596_probe._entry.6, section ".printk_index", align 4
@vt596_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SMBus region 0x%x already in use!\0A\00", [61 x i8] zeroinitializer }, align 32
@vt596_probe._entry_ptr.11 = internal global ptr @vt596_probe._entry.9, section ".printk_index", align 4
@vt596_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 366, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"WARNING: SMBus interface set to new address 0x%04x!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vt596_probe._entry_ptr.15 = internal global ptr @vt596_probe._entry.12, section ".printk_index", align 4
@vt596_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 376, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enabling SMBus device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vt596_probe._entry_ptr.19 = internal global ptr @vt596_probe._entry.16, section ".printk_index", align 4
@vt596_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"SMBUS: Error: Host SMBus controller not enabled! - upgrade BIOS or use force=1\0A\00", [48 x i8] zeroinitializer }, align 32
@vt596_probe._entry_ptr.22 = internal global ptr @vt596_probe._entry.20, section ".printk_index", align 4
@vt596_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.2, ptr @.str.3, ptr @.str.24, i8 0, i8 96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_viapro\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VT596_smba = 0x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@vt596_features = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SMBus Via Pro adapter at %04x\00", [34 x i8] zeroinitializer }, align 32
@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @vt596_access, ptr null, ptr @vt596_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vt596_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 285, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt596_access\00", [19 x i8] zeroinitializer }, align 32
@vt596_access._entry_ptr = internal global ptr @vt596_access._entry, section ".printk_index", align 4
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Transaction (pre)\00", [46 x i8] zeroinitializer }, align 32
@vt596_transaction.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 34, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vt596_transaction\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SMBus busy (0x%02x). Resetting...\0A\00", [61 x i8] zeroinitializer }, align 32
@vt596_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SMBus reset failed! (0x%02x)\0A\00", [34 x i8] zeroinitializer }, align 32
@vt596_transaction._entry_ptr = internal global ptr @vt596_transaction._entry, section ".printk_index", align 4
@vt596_transaction._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.3, i32 161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMBus timeout!\0A\00", [16 x i8] zeroinitializer }, align 32
@vt596_transaction._entry_ptr.34 = internal global ptr @vt596_transaction._entry.32, section ".printk_index", align 4
@vt596_transaction._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.29, ptr @.str.3, i32 167, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Transaction failed (0x%02x)\0A\00", [35 x i8] zeroinitializer }, align 32
@vt596_transaction._entry_ptr.37 = internal global ptr @vt596_transaction._entry.35, section ".printk_index", align 4
@vt596_transaction._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.29, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SMBus collision!\0A\00", [46 x i8] zeroinitializer }, align 32
@vt596_transaction._entry_ptr.40 = internal global ptr @vt596_transaction._entry.38, section ".printk_index", align 4
@vt596_transaction.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.29, ptr @.str.3, ptr @.str.41, i8 0, i8 44, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No response\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Transaction (post)\00", [45 x i8] zeroinitializer }, align 32
@vt596_dump_regs.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vt596_dump_regs\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: STS=%02x CNT=%02x CMD=%02x ADD=%02x DAT=%02x,%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@vt596_dump_regs.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.43, ptr @.str.3, ptr @.str.45, i8 0, i8 28, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BLK=\00", [27 x i8] zeroinitializer }, align 32
@vt596_dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.3, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x,\00", [26 x i8] zeroinitializer }, align 32
@vt596_dump_regs._entry_ptr = internal global ptr @vt596_dump_regs._entry, section ".printk_index", align 4
@vt596_dump_regs._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.3, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@vt596_dump_regs._entry_ptr.49 = internal global ptr @vt596_dump_regs._entry.47, section ".printk_index", align 4
@vt596_dump_regs.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.43, ptr @.str.3, ptr @.str.50, i8 0, i8 29, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@vt596_dump_regs._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.3, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vt596_dump_regs._entry_ptr.52 = internal global ptr @vt596_dump_regs._entry.51, section ".printk_index", align 4
@vt596_dump_regs._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.3, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x\0A\00", [26 x i8] zeroinitializer }, align 32
@vt596_dump_regs._entry_ptr.55 = internal global ptr @vt596_dump_regs._entry.53, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 16, i64 12375, i64 12404, i64 12615, i64 12663, i64 12839, i64 12935, i64 13111, i64 13170, i64 33572, i64 33619, i64 33801, i64 33808]
@__sancov_gen_cov_switch_values.56 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.57 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 12]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 20, i64 52]
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 82, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"force_addr\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 88, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"vt596_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 469, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"vt596_pdev\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 44, i32 24 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"vt596_adapter\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 305, i32 27 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"vt596_smba\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 51, i32 23 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 470, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [10 x i8] c"vt596_ids\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 433, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"SMBHSTCFG\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 333, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 341, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 353, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 365, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 376, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 378, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 386, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"vt596_features\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 99, i32 21 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 412, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 300, i32 35 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 284, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 134, i32 18 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 138, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 143, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 161, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 166, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 172, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 177, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 184, i32 18 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 104, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 113, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 115, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 116, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 117, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 119, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-viapro.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 120, i32 3 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_force293, ptr @__UNIQUE_ID_force_addr295, ptr @__UNIQUE_ID_force_addrtype294, ptr @__UNIQUE_ID_forcetype292, ptr @__UNIQUE_ID_license307, ptr @__exitcall_i2c_vt596_exit, ptr @__initcall__kmod_i2c_viapro__308_498_i2c_vt596_init6, ptr @__param_force, ptr @__param_force_addr, ptr @i2c_vt596_exit, ptr @vt596_access._entry, ptr @vt596_access._entry_ptr, ptr @vt596_dump_regs._entry, ptr @vt596_dump_regs._entry.47, ptr @vt596_dump_regs._entry.51, ptr @vt596_dump_regs._entry.53, ptr @vt596_dump_regs._entry_ptr, ptr @vt596_dump_regs._entry_ptr.49, ptr @vt596_dump_regs._entry_ptr.52, ptr @vt596_dump_regs._entry_ptr.55, ptr @vt596_probe._entry, ptr @vt596_probe._entry.12, ptr @vt596_probe._entry.16, ptr @vt596_probe._entry.20, ptr @vt596_probe._entry.6, ptr @vt596_probe._entry.9, ptr @vt596_probe._entry_ptr, ptr @vt596_probe._entry_ptr.11, ptr @vt596_probe._entry_ptr.15, ptr @vt596_probe._entry_ptr.19, ptr @vt596_probe._entry_ptr.22, ptr @vt596_probe._entry_ptr.8, ptr @vt596_transaction._entry, ptr @vt596_transaction._entry.32, ptr @vt596_transaction._entry.35, ptr @vt596_transaction._entry.38, ptr @vt596_transaction._entry_ptr, ptr @vt596_transaction._entry_ptr.34, ptr @vt596_transaction._entry_ptr.37, ptr @vt596_transaction._entry_ptr.40, ptr @force, ptr @force_addr, ptr @vt596_driver, ptr @vt596_pdev, ptr @vt596_adapter, ptr @vt596_smba, ptr @.str, ptr @vt596_ids, ptr @SMBHSTCFG, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @vt596_features, ptr @.str.25, ptr @smbus_algorithm, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.54], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_addr to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_smba to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_ids to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SMBHSTCFG to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_features to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_transaction._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_transaction._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_transaction._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_dump_regs._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_dump_regs._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt596_dump_regs._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_vt596_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @vt596_driver) #8
  %0 = load ptr, ptr @vt596_pdev, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_adapter(ptr noundef nonnull @vt596_adapter) #8
  %1 = load i16, ptr @vt596_smba, align 2
  %conv = zext i16 %1 to i32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv, i32 noundef 8) #8
  %2 = load ptr, ptr @vt596_pdev, align 4
  tail call void @pci_dev_put(ptr noundef %2) #8
  store ptr null, ptr @vt596_pdev, align 4
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
define internal i32 @i2c_vt596_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @vt596_driver, ptr noundef null, ptr noundef nonnull @.str.23) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt596_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %temp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %temp, align 1, !annotation !151
  %1 = load i16, ptr @force_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = and i16 %1, -16
  store i16 %2, ptr @vt596_smba, align 2
  store i8 0, ptr @force, align 1
  br label %found

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %4, ptr noundef nonnull @vt596_smba) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i16, ptr @vt596_smba, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool5.not = icmp eq i16 %6, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %device = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12368, i32 %8)
  %cmp = icmp eq i32 %8, 12368
  br i1 %cmp, label %land.lhs.true, label %if.then6.do.end_crit_edge

if.then6.do.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %if.then6
  %call8 = tail call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 128, ptr noundef nonnull @vt596_smba) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %9 = load i16, ptr @vt596_smba, align 2
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool13.not = icmp eq i16 %10, 0
  br i1 %tobool13.not, label %land.lhs.true10.do.end_crit_edge, label %if.then14

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @SMBHSTCFG, align 2
  br label %if.end16

do.end:                                           ; preds = %land.lhs.true10.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then6.do.end_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end16:                                         ; preds = %if.then14, %lor.lhs.false.if.end16_crit_edge
  %11 = load i16, ptr @vt596_smba, align 2
  %12 = and i16 %11, -16
  store i16 %12, ptr @vt596_smba, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp21 = icmp eq i16 %12, 0
  br i1 %cmp21, label %do.end26, label %if.end16.found_crit_edge

if.end16.found_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %found

do.end26:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.7) #11
  br label %cleanup

found:                                            ; preds = %if.end16.found_crit_edge, %if.then
  %13 = load i16, ptr @vt596_smba, align 2
  %conv34 = zext i16 %13 to i32
  %14 = load ptr, ptr getelementptr inbounds (%struct.pci_driver, ptr @vt596_driver, i32 0, i32 1), align 4
  %call35 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv34, i32 noundef 8, ptr noundef %14, i32 noundef 0) #8
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.end40, label %if.end43

do.end40:                                         ; preds = %found
  call void @__sanitizer_cov_trace_pc() #10
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %15 = load i16, ptr @vt596_smba, align 2
  %conv42 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.10, i32 noundef %conv42) #11
  br label %cleanup

if.end43:                                         ; preds = %found
  %.b143 = load i1, ptr @SMBHSTCFG, align 2
  %conv44 = select i1 %.b143, i32 132, i32 210
  %call45 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef %conv44, ptr noundef nonnull %temp) #8
  %16 = load i16, ptr @force_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool46.not = icmp eq i16 %16, 0
  br i1 %tobool46.not, label %if.else64, label %if.then47

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %.b142 = load i1, ptr @SMBHSTCFG, align 2
  %conv48 = select i1 %.b142, i32 132, i32 210
  %17 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %temp, align 1
  %19 = and i8 %18, -2
  %call52 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef %conv48, i8 noundef zeroext %19) #8
  %driver_data53 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %20 = ptrtoint ptr %driver_data53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %driver_data53, align 4
  %22 = load i16, ptr @vt596_smba, align 2
  %call54 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef %21, i16 noundef zeroext %22) #8
  %.b141 = load i1, ptr @SMBHSTCFG, align 2
  %conv55 = select i1 %.b141, i32 132, i32 210
  %23 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %temp, align 1
  %25 = or i8 %24, 1
  %call58 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef %conv55, i8 noundef zeroext %25) #8
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %26 = load i16, ptr @vt596_smba, align 2
  %conv63 = zext i16 %26 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev62, ptr noundef nonnull @.str.13, i32 noundef %conv63) #11
  br label %do.body88

if.else64:                                        ; preds = %if.end43
  %27 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %temp, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool67.not = icmp eq i8 %29, 0
  br i1 %tobool67.not, label %if.then68, label %if.else64.do.body88_crit_edge

if.else64.do.body88_crit_edge:                    ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body88

if.then68:                                        ; preds = %if.else64
  %30 = load i8, ptr @force, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool69.not = icmp eq i8 %30, 0
  br i1 %tobool69.not, label %do.end83, label %if.then70

if.then70:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %.b = load i1, ptr @SMBHSTCFG, align 2
  %conv71 = select i1 %.b, i32 132, i32 210
  %or73 = or i8 %28, 1
  %call75 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef %conv71, i8 noundef zeroext %or73) #8
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev79, ptr noundef nonnull @.str.17) #11
  br label %do.body88

do.end83:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %dev84 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev84, ptr noundef nonnull @.str.21) #11
  br label %release_region

do.body88:                                        ; preds = %if.then70, %if.else64.do.body88_crit_edge, %if.then47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt596_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vt596_probe, %do.end99)) #8
          to label %if.then94 [label %do.end99], !srcloc !153

if.then94:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #10
  %dev95 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %31 = load i16, ptr @vt596_smba, align 2
  %conv96 = zext i16 %31 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vt596_probe.__UNIQUE_ID_ddebug301, ptr noundef %dev95, ptr noundef nonnull @.str.24, i32 noundef %conv96) #8
  br label %do.end99

do.end99:                                         ; preds = %if.then94, %do.body88
  %device100 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %32 = ptrtoint ptr %device100 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %device100, align 2
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i16 %33, label %do.end99.sw.epilog_crit_edge [
    i16 -31964, label %do.end99.sw.epilog.sink.split_crit_edge
    i16 -31917, label %do.end99.sw.epilog.sink.split_crit_edge145
    i16 -31735, label %do.end99.sw.epilog.sink.split_crit_edge146
    i16 -31728, label %do.end99.sw.epilog.sink.split_crit_edge147
    i16 12935, label %do.end99.sw.epilog.sink.split_crit_edge148
    i16 12839, label %do.end99.sw.epilog.sink.split_crit_edge149
    i16 13111, label %do.end99.sw.epilog.sink.split_crit_edge150
    i16 13170, label %do.end99.sw.epilog.sink.split_crit_edge151
    i16 12663, label %do.end99.sw.epilog.sink.split_crit_edge152
    i16 12615, label %do.end99.sw.epilog.sink.split_crit_edge153
    i16 12404, label %do.end99.sw.epilog.sink.split_crit_edge154
    i16 12375, label %sw.bb103
  ]

do.end99.sw.epilog.sink.split_crit_edge154:       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end99.sw.epilog.sink.split_crit_edge153:       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end99.sw.epilog.sink.split_crit_edge152:       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end99.sw.epilog.sink.split_crit_edge151:       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end99.sw.epilog.sink.split_crit_edge150:       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end99.sw.epilog.sink.split_crit_edge149:       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end99.sw.epilog.sink.split_crit_edge148:       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end99.sw.epilog.sink.split_crit_edge147:       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end99.sw.epilog.sink.split_crit_edge146:       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end99.sw.epilog.sink.split_crit_edge145:       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end99.sw.epilog.sink.split_crit_edge:          ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end99.sw.epilog_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb103:                                         ; preds = %do.end99
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %35 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %36)
  %cmp105 = icmp ugt i8 %36, 63
  br i1 %cmp105, label %sw.bb103.sw.epilog.sink.split_crit_edge, label %sw.bb103.sw.epilog_crit_edge

sw.bb103.sw.epilog_crit_edge:                     ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb103.sw.epilog.sink.split_crit_edge:          ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb103.sw.epilog.sink.split_crit_edge, %do.end99.sw.epilog.sink.split_crit_edge, %do.end99.sw.epilog.sink.split_crit_edge145, %do.end99.sw.epilog.sink.split_crit_edge146, %do.end99.sw.epilog.sink.split_crit_edge147, %do.end99.sw.epilog.sink.split_crit_edge148, %do.end99.sw.epilog.sink.split_crit_edge149, %do.end99.sw.epilog.sink.split_crit_edge150, %do.end99.sw.epilog.sink.split_crit_edge151, %do.end99.sw.epilog.sink.split_crit_edge152, %do.end99.sw.epilog.sink.split_crit_edge153, %do.end99.sw.epilog.sink.split_crit_edge154
  %37 = load i32, ptr @vt596_features, align 4
  %or108 = or i32 %37, 1
  store i32 %or108, ptr @vt596_features, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb103.sw.epilog_crit_edge, %do.end99.sw.epilog_crit_edge
  %dev110 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  store ptr %dev110, ptr getelementptr inbounds (%struct.i2c_adapter, ptr @vt596_adapter, i32 0, i32 9, i32 1), align 8
  %38 = load i16, ptr @vt596_smba, align 2
  %conv111 = zext i16 %38 to i32
  %call112 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @vt596_adapter, i32 0, i32 12), i32 noundef 48, ptr noundef nonnull @.str.25, i32 noundef %conv111)
  %call113 = call ptr @pci_dev_get(ptr noundef %pdev) #8
  store ptr %call113, ptr @vt596_pdev, align 4
  %call114 = call i32 @i2c_add_adapter(ptr noundef nonnull @vt596_adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %sw.epilog.cleanup_crit_edge, label %if.then116

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then116:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %39 = load ptr, ptr @vt596_pdev, align 4
  call void @pci_dev_put(ptr noundef %39) #8
  store ptr null, ptr @vt596_pdev, align 4
  br label %release_region

release_region:                                   ; preds = %if.then116, %do.end83
  %error.0 = phi i32 [ %call114, %if.then116 ], [ -19, %do.end83 ]
  %40 = load i16, ptr @vt596_smba, align 2
  %conv118 = zext i16 %40 to i32
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv118, i32 noundef 8) #8
  br label %cleanup

cleanup:                                          ; preds = %release_region, %sw.epilog.cleanup_crit_edge, %do.end40, %do.end26, %do.end
  %retval.0 = phi i32 [ %error.0, %release_region ], [ -19, %do.end40 ], [ -19, %do.end ], [ -19, %do.end26 ], [ -19, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt596_access(ptr nocapture noundef readnone %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %size, label %entry.do.end_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
    i32 3, label %sw.bb14
    i32 4, label %sw.bb31
    i32 8, label %sw.bb45
    i32 5, label %entry.sw.bb56_crit_edge
  ]

entry.sw.bb56_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb56

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp = icmp eq i8 %read_write, 0
  br i1 %cmp, label %if.then, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i16, ptr @vt596_smba, align 2
  %conv3 = zext i16 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i = add nuw nsw i32 %conv3, -18874365
  %2 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %command) #8, !srcloc !155
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %3 = load i16, ptr @vt596_smba, align 2
  %conv5 = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i190 = add nuw nsw i32 %conv5, -18874365
  %4 = inttoptr i32 %add.i190 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %command) #8, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp8 = icmp eq i8 %read_write, 0
  br i1 %cmp8, label %if.then10, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then10:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 2
  %7 = load i16, ptr @vt596_smba, align 2
  %conv11 = zext i16 %7 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i192 = add nuw nsw i32 %conv11, -18874363
  %8 = inttoptr i32 %add.i192 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %6) #8, !srcloc !155
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %9 = load i16, ptr @vt596_smba, align 2
  %conv15 = zext i16 %9 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i194 = add nuw nsw i32 %conv15, -18874365
  %10 = inttoptr i32 %add.i194 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %command) #8, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp18 = icmp eq i8 %read_write, 0
  br i1 %cmp18, label %if.then20, label %sw.bb14.sw.epilog_crit_edge

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then20:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data, align 2
  %conv22 = trunc i16 %12 to i8
  %13 = load i16, ptr @vt596_smba, align 2
  %conv23 = zext i16 %13 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i196 = add nuw nsw i32 %conv23, -18874363
  %14 = inttoptr i32 %add.i196 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv22) #8, !srcloc !155
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %data, align 2
  %17 = lshr i16 %16, 8
  %conv27 = trunc i16 %17 to i8
  %18 = load i16, ptr @vt596_smba, align 2
  %conv28 = zext i16 %18 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i198 = add nuw nsw i32 %conv28, -18874362
  %19 = inttoptr i32 %add.i198 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv27) #8, !srcloc !155
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = load i16, ptr @vt596_smba, align 2
  %conv32 = zext i16 %20 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i200 = add nuw nsw i32 %conv32, -18874365
  %21 = inttoptr i32 %add.i200 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %command) #8, !srcloc !155
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %data, align 2
  %conv36 = trunc i16 %23 to i8
  %24 = load i16, ptr @vt596_smba, align 2
  %conv37 = zext i16 %24 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i202 = add nuw nsw i32 %conv37, -18874363
  %25 = inttoptr i32 %add.i202 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %conv36) #8, !srcloc !155
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data, align 2
  %28 = lshr i16 %27, 8
  %conv42 = trunc i16 %28 to i8
  %29 = load i16, ptr @vt596_smba, align 2
  %conv43 = zext i16 %29 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i204 = add nuw nsw i32 %conv43, -18874362
  %30 = inttoptr i32 %add.i204 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv42) #8, !srcloc !155
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  %31 = load i32, ptr @vt596_features, align 4
  %and46 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool.not = icmp eq i32 %and46, 0
  br i1 %tobool.not, label %sw.bb45.do.end_crit_edge, label %if.end48

sw.bb45.do.end_crit_edge:                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end48:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp50 = icmp eq i8 %read_write, 1
  br i1 %cmp50, label %if.then52, label %if.end48.sw.bb56_crit_edge

if.end48.sw.bb56_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb56

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %data, align 2
  %34 = load i16, ptr @vt596_smba, align 2
  %conv53 = zext i16 %34 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i206 = add nuw nsw i32 %conv53, -18874363
  %35 = inttoptr i32 %add.i206 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %33) #8, !srcloc !155
  br label %sw.bb56

sw.bb56:                                          ; preds = %if.then52, %if.end48.sw.bb56_crit_edge, %entry.sw.bb56_crit_edge
  %36 = load i16, ptr @vt596_smba, align 2
  %conv57 = zext i16 %36 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i208 = add nuw nsw i32 %conv57, -18874365
  %37 = inttoptr i32 %add.i208 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %command) #8, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp60 = icmp eq i8 %read_write, 0
  br i1 %cmp60, label %if.then62, label %sw.bb56.if.end79_crit_edge

sw.bb56.if.end79_crit_edge:                       ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then62:                                        ; preds = %sw.bb56
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %data, align 2
  %40 = tail call i8 @llvm.umin.i8(i8 %39, i8 32)
  %41 = load i16, ptr @vt596_smba, align 2
  %conv69 = zext i16 %41 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i210 = add nuw nsw i32 %conv69, -18874363
  %42 = inttoptr i32 %add.i210 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %40) #8, !srcloc !155
  %43 = load i16, ptr @vt596_smba, align 2
  %conv71 = zext i16 %43 to i32
  %add.i212 = add nuw nsw i32 %conv71, -18874366
  %44 = inttoptr i32 %add.i212 to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp74.not230 = icmp eq i8 %40, 0
  br i1 %cmp74.not230, label %if.then62.if.end79_crit_edge, label %for.body.preheader

if.then62.if.end79_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

for.body.preheader:                               ; preds = %if.then62
  %narrow = add nuw nsw i8 %40, 1
  %46 = zext i8 %narrow to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0231 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %arrayidx76 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.0231
  %47 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx76, align 1
  %49 = load i16, ptr @vt596_smba, align 2
  %conv77 = zext i16 %49 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i214 = add nuw nsw i32 %conv77, -18874361
  %50 = inttoptr i32 %add.i214 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %48) #8, !srcloc !155
  %inc = add nuw nsw i32 %i.0231, 1
  %exitcond = icmp eq i32 %inc, %46
  br i1 %exitcond, label %for.body.if.end79_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end79_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.end79:                                         ; preds = %for.body.if.end79_crit_edge, %if.then62.if.end79_crit_edge, %sw.bb56.if.end79_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp80 = icmp eq i32 %size, 8
  %cond = select i1 %cmp80, i32 52, i32 20
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end79, %sw.bb31, %if.then20, %sw.bb14.sw.epilog_crit_edge, %if.then10, %sw.bb4.sw.epilog_crit_edge, %if.then, %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %size.addr.0 = phi i32 [ %cond, %if.end79 ], [ 16, %sw.bb31 ], [ %size, %entry.sw.epilog_crit_edge ], [ 4, %if.then ], [ 4, %sw.bb1.sw.epilog_crit_edge ], [ 8, %if.then10 ], [ 8, %sw.bb4.sw.epilog_crit_edge ], [ 12, %if.then20 ], [ 12, %sw.bb14.sw.epilog_crit_edge ]
  %addr.tr = trunc i16 %addr to i8
  %shl = shl i8 %addr.tr, 1
  %or = or i8 %shl, %read_write
  %51 = load i16, ptr @vt596_smba, align 2
  %conv86 = zext i16 %51 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i216 = add nuw nsw i32 %conv86, -18874364
  %52 = inttoptr i32 %add.i216 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %or) #8, !srcloc !155
  %conv88 = trunc i32 %size.addr.0 to i8
  %call89 = tail call fastcc i32 @vt596_transaction(i8 noundef zeroext %conv88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end92:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size.addr.0)
  %cmp93 = icmp ne i32 %size.addr.0, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp98229 = icmp eq i8 %read_write, 0
  %cmp98 = and i1 %cmp98229, %cmp93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0)
  %cmp100 = icmp eq i32 %size.addr.0, 0
  %or.cond = or i1 %cmp100, %cmp98
  br i1 %or.cond, label %if.end92.cleanup_crit_edge, label %if.end103

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end103:                                        ; preds = %if.end92
  %53 = add nsw i32 %size.addr.0, -4
  %54 = lshr exact i32 %53, 2
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %54, label %if.end103.cleanup_crit_edge [
    i32 0, label %if.end103.sw.bb104_crit_edge
    i32 1, label %if.end103.sw.bb104_crit_edge235
    i32 2, label %if.end103.sw.bb108_crit_edge
    i32 3, label %if.end103.sw.bb108_crit_edge236
    i32 12, label %if.end103.sw.bb120_crit_edge
    i32 4, label %if.end103.sw.bb120_crit_edge237
  ]

if.end103.sw.bb120_crit_edge237:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb120

if.end103.sw.bb120_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb120

if.end103.sw.bb108_crit_edge236:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb108

if.end103.sw.bb108_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb108

if.end103.sw.bb104_crit_edge235:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb104

if.end103.sw.bb104_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb104

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb104:                                         ; preds = %if.end103.sw.bb104_crit_edge, %if.end103.sw.bb104_crit_edge235
  %56 = load i16, ptr @vt596_smba, align 2
  %conv105 = zext i16 %56 to i32
  %add.i218 = add nuw nsw i32 %conv105, -18874363
  %57 = inttoptr i32 %add.i218 to ptr
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %57) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %59 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %data, align 2
  br label %cleanup

sw.bb108:                                         ; preds = %if.end103.sw.bb108_crit_edge, %if.end103.sw.bb108_crit_edge236
  %60 = load i16, ptr @vt596_smba, align 2
  %conv109 = zext i16 %60 to i32
  %add.i220 = add nuw nsw i32 %conv109, -18874363
  %61 = inttoptr i32 %add.i220 to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv112 = zext i8 %62 to i16
  %63 = load i16, ptr @vt596_smba, align 2
  %conv113 = zext i16 %63 to i32
  %add.i222 = add nuw nsw i32 %conv113, -18874362
  %64 = inttoptr i32 %add.i222 to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv116 = zext i8 %65 to i16
  %shl117 = shl nuw i16 %conv116, 8
  %add118 = or i16 %shl117, %conv112
  %66 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %add118, ptr %data, align 2
  br label %cleanup

sw.bb120:                                         ; preds = %if.end103.sw.bb120_crit_edge, %if.end103.sw.bb120_crit_edge237
  %67 = load i16, ptr @vt596_smba, align 2
  %conv121 = zext i16 %67 to i32
  %add.i224 = add nuw nsw i32 %conv121, -18874363
  %68 = inttoptr i32 %add.i224 to ptr
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %70 = tail call i8 @llvm.umin.i8(i8 %69, i8 32)
  %71 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %data, align 2
  %72 = load i16, ptr @vt596_smba, align 2
  %conv132 = zext i16 %72 to i32
  %add.i226 = add nuw nsw i32 %conv132, -18874366
  %73 = inttoptr i32 %add.i226 to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp138.not233 = icmp eq i8 %76, 0
  br i1 %cmp138.not233, label %sw.bb120.cleanup_crit_edge, label %sw.bb120.for.body140_crit_edge

sw.bb120.for.body140_crit_edge:                   ; preds = %sw.bb120
  br label %for.body140

sw.bb120.cleanup_crit_edge:                       ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body140:                                      ; preds = %for.body140.for.body140_crit_edge, %sw.bb120.for.body140_crit_edge
  %i.1234 = phi i32 [ %inc146, %for.body140.for.body140_crit_edge ], [ 1, %sw.bb120.for.body140_crit_edge ]
  %77 = load i16, ptr @vt596_smba, align 2
  %conv141 = zext i16 %77 to i32
  %add.i228 = add nuw nsw i32 %conv141, -18874361
  %78 = inttoptr i32 %add.i228 to ptr
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %78) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %arrayidx144 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.1234
  %80 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx144, align 1
  %inc146 = add nuw nsw i32 %i.1234, 1
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %data, align 2
  %conv137 = zext i8 %82 to i32
  %cmp138.not.not = icmp ult i32 %i.1234, %conv137
  br i1 %cmp138.not.not, label %for.body140.for.body140_crit_edge, label %for.body140.cleanup_crit_edge

for.body140.cleanup_crit_edge:                    ; preds = %for.body140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body140.for.body140_crit_edge:                ; preds = %for.body140
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body140

do.end:                                           ; preds = %sw.bb45.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @vt596_adapter, i32 0, i32 9), ptr noundef nonnull @.str.26, i32 noundef %size) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body140.cleanup_crit_edge, %sw.bb120.cleanup_crit_edge, %sw.bb108, %sw.bb104, %if.end103.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ %call89, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end92.cleanup_crit_edge ], [ 0, %if.end103.cleanup_crit_edge ], [ 0, %sw.bb108 ], [ 0, %sw.bb104 ], [ 0, %sw.bb120.cleanup_crit_edge ], [ 0, %for.body140.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vt596_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vt596_features, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 58654724, i32 259981316
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vt596_transaction(i8 noundef zeroext %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @vt596_dump_regs(ptr noundef nonnull @.str.28, i8 noundef zeroext %size)
  %0 = load i16, ptr @vt596_smba, align 2
  %conv = zext i16 %0 to i32
  %add.i = or i32 %conv, -18874368
  %1 = inttoptr i32 %add.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv1 = zext i8 %2 to i32
  %and = and i32 %conv1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %do.body

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt596_transaction.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vt596_transaction, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !153

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vt596_transaction.__UNIQUE_ID_ddebug299, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @vt596_adapter, i32 0, i32 9), ptr noundef nonnull @.str.30, i32 noundef %conv1) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %3 = load i16, ptr @vt596_smba, align 2
  %conv9 = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i106 = or i32 %conv9, -18874368
  %4 = inttoptr i32 %add.i106 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %2) #8, !srcloc !155
  %5 = load i16, ptr @vt596_smba, align 2
  %conv11 = zext i16 %5 to i32
  %add.i108 = or i32 %conv11, -18874368
  %6 = inttoptr i32 %add.i108 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv14 = zext i8 %7 to i32
  %and15 = and i32 %conv14, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.end.if.end22_crit_edge, label %do.end20

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @vt596_adapter, i32 0, i32 9), ptr noundef nonnull @.str.31, i32 noundef %conv14) #11
  br label %cleanup

if.end22:                                         ; preds = %do.end.if.end22_crit_edge, %entry.if.end22_crit_edge
  %conv23 = zext i8 %size to i32
  %or = or i8 %size, 64
  %8 = load i16, ptr @vt596_smba, align 2
  %conv25 = zext i16 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i110 = add nuw nsw i32 %conv25, -18874366
  %9 = inttoptr i32 %add.i110 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %or) #8, !srcloc !155
  br label %do.body27

do.body27:                                        ; preds = %land.rhs.do.body27_crit_edge, %if.end22
  %timeout.0 = phi i32 [ 0, %if.end22 ], [ %inc, %land.rhs.do.body27_crit_edge ]
  tail call void @msleep(i32 noundef 1) #8
  %10 = load i16, ptr @vt596_smba, align 2
  %conv28 = zext i16 %10 to i32
  %add.i112 = or i32 %conv28, -18874368
  %11 = inttoptr i32 %add.i112 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv31 = zext i8 %12 to i32
  %and33 = and i32 %conv31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body27.if.end43_crit_edge, label %land.rhs

do.body27.if.end43_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.rhs:                                         ; preds = %do.body27
  %inc = add nuw nsw i32 %timeout.0, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %if.then39, label %land.rhs.do.body27_crit_edge

land.rhs.do.body27_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

if.then39:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @vt596_adapter, i32 0, i32 9), ptr noundef nonnull @.str.33) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %do.body27.if.end43_crit_edge
  %result.0 = phi i32 [ -110, %if.then39 ], [ 0, %do.body27.if.end43_crit_edge ]
  %and44 = and i32 %conv31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end51_crit_edge, label %if.then46

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @vt596_adapter, i32 0, i32 9), ptr noundef nonnull @.str.36, i32 noundef %conv23) #11
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end43.if.end51_crit_edge
  %result.1 = phi i32 [ -5, %if.then46 ], [ %result.0, %if.end43.if.end51_crit_edge ]
  %and52 = and i32 %conv31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end58_crit_edge, label %if.then54

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @vt596_adapter, i32 0, i32 9), ptr noundef nonnull @.str.39) #11
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end51.if.end58_crit_edge
  %result.2 = phi i32 [ -5, %if.then54 ], [ %result.1, %if.end51.if.end58_crit_edge ]
  %and59 = and i32 %conv31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end80_crit_edge, label %if.then61

if.end58.if.end80_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt596_transaction.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vt596_transaction, %if.end80)) #8
          to label %if.then76 [label %if.end80], !srcloc !153

if.then76:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vt596_transaction.__UNIQUE_ID_ddebug300, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @vt596_adapter, i32 0, i32 9), ptr noundef nonnull @.str.41) #8
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %if.then61, %if.end58.if.end80_crit_edge
  %result.3 = phi i32 [ -6, %if.then76 ], [ %result.2, %if.end58.if.end80_crit_edge ], [ -6, %if.then61 ]
  %and81 = and i32 %conv31, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end80.if.end87_crit_edge, label %if.then83

if.end80.if.end87_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %13 = load i16, ptr @vt596_smba, align 2
  %conv85 = zext i16 %13 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %add.i114 = or i32 %conv85, -18874368
  %14 = inttoptr i32 %add.i114 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %12) #8, !srcloc !155
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %if.end80.if.end87_crit_edge
  tail call fastcc void @vt596_dump_regs(ptr noundef nonnull @.str.42, i8 noundef zeroext %size)
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %do.end20
  %retval.0 = phi i32 [ -16, %do.end20 ], [ %result.3, %if.end87 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vt596_dump_regs(ptr noundef %msg, i8 noundef zeroext %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt596_dump_regs.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vt596_dump_regs, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i16, ptr @vt596_smba, align 2
  %conv = zext i16 %0 to i32
  %add.i = or i32 %conv, -18874368
  %1 = inttoptr i32 %add.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv5 = zext i8 %2 to i32
  %3 = load i16, ptr @vt596_smba, align 2
  %conv6 = zext i16 %3 to i32
  %add.i120 = add nuw nsw i32 %conv6, -18874366
  %4 = inttoptr i32 %add.i120 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv9 = zext i8 %5 to i32
  %6 = load i16, ptr @vt596_smba, align 2
  %conv10 = zext i16 %6 to i32
  %add.i122 = add nuw nsw i32 %conv10, -18874365
  %7 = inttoptr i32 %add.i122 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv13 = zext i8 %8 to i32
  %9 = load i16, ptr @vt596_smba, align 2
  %conv14 = zext i16 %9 to i32
  %add.i124 = add nuw nsw i32 %conv14, -18874364
  %10 = inttoptr i32 %add.i124 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv17 = zext i8 %11 to i32
  %12 = load i16, ptr @vt596_smba, align 2
  %conv18 = zext i16 %12 to i32
  %add.i126 = add nuw nsw i32 %conv18, -18874363
  %13 = inttoptr i32 %add.i126 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv21 = zext i8 %14 to i32
  %15 = load i16, ptr @vt596_smba, align 2
  %conv22 = zext i16 %15 to i32
  %add.i128 = add nuw nsw i32 %conv22, -18874362
  %16 = inttoptr i32 %add.i128 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv25 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vt596_dump_regs.__UNIQUE_ID_ddebug296, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @vt596_adapter, i32 0, i32 9), ptr noundef nonnull @.str.44, ptr noundef %msg, i32 noundef %conv5, i32 noundef %conv9, i32 noundef %conv13, i32 noundef %conv17, i32 noundef %conv21, i32 noundef %conv25) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %18 = zext i8 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %size, label %do.end.if.end108_crit_edge [
    i8 20, label %do.end.if.then31_crit_edge
    i8 52, label %do.end.if.then31_crit_edge142
  ]

do.end.if.then31_crit_edge142:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

do.end.if.then31_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

do.end.if.end108_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then31:                                        ; preds = %do.end.if.then31_crit_edge, %do.end.if.then31_crit_edge142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt596_dump_regs.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vt596_dump_regs, %do.end53)) #8
          to label %if.then46 [label %do.end53], !srcloc !153

if.then46:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vt596_dump_regs.__UNIQUE_ID_ddebug297, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @vt596_adapter, i32 0, i32 9), ptr noundef nonnull @.str.45) #8
  br label %do.end53

do.end53:                                         ; preds = %do.end53.do.end53_crit_edge, %if.then46, %if.then31
  %i.0138 = phi i32 [ %inc, %do.end53.do.end53_crit_edge ], [ 0, %if.then31 ], [ 0, %if.then46 ]
  %19 = load i16, ptr @vt596_smba, align 2
  %conv55 = zext i16 %19 to i32
  %add.i130 = add nuw nsw i32 %conv55, -18874361
  %20 = inttoptr i32 %add.i130 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv58 = zext i8 %21 to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv58) #11
  %inc = add nuw nsw i32 %i.0138, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.end62, label %do.end53.do.end53_crit_edge

do.end53.do.end53_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53

do.end62:                                         ; preds = %do.end53
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vt596_dump_regs.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vt596_dump_regs, %do.end89)) #8
          to label %if.then79 [label %do.end89], !srcloc !153

if.then79:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vt596_dump_regs.__UNIQUE_ID_ddebug298, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @vt596_adapter, i32 0, i32 9), ptr noundef nonnull @.str.50) #8
  br label %do.end89

do.end89:                                         ; preds = %do.end89.do.end89_crit_edge, %if.then79, %do.end62
  %i.1140 = phi i32 [ %inc97, %do.end89.do.end89_crit_edge ], [ 16, %if.then79 ], [ 16, %do.end62 ]
  %22 = load i16, ptr @vt596_smba, align 2
  %conv91 = zext i16 %22 to i32
  %add.i132 = add nuw nsw i32 %conv91, -18874361
  %23 = inttoptr i32 %add.i132 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv94 = zext i8 %24 to i32
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv94) #11
  %inc97 = add nuw nsw i32 %i.1140, 1
  %exitcond141.not = icmp eq i32 %inc97, 31
  br i1 %exitcond141.not, label %do.end101, label %do.end89.do.end89_crit_edge

do.end89.do.end89_crit_edge:                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end89

do.end101:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #10
  %25 = load i16, ptr @vt596_smba, align 2
  %conv103 = zext i16 %25 to i32
  %add.i134 = add nuw nsw i32 %conv103, -18874361
  %26 = inttoptr i32 %add.i134 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %conv106 = zext i8 %27 to i32
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %conv106) #11
  br label %if.end108

if.end108:                                        ; preds = %do.end101, %do.end.if.end108_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !39, !41, !43, !44, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !119, !120, !121, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !137, !138, !140, !141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__param_force, !1, !"__param_force", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 83, i32 1}
!2 = !{ptr @__UNIQUE_ID_forcetype292, !1, !"__UNIQUE_ID_forcetype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force293, !4, !"__UNIQUE_ID_force293", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 84, i32 1}
!5 = !{ptr @__param_force_addr, !6, !"__param_force_addr", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 89, i32 1}
!7 = !{ptr @__UNIQUE_ID_force_addrtype294, !6, !"__UNIQUE_ID_force_addrtype294", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_force_addr295, !9, !"__UNIQUE_ID_force_addr295", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 90, i32 1}
!10 = !{ptr @__UNIQUE_ID_author302, !11, !"__UNIQUE_ID_author302", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 492, i32 1}
!12 = !{ptr @__UNIQUE_ID_author303, !13, !"__UNIQUE_ID_author303", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 493, i32 1}
!14 = !{ptr @__UNIQUE_ID_author304, !15, !"__UNIQUE_ID_author304", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 494, i32 1}
!16 = !{ptr @__UNIQUE_ID_description305, !17, !"__UNIQUE_ID_description305", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 495, i32 1}
!18 = !{ptr @__UNIQUE_ID_file306, !19, !"__UNIQUE_ID_file306", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 496, i32 1}
!20 = !{ptr @__UNIQUE_ID_license307, !19, !"__UNIQUE_ID_license307", i1 false, i1 false}
!21 = !{ptr @__initcall__kmod_i2c_viapro__308_498_i2c_vt596_init6, !22, !"__initcall__kmod_i2c_viapro__308_498_i2c_vt596_init6", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 498, i32 1}
!23 = !{ptr @__exitcall_i2c_vt596_exit, !24, !"__exitcall_i2c_vt596_exit", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 499, i32 1}
!25 = !{ptr @vt596_pdev, !26, !"vt596_pdev", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 44, i32 24}
!27 = !{ptr @vt596_smba, !28, !"vt596_smba", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 51, i32 23}
!29 = !{ptr @force, !30, !"force", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 82, i32 13}
!31 = !{ptr @force_addr, !32, !"force_addr", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 88, i32 12}
!33 = !{ptr @__param_str_force, !1, !"__param_str_force", i1 false, i1 false}
!34 = !{ptr @__param_str_force_addr, !6, !"__param_str_force_addr", i1 false, i1 false}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 470, i32 11}
!37 = !{ptr @vt596_driver, !38, !"vt596_driver", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 469, i32 26}
!39 = !{ptr @vt596_ids, !40, !"vt596_ids", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 433, i32 35}
!41 = !{ptr @.str.1, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 333, i32 4}
!43 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @vt596_probe._entry, !42, !"_entry", i1 false, i1 false}
!48 = !{ptr @vt596_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 341, i32 3}
!51 = !{ptr @vt596_probe._entry.6, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @vt596_probe._entry_ptr.8, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 353, i32 3}
!55 = !{ptr @vt596_probe._entry.9, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @vt596_probe._entry_ptr.11, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 365, i32 3}
!59 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @vt596_probe._entry.12, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @vt596_probe._entry_ptr.15, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 376, i32 4}
!64 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @vt596_probe._entry.16, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @vt596_probe._entry_ptr.19, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 378, i32 4}
!69 = !{ptr @vt596_probe._entry.20, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @vt596_probe._entry_ptr.22, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 386, i32 2}
!73 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @vt596_probe.__UNIQUE_ID_ddebug301, !72, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 412, i32 4}
!77 = distinct !{null, !78, !"SMBHSTCFG", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 65, i32 23}
!79 = !{ptr @vt596_features, !80, !"vt596_features", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 99, i32 21}
!81 = !{ptr @vt596_adapter, !82, !"vt596_adapter", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 305, i32 27}
!83 = !{ptr @smbus_algorithm, !84, !"smbus_algorithm", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 300, i32 35}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 284, i32 2}
!87 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @vt596_access._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @vt596_access._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 134, i32 18}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 138, i32 3}
!94 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @vt596_transaction.__UNIQUE_ID_ddebug299, !93, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 143, i32 4}
!98 = !{ptr @vt596_transaction._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @vt596_transaction._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 161, i32 3}
!102 = !{ptr @vt596_transaction._entry.32, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @vt596_transaction._entry_ptr.34, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 166, i32 3}
!106 = !{ptr @vt596_transaction._entry.35, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @vt596_transaction._entry_ptr.37, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 172, i32 3}
!110 = !{ptr @vt596_transaction._entry.38, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @vt596_transaction._entry_ptr.40, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 177, i32 3}
!114 = !{ptr @vt596_transaction.__UNIQUE_ID_ddebug300, !113, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 184, i32 18}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 104, i32 2}
!119 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @vt596_dump_regs.__UNIQUE_ID_ddebug296, !118, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 113, i32 3}
!123 = !{ptr @vt596_dump_regs.__UNIQUE_ID_ddebug297, !122, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 115, i32 4}
!126 = !{ptr @vt596_dump_regs._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @vt596_dump_regs._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 116, i32 3}
!130 = !{ptr @vt596_dump_regs._entry.47, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @vt596_dump_regs._entry_ptr.49, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 117, i32 3}
!134 = !{ptr @vt596_dump_regs.__UNIQUE_ID_ddebug298, !133, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!135 = !{ptr @vt596_dump_regs._entry.51, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 119, i32 4}
!137 = !{ptr @vt596_dump_regs._entry_ptr.52, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/i2c/busses/i2c-viapro.c", i32 120, i32 3}
!140 = !{ptr @vt596_dump_regs._entry.53, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @vt596_dump_regs._entry_ptr.55, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{!"auto-init"}
!152 = !{i8 0, i8 2}
!153 = !{i64 2148965307, i64 2148965312, i64 2148965325, i64 2148965369, i64 2148965403, i64 2148965424}
!154 = !{i64 2152535344}
!155 = !{i64 4999288}
!156 = !{i64 4999683}
!157 = !{i64 2152533359}
