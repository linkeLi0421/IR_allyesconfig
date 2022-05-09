; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-nforce2.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-nforce2.c"
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.nforce2_smbus = type { %struct.i2c_adapter, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__UNIQUE_ID_file292 = internal constant [48 x i8] c"i2c_nforce2.file=drivers/i2c/busses/i2c-nforce2\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"i2c_nforce2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [54 x i8] c"i2c_nforce2.author=Hans-Frieder Vogt <hfvogt@gmx.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [53 x i8] c"i2c_nforce2.description=nForce2/3/4/5xx SMBus driver\00", section ".modinfo", align 1
@__initcall__kmod_i2c_nforce2__299_442_nforce2_driver_init6 = internal global ptr @nforce2_driver_init, section ".initcall6.init", align 4
@nforce2_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @nforce2_ids, ptr @nforce2_probe, ptr @nforce2_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_nforce2_driver_exit = internal global ptr @nforce2_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_nforce2\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nForce2_smbus\00", [18 x i8] zeroinitializer }, align 32
@nforce2_ids = internal constant { [15 x %struct.pci_device_id], [96 x i8] } { [15 x %struct.pci_device_id] [%struct.pci_device_id { i32 4318, i32 100, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 132, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 212, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 228, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 82, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 52, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 612, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 872, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 1003, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 1094, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 1346, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 2008, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 1874, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 2722, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SMB1\00", [27 x i8] zeroinitializer }, align 32
@nforce2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 398, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Disabling SMB2 for safety reasons.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nforce2_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-nforce2.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nforce2_probe._entry_ptr = internal global ptr @nforce2_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SMB2\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nforce2_probe_smb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 333, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error reading PCI config for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nforce2_probe_smb\00", [46 x i8] zeroinitializer }, align 32
@nforce2_probe_smb._entry_ptr = internal global ptr @nforce2_probe_smb._entry, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@nforce2_probe_smb._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.5, i32 348, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error requesting region %02x .. %02X for %s\0A\00", [51 x i8] zeroinitializer }, align 32
@nforce2_probe_smb._entry_ptr.13 = internal global ptr @nforce2_probe_smb._entry.11, section ".printk_index", align 4
@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @nforce2_access, ptr null, ptr @nforce2_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SMBus nForce2 adapter at %04x\00", [34 x i8] zeroinitializer }, align 32
@nforce2_probe_smb._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.5, i32 365, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nForce2 SMBus adapter at %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nforce2_probe_smb._entry_ptr.18 = internal global ptr @nforce2_probe_smb._entry.15, section ".printk_index", align 4
@nforce2_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 226, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Transaction failed (requested block size: %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nforce2_access\00", [17 x i8] zeroinitializer }, align 32
@nforce2_access._entry_ptr = internal global ptr @nforce2_access._entry, section ".printk_index", align 4
@nforce2_access._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.5, i32 238, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nforce2_access._entry_ptr.23 = internal global ptr @nforce2_access._entry.21, section ".printk_index", align 4
@nforce2_access._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.5, i32 268, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Transaction failed (received block size: 0x%02x)\0A\00", [46 x i8] zeroinitializer }, align 32
@nforce2_access._entry_ptr.26 = internal global ptr @nforce2_access._entry.24, section ".printk_index", align 4
@nforce2_check_status.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nforce2_check_status\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMBus Timeout!\0A\00", [16 x i8] zeroinitializer }, align 32
@nforce2_check_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.5, ptr @.str.29, i8 0, i8 42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Transaction failed (0x%02x)!\0A\00", [34 x i8] zeroinitializer }, align 32
@nforce2_abort.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.5, ptr @.str.31, i8 0, i8 35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nforce2_abort\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Aborting current transaction\0A\00", [34 x i8] zeroinitializer }, align 32
@nforce2_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.5, i32 149, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't reset the smbus\0A\00", [41 x i8] zeroinitializer }, align 32
@nforce2_abort._entry_ptr = internal global ptr @nforce2_abort._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 100, i64 612, i64 872]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"nforce2_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 435, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 442, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 436, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"nforce2_ids\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 297, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 392, i32 65 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 398, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 403, i32 7 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 332, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 347, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 291, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 357, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 364, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 224, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 238, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 266, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 165, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 171, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 140, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-nforce2.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 149, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_nforce2_driver_exit, ptr @__initcall__kmod_i2c_nforce2__299_442_nforce2_driver_init6, ptr @nforce2_abort._entry, ptr @nforce2_abort._entry_ptr, ptr @nforce2_access._entry, ptr @nforce2_access._entry.21, ptr @nforce2_access._entry.24, ptr @nforce2_access._entry_ptr, ptr @nforce2_access._entry_ptr.23, ptr @nforce2_access._entry_ptr.26, ptr @nforce2_driver_exit, ptr @nforce2_probe._entry, ptr @nforce2_probe._entry_ptr, ptr @nforce2_probe_smb._entry, ptr @nforce2_probe_smb._entry.11, ptr @nforce2_probe_smb._entry.15, ptr @nforce2_probe_smb._entry_ptr, ptr @nforce2_probe_smb._entry_ptr.13, ptr @nforce2_probe_smb._entry_ptr.18, ptr @nforce2_driver, ptr @.str, ptr @.str.1, ptr @nforce2_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @smbus_algorithm, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nforce2_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nforce2_ids to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nforce2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nforce2_probe_smb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nforce2_probe_smb._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nforce2_probe_smb._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nforce2_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nforce2_access._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nforce2_access._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nforce2_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nforce2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @nforce2_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nforce2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @nforce2_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nforce2_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2752) #11
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %driver_data.i.i, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end.sw.epilog_crit_edge [
    i16 100, label %if.end.sw.bb_crit_edge
    i16 612, label %if.end.sw.bb_crit_edge55
    i16 872, label %if.end.sw.bb_crit_edge56
  ]

if.end.sw.bb_crit_edge56:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge55:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge55, %if.end.sw.bb_crit_edge56
  %blockops = getelementptr inbounds %struct.nforce2_smbus, ptr %call7.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %blockops to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %blockops, align 8
  %blockops2 = getelementptr %struct.nforce2_smbus, ptr %call7.i.i.i, i32 1, i32 3
  %6 = ptrtoint ptr %blockops2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %blockops2, align 8
  %can_abort = getelementptr inbounds %struct.nforce2_smbus, ptr %call7.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %can_abort to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %can_abort, align 4
  %can_abort5 = getelementptr %struct.nforce2_smbus, ptr %call7.i.i.i, i32 1, i32 4
  %8 = ptrtoint ptr %can_abort5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %can_abort5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %call7 = tail call fastcc i32 @nforce2_probe_smb(ptr noundef %dev, i32 noundef 4, i32 noundef 80, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then9, label %sw.epilog.if.end11_crit_edge

sw.epilog.if.end11_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.nforce2_smbus, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %base, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %sw.epilog.if.end11_crit_edge
  %arrayidx18 = getelementptr %struct.nforce2_smbus, ptr %call7.i.i.i, i32 1
  %call19 = tail call fastcc i32 @nforce2_probe_smb(ptr noundef %dev, i32 noundef 5, i32 noundef 84, ptr noundef %arrayidx18, ptr noundef nonnull @.str.8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end26, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end11
  %base24 = getelementptr %struct.nforce2_smbus, ptr %call7.i.i.i, i32 1, i32 1
  %10 = ptrtoint ptr %base24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %base24, align 8
  br i1 %cmp, label %if.then31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end26.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then31 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nforce2_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr inbounds %struct.nforce2_smbus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 8
  %size = getelementptr inbounds %struct.nforce2_smbus, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %5, i32 noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base6 = getelementptr %struct.nforce2_smbus, ptr %1, i32 1, i32 1
  %8 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.end.if.end15_crit_edge, label %if.then8

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5 = getelementptr %struct.nforce2_smbus, ptr %1, i32 1
  tail call void @i2c_del_adapter(ptr noundef %arrayidx5) #8
  %10 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base6, align 8
  %size14 = getelementptr %struct.nforce2_smbus, ptr %1, i32 1, i32 2
  %12 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size14, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %11, i32 noundef %13) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.end.if.end15_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nforce2_probe_smb(ptr noundef %dev, i32 noundef %bar, i32 noundef %alt_reg, ptr noundef %smbus, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  %iobase = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %base = getelementptr inbounds %struct.nforce2_smbus, ptr %smbus, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %base, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %end = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then.cond.end_crit_edge, label %cond.false

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %4, 1
  %add = sub i32 %sub, %6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.then.cond.end_crit_edge ]
  %size = getelementptr inbounds %struct.nforce2_smbus, ptr %smbus, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %size, align 4
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %iobase) #8
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %iobase, align 2, !annotation !88
  %call = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %alt_reg, ptr noundef nonnull %iobase) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10.not = icmp eq i32 %call, 0
  br i1 %cmp10.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.9, ptr noundef %name) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %iobase) #8
  br label %cleanup61

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %iobase, align 2
  %11 = and i16 %10, -4
  %and = zext i16 %11 to i32
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %base, align 8
  %size14 = getelementptr inbounds %struct.nforce2_smbus, ptr %smbus, i32 0, i32 2
  %13 = ptrtoint ptr %size14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 64, ptr %size14, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %iobase) #8
  br label %if.end15

if.end15:                                         ; preds = %if.end, %cond.end
  %size17 = getelementptr inbounds %struct.nforce2_smbus, ptr %smbus, i32 0, i32 2
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base, align 8
  %16 = ptrtoint ptr %size17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size17, align 4
  %18 = load ptr, ptr getelementptr inbounds (%struct.pci_driver, ptr @nforce2_driver, i32 0, i32 1), align 4
  %call24 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %15, i32 noundef %17, ptr noundef %18, i32 noundef 0) #8
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end29, label %if.end36

do.end29:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %dev30 = getelementptr inbounds %struct.i2c_adapter, ptr %smbus, i32 0, i32 9
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base, align 8
  %21 = ptrtoint ptr %size17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size17, align 4
  %add34 = add i32 %20, -1
  %sub35 = add i32 %add34, %22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.12, i32 noundef %20, i32 noundef %sub35, ptr noundef %name) #12
  br label %cleanup61

if.end36:                                         ; preds = %if.end15
  %23 = ptrtoint ptr %smbus to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %smbus, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %smbus, i32 0, i32 1
  %24 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 129, ptr %class, align 4
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %smbus, i32 0, i32 2
  %25 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @smbus_algorithm, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %smbus, i32 0, i32 3
  %26 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %smbus, ptr %algo_data, align 4
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %smbus, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev41, ptr %parent, align 8
  %name45 = getelementptr inbounds %struct.i2c_adapter, ptr %smbus, i32 0, i32 12
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base, align 8
  %call47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name45, i32 noundef 48, ptr noundef nonnull @.str.14, i32 noundef %29)
  %call49 = call i32 @i2c_add_adapter(ptr noundef %smbus) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.end57, label %if.then51

if.then51:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base, align 8
  %32 = ptrtoint ptr %size17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size17, align 4
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %31, i32 noundef %33) #8
  br label %cleanup61

do.end57:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %dev43 = getelementptr inbounds %struct.i2c_adapter, ptr %smbus, i32 0, i32 9
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev43, ptr noundef nonnull @.str.16, i32 noundef %35) #12
  br label %cleanup61

cleanup61:                                        ; preds = %do.end57, %if.then51, %do.end29, %do.end
  %retval.1 = phi i32 [ %call49, %if.then51 ], [ 0, %do.end57 ], [ -16, %do.end29 ], [ -5, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nforce2_access(ptr noundef %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp = icmp eq i8 %read_write, 1
  %flags.tr = trunc i16 %flags to i8
  %2 = shl i8 %flags.tr, 5
  %conv5 = and i8 %2, -128
  %3 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %size, label %do.end82 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb15
    i32 3, label %sw.bb28
    i32 5, label %sw.bb49
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv6 = zext i1 %cmp to i8
  %or = or i8 %conv6, 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp10 = icmp eq i8 %read_write, 0
  br i1 %cmp10, label %if.then, label %sw.bb8.if.end_crit_edge

sw.bb8.if.end_crit_edge:                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.nforce2_smbus, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 8
  %add = add i32 %5, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %command) #8, !srcloc !90
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb8.if.end_crit_edge
  %conv12 = zext i1 %cmp to i8
  %or13 = or i8 %conv12, 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %base16 = getelementptr inbounds %struct.nforce2_smbus, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base16, align 8
  %add17 = add i32 %8, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %and.i215 = and i32 %add17, 1048575
  %add.i216 = or i32 %and.i215, -18874368
  %9 = inttoptr i32 %add.i216 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %command) #8, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp19 = icmp eq i8 %read_write, 0
  br i1 %cmp19, label %if.then21, label %sw.bb15.if.end24_crit_edge

sw.bb15.if.end24_crit_edge:                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then21:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 2
  %12 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base16, align 8
  %add23 = add i32 %13, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %and.i217 = and i32 %add23, 1048575
  %add.i218 = or i32 %and.i217, -18874368
  %14 = inttoptr i32 %add.i218 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %11) #8, !srcloc !90
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %sw.bb15.if.end24_crit_edge
  %conv25 = zext i1 %cmp to i8
  %or26 = or i8 %conv25, 6
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %base29 = getelementptr inbounds %struct.nforce2_smbus, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %base29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base29, align 8
  %add30 = add i32 %16, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %and.i219 = and i32 %add30, 1048575
  %add.i220 = or i32 %and.i219, -18874368
  %17 = inttoptr i32 %add.i220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %command) #8, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp32 = icmp eq i8 %read_write, 0
  br i1 %cmp32, label %if.then34, label %sw.bb28.if.end43_crit_edge

sw.bb28.if.end43_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then34:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data, align 2
  %conv35 = trunc i16 %19 to i8
  %20 = ptrtoint ptr %base29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base29, align 8
  %add37 = add i32 %21, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %and.i221 = and i32 %add37, 1048575
  %add.i222 = or i32 %and.i221, -18874368
  %22 = inttoptr i32 %add.i222 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv35) #8, !srcloc !90
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %data, align 2
  %25 = lshr i16 %24, 8
  %conv39 = trunc i16 %25 to i8
  %26 = ptrtoint ptr %base29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base29, align 8
  %add42 = add i32 %27, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %and.i223 = and i32 %add42, 1048575
  %add.i224 = or i32 %and.i223, -18874368
  %28 = inttoptr i32 %add.i224 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv39) #8, !srcloc !90
  br label %if.end43

if.end43:                                         ; preds = %if.then34, %sw.bb28.if.end43_crit_edge
  %conv46 = zext i1 %cmp to i8
  %29 = or i8 %conv5, %conv46
  %or47 = or i8 %29, 8
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  %base50 = getelementptr inbounds %struct.nforce2_smbus, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %base50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base50, align 8
  %add51 = add i32 %31, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %and.i225 = and i32 %add51, 1048575
  %add.i226 = or i32 %and.i225, -18874368
  %32 = inttoptr i32 %add.i226 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %command) #8, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp53 = icmp eq i8 %read_write, 0
  br i1 %cmp53, label %if.then55, label %sw.bb49.if.end74_crit_edge

sw.bb49.if.end74_crit_edge:                       ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then55:                                        ; preds = %sw.bb49
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %data, align 2
  %35 = add i8 %34, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %35)
  %36 = icmp ult i8 %35, -32
  br i1 %36, label %do.end, label %if.end64

do.end:                                           ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %conv56 = zext i8 %34 to i32
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %conv56) #12
  br label %cleanup

if.end64:                                         ; preds = %if.then55
  %37 = ptrtoint ptr %base50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base50, align 8
  %add66 = add i32 %38, 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %and.i227 = and i32 %add66, 1048575
  %add.i228 = or i32 %and.i227, -18874368
  %39 = inttoptr i32 %add.i228 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %34) #8, !srcloc !90
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end64
  %i.0245 = phi i32 [ 0, %if.end64 ], [ %add69, %for.body.for.body_crit_edge ]
  %add69 = add nuw nsw i32 %i.0245, 1
  %arrayidx70 = getelementptr [34 x i8], ptr %data, i32 0, i32 %add69
  %40 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx70, align 1
  %42 = ptrtoint ptr %base50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %base50, align 8
  %add72 = add nuw nsw i32 %i.0245, 4
  %add73 = add i32 %add72, %43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %and.i229 = and i32 %add73, 1048575
  %add.i230 = or i32 %and.i229, -18874368
  %44 = inttoptr i32 %add.i230 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %41) #8, !srcloc !90
  %exitcond.not = icmp eq i32 %add69, 32
  br i1 %exitcond.not, label %for.body.if.end74_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end74_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.end74:                                         ; preds = %for.body.if.end74_crit_edge, %sw.bb49.if.end74_crit_edge
  %conv77 = zext i1 %cmp to i8
  %45 = or i8 %conv5, %conv77
  %or78 = or i8 %45, 10
  br label %sw.epilog

do.end82:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev83 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83, ptr noundef nonnull @.str.22, i32 noundef %size) #12
  br label %cleanup

sw.epilog:                                        ; preds = %if.end74, %if.end43, %if.end24, %if.end, %sw.bb
  %read_write.addr.0 = phi i8 [ %read_write, %if.end74 ], [ %read_write, %if.end43 ], [ %read_write, %if.end24 ], [ %read_write, %if.end ], [ 0, %sw.bb ]
  %protocol.0 = phi i8 [ %or78, %if.end74 ], [ %or47, %if.end43 ], [ %or26, %if.end24 ], [ %or13, %if.end ], [ %or, %sw.bb ]
  %addr.tr = trunc i16 %addr to i8
  %conv86 = shl i8 %addr.tr, 1
  %base87 = getelementptr inbounds %struct.nforce2_smbus, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %base87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base87, align 8
  %add88 = add i32 %47, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %and.i231 = and i32 %add88, 1048575
  %add.i232 = or i32 %and.i231, -18874368
  %48 = inttoptr i32 %add.i232 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %conv86) #8, !srcloc !90
  %49 = ptrtoint ptr %base87 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %base87, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %and.i233 = and i32 %50, 1048575
  %add.i234 = or i32 %and.i233, -18874368
  %51 = inttoptr i32 %add.i234 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %protocol.0) #8, !srcloc !90
  %call = tail call fastcc i32 @nforce2_check_status(ptr noundef %adap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool91.not = icmp eq i32 %call, 0
  br i1 %tobool91.not, label %if.end93, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end93:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write.addr.0)
  %cmp95 = icmp eq i8 %read_write.addr.0, 0
  br i1 %cmp95, label %if.end93.cleanup_crit_edge, label %if.end98

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end98:                                         ; preds = %if.end93
  %52 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %size, label %if.end98.cleanup_crit_edge [
    i32 1, label %if.end98.sw.bb99_crit_edge
    i32 2, label %if.end98.sw.bb99_crit_edge249
    i32 3, label %sw.bb103
    i32 5, label %sw.bb116
  ]

if.end98.sw.bb99_crit_edge249:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb99

if.end98.sw.bb99_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb99

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb99:                                          ; preds = %if.end98.sw.bb99_crit_edge, %if.end98.sw.bb99_crit_edge249
  %53 = ptrtoint ptr %base87 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base87, align 8
  %add101 = add i32 %54, 4
  %and.i235 = and i32 %add101, 1048575
  %add.i236 = or i32 %and.i235, -18874368
  %55 = inttoptr i32 %add.i236 to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %57 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %data, align 2
  br label %cleanup

sw.bb103:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %base87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base87, align 8
  %add105 = add i32 %59, 4
  %and.i237 = and i32 %add105, 1048575
  %add.i238 = or i32 %and.i237, -18874368
  %60 = inttoptr i32 %add.i238 to ptr
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %conv107 = zext i8 %61 to i16
  %62 = ptrtoint ptr %base87 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %base87, align 8
  %add110 = add i32 %63, 5
  %and.i239 = and i32 %add110, 1048575
  %add.i240 = or i32 %and.i239, -18874368
  %64 = inttoptr i32 %add.i240 to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %conv112 = zext i8 %65 to i16
  %shl113 = shl nuw i16 %conv112, 8
  %or114 = or i16 %shl113, %conv107
  %66 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %or114, ptr %data, align 2
  br label %cleanup

sw.bb116:                                         ; preds = %if.end98
  %67 = ptrtoint ptr %base87 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %base87, align 8
  %add118 = add i32 %68, 36
  %and.i241 = and i32 %add118, 1048575
  %add.i242 = or i32 %and.i241, -18874368
  %69 = inttoptr i32 %add.i242 to ptr
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %69) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %conv120 = zext i8 %70 to i32
  %71 = add i8 %70, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %71)
  %72 = icmp ult i8 %71, -32
  br i1 %72, label %do.end130, label %sw.bb116.for.body138_crit_edge

sw.bb116.for.body138_crit_edge:                   ; preds = %sw.bb116
  br label %for.body138

do.end130:                                        ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #10
  %dev131 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev131, ptr noundef nonnull @.str.25, i32 noundef %conv120) #12
  br label %cleanup

for.body138:                                      ; preds = %for.body138.for.body138_crit_edge, %sw.bb116.for.body138_crit_edge
  %i.1247 = phi i32 [ %add143, %for.body138.for.body138_crit_edge ], [ 0, %sw.bb116.for.body138_crit_edge ]
  %73 = ptrtoint ptr %base87 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %base87, align 8
  %add140 = add nuw nsw i32 %i.1247, 4
  %add141 = add i32 %add140, %74
  %and.i243 = and i32 %add141, 1048575
  %add.i244 = or i32 %and.i243, -18874368
  %75 = inttoptr i32 %add.i244 to ptr
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %75) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %add143 = add nuw nsw i32 %i.1247, 1
  %arrayidx144 = getelementptr [34 x i8], ptr %data, i32 0, i32 %add143
  %77 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx144, align 1
  %exitcond248.not = icmp eq i32 %add143, %conv120
  br i1 %exitcond248.not, label %for.end147, label %for.body138.for.body138_crit_edge

for.body138.for.body138_crit_edge:                ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body138

for.end147:                                       ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %70, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end147, %do.end130, %sw.bb103, %sw.bb99, %if.end98.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end82, %do.end
  %retval.0 = phi i32 [ -95, %do.end82 ], [ -22, %do.end ], [ -71, %do.end130 ], [ %call, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end93.cleanup_crit_edge ], [ 0, %if.end98.cleanup_crit_edge ], [ 0, %for.end147 ], [ 0, %sw.bb103 ], [ 0, %sw.bb99 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nforce2_func(ptr nocapture noundef readonly %adapter) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %blockops = getelementptr inbounds %struct.nforce2_smbus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %blockops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blockops, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %or = select i1 %tobool.not, i32 8323080, i32 58654728
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nforce2_check_status(ptr noundef %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %base = getelementptr inbounds %struct.nforce2_smbus, ptr %1, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 0, %entry ], [ %inc, %land.rhs.do.body_crit_edge ]
  tail call void @msleep(i32 noundef 1) #8
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 8
  %add = add i32 %3, 1
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.rhs, label %if.end14

land.rhs:                                         ; preds = %do.body
  %inc = add nuw nsw i32 %timeout.0, 1
  %exitcond.not = icmp eq i32 %inc, 101
  br i1 %exitcond.not, label %do.body2, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body2:                                         ; preds = %land.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nforce2_check_status.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nforce2_check_status, %do.end10)) #8
          to label %if.then8 [label %do.end10], !srcloc !93

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nforce2_check_status.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.28) #8
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %do.body2
  %can_abort = getelementptr inbounds %struct.nforce2_smbus, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %can_abort to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %can_abort, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %do.end10.cleanup_crit_edge, label %if.then12

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @nforce2_abort(ptr noundef %adap)
  br label %cleanup

if.end14:                                         ; preds = %do.body
  %conv = zext i8 %5 to i32
  %8 = and i32 %conv, 159
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %8)
  %9 = icmp eq i32 %8, 128
  br i1 %9, label %if.end14.cleanup_crit_edge, label %do.body20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nforce2_check_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nforce2_check_status, %cleanup)) #8
          to label %if.then34 [label %cleanup], !srcloc !93

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %dev35 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nforce2_check_status.__UNIQUE_ID_ddebug298, ptr noundef %dev35, ptr noundef nonnull @.str.29, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body20, %if.end14.cleanup_crit_edge, %if.then12, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then12 ], [ -110, %do.end10.cleanup_crit_edge ], [ -5, %if.then34 ], [ 0, %if.end14.cleanup_crit_edge ], [ -5, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nforce2_abort(ptr noundef %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nforce2_abort.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nforce2_abort, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nforce2_abort.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.31) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %base = getelementptr inbounds %struct.nforce2_smbus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 8
  %add = add i32 %3, 62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 32) #8, !srcloc !90
  br label %do.body4

do.body4:                                         ; preds = %do.body4.do.body4_crit_edge, %do.end
  %timeout.0 = phi i32 [ 0, %do.end ], [ %inc, %do.body4.do.body4_crit_edge ]
  tail call void @msleep(i32 noundef 1) #8
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base, align 8
  %add6 = add i32 %6, 60
  %and.i28 = and i32 %add6, 1048575
  %add.i29 = or i32 %and.i28, -18874368
  %7 = inttoptr i32 %add.i29 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  %inc = add nuw nsw i32 %timeout.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %timeout.0)
  %cmp = icmp ult i32 %timeout.0, 100
  %or.cond = select i1 %tobool9.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.body4.do.body4_crit_edge, label %do.end11

do.body4.do.body4_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

do.end11:                                         ; preds = %do.body4
  br i1 %tobool9.not, label %do.end18, label %do.end11.if.end20_crit_edge

do.end11.if.end20_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end18:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.32) #12
  br label %if.end20

if.end20:                                         ; preds = %do.end18, %do.end11.if.end20_crit_edge
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base, align 8
  %add22 = add i32 %11, 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %and.i30 = and i32 %add22, 1048575
  %add.i31 = or i32 %and.i30, -18874368
  %12 = inttoptr i32 %add.i31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 1) #8, !srcloc !90
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__UNIQUE_ID_file292, !1, !"__UNIQUE_ID_file292", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_license293, !1, !"__UNIQUE_ID_license293", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 50, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 51, i32 1}
!7 = !{ptr @__initcall__kmod_i2c_nforce2__299_442_nforce2_driver_init6, !8, !"__initcall__kmod_i2c_nforce2__299_442_nforce2_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 442, i32 1}
!9 = !{ptr @__exitcall_nforce2_driver_exit, !8, !"__exitcall_nforce2_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 436, i32 11}
!13 = !{ptr @nforce2_driver, !14, !"nforce2_driver", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 435, i32 26}
!15 = !{ptr @nforce2_ids, !16, !"nforce2_ids", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 297, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 392, i32 65}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 398, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nforce2_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @nforce2_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 403, i32 7}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 332, i32 4}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nforce2_probe_smb._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @nforce2_probe_smb._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 347, i32 3}
!36 = !{ptr @nforce2_probe_smb._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @nforce2_probe_smb._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 357, i32 3}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 364, i32 2}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nforce2_probe_smb._entry.15, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @nforce2_probe_smb._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @smbus_algorithm, !46, !"smbus_algorithm", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 291, i32 35}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 224, i32 5}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @nforce2_access._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @nforce2_access._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 238, i32 3}
!54 = !{ptr @nforce2_access._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @nforce2_access._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 266, i32 4}
!58 = !{ptr @nforce2_access._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @nforce2_access._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 165, i32 3}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @nforce2_check_status.__UNIQUE_ID_ddebug297, !61, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 171, i32 3}
!66 = !{ptr @nforce2_check_status.__UNIQUE_ID_ddebug298, !65, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 140, i32 2}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @nforce2_abort.__UNIQUE_ID_ddebug296, !68, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 149, i32 3}
!73 = !{ptr @nforce2_abort._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @nforce2_abort._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 109, i32 12}
!77 = distinct !{null, !78, !"nforce2_dmi_blacklist2", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-nforce2.c", i32 107, i32 35}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"auto-init"}
!89 = !{i64 2152526027}
!90 = !{i64 4989971}
!91 = !{i64 4990366}
!92 = !{i64 2152524042}
!93 = !{i64 2148963738, i64 2148963743, i64 2148963756, i64 2148963800, i64 2148963834, i64 2148963855}
