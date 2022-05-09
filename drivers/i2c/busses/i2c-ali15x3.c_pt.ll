; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-ali15x3.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-ali15x3.c"
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

@__param_str_force_addr = internal constant [23 x i8] c"i2c_ali15x3.force_addr\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_addr = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_addr = internal constant %struct.kernel_param { ptr @__param_str_force_addr, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 2, %union.anon.76 { ptr @force_addr } }, section "__param", align 4
@__UNIQUE_ID_force_addrtype292 = internal constant [39 x i8] c"i2c_ali15x3.parmtype=force_addr:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_addr293 = internal constant [78 x i8] c"i2c_ali15x3.parm=force_addr:Initialize the base address of the i2c controller\00", section ".modinfo", align 1
@__initcall__kmod_i2c_ali15x3__301_503_ali15x3_driver_init6 = internal global ptr @ali15x3_driver_init, section ".initcall6.init", align 4
@ali15x3_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @ali15x3_ids, ptr @ali15x3_probe, ptr @ali15x3_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ali15x3_driver_exit = internal global ptr @ali15x3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [51 x i8] c"i2c_ali15x3.author=Frodo Looijaard <frodol@dds.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [57 x i8] c"i2c_ali15x3.author=Philip Edelbrock <phil@netroedge.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [60 x i8] c"i2c_ali15x3.author=Mark D. Studebaker <mdsxyz123@yahoo.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [45 x i8] c"i2c_ali15x3.description=ALI15X3 SMBus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [48 x i8] c"i2c_ali15x3.file=drivers/i2c/busses/i2c-ali15x3\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [24 x i8] c"i2c_ali15x3.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_ali15x3\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ali15x3_smbus\00", [18 x i8] zeroinitializer }, align 32
@ali15x3_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4281, i32 28929, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ali15x3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 478, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ALI15X3 not detected, module not inserted.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ali15x3_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-ali15x3.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ali15x3_probe._entry_ptr = internal global ptr @ali15x3_probe._entry, section ".printk_index", align 4
@ali15x3_adapter = internal global { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 129, ptr @smbus_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] zeroinitializer, %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SMBus ALI15X3 adapter at %04x\00", [34 x i8] zeroinitializer }, align 32
@ali15x3_smba = internal global { i16, [30 x i8] } zeroinitializer, align 32
@ali15x3_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 148, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"ALI15X3_smb region uninitialized - upgrade BIOS or use force_addr=0xaddr\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ali15x3_setup\00", [18 x i8] zeroinitializer }, align 32
@ali15x3_setup._entry_ptr = internal global ptr @ali15x3_setup._entry, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@ali15x3_setup._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ALI15X3_smb region 0x%x already in use!\0A\00", [55 x i8] zeroinitializer }, align 32
@ali15x3_setup._entry_ptr.12 = internal global ptr @ali15x3_setup._entry.10, section ".printk_index", align 4
@ali15x3_setup._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.4, i32 169, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"forcing ISA address 0x%04X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ali15x3_setup._entry_ptr.16 = internal global ptr @ali15x3_setup._entry.13, section ".printk_index", align 4
@ali15x3_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.4, i32 180, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"force address failed - not supported?\0A\00", [57 x i8] zeroinitializer }, align 32
@ali15x3_setup._entry_ptr.19 = internal global ptr @ali15x3_setup._entry.17, section ".printk_index", align 4
@ali15x3_setup._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.9, ptr @.str.4, i32 187, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enabling SMBus device\0A\00", [41 x i8] zeroinitializer }, align 32
@ali15x3_setup._entry_ptr.22 = internal global ptr @ali15x3_setup._entry.20, section ".printk_index", align 4
@ali15x3_setup._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.9, ptr @.str.4, i32 194, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"enabling SMBus controller\0A\00", [37 x i8] zeroinitializer }, align 32
@ali15x3_setup._entry_ptr.25 = internal global ptr @ali15x3_setup._entry.23, section ".printk_index", align 4
@ali15x3_setup.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.26, i8 0, i8 52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SMBREV = 0x%X\0A\00", [17 x i8] zeroinitializer }, align 32
@ali15x3_setup.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.27, i8 0, i8 52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iALI15X3_smba = 0x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @ali15x3_access, ptr null, ptr @ali15x3_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ali15x3_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 351, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Idle wait Timeout! STS=0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ali15x3_access\00", [17 x i8] zeroinitializer }, align 32
@ali15x3_access._entry_ptr = internal global ptr @ali15x3_access._entry, section ".printk_index", align 4
@ali15x3_access._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 408, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ali15x3_access._entry_ptr.33 = internal global ptr @ali15x3_access._entry.30, section ".printk_index", align 4
@ali15x3_access.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.4, ptr @.str.34, i8 0, i8 110, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Blk: len=%d, i=%d, data=%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@ali15x3_transaction.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ali15x3_transaction\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Transaction (pre): STS=%02x, CNT=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@ali15x3_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 258, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Resetting entire SMB Bus to clear busy condition (%02x)\0A\00", [39 x i8] zeroinitializer }, align 32
@ali15x3_transaction._entry_ptr = internal global ptr @ali15x3_transaction._entry, section ".printk_index", align 4
@ali15x3_transaction._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.35, ptr @.str.4, i32 274, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"SMBus reset failed! (0x%02x) - controller or device on bus is probably hung\0A\00", [51 x i8] zeroinitializer }, align 32
@ali15x3_transaction._entry_ptr.40 = internal global ptr @ali15x3_transaction._entry.38, section ".printk_index", align 4
@ali15x3_transaction._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.4, i32 298, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMBus Timeout!\0A\00", [16 x i8] zeroinitializer }, align 32
@ali15x3_transaction._entry_ptr.43 = internal global ptr @ali15x3_transaction._entry.41, section ".printk_index", align 4
@ali15x3_transaction.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.44, i8 0, i8 75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error: Failed bus transaction\0A\00", [33 x i8] zeroinitializer }, align 32
@ali15x3_transaction.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.45, i8 0, i8 79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Error: no response or bus collision ADD=%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@ali15x3_transaction._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.35, ptr @.str.4, i32 322, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error: device error\0A\00", [43 x i8] zeroinitializer }, align 32
@ali15x3_transaction._entry_ptr.48 = internal global ptr @ali15x3_transaction._entry.46, section ".printk_index", align 4
@ali15x3_transaction.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.49, i8 0, i8 81, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Transaction (post): STS=%02x, CNT=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.51 = private unnamed_addr constant [11 x i8] c"force_addr\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 113, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"ali15x3_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 496, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 503, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 497, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"ali15x3_ids\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 467, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 477, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"ali15x3_adapter\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 461, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 486, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"ali15x3_smba\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 119, i32 23 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 147, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 161, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 168, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 179, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 187, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 194, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 209, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 210, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 456, i32 35 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 351, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 408, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 441, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 225, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 257, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 272, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 298, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 303, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 314, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 322, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-ali15x3.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 324, i32 2 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_force_addr293, ptr @__UNIQUE_ID_force_addrtype292, ptr @__UNIQUE_ID_license307, ptr @__exitcall_ali15x3_driver_exit, ptr @__initcall__kmod_i2c_ali15x3__301_503_ali15x3_driver_init6, ptr @__param_force_addr, ptr @ali15x3_access._entry, ptr @ali15x3_access._entry.30, ptr @ali15x3_access._entry_ptr, ptr @ali15x3_access._entry_ptr.33, ptr @ali15x3_driver_exit, ptr @ali15x3_probe._entry, ptr @ali15x3_probe._entry_ptr, ptr @ali15x3_setup._entry, ptr @ali15x3_setup._entry.10, ptr @ali15x3_setup._entry.13, ptr @ali15x3_setup._entry.17, ptr @ali15x3_setup._entry.20, ptr @ali15x3_setup._entry.23, ptr @ali15x3_setup._entry_ptr, ptr @ali15x3_setup._entry_ptr.12, ptr @ali15x3_setup._entry_ptr.16, ptr @ali15x3_setup._entry_ptr.19, ptr @ali15x3_setup._entry_ptr.22, ptr @ali15x3_setup._entry_ptr.25, ptr @ali15x3_transaction._entry, ptr @ali15x3_transaction._entry.38, ptr @ali15x3_transaction._entry.41, ptr @ali15x3_transaction._entry.46, ptr @ali15x3_transaction._entry_ptr, ptr @ali15x3_transaction._entry_ptr.40, ptr @ali15x3_transaction._entry_ptr.43, ptr @ali15x3_transaction._entry_ptr.48, ptr @force_addr, ptr @ali15x3_driver, ptr @.str, ptr @.str.1, ptr @ali15x3_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ali15x3_adapter, ptr @.str.7, ptr @ali15x3_smba, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @smbus_algorithm, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_addr to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_smba to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_setup._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_setup._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_setup._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_setup._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_access._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_transaction._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_transaction._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali15x3_transaction._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ali15x3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ali15x3_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ali15x3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @ali15x3_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ali15x3_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ali15x3_setup(ptr noundef %dev)
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
  store ptr %dev2, ptr getelementptr inbounds (%struct.i2c_adapter, ptr @ali15x3_adapter, i32 0, i32 9, i32 1), align 8
  %0 = load i16, ptr @ali15x3_smba, align 2
  %conv = zext i16 %0 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @ali15x3_adapter, i32 0, i32 12), i32 noundef 48, ptr noundef nonnull @.str.7, i32 noundef %conv)
  %call4 = tail call i32 @i2c_add_adapter(ptr noundef nonnull @ali15x3_adapter) #8
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ali15x3_remove(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @i2c_del_adapter(ptr noundef nonnull @ali15x3_adapter) #8
  %0 = load i16, ptr @ali15x3_smba, align 2
  %conv = zext i16 %0 to i32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv, i32 noundef 32) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ali15x3_setup(ptr noundef %ALI15X3_dev) unnamed_addr #2 align 64 {
entry:
  %a = alloca i16, align 2
  %temp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %a) #8
  %0 = ptrtoint ptr %a to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %a, align 2, !annotation !128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #8
  %1 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %temp, align 1, !annotation !128
  %call = call i32 @pci_read_config_byte(ptr noundef %ALI15X3_dev, i32 noundef 91, ptr noundef nonnull %temp) #8
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %temp, align 1
  %4 = and i8 %3, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and2 = and i8 %3, -7
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and2, ptr %temp, align 1
  %call4 = call i32 @pci_write_config_byte(ptr noundef %ALI15X3_dev, i32 noundef 91, i8 noundef zeroext %and2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = call i32 @pci_read_config_word(ptr noundef %ALI15X3_dev, i32 noundef 20, ptr noundef nonnull @ali15x3_smba) #8
  %6 = load i16, ptr @ali15x3_smba, align 2
  %7 = and i16 %6, -32
  store i16 %7, ptr @ali15x3_smba, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp = icmp eq i16 %7, 0
  %8 = load i16, ptr @force_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp12 = icmp eq i16 %8, 0
  br i1 %cmp, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  br i1 %cmp12, label %do.end, label %land.lhs.true.if.then17_crit_edge

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %ALI15X3_dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  br i1 %cmp12, label %if.end15.if.end21_crit_edge, label %if.end15.if.then17_crit_edge

if.end15.if.then17_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %if.end15.if.then17_crit_edge, %land.lhs.true.if.then17_crit_edge
  %9 = and i16 %8, -32
  store i16 %9, ptr @ali15x3_smba, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end15.if.end21_crit_edge
  %10 = load i16, ptr @ali15x3_smba, align 2
  %conv27 = zext i16 %10 to i32
  %11 = load ptr, ptr getelementptr inbounds (%struct.pci_driver, ptr @ali15x3_driver, i32 0, i32 1), align 4
  %call28 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv27, i32 noundef 32, ptr noundef %11, i32 noundef 0) #8
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %ALI15X3_dev, i32 0, i32 44
  %12 = load i16, ptr @ali15x3_smba, align 2
  %conv35 = zext i16 %12 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.11, i32 noundef %conv35) #11
  br label %cleanup

if.end36:                                         ; preds = %if.end21
  %13 = load i16, ptr @force_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool37.not = icmp eq i16 %13, 0
  br i1 %tobool37.not, label %if.end36.if.end65_crit_edge, label %do.end41

if.end36.if.end65_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

do.end41:                                         ; preds = %if.end36
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %ALI15X3_dev, i32 0, i32 44
  %14 = load i16, ptr @ali15x3_smba, align 2
  %conv43 = zext i16 %14 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev42, ptr noundef nonnull @.str.14, i32 noundef %conv43) #11
  %15 = load i16, ptr @ali15x3_smba, align 2
  %call44 = call i32 @pci_write_config_word(ptr noundef %ALI15X3_dev, i32 noundef 20, i16 noundef zeroext %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %if.end48, label %do.end41.error_crit_edge

do.end41.error_crit_edge:                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end48:                                         ; preds = %do.end41
  %call49 = call i32 @pci_read_config_word(ptr noundef %ALI15X3_dev, i32 noundef 20, ptr noundef nonnull %a) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %if.end53, label %if.end48.error_crit_edge

if.end48.error_crit_edge:                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end53:                                         ; preds = %if.end48
  %16 = ptrtoint ptr %a to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %a, align 2
  %18 = and i16 %17, -32
  %19 = load i16, ptr @ali15x3_smba, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %19)
  %cmp57.not = icmp eq i16 %18, %19
  br i1 %cmp57.not, label %if.end53.if.end65_crit_edge, label %do.end62

if.end53.if.end65_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

do.end62:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.18) #11
  br label %error

if.end65:                                         ; preds = %if.end53.if.end65_crit_edge, %if.end36.if.end65_crit_edge
  %call66 = call i32 @pci_read_config_byte(ptr noundef %ALI15X3_dev, i32 noundef 4, ptr noundef nonnull %temp) #8
  %20 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %temp, align 1
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp69 = icmp eq i8 %22, 0
  br i1 %cmp69, label %do.end74, label %if.end65.if.end79_crit_edge

if.end65.if.end79_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

do.end74:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %ALI15X3_dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev75, ptr noundef nonnull @.str.21) #11
  %23 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %temp, align 1
  %25 = or i8 %24, 1
  %call78 = call i32 @pci_write_config_byte(ptr noundef %ALI15X3_dev, i32 noundef 4, i8 noundef zeroext %25) #8
  br label %if.end79

if.end79:                                         ; preds = %do.end74, %if.end65.if.end79_crit_edge
  %call80 = call i32 @pci_read_config_byte(ptr noundef %ALI15X3_dev, i32 noundef 224, ptr noundef nonnull %temp) #8
  %26 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %temp, align 1
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp83 = icmp eq i8 %28, 0
  br i1 %cmp83, label %do.end88, label %if.end79.if.end94_crit_edge

if.end79.if.end94_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

do.end88:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %dev89 = getelementptr inbounds %struct.pci_dev, ptr %ALI15X3_dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev89, ptr noundef nonnull @.str.24) #11
  %29 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %temp, align 1
  %31 = or i8 %30, 1
  %call93 = call i32 @pci_write_config_byte(ptr noundef %ALI15X3_dev, i32 noundef 224, i8 noundef zeroext %31) #8
  br label %if.end94

if.end94:                                         ; preds = %do.end88, %if.end79.if.end94_crit_edge
  %call95 = call i32 @pci_write_config_byte(ptr noundef %ALI15X3_dev, i32 noundef 226, i8 noundef zeroext 32) #8
  %call96 = call i32 @pci_read_config_byte(ptr noundef %ALI15X3_dev, i32 noundef 8, ptr noundef nonnull %temp) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali15x3_setup.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali15x3_setup, %do.body109)) #8
          to label %if.then103 [label %do.body109], !srcloc !129

if.then103:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %dev104 = getelementptr inbounds %struct.pci_dev, ptr %ALI15X3_dev, i32 0, i32 44
  %32 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %temp, align 1
  %conv105 = zext i8 %33 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali15x3_setup.__UNIQUE_ID_ddebug294, ptr noundef %dev104, ptr noundef nonnull @.str.26, i32 noundef %conv105) #8
  br label %do.body109

do.body109:                                       ; preds = %if.then103, %if.end94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali15x3_setup.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali15x3_setup, %cleanup)) #8
          to label %if.then123 [label %cleanup], !srcloc !129

if.then123:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #10
  %dev124 = getelementptr inbounds %struct.pci_dev, ptr %ALI15X3_dev, i32 0, i32 44
  %34 = load i16, ptr @ali15x3_smba, align 2
  %conv125 = zext i16 %34 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali15x3_setup.__UNIQUE_ID_ddebug295, ptr noundef %dev124, ptr noundef nonnull @.str.27, i32 noundef %conv125) #8
  br label %cleanup

error:                                            ; preds = %do.end62, %if.end48.error_crit_edge, %do.end41.error_crit_edge
  %35 = load i16, ptr @ali15x3_smba, align 2
  %conv129 = zext i16 %35 to i32
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv129, i32 noundef 32) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then123, %do.body109, %do.end33, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %error ], [ -19, %do.end33 ], [ 0, %if.then123 ], [ 0, %do.body109 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %a) #8
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
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ali15x3_access(ptr noundef %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @ali15x3_smba, align 2
  %conv = zext i16 %0 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i = or i32 %conv, -18874368
  %1 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 -1) #8, !srcloc !131
  %2 = load i16, ptr @ali15x3_smba, align 2
  %conv1 = zext i16 %2 to i32
  %add.i281 = or i32 %conv1, -18874368
  %3 = inttoptr i32 %add.i281 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %5 = and i8 %4, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not337 = icmp eq i8 %5, 0
  br i1 %tobool.not337, label %entry.for.body_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %timeout.0338 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @msleep(i32 noundef 1) #8
  %6 = load i16, ptr @ali15x3_smba, align 2
  %conv5 = zext i16 %6 to i32
  %add.i283 = or i32 %conv5, -18874368
  %7 = inttoptr i32 %add.i283 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %inc = add nuw nsw i32 %timeout.0338, 1
  %temp.0 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %timeout.0338)
  %cmp = icmp ult i32 %timeout.0338, 199
  %and = and i32 %temp.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 198, i32 %timeout.0338)
  %phi.cmp = icmp ugt i32 %timeout.0338, 198
  br i1 %phi.cmp, label %do.end, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %temp.0) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %do.end134 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb35
    i32 3, label %sw.bb54
    i32 5, label %sw.bb81
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %addr.tr279 = trunc i16 %addr to i8
  %shl = shl i8 %addr.tr279, 1
  %10 = and i8 %read_write, 1
  %or = or i8 %10, %shl
  %11 = load i16, ptr @ali15x3_smba, align 2
  %conv16 = zext i16 %11 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i285 = add nuw nsw i32 %conv16, -18874365
  %12 = inttoptr i32 %add.i285 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %or) #8, !srcloc !131
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %addr.tr278 = trunc i16 %addr to i8
  %shl21 = shl i8 %addr.tr278, 1
  %and23 = and i8 %read_write, 1
  %or24 = or i8 %and23, %shl21
  %13 = load i16, ptr @ali15x3_smba, align 2
  %conv26 = zext i16 %13 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i287 = add nuw nsw i32 %conv26, -18874365
  %14 = inttoptr i32 %add.i287 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %or24) #8, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp29 = icmp eq i8 %read_write, 0
  br i1 %cmp29, label %if.then31, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then31:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i16, ptr @ali15x3_smba, align 2
  %conv32 = zext i16 %15 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i289 = add nuw nsw i32 %conv32, -18874361
  %16 = inttoptr i32 %add.i289 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %command) #8, !srcloc !131
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  %addr.tr277 = trunc i16 %addr to i8
  %shl38 = shl i8 %addr.tr277, 1
  %and40 = and i8 %read_write, 1
  %or41 = or i8 %and40, %shl38
  %17 = load i16, ptr @ali15x3_smba, align 2
  %conv43 = zext i16 %17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i291 = add nuw nsw i32 %conv43, -18874365
  %18 = inttoptr i32 %add.i291 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %or41) #8, !srcloc !131
  %19 = load i16, ptr @ali15x3_smba, align 2
  %conv45 = zext i16 %19 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i293 = add nuw nsw i32 %conv45, -18874361
  %20 = inttoptr i32 %add.i293 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %command) #8, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp48 = icmp eq i8 %read_write, 0
  br i1 %cmp48, label %if.then50, label %sw.bb35.sw.epilog_crit_edge

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then50:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data, align 2
  %23 = load i16, ptr @ali15x3_smba, align 2
  %conv51 = zext i16 %23 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i295 = add nuw nsw i32 %conv51, -18874364
  %24 = inttoptr i32 %add.i295 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %22) #8, !srcloc !131
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end
  %addr.tr276 = trunc i16 %addr to i8
  %shl57 = shl i8 %addr.tr276, 1
  %and59 = and i8 %read_write, 1
  %or60 = or i8 %and59, %shl57
  %25 = load i16, ptr @ali15x3_smba, align 2
  %conv62 = zext i16 %25 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i297 = add nuw nsw i32 %conv62, -18874365
  %26 = inttoptr i32 %add.i297 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %or60) #8, !srcloc !131
  %27 = load i16, ptr @ali15x3_smba, align 2
  %conv64 = zext i16 %27 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i299 = add nuw nsw i32 %conv64, -18874361
  %28 = inttoptr i32 %add.i299 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %command) #8, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp67 = icmp eq i8 %read_write, 0
  br i1 %cmp67, label %if.then69, label %sw.bb54.sw.epilog_crit_edge

sw.bb54.sw.epilog_crit_edge:                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then69:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %data, align 2
  %conv72 = trunc i16 %30 to i8
  %31 = load i16, ptr @ali15x3_smba, align 2
  %conv73 = zext i16 %31 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i301 = add nuw nsw i32 %conv73, -18874364
  %32 = inttoptr i32 %add.i301 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv72) #8, !srcloc !131
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %data, align 2
  %35 = lshr i16 %34, 8
  %conv77 = trunc i16 %35 to i8
  %36 = load i16, ptr @ali15x3_smba, align 2
  %conv78 = zext i16 %36 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i303 = add nuw nsw i32 %conv78, -18874363
  %37 = inttoptr i32 %add.i303 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv77) #8, !srcloc !131
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end
  %addr.tr = trunc i16 %addr to i8
  %shl84 = shl i8 %addr.tr, 1
  %and86 = and i8 %read_write, 1
  %or87 = or i8 %and86, %shl84
  %38 = load i16, ptr @ali15x3_smba, align 2
  %conv89 = zext i16 %38 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i305 = add nuw nsw i32 %conv89, -18874365
  %39 = inttoptr i32 %add.i305 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %or87) #8, !srcloc !131
  %40 = load i16, ptr @ali15x3_smba, align 2
  %conv91 = zext i16 %40 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i307 = add nuw nsw i32 %conv91, -18874361
  %41 = inttoptr i32 %add.i307 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %command) #8, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp94 = icmp eq i8 %read_write, 0
  br i1 %cmp94, label %if.end103, label %sw.bb81.sw.epilog_crit_edge

sw.bb81.sw.epilog_crit_edge:                      ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end103:                                        ; preds = %sw.bb81
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %data, align 2
  %conv97 = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %43)
  %cmp104 = icmp ugt i8 %43, 32
  br i1 %cmp104, label %if.then106, label %if.end103.if.end109_crit_edge

if.end103.if.end109_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 32, ptr %data, align 2
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.end103.if.end109_crit_edge
  %len.1 = phi i32 [ 32, %if.then106 ], [ %conv97, %if.end103.if.end109_crit_edge ]
  %conv110 = trunc i32 %len.1 to i8
  %45 = load i16, ptr @ali15x3_smba, align 2
  %conv111 = zext i16 %45 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i309 = add nuw nsw i32 %conv111, -18874364
  %46 = inttoptr i32 %add.i309 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %conv110) #8, !srcloc !131
  %47 = load i16, ptr @ali15x3_smba, align 2
  %conv113 = zext i16 %47 to i32
  %add.i311 = add nuw nsw i32 %conv113, -18874367
  %48 = inttoptr i32 %add.i311 to ptr
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %48) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %50 = or i8 %49, -128
  %51 = load i16, ptr @ali15x3_smba, align 2
  %conv119 = zext i16 %51 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i313 = add nuw nsw i32 %conv119, -18874367
  %52 = inttoptr i32 %add.i313 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %50) #8, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %cmp122.not340 = icmp eq i32 %len.1, 0
  br i1 %cmp122.not340, label %if.end109.sw.epilog_crit_edge, label %if.end109.for.body124_crit_edge

if.end109.for.body124_crit_edge:                  ; preds = %if.end109
  br label %for.body124

if.end109.sw.epilog_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body124:                                      ; preds = %for.body124.for.body124_crit_edge, %if.end109.for.body124_crit_edge
  %i.0341 = phi i32 [ %inc129, %for.body124.for.body124_crit_edge ], [ 1, %if.end109.for.body124_crit_edge ]
  %arrayidx125 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.0341
  %53 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx125, align 1
  %55 = load i16, ptr @ali15x3_smba, align 2
  %conv126 = zext i16 %55 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i315 = add nuw nsw i32 %conv126, -18874362
  %56 = inttoptr i32 %add.i315 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %54) #8, !srcloc !131
  %inc129 = add nuw nsw i32 %i.0341, 1
  %exitcond = icmp eq i32 %i.0341, %len.1
  br i1 %exitcond, label %for.body124.sw.epilog_crit_edge, label %for.body124.for.body124_crit_edge

for.body124.for.body124_crit_edge:                ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body124

for.body124.sw.epilog_crit_edge:                  ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end134:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev135 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev135, ptr noundef nonnull @.str.31, i32 noundef %size) #11
  br label %cleanup

sw.epilog:                                        ; preds = %for.body124.sw.epilog_crit_edge, %if.end109.sw.epilog_crit_edge, %sw.bb81.sw.epilog_crit_edge, %if.then69, %sw.bb54.sw.epilog_crit_edge, %if.then50, %sw.bb35.sw.epilog_crit_edge, %if.then31, %sw.bb18.sw.epilog_crit_edge, %sw.bb
  %cmp146 = phi i1 [ true, %sw.bb ], [ false, %if.then31 ], [ false, %sw.bb18.sw.epilog_crit_edge ], [ false, %if.then50 ], [ false, %sw.bb35.sw.epilog_crit_edge ], [ false, %if.then69 ], [ false, %sw.bb54.sw.epilog_crit_edge ], [ false, %sw.bb81.sw.epilog_crit_edge ], [ false, %if.end109.sw.epilog_crit_edge ], [ false, %for.body124.sw.epilog_crit_edge ]
  %size.addr.0 = phi i32 [ 0, %sw.bb ], [ 16, %if.then31 ], [ 16, %sw.bb18.sw.epilog_crit_edge ], [ 32, %if.then50 ], [ 32, %sw.bb35.sw.epilog_crit_edge ], [ 48, %if.then69 ], [ 48, %sw.bb54.sw.epilog_crit_edge ], [ 64, %sw.bb81.sw.epilog_crit_edge ], [ 64, %if.end109.sw.epilog_crit_edge ], [ 64, %for.body124.sw.epilog_crit_edge ]
  %conv136 = trunc i32 %size.addr.0 to i8
  %57 = load i16, ptr @ali15x3_smba, align 2
  %conv137 = zext i16 %57 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i317 = add nuw nsw i32 %conv137, -18874367
  %58 = inttoptr i32 %add.i317 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %conv136) #8, !srcloc !131
  %call139 = tail call fastcc i32 @ali15x3_transaction(ptr noundef %adap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end142, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end142:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp144 = icmp eq i8 %read_write, 0
  %brmerge = or i1 %cmp144, %cmp146
  br i1 %brmerge, label %if.end142.cleanup_crit_edge, label %if.end149

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end149:                                        ; preds = %if.end142
  %59 = add nsw i32 %size.addr.0, -16
  %60 = lshr exact i32 %59, 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %60, label %if.end149.cleanup_crit_edge [
    i32 0, label %sw.bb150
    i32 1, label %sw.bb154
    i32 2, label %sw.bb158
    i32 3, label %sw.bb170
  ]

if.end149.cleanup_crit_edge:                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb150:                                         ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %62 = load i16, ptr @ali15x3_smba, align 2
  %conv151 = zext i16 %62 to i32
  %add.i319 = add nuw nsw i32 %conv151, -18874364
  %63 = inttoptr i32 %add.i319 to ptr
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %63) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %65 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %data, align 2
  br label %cleanup

sw.bb154:                                         ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %66 = load i16, ptr @ali15x3_smba, align 2
  %conv155 = zext i16 %66 to i32
  %add.i321 = add nuw nsw i32 %conv155, -18874364
  %67 = inttoptr i32 %add.i321 to ptr
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %69 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %data, align 2
  br label %cleanup

sw.bb158:                                         ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %70 = load i16, ptr @ali15x3_smba, align 2
  %conv159 = zext i16 %70 to i32
  %add.i323 = add nuw nsw i32 %conv159, -18874364
  %71 = inttoptr i32 %add.i323 to ptr
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %71) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv162 = zext i8 %72 to i16
  %73 = load i16, ptr @ali15x3_smba, align 2
  %conv163 = zext i16 %73 to i32
  %add.i325 = add nuw nsw i32 %conv163, -18874363
  %74 = inttoptr i32 %add.i325 to ptr
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %74) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv166 = zext i8 %75 to i16
  %shl167 = shl nuw i16 %conv166, 8
  %add168 = or i16 %shl167, %conv162
  %76 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %add168, ptr %data, align 2
  br label %cleanup

sw.bb170:                                         ; preds = %if.end149
  %77 = load i16, ptr @ali15x3_smba, align 2
  %conv171 = zext i16 %77 to i32
  %add.i327 = add nuw nsw i32 %conv171, -18874364
  %78 = inttoptr i32 %add.i327 to ptr
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %78) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %80 = tail call i8 @llvm.umin.i8(i8 %79, i8 32)
  %81 = zext i8 %80 to i32
  %82 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %80, ptr %data, align 2
  %83 = load i16, ptr @ali15x3_smba, align 2
  %conv181 = zext i16 %83 to i32
  %add.i329 = add nuw nsw i32 %conv181, -18874367
  %84 = inttoptr i32 %add.i329 to ptr
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %84) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %86 = or i8 %85, -128
  %87 = load i16, ptr @ali15x3_smba, align 2
  %conv187 = zext i16 %87 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i331 = add nuw nsw i32 %conv187, -18874367
  %88 = inttoptr i32 %add.i331 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 %86) #8, !srcloc !131
  %89 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp192.not343 = icmp eq i8 %90, 0
  br i1 %cmp192.not343, label %sw.bb170.cleanup_crit_edge, label %for.body194.lr.ph

sw.bb170.cleanup_crit_edge:                       ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body194.lr.ph:                                ; preds = %sw.bb170
  %dev207 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  br label %for.body194

for.body194:                                      ; preds = %for.inc213.for.body194_crit_edge, %for.body194.lr.ph
  %i.1344 = phi i32 [ 1, %for.body194.lr.ph ], [ %inc214, %for.inc213.for.body194_crit_edge ]
  %91 = load i16, ptr @ali15x3_smba, align 2
  %conv195 = zext i16 %91 to i32
  %add.i333 = add nuw nsw i32 %conv195, -18874362
  %92 = inttoptr i32 %add.i333 to ptr
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %92) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %arrayidx198 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.1344
  %94 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx198, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali15x3_access.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali15x3_access, %for.inc213)) #8
          to label %if.then206 [label %for.inc213], !srcloc !129

if.then206:                                       ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx198, align 1
  %conv209 = zext i8 %96 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali15x3_access.__UNIQUE_ID_ddebug300, ptr noundef %dev207, ptr noundef nonnull @.str.34, i32 noundef %81, i32 noundef %i.1344, i32 noundef %conv209) #8
  br label %for.inc213

for.inc213:                                       ; preds = %if.then206, %for.body194
  %inc214 = add nuw nsw i32 %i.1344, 1
  %97 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %data, align 2
  %conv191 = zext i8 %98 to i32
  %cmp192.not.not = icmp ult i32 %i.1344, %conv191
  br i1 %cmp192.not.not, label %for.inc213.for.body194_crit_edge, label %for.inc213.cleanup_crit_edge

for.inc213.cleanup_crit_edge:                     ; preds = %for.inc213
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc213.for.body194_crit_edge:                 ; preds = %for.inc213
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body194

cleanup:                                          ; preds = %for.inc213.cleanup_crit_edge, %sw.bb170.cleanup_crit_edge, %sw.bb158, %sw.bb154, %sw.bb150, %if.end149.cleanup_crit_edge, %if.end142.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end134
  %retval.0 = phi i32 [ -95, %do.end134 ], [ %call139, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end142.cleanup_crit_edge ], [ 0, %if.end149.cleanup_crit_edge ], [ 0, %sw.bb158 ], [ 0, %sw.bb154 ], [ 0, %sw.bb150 ], [ 0, %sw.bb170.cleanup_crit_edge ], [ 0, %for.inc213.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ali15x3_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 58654720
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ali15x3_transaction(ptr noundef %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali15x3_transaction.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali15x3_transaction, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %0 = load i16, ptr @ali15x3_smba, align 2
  %conv = zext i16 %0 to i32
  %add.i = or i32 %conv, -18874368
  %1 = inttoptr i32 %add.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv5 = zext i8 %2 to i32
  %3 = load i16, ptr @ali15x3_smba, align 2
  %conv6 = zext i16 %3 to i32
  %add.i218 = add nuw nsw i32 %conv6, -18874367
  %4 = inttoptr i32 %add.i218 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv9 = zext i8 %5 to i32
  %6 = load i16, ptr @ali15x3_smba, align 2
  %conv10 = zext i16 %6 to i32
  %add.i220 = add nuw nsw i32 %conv10, -18874361
  %7 = inttoptr i32 %add.i220 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv13 = zext i8 %8 to i32
  %9 = load i16, ptr @ali15x3_smba, align 2
  %conv14 = zext i16 %9 to i32
  %add.i222 = add nuw nsw i32 %conv14, -18874365
  %10 = inttoptr i32 %add.i222 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv17 = zext i8 %11 to i32
  %12 = load i16, ptr @ali15x3_smba, align 2
  %conv18 = zext i16 %12 to i32
  %add.i224 = add nuw nsw i32 %conv18, -18874364
  %13 = inttoptr i32 %add.i224 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv21 = zext i8 %14 to i32
  %15 = load i16, ptr @ali15x3_smba, align 2
  %conv22 = zext i16 %15 to i32
  %add.i226 = add nuw nsw i32 %conv22, -18874363
  %16 = inttoptr i32 %add.i226 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv25 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali15x3_transaction.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %conv5, i32 noundef %conv9, i32 noundef %conv13, i32 noundef %conv17, i32 noundef %conv21, i32 noundef %conv25) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %18 = load i16, ptr @ali15x3_smba, align 2
  %conv26 = zext i16 %18 to i32
  %add.i228 = or i32 %conv26, -18874368
  %19 = inttoptr i32 %add.i228 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv29 = zext i8 %20 to i32
  %and = and i32 %conv29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %do.end.if.end42_crit_edge, label %do.end34

do.end.if.end42_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.end34:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev35 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev35, ptr noundef nonnull @.str.37, i32 noundef %conv29) #11
  %21 = load i16, ptr @ali15x3_smba, align 2
  %conv36 = zext i16 %21 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i230 = add nuw nsw i32 %conv36, -18874367
  %22 = inttoptr i32 %add.i230 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 4) #8, !srcloc !131
  %23 = load i16, ptr @ali15x3_smba, align 2
  %conv38 = zext i16 %23 to i32
  %add.i232 = or i32 %conv38, -18874368
  %24 = inttoptr i32 %add.i232 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv41 = zext i8 %25 to i32
  br label %if.end42

if.end42:                                         ; preds = %do.end34, %do.end.if.end42_crit_edge
  %temp.0 = phi i32 [ %conv41, %do.end34 ], [ %conv29, %do.end.if.end42_crit_edge ]
  %and43 = and i32 %temp.0, 232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end42
  %26 = load i16, ptr @ali15x3_smba, align 2
  %conv46 = zext i16 %26 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i234 = or i32 %conv46, -18874368
  %27 = inttoptr i32 %add.i234 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 -1) #8, !srcloc !131
  %28 = load i16, ptr @ali15x3_smba, align 2
  %conv48 = zext i16 %28 to i32
  %add.i236 = or i32 %conv48, -18874368
  %29 = inttoptr i32 %add.i236 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv51 = zext i8 %30 to i32
  %and52 = and i32 %conv51, 232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then45.if.end67_crit_edge, label %do.end57

if.then45.if.end67_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

do.end57:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %dev58 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.39, i32 noundef %conv51) #11
  br label %cleanup

if.else:                                          ; preds = %if.end42
  %and60 = and i32 %temp.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else.if.end67_crit_edge, label %if.then62

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv63 = trunc i32 %temp.0 to i8
  %31 = load i16, ptr @ali15x3_smba, align 2
  %conv64 = zext i16 %31 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i238 = or i32 %conv64, -18874368
  %32 = inttoptr i32 %add.i238 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv63) #8, !srcloc !131
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.else.if.end67_crit_edge, %if.then45.if.end67_crit_edge
  %33 = load i16, ptr @ali15x3_smba, align 2
  %conv68 = zext i16 %33 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %add.i240 = add nuw nsw i32 %conv68, -18874366
  %34 = inttoptr i32 %add.i240 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 -1) #8, !srcloc !131
  br label %do.body70

do.body70:                                        ; preds = %land.rhs.do.body70_crit_edge, %if.end67
  %timeout.0 = phi i32 [ 0, %if.end67 ], [ %inc, %land.rhs.do.body70_crit_edge ]
  tail call void @msleep(i32 noundef 1) #8
  %35 = load i16, ptr @ali15x3_smba, align 2
  %conv71 = zext i16 %35 to i32
  %add.i242 = or i32 %conv71, -18874368
  %36 = inttoptr i32 %add.i242 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv74 = zext i8 %37 to i32
  %and76 = and i32 %conv74, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %land.rhs, label %do.body70.if.end87_crit_edge

do.body70.if.end87_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

land.rhs:                                         ; preds = %do.body70
  %inc = add nuw nsw i32 %timeout.0, 1
  %exitcond.not = icmp eq i32 %inc, 201
  br i1 %exitcond.not, label %if.then82, label %land.rhs.do.body70_crit_edge

land.rhs.do.body70_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

if.then82:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %dev86 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.42) #11
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %do.body70.if.end87_crit_edge
  %result.0 = phi i32 [ -110, %if.then82 ], [ 0, %do.body70.if.end87_crit_edge ]
  %and88 = and i32 %conv74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end87.if.end110_crit_edge, label %if.then90

if.end87.if.end110_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali15x3_transaction.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali15x3_transaction, %if.end110)) #8
          to label %if.then105 [label %if.end110], !srcloc !129

if.then105:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %dev106 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali15x3_transaction.__UNIQUE_ID_ddebug297, ptr noundef %dev106, ptr noundef nonnull @.str.44) #8
  br label %if.end110

if.end110:                                        ; preds = %if.then105, %if.then90, %if.end87.if.end110_crit_edge
  %result.1 = phi i32 [ -5, %if.then105 ], [ %result.0, %if.end87.if.end110_crit_edge ], [ -5, %if.then90 ]
  %and111 = and i32 %conv74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end110.if.end137_crit_edge, label %if.then113

if.end110.if.end137_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then113:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali15x3_transaction.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali15x3_transaction, %if.end137)) #8
          to label %if.then128 [label %if.end137], !srcloc !129

if.then128:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #10
  %dev129 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %38 = load i16, ptr @ali15x3_smba, align 2
  %conv130 = zext i16 %38 to i32
  %add.i244 = add nuw nsw i32 %conv130, -18874365
  %39 = inttoptr i32 %add.i244 to ptr
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv133 = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali15x3_transaction.__UNIQUE_ID_ddebug298, ptr noundef %dev129, ptr noundef nonnull @.str.45, i32 noundef %conv133) #8
  br label %if.end137

if.end137:                                        ; preds = %if.then128, %if.then113, %if.end110.if.end137_crit_edge
  %result.2 = phi i32 [ -6, %if.then128 ], [ %result.1, %if.end110.if.end137_crit_edge ], [ -6, %if.then113 ]
  %and138 = and i32 %conv74, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.end137.do.body146_crit_edge, label %if.then140

if.end137.do.body146_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body146

if.then140:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %dev144 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev144, ptr noundef nonnull @.str.47) #11
  br label %do.body146

do.body146:                                       ; preds = %if.then140, %if.end137.do.body146_crit_edge
  %result.3 = phi i32 [ -5, %if.then140 ], [ %result.2, %if.end137.do.body146_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali15x3_transaction.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali15x3_transaction, %cleanup)) #8
          to label %if.then160 [label %cleanup], !srcloc !129

if.then160:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  %dev161 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %41 = load i16, ptr @ali15x3_smba, align 2
  %conv162 = zext i16 %41 to i32
  %add.i246 = or i32 %conv162, -18874368
  %42 = inttoptr i32 %add.i246 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv165 = zext i8 %43 to i32
  %44 = load i16, ptr @ali15x3_smba, align 2
  %conv166 = zext i16 %44 to i32
  %add.i248 = add nuw nsw i32 %conv166, -18874367
  %45 = inttoptr i32 %add.i248 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv169 = zext i8 %46 to i32
  %47 = load i16, ptr @ali15x3_smba, align 2
  %conv170 = zext i16 %47 to i32
  %add.i250 = add nuw nsw i32 %conv170, -18874361
  %48 = inttoptr i32 %add.i250 to ptr
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %48) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv173 = zext i8 %49 to i32
  %50 = load i16, ptr @ali15x3_smba, align 2
  %conv174 = zext i16 %50 to i32
  %add.i252 = add nuw nsw i32 %conv174, -18874365
  %51 = inttoptr i32 %add.i252 to ptr
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv177 = zext i8 %52 to i32
  %53 = load i16, ptr @ali15x3_smba, align 2
  %conv178 = zext i16 %53 to i32
  %add.i254 = add nuw nsw i32 %conv178, -18874364
  %54 = inttoptr i32 %add.i254 to ptr
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %54) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv181 = zext i8 %55 to i32
  %56 = load i16, ptr @ali15x3_smba, align 2
  %conv182 = zext i16 %56 to i32
  %add.i256 = add nuw nsw i32 %conv182, -18874363
  %57 = inttoptr i32 %add.i256 to ptr
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %57) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %conv185 = zext i8 %58 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali15x3_transaction.__UNIQUE_ID_ddebug299, ptr noundef %dev161, ptr noundef nonnull @.str.49, i32 noundef %conv165, i32 noundef %conv169, i32 noundef %conv173, i32 noundef %conv177, i32 noundef %conv181, i32 noundef %conv185) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then160, %do.body146, %do.end57
  %retval.0 = phi i32 [ -16, %do.end57 ], [ %result.3, %if.then160 ], [ %result.3, %do.body146 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !112, !113, !114, !116, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__param_force_addr, !1, !"__param_force_addr", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 114, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_addrtype292, !1, !"__UNIQUE_ID_force_addrtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_addr293, !4, !"__UNIQUE_ID_force_addr293", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 115, i32 1}
!5 = !{ptr @__initcall__kmod_i2c_ali15x3__301_503_ali15x3_driver_init6, !6, !"__initcall__kmod_i2c_ali15x3__301_503_ali15x3_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 503, i32 1}
!7 = !{ptr @__exitcall_ali15x3_driver_exit, !6, !"__exitcall_ali15x3_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author302, !9, !"__UNIQUE_ID_author302", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 505, i32 1}
!10 = !{ptr @__UNIQUE_ID_author303, !11, !"__UNIQUE_ID_author303", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 506, i32 1}
!12 = !{ptr @__UNIQUE_ID_author304, !13, !"__UNIQUE_ID_author304", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 507, i32 1}
!14 = !{ptr @__UNIQUE_ID_description305, !15, !"__UNIQUE_ID_description305", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 508, i32 1}
!16 = !{ptr @__UNIQUE_ID_file306, !17, !"__UNIQUE_ID_file306", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 509, i32 1}
!18 = !{ptr @__UNIQUE_ID_license307, !17, !"__UNIQUE_ID_license307", i1 false, i1 false}
!19 = !{ptr @force_addr, !20, !"force_addr", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 113, i32 12}
!21 = !{ptr @__param_str_force_addr, !1, !"__param_str_force_addr", i1 false, i1 false}
!22 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 497, i32 11}
!25 = !{ptr @ali15x3_driver, !26, !"ali15x3_driver", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 496, i32 26}
!27 = !{ptr @ali15x3_ids, !28, !"ali15x3_ids", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 467, i32 35}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 477, i32 3}
!31 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ali15x3_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @ali15x3_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 486, i32 3}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 147, i32 3}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ali15x3_setup._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ali15x3_setup._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 161, i32 3}
!46 = !{ptr @ali15x3_setup._entry.10, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ali15x3_setup._entry_ptr.12, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 168, i32 3}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ali15x3_setup._entry.13, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ali15x3_setup._entry_ptr.16, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 179, i32 4}
!55 = !{ptr @ali15x3_setup._entry.17, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ali15x3_setup._entry_ptr.19, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 187, i32 3}
!59 = !{ptr @ali15x3_setup._entry.20, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ali15x3_setup._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 194, i32 3}
!63 = !{ptr @ali15x3_setup._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ali15x3_setup._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 209, i32 2}
!67 = !{ptr @ali15x3_setup.__UNIQUE_ID_ddebug294, !66, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 210, i32 2}
!70 = !{ptr @ali15x3_setup.__UNIQUE_ID_ddebug295, !69, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!71 = !{ptr @ali15x3_adapter, !72, !"ali15x3_adapter", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 461, i32 27}
!73 = !{ptr @smbus_algorithm, !74, !"smbus_algorithm", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 456, i32 35}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 351, i32 3}
!77 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ali15x3_access._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @ali15x3_access._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 408, i32 3}
!82 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ali15x3_access._entry.30, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @ali15x3_access._entry_ptr.33, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 441, i32 4}
!87 = !{ptr @ali15x3_access.__UNIQUE_ID_ddebug300, !86, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 225, i32 2}
!90 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ali15x3_transaction.__UNIQUE_ID_ddebug296, !89, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 257, i32 3}
!94 = !{ptr @ali15x3_transaction._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ali15x3_transaction._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 272, i32 4}
!98 = !{ptr @ali15x3_transaction._entry.38, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ali15x3_transaction._entry_ptr.40, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 298, i32 3}
!102 = !{ptr @ali15x3_transaction._entry.41, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @ali15x3_transaction._entry_ptr.43, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 303, i32 3}
!106 = !{ptr @ali15x3_transaction.__UNIQUE_ID_ddebug297, !105, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 314, i32 3}
!109 = !{ptr @ali15x3_transaction.__UNIQUE_ID_ddebug298, !108, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 322, i32 3}
!112 = !{ptr @ali15x3_transaction._entry.46, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ali15x3_transaction._entry_ptr.48, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 324, i32 2}
!116 = !{ptr @ali15x3_transaction.__UNIQUE_ID_ddebug299, !115, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!117 = !{ptr @ali15x3_smba, !118, !"ali15x3_smba", i1 false, i1 false}
!118 = !{!"../drivers/i2c/busses/i2c-ali15x3.c", i32 119, i32 23}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"auto-init"}
!129 = !{i64 2148966608, i64 2148966613, i64 2148966626, i64 2148966670, i64 2148966704, i64 2148966725}
!130 = !{i64 2152528897}
!131 = !{i64 4992841}
!132 = !{i64 4993236}
!133 = !{i64 2152526912}
