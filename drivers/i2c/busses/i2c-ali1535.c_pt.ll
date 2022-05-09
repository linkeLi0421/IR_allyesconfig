; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-ali1535.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-ali1535.c"
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }

@__initcall__kmod_i2c_ali1535__300_525_ali1535_driver_init6 = internal global ptr @ali1535_driver_init, section ".initcall6.init", align 4
@ali1535_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @ali1535_ids, ptr @ali1535_probe, ptr @ali1535_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ali1535_driver_exit = internal global ptr @ali1535_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [51 x i8] c"i2c_ali1535.author=Frodo Looijaard <frodol@dds.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [57 x i8] c"i2c_ali1535.author=Philip Edelbrock <phil@netroedge.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [60 x i8] c"i2c_ali1535.author=Mark D. Studebaker <mdsxyz123@yahoo.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [57 x i8] c"i2c_ali1535.author=Dan Eaton <dan.eaton@rocketlogix.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [45 x i8] c"i2c_ali1535.description=ALI1535 SMBus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [48 x i8] c"i2c_ali1535.file=drivers/i2c/busses/i2c-ali1535\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [24 x i8] c"i2c_ali1535.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_ali1535\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ali1535_smbus\00", [18 x i8] zeroinitializer }, align 32
@ali1535_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4281, i32 28929, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ali1535_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ALI1535 not detected, module not inserted.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ali1535_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-ali1535.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ali1535_probe._entry_ptr = internal global ptr @ali1535_probe._entry, section ".printk_index", align 4
@ali1535_adapter = internal global { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 129, ptr @smbus_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] zeroinitializer, %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SMBus ALI1535 adapter at %04x\00", [34 x i8] zeroinitializer }, align 32
@ali1535_offset = internal global { i16, [30 x i8] } zeroinitializer, align 32
@ali1535_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 141, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ALI1535_smb can't enable device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ali1535_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ali1535_setup._entry_ptr = internal global ptr @ali1535_setup._entry, section ".printk_index", align 4
@ali1535_setup.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.11, i8 0, i8 36, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ALI1535_smb is at offset 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@ali1535_setup._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.4, i32 151, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ALI1535_smb region uninitialized - upgrade BIOS?\0A\00", [46 x i8] zeroinitializer }, align 32
@ali1535_setup._entry_ptr.14 = internal global ptr @ali1535_setup._entry.12, section ".printk_index", align 4
@ali1535_smba = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@ali1535_setup._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.4, i32 169, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ALI1535_smb region 0x%lx already in use!\0A\00", [54 x i8] zeroinitializer }, align 32
@ali1535_setup._entry_ptr.17 = internal global ptr @ali1535_setup._entry.15, section ".printk_index", align 4
@ali1535_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.4, i32 177, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SMB device not enabled - upgrade BIOS?\0A\00", [56 x i8] zeroinitializer }, align 32
@ali1535_setup._entry_ptr.20 = internal global ptr @ali1535_setup._entry.18, section ".printk_index", align 4
@ali1535_setup._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.9, ptr @.str.4, i32 185, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"SMBus controller not enabled - upgrade BIOS?\0A\00", [50 x i8] zeroinitializer }, align 32
@ali1535_setup._entry_ptr.23 = internal global ptr @ali1535_setup._entry.21, section ".printk_index", align 4
@ali1535_setup.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.24, i8 0, i8 50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SMBREV = 0x%X\0A\00", [17 x i8] zeroinitializer }, align 32
@ali1535_setup.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.25, i8 0, i8 50, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ALI1535_smba = 0x%lx\0A\00", [42 x i8] zeroinitializer }, align 32
@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @ali1535_access, ptr null, ptr @ali1535_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ali1535_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 359, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Idle wait Timeout! STS=0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ali1535_access\00", [17 x i8] zeroinitializer }, align 32
@ali1535_access._entry_ptr = internal global ptr @ali1535_access._entry, section ".printk_index", align 4
@ali1535_access._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 423, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ali1535_access._entry_ptr.30 = internal global ptr @ali1535_access._entry.28, section ".printk_index", align 4
@ali1535_access.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.31, i8 0, i8 114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Blk: len=%d, i=%d, data=%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@ali1535_transaction.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 55, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ali1535_transaction\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Transaction (pre): STS=%02x, TYP=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@ali1535_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 250, ptr @.str.35, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Resetting entire SMB Bus to clear busy condition (%02x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ali1535_transaction._entry_ptr = internal global ptr @ali1535_transaction._entry, section ".printk_index", align 4
@ali1535_transaction._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.4, i32 267, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"SMBus reset failed! (0x%02x) - controller or device on bus is probably hung\0A\00", [51 x i8] zeroinitializer }, align 32
@ali1535_transaction._entry_ptr.38 = internal global ptr @ali1535_transaction._entry.36, section ".printk_index", align 4
@ali1535_transaction._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.4, i32 290, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMBus Timeout!\0A\00", [16 x i8] zeroinitializer }, align 32
@ali1535_transaction._entry_ptr.41 = internal global ptr @ali1535_transaction._entry.39, section ".printk_index", align 4
@ali1535_transaction.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.42, i8 0, i8 73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error: Failed bus transaction\0A\00", [33 x i8] zeroinitializer }, align 32
@ali1535_transaction.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.43, i8 0, i8 76, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Error: no response or bus collision ADD=%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@ali1535_transaction._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.32, ptr @.str.4, i32 312, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error: device error\0A\00", [43 x i8] zeroinitializer }, align 32
@ali1535_transaction._entry_ptr.46 = internal global ptr @ali1535_transaction._entry.44, section ".printk_index", align 4
@ali1535_transaction._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.32, ptr @.str.4, i32 318, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error: command never completed\0A\00", [32 x i8] zeroinitializer }, align 32
@ali1535_transaction._entry_ptr.49 = internal global ptr @ali1535_transaction._entry.47, section ".printk_index", align 4
@ali1535_transaction.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.50, i8 0, i8 81, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Transaction (post): STS=%02x, TYP=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"ali1535_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 518, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 525, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 519, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"ali1535_ids\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 484, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 494, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"ali1535_adapter\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 478, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 503, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"ali1535_offset\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 122, i32 23 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 141, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 147, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 150, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [13 x i8] c"ali1535_smba\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 121, i32 22 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 168, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 177, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 185, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 201, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 202, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 473, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 359, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 423, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 456, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 218, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 248, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 265, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 290, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 295, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 304, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 312, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 318, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-ali1535.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 321, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_ali1535_driver_exit, ptr @__initcall__kmod_i2c_ali1535__300_525_ali1535_driver_init6, ptr @ali1535_access._entry, ptr @ali1535_access._entry.28, ptr @ali1535_access._entry_ptr, ptr @ali1535_access._entry_ptr.30, ptr @ali1535_driver_exit, ptr @ali1535_probe._entry, ptr @ali1535_probe._entry_ptr, ptr @ali1535_setup._entry, ptr @ali1535_setup._entry.12, ptr @ali1535_setup._entry.15, ptr @ali1535_setup._entry.18, ptr @ali1535_setup._entry.21, ptr @ali1535_setup._entry_ptr, ptr @ali1535_setup._entry_ptr.14, ptr @ali1535_setup._entry_ptr.17, ptr @ali1535_setup._entry_ptr.20, ptr @ali1535_setup._entry_ptr.23, ptr @ali1535_transaction._entry, ptr @ali1535_transaction._entry.36, ptr @ali1535_transaction._entry.39, ptr @ali1535_transaction._entry.44, ptr @ali1535_transaction._entry.47, ptr @ali1535_transaction._entry_ptr, ptr @ali1535_transaction._entry_ptr.38, ptr @ali1535_transaction._entry_ptr.41, ptr @ali1535_transaction._entry_ptr.46, ptr @ali1535_transaction._entry_ptr.49, ptr @ali1535_driver, ptr @.str, ptr @.str.1, ptr @ali1535_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ali1535_adapter, ptr @.str.7, ptr @ali1535_offset, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @ali1535_smba, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @smbus_algorithm, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_offset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_setup._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_smba to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_setup._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_setup._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_access._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_transaction._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_transaction._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_transaction._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1535_transaction._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ali1535_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ali1535_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ali1535_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @ali1535_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ali1535_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ali1535_setup(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.2) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %dev2, ptr getelementptr inbounds (%struct.i2c_adapter, ptr @ali1535_adapter, i32 0, i32 9, i32 1), align 8
  %0 = load i16, ptr @ali1535_offset, align 2
  %conv = zext i16 %0 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @ali1535_adapter, i32 0, i32 12), i32 noundef 48, ptr noundef nonnull @.str.7, i32 noundef %conv)
  %call4 = tail call i32 @i2c_add_adapter(ptr noundef nonnull @ali1535_adapter) #8
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ali1535_remove(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @i2c_del_adapter(ptr noundef nonnull @ali1535_adapter) #8
  %0 = load i32, ptr @ali1535_smba, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %0, i32 noundef 32) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ali1535_setup(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %temp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %temp, align 1, !annotation !127
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 226, ptr noundef nonnull @ali1535_offset) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali1535_setup.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali1535_setup, %do.end14)) #8
          to label %if.then10 [label %do.end14], !srcloc !128

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %1 = load i16, ptr @ali1535_offset, align 2
  %conv = zext i16 %1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali1535_setup.__UNIQUE_ID_ddebug292, ptr noundef %dev11, ptr noundef nonnull @.str.11, i32 noundef %conv) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %if.end
  %2 = load i16, ptr @ali1535_offset, align 2
  %3 = and i16 %2, -32
  store i16 %3, ptr @ali1535_offset, align 2
  %conv17 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %do.end22, label %if.end24

do.end22:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev23, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end24:                                         ; preds = %do.end14
  %flags = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and25 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end32_crit_edge, label %if.then27

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %6 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resource, align 8
  %add = add i32 %7, %conv17
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.end24.if.end32_crit_edge
  %storemerge = phi i32 [ %add, %if.then27 ], [ %conv17, %if.end24.if.end32_crit_edge ]
  store i32 %storemerge, ptr @ali1535_smba, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.pci_driver, ptr @ali1535_driver, i32 0, i32 1), align 4
  %call37 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %storemerge, i32 noundef 32, ptr noundef %8, i32 noundef 0) #8
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %do.end42, label %if.end44

do.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %9 = load i32, ptr @ali1535_smba, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.16, i32 noundef %9) #11
  br label %cleanup

if.end44:                                         ; preds = %if.end32
  %call45 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 209, ptr noundef nonnull %temp) #8
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %temp, align 1
  %12 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp48 = icmp eq i8 %12, 0
  br i1 %cmp48, label %if.end44.exit_free_crit_edge, label %if.end55

if.end44.exit_free_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_free

if.end55:                                         ; preds = %if.end44
  %call56 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 240, ptr noundef nonnull %temp) #8
  %13 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %temp, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp59 = icmp eq i8 %15, 0
  br i1 %cmp59, label %if.end55.exit_free_crit_edge, label %if.end66

if.end55.exit_free_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_free

if.end66:                                         ; preds = %if.end55
  %call67 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 242, i8 noundef zeroext 32) #8
  %call68 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 8, ptr noundef nonnull %temp) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali1535_setup.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali1535_setup, %do.body89)) #8
          to label %if.then83 [label %do.body89], !srcloc !128

if.then83:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %dev84 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %16 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %temp, align 1
  %conv85 = zext i8 %17 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali1535_setup.__UNIQUE_ID_ddebug293, ptr noundef %dev84, ptr noundef nonnull @.str.24, i32 noundef %conv85) #8
  br label %do.body89

do.body89:                                        ; preds = %if.then83, %if.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali1535_setup.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali1535_setup, %cleanup)) #8
          to label %if.then103 [label %cleanup], !srcloc !128

if.then103:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  %dev104 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %18 = load i32, ptr @ali1535_smba, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali1535_setup.__UNIQUE_ID_ddebug294, ptr noundef %dev104, ptr noundef nonnull @.str.25, i32 noundef %18) #8
  br label %cleanup

exit_free:                                        ; preds = %if.end55.exit_free_crit_edge, %if.end44.exit_free_crit_edge
  %.str.22.sink = phi ptr [ @.str.19, %if.end44.exit_free_crit_edge ], [ @.str.22, %if.end55.exit_free_crit_edge ]
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull %.str.22.sink) #11
  %19 = load i32, ptr @ali1535_smba, align 4
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %19, i32 noundef 32) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_free, %if.then103, %do.body89, %do.end42, %do.end22, %do.end
  %retval.0 = phi i32 [ 0, %if.then103 ], [ %call, %do.end ], [ -19, %do.end22 ], [ -19, %exit_free ], [ -16, %do.end42 ], [ 0, %do.body89 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ali1535_access(ptr noundef %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ali1535_smba, align 4
  %and.i = and i32 %0, 1048575
  %add.i = or i32 %and.i, -18874368
  %1 = inttoptr i32 %add.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %3 = and i8 %2, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not325 = icmp eq i8 %3, 0
  br i1 %tobool.not325, label %entry.for.body_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %timeout.0326 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %4 = load i32, ptr @ali1535_smba, align 4
  %and.i260 = and i32 %4, 1048575
  %add.i261 = or i32 %and.i260, -18874368
  %5 = inttoptr i32 %add.i261 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %inc = add nuw nsw i32 %timeout.0326, 1
  %temp.0 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %timeout.0326)
  %cmp = icmp ult i32 %timeout.0326, 499
  %and = and i32 %temp.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 498, i32 %timeout.0326)
  %phi.cmp = icmp ugt i32 %timeout.0326, 498
  br i1 %phi.cmp, label %do.end, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %temp.0) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = load i32, ptr @ali1535_smba, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i262 = and i32 %7, 1048575
  %add.i263 = or i32 %and.i262, -18874368
  %8 = inttoptr i32 %add.i263 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -1) #8, !srcloc !132
  %9 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %do.end125 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb33
    i32 3, label %sw.bb51
    i32 5, label %sw.bb76
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %addr.tr259 = trunc i16 %addr to i8
  %shl = shl i8 %addr.tr259, 1
  %10 = and i8 %read_write, 1
  %or = or i8 %10, %shl
  %11 = load i32, ptr @ali1535_smba, align 4
  %add13 = add i32 %11, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i264 = and i32 %add13, 1048575
  %add.i265 = or i32 %and.i264, -18874368
  %12 = inttoptr i32 %add.i265 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %or) #8, !srcloc !132
  %13 = load i32, ptr @ali1535_smba, align 4
  %add15 = add i32 %13, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i266 = and i32 %add15, 1048575
  %add.i267 = or i32 %and.i266, -18874368
  %14 = inttoptr i32 %add.i267 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #8, !srcloc !132
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %addr.tr258 = trunc i16 %addr to i8
  %shl19 = shl i8 %addr.tr258, 1
  %and21 = and i8 %read_write, 1
  %or22 = or i8 %and21, %shl19
  %15 = load i32, ptr @ali1535_smba, align 4
  %add24 = add i32 %15, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i268 = and i32 %add24, 1048575
  %add.i269 = or i32 %and.i268, -18874368
  %16 = inttoptr i32 %add.i269 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %or22) #8, !srcloc !132
  %17 = load i32, ptr @ali1535_smba, align 4
  %add26 = add i32 %17, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i270 = and i32 %add26, 1048575
  %add.i271 = or i32 %and.i270, -18874368
  %18 = inttoptr i32 %add.i271 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 16) #8, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp28 = icmp eq i8 %read_write, 0
  br i1 %cmp28, label %if.then30, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then30:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %19 = load i32, ptr @ali1535_smba, align 4
  %add31 = add i32 %19, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i272 = and i32 %add31, 1048575
  %add.i273 = or i32 %and.i272, -18874368
  %20 = inttoptr i32 %add.i273 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %command) #8, !srcloc !132
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  %addr.tr257 = trunc i16 %addr to i8
  %shl36 = shl i8 %addr.tr257, 1
  %and38 = and i8 %read_write, 1
  %or39 = or i8 %and38, %shl36
  %21 = load i32, ptr @ali1535_smba, align 4
  %add41 = add i32 %21, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i274 = and i32 %add41, 1048575
  %add.i275 = or i32 %and.i274, -18874368
  %22 = inttoptr i32 %add.i275 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %or39) #8, !srcloc !132
  %23 = load i32, ptr @ali1535_smba, align 4
  %add43 = add i32 %23, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i276 = and i32 %add43, 1048575
  %add.i277 = or i32 %and.i276, -18874368
  %24 = inttoptr i32 %add.i277 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 32) #8, !srcloc !132
  %25 = load i32, ptr @ali1535_smba, align 4
  %add44 = add i32 %25, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i278 = and i32 %add44, 1048575
  %add.i279 = or i32 %and.i278, -18874368
  %26 = inttoptr i32 %add.i279 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %command) #8, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp46 = icmp eq i8 %read_write, 0
  br i1 %cmp46, label %if.then48, label %sw.bb33.sw.epilog_crit_edge

sw.bb33.sw.epilog_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then48:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data, align 2
  %29 = load i32, ptr @ali1535_smba, align 4
  %add49 = add i32 %29, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i280 = and i32 %add49, 1048575
  %add.i281 = or i32 %and.i280, -18874368
  %30 = inttoptr i32 %add.i281 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %28) #8, !srcloc !132
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end
  %addr.tr256 = trunc i16 %addr to i8
  %shl54 = shl i8 %addr.tr256, 1
  %and56 = and i8 %read_write, 1
  %or57 = or i8 %and56, %shl54
  %31 = load i32, ptr @ali1535_smba, align 4
  %add59 = add i32 %31, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i282 = and i32 %add59, 1048575
  %add.i283 = or i32 %and.i282, -18874368
  %32 = inttoptr i32 %add.i283 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %or57) #8, !srcloc !132
  %33 = load i32, ptr @ali1535_smba, align 4
  %add61 = add i32 %33, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i284 = and i32 %add61, 1048575
  %add.i285 = or i32 %and.i284, -18874368
  %34 = inttoptr i32 %add.i285 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 48) #8, !srcloc !132
  %35 = load i32, ptr @ali1535_smba, align 4
  %add62 = add i32 %35, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i286 = and i32 %add62, 1048575
  %add.i287 = or i32 %and.i286, -18874368
  %36 = inttoptr i32 %add.i287 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %command) #8, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp64 = icmp eq i8 %read_write, 0
  br i1 %cmp64, label %if.then66, label %sw.bb51.sw.epilog_crit_edge

sw.bb51.sw.epilog_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then66:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %data, align 2
  %conv69 = trunc i16 %38 to i8
  %39 = load i32, ptr @ali1535_smba, align 4
  %add70 = add i32 %39, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i288 = and i32 %add70, 1048575
  %add.i289 = or i32 %and.i288, -18874368
  %40 = inttoptr i32 %add.i289 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %conv69) #8, !srcloc !132
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %data, align 2
  %43 = lshr i16 %42, 8
  %conv73 = trunc i16 %43 to i8
  %44 = load i32, ptr @ali1535_smba, align 4
  %add74 = add i32 %44, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i290 = and i32 %add74, 1048575
  %add.i291 = or i32 %and.i290, -18874368
  %45 = inttoptr i32 %add.i291 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 %conv73) #8, !srcloc !132
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end
  %addr.tr = trunc i16 %addr to i8
  %shl79 = shl i8 %addr.tr, 1
  %and81 = and i8 %read_write, 1
  %or82 = or i8 %and81, %shl79
  %46 = load i32, ptr @ali1535_smba, align 4
  %add84 = add i32 %46, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i292 = and i32 %add84, 1048575
  %add.i293 = or i32 %and.i292, -18874368
  %47 = inttoptr i32 %add.i293 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %or82) #8, !srcloc !132
  %48 = load i32, ptr @ali1535_smba, align 4
  %add86 = add i32 %48, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i294 = and i32 %add86, 1048575
  %add.i295 = or i32 %and.i294, -18874368
  %49 = inttoptr i32 %add.i295 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 64) #8, !srcloc !132
  %50 = load i32, ptr @ali1535_smba, align 4
  %add87 = add i32 %50, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i296 = and i32 %add87, 1048575
  %add.i297 = or i32 %and.i296, -18874368
  %51 = inttoptr i32 %add.i297 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %command) #8, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp89 = icmp eq i8 %read_write, 0
  br i1 %cmp89, label %if.end98, label %sw.bb76.sw.epilog_crit_edge

sw.bb76.sw.epilog_crit_edge:                      ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end98:                                         ; preds = %sw.bb76
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %data, align 2
  %conv92 = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %53)
  %cmp99 = icmp ugt i8 %53, 32
  br i1 %cmp99, label %if.then101, label %if.end98.if.end104_crit_edge

if.end98.if.end104_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 32, ptr %data, align 2
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.end98.if.end104_crit_edge
  %len.1 = phi i32 [ 32, %if.then101 ], [ %conv92, %if.end98.if.end104_crit_edge ]
  %conv105 = trunc i32 %len.1 to i8
  %55 = load i32, ptr @ali1535_smba, align 4
  %add106 = add i32 %55, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i298 = and i32 %add106, 1048575
  %add.i299 = or i32 %and.i298, -18874368
  %56 = inttoptr i32 %add.i299 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %conv105) #8, !srcloc !132
  %57 = load i32, ptr @ali1535_smba, align 4
  %add107 = add i32 %57, 1
  %and.i300 = and i32 %add107, 1048575
  %add.i301 = or i32 %and.i300, -18874368
  %58 = inttoptr i32 %add.i301 to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %60 = or i8 %59, 4
  %61 = load i32, ptr @ali1535_smba, align 4
  %add112 = add i32 %61, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i302 = and i32 %add112, 1048575
  %add.i303 = or i32 %and.i302, -18874368
  %62 = inttoptr i32 %add.i303 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 %60) #8, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %cmp114.not328 = icmp eq i32 %len.1, 0
  br i1 %cmp114.not328, label %if.end104.sw.epilog_crit_edge, label %if.end104.for.body116_crit_edge

if.end104.for.body116_crit_edge:                  ; preds = %if.end104
  br label %for.body116

if.end104.sw.epilog_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body116:                                      ; preds = %for.body116.for.body116_crit_edge, %if.end104.for.body116_crit_edge
  %i.0329 = phi i32 [ %inc120, %for.body116.for.body116_crit_edge ], [ 1, %if.end104.for.body116_crit_edge ]
  %arrayidx117 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.0329
  %63 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx117, align 1
  %65 = load i32, ptr @ali1535_smba, align 4
  %add118 = add i32 %65, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i304 = and i32 %add118, 1048575
  %add.i305 = or i32 %and.i304, -18874368
  %66 = inttoptr i32 %add.i305 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 %64) #8, !srcloc !132
  %inc120 = add nuw nsw i32 %i.0329, 1
  %exitcond = icmp eq i32 %i.0329, %len.1
  br i1 %exitcond, label %for.body116.sw.epilog_crit_edge, label %for.body116.for.body116_crit_edge

for.body116.for.body116_crit_edge:                ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body116

for.body116.sw.epilog_crit_edge:                  ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end125:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev126 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev126, ptr noundef nonnull @.str.29, i32 noundef %size) #11
  br label %EXIT

sw.epilog:                                        ; preds = %for.body116.sw.epilog_crit_edge, %if.end104.sw.epilog_crit_edge, %sw.bb76.sw.epilog_crit_edge, %if.then66, %sw.bb51.sw.epilog_crit_edge, %if.then48, %sw.bb33.sw.epilog_crit_edge, %if.then30, %sw.bb16.sw.epilog_crit_edge, %sw.bb
  %cmp134 = phi i1 [ false, %sw.bb76.sw.epilog_crit_edge ], [ false, %sw.bb51.sw.epilog_crit_edge ], [ false, %if.then66 ], [ false, %sw.bb33.sw.epilog_crit_edge ], [ false, %if.then48 ], [ false, %sw.bb16.sw.epilog_crit_edge ], [ false, %if.then30 ], [ true, %sw.bb ], [ false, %if.end104.sw.epilog_crit_edge ], [ false, %for.body116.sw.epilog_crit_edge ]
  %size.addr.0 = phi i32 [ 3, %sw.bb76.sw.epilog_crit_edge ], [ 2, %sw.bb51.sw.epilog_crit_edge ], [ 2, %if.then66 ], [ 1, %sw.bb33.sw.epilog_crit_edge ], [ 1, %if.then48 ], [ 0, %sw.bb16.sw.epilog_crit_edge ], [ 0, %if.then30 ], [ 268435455, %sw.bb ], [ 3, %if.end104.sw.epilog_crit_edge ], [ 3, %for.body116.sw.epilog_crit_edge ]
  %call127 = tail call fastcc i32 @ali1535_transaction(ptr noundef %adap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end130, label %sw.epilog.EXIT_crit_edge

sw.epilog.EXIT_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT

if.end130:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp132 = icmp eq i8 %read_write, 0
  %brmerge = or i1 %cmp132, %cmp134
  br i1 %brmerge, label %if.end130.EXIT_crit_edge, label %if.end137

if.end130.EXIT_crit_edge:                         ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT

if.end137:                                        ; preds = %if.end130
  %67 = zext i32 %size.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %size.addr.0, label %if.end137.EXIT_crit_edge [
    i32 0, label %sw.bb138
    i32 1, label %sw.bb141
    i32 2, label %sw.bb144
    i32 3, label %sw.bb154
  ]

if.end137.EXIT_crit_edge:                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT

sw.bb138:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %68 = load i32, ptr @ali1535_smba, align 4
  %add139 = add i32 %68, 4
  %and.i306 = and i32 %add139, 1048575
  %add.i307 = or i32 %and.i306, -18874368
  %69 = inttoptr i32 %add.i307 to ptr
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %69) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %71 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %data, align 2
  br label %EXIT

sw.bb141:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %72 = load i32, ptr @ali1535_smba, align 4
  %add142 = add i32 %72, 4
  %and.i308 = and i32 %add142, 1048575
  %add.i309 = or i32 %and.i308, -18874368
  %73 = inttoptr i32 %add.i309 to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %75 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %data, align 2
  br label %EXIT

sw.bb144:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %76 = load i32, ptr @ali1535_smba, align 4
  %add145 = add i32 %76, 4
  %and.i310 = and i32 %add145, 1048575
  %add.i311 = or i32 %and.i310, -18874368
  %77 = inttoptr i32 %add.i311 to ptr
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv147 = zext i8 %78 to i16
  %79 = load i32, ptr @ali1535_smba, align 4
  %add148 = add i32 %79, 5
  %and.i312 = and i32 %add148, 1048575
  %add.i313 = or i32 %and.i312, -18874368
  %80 = inttoptr i32 %add.i313 to ptr
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %80) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv150 = zext i8 %81 to i16
  %shl151 = shl nuw i16 %conv150, 8
  %add152 = or i16 %shl151, %conv147
  %82 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %add152, ptr %data, align 2
  br label %EXIT

sw.bb154:                                         ; preds = %if.end137
  %83 = load i32, ptr @ali1535_smba, align 4
  %add155 = add i32 %83, 4
  %and.i314 = and i32 %add155, 1048575
  %add.i315 = or i32 %and.i314, -18874368
  %84 = inttoptr i32 %add.i315 to ptr
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %84) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %86 = tail call i8 @llvm.umin.i8(i8 %85, i8 32)
  %87 = zext i8 %86 to i32
  %88 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %86, ptr %data, align 2
  %89 = load i32, ptr @ali1535_smba, align 4
  %add164 = add i32 %89, 1
  %and.i316 = and i32 %add164, 1048575
  %add.i317 = or i32 %and.i316, -18874368
  %90 = inttoptr i32 %add.i317 to ptr
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %90) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %92 = or i8 %91, 4
  %93 = load i32, ptr @ali1535_smba, align 4
  %add169 = add i32 %93, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i318 = and i32 %add169, 1048575
  %add.i319 = or i32 %and.i318, -18874368
  %94 = inttoptr i32 %add.i319 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 %92) #8, !srcloc !132
  %95 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp173.not331 = icmp eq i8 %96, 0
  br i1 %cmp173.not331, label %sw.bb154.EXIT_crit_edge, label %for.body175.lr.ph

sw.bb154.EXIT_crit_edge:                          ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT

for.body175.lr.ph:                                ; preds = %sw.bb154
  %dev187 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  br label %for.body175

for.body175:                                      ; preds = %for.inc193.for.body175_crit_edge, %for.body175.lr.ph
  %i.1332 = phi i32 [ 1, %for.body175.lr.ph ], [ %inc194, %for.inc193.for.body175_crit_edge ]
  %97 = load i32, ptr @ali1535_smba, align 4
  %add176 = add i32 %97, 6
  %and.i320 = and i32 %add176, 1048575
  %add.i321 = or i32 %and.i320, -18874368
  %98 = inttoptr i32 %add.i321 to ptr
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %98) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %arrayidx178 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.1332
  %100 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx178, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali1535_access.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali1535_access, %for.inc193)) #8
          to label %if.then186 [label %for.inc193], !srcloc !128

if.then186:                                       ; preds = %for.body175
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx178, align 1
  %conv189 = zext i8 %102 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali1535_access.__UNIQUE_ID_ddebug299, ptr noundef %dev187, ptr noundef nonnull @.str.31, i32 noundef %87, i32 noundef %i.1332, i32 noundef %conv189) #8
  br label %for.inc193

for.inc193:                                       ; preds = %if.then186, %for.body175
  %inc194 = add nuw nsw i32 %i.1332, 1
  %103 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %data, align 2
  %conv172 = zext i8 %104 to i32
  %cmp173.not.not = icmp ult i32 %i.1332, %conv172
  br i1 %cmp173.not.not, label %for.inc193.for.body175_crit_edge, label %for.inc193.EXIT_crit_edge

for.inc193.EXIT_crit_edge:                        ; preds = %for.inc193
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT

for.inc193.for.body175_crit_edge:                 ; preds = %for.inc193
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body175

EXIT:                                             ; preds = %for.inc193.EXIT_crit_edge, %sw.bb154.EXIT_crit_edge, %sw.bb144, %sw.bb141, %sw.bb138, %if.end137.EXIT_crit_edge, %if.end130.EXIT_crit_edge, %sw.epilog.EXIT_crit_edge, %do.end125
  %result.0 = phi i32 [ -95, %do.end125 ], [ %call127, %sw.epilog.EXIT_crit_edge ], [ 0, %if.end137.EXIT_crit_edge ], [ 0, %sw.bb144 ], [ 0, %sw.bb141 ], [ 0, %sw.bb138 ], [ 0, %if.end130.EXIT_crit_edge ], [ 0, %sw.bb154.EXIT_crit_edge ], [ 0, %for.inc193.EXIT_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ali1535_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 58654720
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ali1535_transaction(ptr noundef %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali1535_transaction.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali1535_transaction, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %0 = load i32, ptr @ali1535_smba, align 4
  %and.i = and i32 %0, 1048575
  %add.i = or i32 %and.i, -18874368
  %1 = inttoptr i32 %add.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv = zext i8 %2 to i32
  %3 = load i32, ptr @ali1535_smba, align 4
  %add5 = add i32 %3, 1
  %and.i226 = and i32 %add5, 1048575
  %add.i227 = or i32 %and.i226, -18874368
  %4 = inttoptr i32 %add.i227 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv7 = zext i8 %5 to i32
  %6 = load i32, ptr @ali1535_smba, align 4
  %add8 = add i32 %6, 7
  %and.i228 = and i32 %add8, 1048575
  %add.i229 = or i32 %and.i228, -18874368
  %7 = inttoptr i32 %add.i229 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv10 = zext i8 %8 to i32
  %9 = load i32, ptr @ali1535_smba, align 4
  %add11 = add i32 %9, 3
  %and.i230 = and i32 %add11, 1048575
  %add.i231 = or i32 %and.i230, -18874368
  %10 = inttoptr i32 %add.i231 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv13 = zext i8 %11 to i32
  %12 = load i32, ptr @ali1535_smba, align 4
  %add14 = add i32 %12, 4
  %and.i232 = and i32 %add14, 1048575
  %add.i233 = or i32 %and.i232, -18874368
  %13 = inttoptr i32 %add.i233 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv16 = zext i8 %14 to i32
  %15 = load i32, ptr @ali1535_smba, align 4
  %add17 = add i32 %15, 5
  %and.i234 = and i32 %add17, 1048575
  %add.i235 = or i32 %and.i234, -18874368
  %16 = inttoptr i32 %add.i235 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv19 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali1535_transaction.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv10, i32 noundef %conv13, i32 noundef %conv16, i32 noundef %conv19) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %18 = load i32, ptr @ali1535_smba, align 4
  %and.i236 = and i32 %18, 1048575
  %add.i237 = or i32 %and.i236, -18874368
  %19 = inttoptr i32 %add.i237 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv22 = zext i8 %20 to i32
  %and = and i32 %conv22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %do.end.if.end33_crit_edge, label %do.end27

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end27:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev28, ptr noundef nonnull @.str.34, i32 noundef %conv22) #11
  %21 = load i32, ptr @ali1535_smba, align 4
  %add29 = add i32 %21, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i238 = and i32 %add29, 1048575
  %add.i239 = or i32 %and.i238, -18874368
  %22 = inttoptr i32 %add.i239 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 8) #8, !srcloc !132
  %23 = load i32, ptr @ali1535_smba, align 4
  %and.i240 = and i32 %23, 1048575
  %add.i241 = or i32 %and.i240, -18874368
  %24 = inttoptr i32 %add.i241 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv32 = zext i8 %25 to i32
  br label %if.end33

if.end33:                                         ; preds = %do.end27, %do.end.if.end33_crit_edge
  %temp.0 = phi i32 [ %conv32, %do.end27 ], [ %conv22, %do.end.if.end33_crit_edge ]
  %and34 = and i32 %temp.0, 232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end33
  %26 = load i32, ptr @ali1535_smba, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i242 = and i32 %26, 1048575
  %add.i243 = or i32 %and.i242, -18874368
  %27 = inttoptr i32 %add.i243 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 -1) #8, !srcloc !132
  %28 = load i32, ptr @ali1535_smba, align 4
  %and.i244 = and i32 %28, 1048575
  %add.i245 = or i32 %and.i244, -18874368
  %29 = inttoptr i32 %add.i245 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv40 = zext i8 %30 to i32
  %and41 = and i32 %conv40, 232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then36.if.end55_crit_edge, label %do.end46

if.then36.if.end55_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end46:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %dev47 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.37, i32 noundef %conv40) #11
  br label %cleanup

if.else:                                          ; preds = %if.end33
  %and49 = and i32 %temp.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else.if.end55_crit_edge, label %if.then51

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv52 = trunc i32 %temp.0 to i8
  %31 = load i32, ptr @ali1535_smba, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i246 = and i32 %31, 1048575
  %add.i247 = or i32 %and.i246, -18874368
  %32 = inttoptr i32 %add.i247 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv52) #8, !srcloc !132
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.else.if.end55_crit_edge, %if.then36.if.end55_crit_edge
  %33 = load i32, ptr @ali1535_smba, align 4
  %add56 = add i32 %33, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i248 = and i32 %add56, 1048575
  %add.i249 = or i32 %and.i248, -18874368
  %34 = inttoptr i32 %add.i249 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 -1) #8, !srcloc !132
  br label %do.body57

do.body57:                                        ; preds = %land.rhs.do.body57_crit_edge, %if.end55
  %timeout.0 = phi i32 [ 0, %if.end55 ], [ %inc, %land.rhs.do.body57_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %35 = load i32, ptr @ali1535_smba, align 4
  %and.i250 = and i32 %35, 1048575
  %add.i251 = or i32 %and.i250, -18874368
  %36 = inttoptr i32 %add.i251 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv60 = zext i8 %37 to i32
  %38 = and i32 %conv60, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %38)
  %39 = icmp eq i32 %38, 8
  br i1 %39, label %land.rhs, label %do.body57.if.end75_crit_edge

do.body57.if.end75_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

land.rhs:                                         ; preds = %do.body57
  %inc = add nuw nsw i32 %timeout.0, 1
  %exitcond.not = icmp eq i32 %inc, 501
  br i1 %exitcond.not, label %if.then70, label %land.rhs.do.body57_crit_edge

land.rhs.do.body57_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

if.then70:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %dev74 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74, ptr noundef nonnull @.str.40) #11
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %do.body57.if.end75_crit_edge
  %result.0 = phi i32 [ -110, %if.then70 ], [ 0, %do.body57.if.end75_crit_edge ]
  %and76 = and i32 %conv60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end98_crit_edge, label %if.then78

if.end75.if.end98_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali1535_transaction.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali1535_transaction, %if.end98)) #8
          to label %if.then93 [label %if.end98], !srcloc !128

if.then93:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  %dev94 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali1535_transaction.__UNIQUE_ID_ddebug296, ptr noundef %dev94, ptr noundef nonnull @.str.42) #8
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %if.then78, %if.end75.if.end98_crit_edge
  %result.1 = phi i32 [ -5, %if.then93 ], [ %result.0, %if.end75.if.end98_crit_edge ], [ -5, %if.then78 ]
  %and99 = and i32 %conv60, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end98.if.end124_crit_edge, label %if.then101

if.end98.if.end124_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali1535_transaction.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali1535_transaction, %if.end124)) #8
          to label %if.then116 [label %if.end124], !srcloc !128

if.then116:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  %dev117 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %40 = load i32, ptr @ali1535_smba, align 4
  %add118 = add i32 %40, 3
  %and.i252 = and i32 %add118, 1048575
  %add.i253 = or i32 %and.i252, -18874368
  %41 = inttoptr i32 %add.i253 to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv120 = zext i8 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali1535_transaction.__UNIQUE_ID_ddebug297, ptr noundef %dev117, ptr noundef nonnull @.str.43, i32 noundef %conv120) #8
  br label %if.end124

if.end124:                                        ; preds = %if.then116, %if.then101, %if.end98.if.end124_crit_edge
  %result.2 = phi i32 [ -6, %if.then116 ], [ %result.1, %if.end98.if.end124_crit_edge ], [ -6, %if.then101 ]
  %and125 = and i32 %conv60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end124.if.end132_crit_edge, label %if.then127

if.end124.if.end132_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  %dev131 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev131, ptr noundef nonnull @.str.45) #11
  br label %if.end132

if.end132:                                        ; preds = %if.then127, %if.end124.if.end132_crit_edge
  %result.3 = phi i32 [ -5, %if.then127 ], [ %result.2, %if.end124.if.end132_crit_edge ]
  %and133 = and i32 %conv60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.then135, label %if.end132.do.body141_crit_edge

if.end132.do.body141_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body141

if.then135:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  %dev139 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev139, ptr noundef nonnull @.str.48) #11
  br label %do.body141

do.body141:                                       ; preds = %if.then135, %if.end132.do.body141_crit_edge
  %result.4 = phi i32 [ %result.3, %if.end132.do.body141_crit_edge ], [ -110, %if.then135 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali1535_transaction.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali1535_transaction, %do.end177)) #8
          to label %if.then155 [label %do.end177], !srcloc !128

if.then155:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  %dev156 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %43 = load i32, ptr @ali1535_smba, align 4
  %and.i254 = and i32 %43, 1048575
  %add.i255 = or i32 %and.i254, -18874368
  %44 = inttoptr i32 %add.i255 to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv159 = zext i8 %45 to i32
  %46 = load i32, ptr @ali1535_smba, align 4
  %add160 = add i32 %46, 1
  %and.i256 = and i32 %add160, 1048575
  %add.i257 = or i32 %and.i256, -18874368
  %47 = inttoptr i32 %add.i257 to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv162 = zext i8 %48 to i32
  %49 = load i32, ptr @ali1535_smba, align 4
  %add163 = add i32 %49, 7
  %and.i258 = and i32 %add163, 1048575
  %add.i259 = or i32 %and.i258, -18874368
  %50 = inttoptr i32 %add.i259 to ptr
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv165 = zext i8 %51 to i32
  %52 = load i32, ptr @ali1535_smba, align 4
  %add166 = add i32 %52, 3
  %and.i260 = and i32 %add166, 1048575
  %add.i261 = or i32 %and.i260, -18874368
  %53 = inttoptr i32 %add.i261 to ptr
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv168 = zext i8 %54 to i32
  %55 = load i32, ptr @ali1535_smba, align 4
  %add169 = add i32 %55, 4
  %and.i262 = and i32 %add169, 1048575
  %add.i263 = or i32 %and.i262, -18874368
  %56 = inttoptr i32 %add.i263 to ptr
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv171 = zext i8 %57 to i32
  %58 = load i32, ptr @ali1535_smba, align 4
  %add172 = add i32 %58, 5
  %and.i264 = and i32 %add172, 1048575
  %add.i265 = or i32 %and.i264, -18874368
  %59 = inttoptr i32 %add.i265 to ptr
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %59) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv174 = zext i8 %60 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali1535_transaction.__UNIQUE_ID_ddebug298, ptr noundef %dev156, ptr noundef nonnull @.str.50, i32 noundef %conv159, i32 noundef %conv162, i32 noundef %conv165, i32 noundef %conv168, i32 noundef %conv171, i32 noundef %conv174) #8
  br label %do.end177

do.end177:                                        ; preds = %if.then155, %do.body141
  br i1 %tobool134.not, label %if.then180, label %if.else183

if.then180:                                       ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #10
  %61 = load i32, ptr @ali1535_smba, align 4
  %add181 = add i32 %61, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i266 = and i32 %add181, 1048575
  %add.i267 = or i32 %and.i266, -18874368
  %62 = inttoptr i32 %add.i267 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 4) #8, !srcloc !132
  %63 = load i32, ptr @ali1535_smba, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i268 = and i32 %63, 1048575
  %add.i269 = or i32 %and.i268, -18874368
  %64 = inttoptr i32 %add.i269 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 -1) #8, !srcloc !132
  br label %cleanup

if.else183:                                       ; preds = %do.end177
  %and184 = and i32 %conv60, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %if.else183.cleanup_crit_edge, label %if.then186

if.else183.cleanup_crit_edge:                     ; preds = %if.else183
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then186:                                       ; preds = %if.else183
  call void @__sanitizer_cov_trace_pc() #10
  %65 = load i32, ptr @ali1535_smba, align 4
  %add187 = add i32 %65, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i270 = and i32 %add187, 1048575
  %add.i271 = or i32 %and.i270, -18874368
  %66 = inttoptr i32 %add.i271 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 8) #8, !srcloc !132
  %67 = load i32, ptr @ali1535_smba, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %and.i272 = and i32 %67, 1048575
  %add.i273 = or i32 %and.i272, -18874368
  %68 = inttoptr i32 %add.i273 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 -1) #8, !srcloc !132
  br label %cleanup

cleanup:                                          ; preds = %if.then186, %if.else183.cleanup_crit_edge, %if.then180, %do.end46
  %retval.0 = phi i32 [ -16, %do.end46 ], [ %result.4, %if.else183.cleanup_crit_edge ], [ %result.4, %if.then186 ], [ %result.4, %if.then180 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !36, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__initcall__kmod_i2c_ali1535__300_525_ali1535_driver_init6, !1, !"__initcall__kmod_i2c_ali1535__300_525_ali1535_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 525, i32 1}
!2 = !{ptr @__exitcall_ali1535_driver_exit, !1, !"__exitcall_ali1535_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author301, !4, !"__UNIQUE_ID_author301", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 527, i32 1}
!5 = !{ptr @__UNIQUE_ID_author302, !6, !"__UNIQUE_ID_author302", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 528, i32 1}
!7 = !{ptr @__UNIQUE_ID_author303, !8, !"__UNIQUE_ID_author303", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 529, i32 1}
!9 = !{ptr @__UNIQUE_ID_author304, !10, !"__UNIQUE_ID_author304", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 530, i32 1}
!11 = !{ptr @__UNIQUE_ID_description305, !12, !"__UNIQUE_ID_description305", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 531, i32 1}
!13 = !{ptr @__UNIQUE_ID_file306, !14, !"__UNIQUE_ID_file306", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 532, i32 1}
!15 = !{ptr @__UNIQUE_ID_license307, !14, !"__UNIQUE_ID_license307", i1 false, i1 false}
!16 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 519, i32 11}
!19 = !{ptr @ali1535_driver, !20, !"ali1535_driver", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 518, i32 26}
!21 = !{ptr @ali1535_ids, !22, !"ali1535_ids", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 484, i32 35}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 494, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ali1535_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @ali1535_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 503, i32 3}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 141, i32 3}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ali1535_setup._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @ali1535_setup._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 147, i32 2}
!41 = !{ptr @ali1535_setup.__UNIQUE_ID_ddebug292, !40, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 150, i32 3}
!44 = !{ptr @ali1535_setup._entry.12, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ali1535_setup._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 168, i32 3}
!48 = !{ptr @ali1535_setup._entry.15, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ali1535_setup._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 177, i32 3}
!52 = !{ptr @ali1535_setup._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ali1535_setup._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 185, i32 3}
!56 = !{ptr @ali1535_setup._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ali1535_setup._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 201, i32 2}
!60 = !{ptr @ali1535_setup.__UNIQUE_ID_ddebug293, !59, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 202, i32 2}
!63 = !{ptr @ali1535_setup.__UNIQUE_ID_ddebug294, !62, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!64 = !{ptr @ali1535_smba, !65, !"ali1535_smba", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 121, i32 22}
!66 = !{ptr @ali1535_adapter, !67, !"ali1535_adapter", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 478, i32 27}
!68 = !{ptr @smbus_algorithm, !69, !"smbus_algorithm", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 473, i32 35}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 359, i32 3}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ali1535_access._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @ali1535_access._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 423, i32 3}
!77 = !{ptr @ali1535_access._entry.28, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ali1535_access._entry_ptr.30, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 456, i32 4}
!81 = !{ptr @ali1535_access.__UNIQUE_ID_ddebug299, !80, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 218, i32 2}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ali1535_transaction.__UNIQUE_ID_ddebug295, !83, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 248, i32 3}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ali1535_transaction._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @ali1535_transaction._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 265, i32 4}
!93 = !{ptr @ali1535_transaction._entry.36, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ali1535_transaction._entry_ptr.38, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 290, i32 3}
!97 = !{ptr @ali1535_transaction._entry.39, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ali1535_transaction._entry_ptr.41, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 295, i32 3}
!101 = !{ptr @ali1535_transaction.__UNIQUE_ID_ddebug296, !100, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 304, i32 3}
!104 = !{ptr @ali1535_transaction.__UNIQUE_ID_ddebug297, !103, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 312, i32 3}
!107 = !{ptr @ali1535_transaction._entry.44, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ali1535_transaction._entry_ptr.46, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 318, i32 3}
!111 = !{ptr @ali1535_transaction._entry.47, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ali1535_transaction._entry_ptr.49, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 321, i32 2}
!115 = !{ptr @ali1535_transaction.__UNIQUE_ID_ddebug298, !114, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!116 = !{ptr @ali1535_offset, !117, !"ali1535_offset", i1 false, i1 false}
!117 = !{!"../drivers/i2c/busses/i2c-ali1535.c", i32 122, i32 23}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"auto-init"}
!128 = !{i64 2148967407, i64 2148967412, i64 2148967425, i64 2148967469, i64 2148967503, i64 2148967524}
!129 = !{i64 4994035}
!130 = !{i64 2152527711}
!131 = !{i64 2152529696}
!132 = !{i64 4993640}
