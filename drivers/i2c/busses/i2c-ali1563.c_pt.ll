; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-ali1563.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-ali1563.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }

@__initcall__kmod_i2c_ali1563__296_440_ali1563_pci_driver_init6 = internal global ptr @ali1563_pci_driver_init, section ".initcall6.init", align 4
@ali1563_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @ali1563_id_table, ptr @ali1563_probe, ptr @ali1563_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ali1563_pci_driver_exit = internal global ptr @ali1563_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file297 = internal constant [48 x i8] c"i2c_ali1563.file=drivers/i2c/busses/i2c-ali1563\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [24 x i8] c"i2c_ali1563.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_ali1563\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ali1563_smbus\00", [18 x i8] zeroinitializer }, align 32
@ali1563_id_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4281, i32 5475, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ali1563_adapter = internal global { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 129, ptr @ali1563_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] zeroinitializer, %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SMBus ALi 1563 Adapter @ %04x\00", [34 x i8] zeroinitializer }, align 32
@ali1563_smba = internal global { i16, [30 x i8] } zeroinitializer, align 32
@ali1563_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 416, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ALi1563 SMBus probe failed (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ali1563_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-ali1563.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ali1563_probe._entry_ptr = internal global ptr @ali1563_probe._entry, section ".printk_index", align 4
@ali1563_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 343, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ali1563_smba Uninitialized\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ali1563_setup\00", [18 x i8] zeroinitializer }, align 32
@ali1563_setup._entry_ptr = internal global ptr @ali1563_setup._entry, section ".printk_index", align 4
@ali1563_setup._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.5, i32 349, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Host Controller not enabled\0A\00", [35 x i8] zeroinitializer }, align 32
@ali1563_setup._entry_ptr.12 = internal global ptr @ali1563_setup._entry.10, section ".printk_index", align 4
@ali1563_setup._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.5, i32 353, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"I/O space not enabled, trying manually\0A\00", [56 x i8] zeroinitializer }, align 32
@ali1563_setup._entry_ptr.15 = internal global ptr @ali1563_setup._entry.13, section ".printk_index", align 4
@ali1563_setup._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.5, i32 359, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"I/O space still not enabled, giving up\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ali1563_setup._entry_ptr.19 = internal global ptr @ali1563_setup._entry.16, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@ali1563_setup._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.9, ptr @.str.5, i32 371, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Could not allocate I/O space at 0x%04x\0A\00", [56 x i8] zeroinitializer }, align 32
@ali1563_setup._entry_ptr.22 = internal global ptr @ali1563_setup._entry.20, section ".printk_index", align 4
@ali1563_setup._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.9, ptr @.str.5, i32 374, ptr @.str.25, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Found ALi1563 SMBus at 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ali1563_setup._entry_ptr.26 = internal global ptr @ali1563_setup._entry.23, section ".printk_index", align 4
@ali1563_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @ali1563_access, ptr null, ptr @ali1563_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ali1563_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 247, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SMBus not idle. HST_STS = %02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ali1563_access\00", [17 x i8] zeroinitializer }, align 32
@ali1563_access._entry_ptr = internal global ptr @ali1563_access._entry, section ".printk_index", align 4
@ali1563_access._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.5, i32 268, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ali1563_access._entry_ptr.31 = internal global ptr @ali1563_access._entry.29, section ".printk_index", align 4
@ali1563_block_start.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 0, i8 35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ali1563_block_start\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Block (pre): STS=%02x, CNTL1=%02x, CNTL2=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@ali1563_block_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.5, i32 144, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ali1563: Trying to reset busy device\0A\00", [58 x i8] zeroinitializer }, align 32
@ali1563_block_start._entry_ptr = internal global ptr @ali1563_block_start._entry, section ".printk_index", align 4
@ali1563_block_start.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.5, ptr @.str.35, i8 0, i8 41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Block (post): STS=%02x, CNTL1=%02x, CNTL2=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@ali1563_block_start._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.5, i32 182, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SMBus Error: %s%s%s%s%s\0A\00", [39 x i8] zeroinitializer }, align 32
@ali1563_block_start._entry_ptr.38 = internal global ptr @ali1563_block_start._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Timeout \00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Transaction Failed \00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No response or Bus Collision \00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Device Error \00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Transaction Never Finished \00", [36 x i8] zeroinitializer }, align 32
@ali1563_transaction.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.5, ptr @.str.46, i8 0, i8 18, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ali1563_transaction\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"Transaction (pre): STS=%02x, CNTL1=%02x, CNTL2=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@ali1563_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.45, ptr @.str.5, i32 79, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@ali1563_transaction._entry_ptr = internal global ptr @ali1563_transaction._entry, section ".printk_index", align 4
@ali1563_transaction.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.5, ptr @.str.47, i8 0, i8 24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"Transaction (post): STS=%02x, CNTL1=%02x, CNTL2=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@ali1563_transaction._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.45, ptr @.str.5, i32 102, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Timeout - Trying to KILL transaction!\0A\00", [57 x i8] zeroinitializer }, align 32
@ali1563_transaction._entry_ptr.50 = internal global ptr @ali1563_transaction._entry.48, section ".printk_index", align 4
@ali1563_transaction._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.45, ptr @.str.5, i32 112, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Device error!\0A\00", [17 x i8] zeroinitializer }, align 32
@ali1563_transaction._entry_ptr.53 = internal global ptr @ali1563_transaction._entry.51, section ".printk_index", align 4
@ali1563_transaction._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.45, ptr @.str.5, i32 117, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bus collision!\0A\00", [16 x i8] zeroinitializer }, align 32
@ali1563_transaction._entry_ptr.56 = internal global ptr @ali1563_transaction._entry.54, section ".printk_index", align 4
@ali1563_transaction._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.45, ptr @.str.5, i32 123, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cleaning fail after KILL!\0A\00", [37 x i8] zeroinitializer }, align 32
@ali1563_transaction._entry_ptr.59 = internal global ptr @ali1563_transaction._entry.57, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"ali1563_pci_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 433, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 440, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 434, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"ali1563_id_table\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 426, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"ali1563_adapter\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 391, i32 27 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 407, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"ali1563_smba\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 63, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 416, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 343, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 349, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 353, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 358, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 370, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 374, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [18 x i8] c"ali1563_algorithm\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 386, i32 35 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 247, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 268, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 136, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 144, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 162, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 177, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 71, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 79, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 92, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 102, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 112, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 117, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-ali1563.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 123, i32 3 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_ali1563_pci_driver_exit, ptr @__initcall__kmod_i2c_ali1563__296_440_ali1563_pci_driver_init6, ptr @ali1563_access._entry, ptr @ali1563_access._entry.29, ptr @ali1563_access._entry_ptr, ptr @ali1563_access._entry_ptr.31, ptr @ali1563_block_start._entry, ptr @ali1563_block_start._entry.36, ptr @ali1563_block_start._entry_ptr, ptr @ali1563_block_start._entry_ptr.38, ptr @ali1563_pci_driver_exit, ptr @ali1563_probe._entry, ptr @ali1563_probe._entry_ptr, ptr @ali1563_setup._entry, ptr @ali1563_setup._entry.10, ptr @ali1563_setup._entry.13, ptr @ali1563_setup._entry.16, ptr @ali1563_setup._entry.20, ptr @ali1563_setup._entry.23, ptr @ali1563_setup._entry_ptr, ptr @ali1563_setup._entry_ptr.12, ptr @ali1563_setup._entry_ptr.15, ptr @ali1563_setup._entry_ptr.19, ptr @ali1563_setup._entry_ptr.22, ptr @ali1563_setup._entry_ptr.26, ptr @ali1563_transaction._entry, ptr @ali1563_transaction._entry.48, ptr @ali1563_transaction._entry.51, ptr @ali1563_transaction._entry.54, ptr @ali1563_transaction._entry.57, ptr @ali1563_transaction._entry_ptr, ptr @ali1563_transaction._entry_ptr.50, ptr @ali1563_transaction._entry_ptr.53, ptr @ali1563_transaction._entry_ptr.56, ptr @ali1563_transaction._entry_ptr.59, ptr @ali1563_pci_driver, ptr @.str, ptr @.str.1, ptr @ali1563_id_table, ptr @ali1563_adapter, ptr @.str.2, ptr @ali1563_smba, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @ali1563_algorithm, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_smba to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_setup._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_setup._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_setup._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_setup._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_setup._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_access._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_block_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_block_start._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_transaction._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_transaction._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_transaction._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali1563_transaction._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ali1563_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ali1563_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ali1563_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @ali1563_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ali1563_probe(ptr noundef %dev, ptr nocapture noundef readnone %id_table) #2 align 64 {
entry:
  %ctrl.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl.i) #8
  %0 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ctrl.i, align 2, !annotation !121
  %call.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 128, ptr noundef nonnull %ctrl.i) #8
  %1 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ctrl.i, align 2
  %3 = and i16 %2, -16
  store i16 %3, ptr @ali1563_smba, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2.i, ptr noundef nonnull @.str.8) #11
  br label %ali1563_setup.exit.thread

if.end.i:                                         ; preds = %entry
  %conv3.i = zext i16 %2 to i32
  %and4.i = and i32 %conv3.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10.i, ptr noundef nonnull @.str.11) #11
  br label %ali1563_setup.exit.thread

if.end11.i:                                       ; preds = %if.end.i
  %and13.i = and i32 %conv3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.end18.i, label %if.end11.i.if.end33.i_crit_edge

if.end11.i.if.end33.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

do.end18.i:                                       ; preds = %if.end11.i
  %dev19.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev19.i, ptr noundef nonnull @.str.14) #11
  %4 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ctrl.i, align 2
  %6 = or i16 %5, 1
  %call22.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 128, i16 noundef zeroext %6) #8
  %call23.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 128, ptr noundef nonnull %ctrl.i) #8
  %7 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ctrl.i, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool26.not.i = icmp eq i16 %9, 0
  br i1 %tobool26.not.i, label %do.end30.i, label %do.end18.i.if.end33.i_crit_edge

do.end18.i.if.end33.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

do.end30.i:                                       ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19.i, ptr noundef nonnull @.str.17) #11
  br label %ali1563_setup.exit.thread

if.end33.i:                                       ; preds = %do.end18.i.if.end33.i_crit_edge, %if.end11.i.if.end33.i_crit_edge
  %10 = load i16, ptr @ali1563_smba, align 2
  %conv39.i = zext i16 %10 to i32
  %11 = load ptr, ptr getelementptr inbounds (%struct.pci_driver, ptr @ali1563_pci_driver, i32 0, i32 1), align 4
  %call40.i = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv39.i, i32 noundef 16, ptr noundef %11, i32 noundef 0) #8
  %tobool41.not.i = icmp eq ptr %call40.i, null
  %dev46.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %12 = load i16, ptr @ali1563_smba, align 2
  %conv47.i = zext i16 %12 to i32
  br i1 %tobool41.not.i, label %do.end45.i, label %if.end

do.end45.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46.i, ptr noundef nonnull @.str.21, i32 noundef %conv47.i) #11
  br label %ali1563_setup.exit.thread

ali1563_setup.exit.thread:                        ; preds = %do.end45.i, %do.end30.i, %do.end9.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i) #8
  br label %do.end

if.end:                                           ; preds = %if.end33.i
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev46.i, ptr noundef nonnull @.str.24, i32 noundef %conv47.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i) #8
  store ptr %dev46.i, ptr getelementptr inbounds (%struct.i2c_adapter, ptr @ali1563_adapter, i32 0, i32 9, i32 1), align 8
  %13 = load i16, ptr @ali1563_smba, align 2
  %conv = zext i16 %13 to i32
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @ali1563_adapter, i32 0, i32 12), i32 noundef 48, ptr noundef nonnull @.str.2, i32 noundef %conv)
  %call3 = call i32 @i2c_add_adapter(ptr noundef nonnull @ali1563_adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %exit_shutdown

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

exit_shutdown:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load i16, ptr @ali1563_smba, align 2
  %conv.i = zext i16 %14 to i32
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv.i, i32 noundef 16) #8
  br label %do.end

do.end:                                           ; preds = %exit_shutdown, %ali1563_setup.exit.thread
  %error.0 = phi i32 [ %call3, %exit_shutdown ], [ -19, %ali1563_setup.exit.thread ]
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str.3, i32 noundef %error.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ali1563_remove(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @i2c_del_adapter(ptr noundef nonnull @ali1563_adapter) #8
  %0 = load i16, ptr @ali1563_smba, align 2
  %conv.i = zext i16 %0 to i32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv.i, i32 noundef 16) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ali1563_access(ptr noundef %a, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %rw, i8 noundef zeroext %cmd, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond:                                         ; preds = %for.body
  %dec = add nsw i32 %timeout.0165, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %timeout.0165 = phi i32 [ 500, %entry ], [ %dec, %for.cond.for.body_crit_edge ]
  %0 = load i16, ptr @ali1563_smba, align 2
  %conv = zext i16 %0 to i32
  %add.i = or i32 %conv, -18874368
  %1 = inttoptr i32 %add.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv1 = zext i8 %2 to i32
  %and = and i32 %conv1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.if.end5_crit_edge, label %for.cond

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %a, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %conv1) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %for.body.if.end5_crit_edge
  %3 = load i16, ptr @ali1563_smba, align 2
  %conv6 = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i133 = or i32 %conv6, -18874368
  %4 = inttoptr i32 %add.i133 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -1) #8, !srcloc !125
  %5 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %do.end14 [
    i32 0, label %if.end5.sw.epilog_crit_edge
    i32 1, label %if.end5.sw.epilog_crit_edge171
    i32 2, label %if.end5.sw.epilog_crit_edge172
    i32 3, label %if.end5.sw.epilog_crit_edge173
    i32 5, label %if.end5.sw.epilog_crit_edge174
  ]

if.end5.sw.epilog_crit_edge174:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end5.sw.epilog_crit_edge173:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end5.sw.epilog_crit_edge172:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end5.sw.epilog_crit_edge171:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.i2c_adapter, ptr %a, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.30, i32 noundef %size) #11
  br label %Done

sw.epilog:                                        ; preds = %if.end5.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge171, %if.end5.sw.epilog_crit_edge172, %if.end5.sw.epilog_crit_edge173, %if.end5.sw.epilog_crit_edge174
  %addr.tr = trunc i16 %addr to i8
  %shl = shl i8 %addr.tr, 1
  %and19 = and i8 %rw, 1
  %or = or i8 %and19, %shl
  %6 = load i16, ptr @ali1563_smba, align 2
  %conv21 = zext i16 %6 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i135 = add nuw nsw i32 %conv21, -18874364
  %7 = inttoptr i32 %add.i135 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %or) #8, !srcloc !125
  %8 = load i16, ptr @ali1563_smba, align 2
  %conv23 = zext i16 %8 to i32
  %add.i137 = add nuw nsw i32 %conv23, -18874366
  %9 = inttoptr i32 %add.i137 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %11 = and i8 %10, -57
  %size.tr = trunc i32 %size to i8
  %12 = shl nuw nsw i8 %size.tr, 3
  %conv30 = or i8 %11, %12
  %13 = load i16, ptr @ali1563_smba, align 2
  %conv31 = zext i16 %13 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i139 = add nuw nsw i32 %conv31, -18874366
  %14 = inttoptr i32 %add.i139 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv30) #8, !srcloc !125
  %15 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %size, label %sw.epilog.sw.epilog72_crit_edge [
    i32 1, label %sw.bb33
    i32 2, label %sw.bb40
    i32 3, label %sw.bb50
    i32 5, label %sw.bb68
  ]

sw.epilog.sw.epilog72_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog72

sw.bb33:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rw)
  %cmp = icmp eq i8 %rw, 0
  br i1 %cmp, label %if.then36, label %sw.bb33.sw.epilog72_crit_edge

sw.bb33.sw.epilog72_crit_edge:                    ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog72

if.then36:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %16 = load i16, ptr @ali1563_smba, align 2
  %conv37 = zext i16 %16 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i141 = add nuw nsw i32 %conv37, -18874363
  %17 = inttoptr i32 %add.i141 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %cmd) #8, !srcloc !125
  br label %sw.epilog72

sw.bb40:                                          ; preds = %sw.epilog
  %18 = load i16, ptr @ali1563_smba, align 2
  %conv41 = zext i16 %18 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i143 = add nuw nsw i32 %conv41, -18874365
  %19 = inttoptr i32 %add.i143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %cmd) #8, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rw)
  %cmp44 = icmp eq i8 %rw, 0
  br i1 %cmp44, label %if.then46, label %sw.bb40.sw.epilog72_crit_edge

sw.bb40.sw.epilog72_crit_edge:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog72

if.then46:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 2
  %22 = load i16, ptr @ali1563_smba, align 2
  %conv47 = zext i16 %22 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i145 = add nuw nsw i32 %conv47, -18874363
  %23 = inttoptr i32 %add.i145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %21) #8, !srcloc !125
  br label %sw.epilog72

sw.bb50:                                          ; preds = %sw.epilog
  %24 = load i16, ptr @ali1563_smba, align 2
  %conv51 = zext i16 %24 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i147 = add nuw nsw i32 %conv51, -18874365
  %25 = inttoptr i32 %add.i147 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %cmd) #8, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rw)
  %cmp54 = icmp eq i8 %rw, 0
  br i1 %cmp54, label %if.then56, label %sw.bb50.sw.epilog72_crit_edge

sw.bb50.sw.epilog72_crit_edge:                    ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog72

if.then56:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data, align 2
  %conv59 = trunc i16 %27 to i8
  %28 = load i16, ptr @ali1563_smba, align 2
  %conv60 = zext i16 %28 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i149 = add nuw nsw i32 %conv60, -18874363
  %29 = inttoptr i32 %add.i149 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %conv59) #8, !srcloc !125
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %data, align 2
  %32 = lshr i16 %31, 8
  %conv64 = trunc i16 %32 to i8
  %33 = load i16, ptr @ali1563_smba, align 2
  %conv65 = zext i16 %33 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i151 = add nuw nsw i32 %conv65, -18874362
  %34 = inttoptr i32 %add.i151 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv64) #8, !srcloc !125
  br label %sw.epilog72

sw.bb68:                                          ; preds = %sw.epilog
  %35 = load i16, ptr @ali1563_smba, align 2
  %conv69 = zext i16 %35 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i153 = add nuw nsw i32 %conv69, -18874365
  %36 = inttoptr i32 %add.i153 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %cmd) #8, !srcloc !125
  %37 = load i16, ptr @ali1563_smba, align 2
  %conv.i = zext i16 %37 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i.i = add nuw nsw i32 %conv.i, -18874367
  %38 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 64) #8, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rw)
  %cmp.i = icmp eq i8 %rw, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb68.if.end18.i_crit_edge

sw.bb68.if.end18.i_crit_edge:                     ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then.i:                                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp4.i = icmp eq i8 %40, 0
  %41 = tail call i8 @llvm.umin.i8(i8 %40, i8 32) #8
  %narrow.i = select i1 %cmp4.i, i8 1, i8 %41
  %len.0.i = zext i8 %narrow.i to i32
  %42 = load i16, ptr @ali1563_smba, align 2
  %conv12.i = zext i16 %42 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i86.i = add nuw nsw i32 %conv12.i, -18874363
  %43 = inttoptr i32 %add.i86.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %narrow.i) #8, !srcloc !125
  %arrayidx14.i = getelementptr [34 x i8], ptr %data, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx14.i, align 1
  %46 = load i16, ptr @ali1563_smba, align 2
  %conv15.i = zext i16 %46 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i88.i = add nuw nsw i32 %conv15.i, -18874361
  %47 = inttoptr i32 %add.i88.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %45) #8, !srcloc !125
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then.i, %sw.bb68.if.end18.i_crit_edge
  %len.1.i = phi i32 [ %len.0.i, %if.then.i ], [ 32, %sw.bb68.if.end18.i_crit_edge ]
  %48 = load i16, ptr @ali1563_smba, align 2
  %conv19.i = zext i16 %48 to i32
  %add.i90.i = add nuw nsw i32 %conv19.i, -18874366
  %49 = inttoptr i32 %add.i90.i to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %51 = or i8 %50, 5
  %52 = load i16, ptr @ali1563_smba, align 2
  %conv23.i = zext i16 %52 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i92.i = add nuw nsw i32 %conv23.i, -18874366
  %53 = inttoptr i32 %add.i92.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %51) #8, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1.i)
  %cmp25101.not.i = icmp eq i32 %len.1.i, 0
  br i1 %cmp25101.not.i, label %if.end18.i.ali1563_block.exit_crit_edge, label %if.end18.i.for.body.i_crit_edge

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  br label %for.body.i

if.end18.i.ali1563_block.exit_crit_edge:          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ali1563_block.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end18.i.for.body.i_crit_edge
  %len.2104.i = phi i32 [ %len.4.i, %for.inc.i.for.body.i_crit_edge ], [ %len.1.i, %if.end18.i.for.body.i_crit_edge ]
  %i.0102.i = phi i32 [ %inc.pre-phi.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end18.i.for.body.i_crit_edge ]
  br i1 %cmp.i, label %if.then30.i, label %if.else38.i

if.then30.i:                                      ; preds = %for.body.i
  %add31.i = add nuw nsw i32 %i.0102.i, 1
  %arrayidx32.i = getelementptr [34 x i8], ptr %data, i32 0, i32 %add31.i
  %54 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx32.i, align 1
  %56 = load i16, ptr @ali1563_smba, align 2
  %conv33.i = zext i16 %56 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i94.i = add nuw nsw i32 %conv33.i, -18874361
  %57 = inttoptr i32 %add.i94.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 %55) #8, !srcloc !125
  %call35.i = tail call fastcc i32 @ali1563_block_start(ptr noundef %a) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool.not.i, label %if.then30.i.for.inc.i_crit_edge, label %if.then30.i.ali1563_block.exit_crit_edge

if.then30.i.ali1563_block.exit_crit_edge:         ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ali1563_block.exit

if.then30.i.for.inc.i_crit_edge:                  ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else38.i:                                      ; preds = %for.body.i
  %call39.i = tail call fastcc i32 @ali1563_block_start(ptr noundef %a) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.else38.i.ali1563_block.exit_crit_edge

if.else38.i.ali1563_block.exit_crit_edge:         ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ali1563_block.exit

if.end42.i:                                       ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0102.i)
  %cmp43.i = icmp eq i32 %i.0102.i, 0
  br i1 %cmp43.i, label %if.then45.i, label %if.end42.i.if.end59.i_crit_edge

if.end42.i.if.end59.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i

if.then45.i:                                      ; preds = %if.end42.i
  %58 = load i16, ptr @ali1563_smba, align 2
  %conv46.i = zext i16 %58 to i32
  %add.i96.i = add nuw nsw i32 %conv46.i, -18874363
  %59 = inttoptr i32 %add.i96.i to ptr
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %59) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp50.i = icmp eq i8 %60, 0
  br i1 %cmp50.i, label %if.then45.i.if.end59.i_crit_edge, label %if.else53.i

if.then45.i.if.end59.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i

if.else53.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = tail call i8 @llvm.umin.i8(i8 %60, i8 32) #8
  %62 = zext i8 %61 to i32
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else53.i, %if.then45.i.if.end59.i_crit_edge, %if.end42.i.if.end59.i_crit_edge
  %len.3.i = phi i32 [ %62, %if.else53.i ], [ %len.2104.i, %if.end42.i.if.end59.i_crit_edge ], [ 1, %if.then45.i.if.end59.i_crit_edge ]
  %63 = load i16, ptr @ali1563_smba, align 2
  %conv60.i = zext i16 %63 to i32
  %add.i98.i = add nuw nsw i32 %conv60.i, -18874361
  %64 = inttoptr i32 %add.i98.i to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %add63.i = add nuw nsw i32 %i.0102.i, 1
  %arrayidx64.i = getelementptr [34 x i8], ptr %data, i32 0, i32 %add63.i
  %66 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx64.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end59.i, %if.then30.i.for.inc.i_crit_edge
  %inc.pre-phi.i = phi i32 [ %add63.i, %if.end59.i ], [ %add31.i, %if.then30.i.for.inc.i_crit_edge ]
  %len.4.i = phi i32 [ %len.3.i, %if.end59.i ], [ %len.2104.i, %if.then30.i.for.inc.i_crit_edge ]
  %cmp25.i = icmp slt i32 %inc.pre-phi.i, %len.4.i
  br i1 %cmp25.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ali1563_block.exit_crit_edge

for.inc.i.ali1563_block.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ali1563_block.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ali1563_block.exit:                               ; preds = %for.inc.i.ali1563_block.exit_crit_edge, %if.else38.i.ali1563_block.exit_crit_edge, %if.then30.i.ali1563_block.exit_crit_edge, %if.end18.i.ali1563_block.exit_crit_edge
  %error.2.i = phi i32 [ 0, %if.end18.i.ali1563_block.exit_crit_edge ], [ 0, %for.inc.i.ali1563_block.exit_crit_edge ], [ %call35.i, %if.then30.i.ali1563_block.exit_crit_edge ], [ %call39.i, %if.else38.i.ali1563_block.exit_crit_edge ]
  %67 = load i16, ptr @ali1563_smba, align 2
  %conv66.i = zext i16 %67 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i100.i = add nuw nsw i32 %conv66.i, -18874367
  %68 = inttoptr i32 %add.i100.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 64) #8, !srcloc !125
  br label %Done

sw.epilog72:                                      ; preds = %if.then56, %sw.bb50.sw.epilog72_crit_edge, %if.then46, %sw.bb40.sw.epilog72_crit_edge, %if.then36, %sw.bb33.sw.epilog72_crit_edge, %sw.epilog.sw.epilog72_crit_edge
  %call73 = tail call fastcc i32 @ali1563_transaction(ptr noundef %a, i32 noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %sw.epilog72.Done_crit_edge

sw.epilog72.Done_crit_edge:                       ; preds = %sw.epilog72
  call void @__sanitizer_cov_trace_pc() #10
  br label %Done

if.end76:                                         ; preds = %sw.epilog72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rw)
  %cmp78 = icmp eq i8 %rw, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp80 = icmp eq i32 %size, 0
  %or.cond = or i1 %cmp78, %cmp80
  br i1 %or.cond, label %if.end76.Done_crit_edge, label %if.end83

if.end76.Done_crit_edge:                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %Done

if.end83:                                         ; preds = %if.end76
  %69 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %size, label %if.end83.Done_crit_edge [
    i32 1, label %sw.bb84
    i32 2, label %sw.bb88
    i32 3, label %sw.bb92
  ]

if.end83.Done_crit_edge:                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %Done

sw.bb84:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %70 = load i16, ptr @ali1563_smba, align 2
  %conv85 = zext i16 %70 to i32
  %add.i155 = add nuw nsw i32 %conv85, -18874363
  %71 = inttoptr i32 %add.i155 to ptr
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %71) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %73 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %data, align 2
  br label %Done

sw.bb88:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %74 = load i16, ptr @ali1563_smba, align 2
  %conv89 = zext i16 %74 to i32
  %add.i157 = add nuw nsw i32 %conv89, -18874363
  %75 = inttoptr i32 %add.i157 to ptr
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %75) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %77 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %data, align 2
  br label %Done

sw.bb92:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %78 = load i16, ptr @ali1563_smba, align 2
  %conv93 = zext i16 %78 to i32
  %add.i159 = add nuw nsw i32 %conv93, -18874363
  %79 = inttoptr i32 %add.i159 to ptr
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv96 = zext i8 %80 to i16
  %81 = load i16, ptr @ali1563_smba, align 2
  %conv97 = zext i16 %81 to i32
  %add.i161 = add nuw nsw i32 %conv97, -18874362
  %82 = inttoptr i32 %add.i161 to ptr
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %82) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv100 = zext i8 %83 to i16
  %shl101 = shl nuw i16 %conv100, 8
  %add102 = or i16 %shl101, %conv96
  %84 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %add102, ptr %data, align 2
  br label %Done

Done:                                             ; preds = %sw.bb92, %sw.bb88, %sw.bb84, %if.end83.Done_crit_edge, %if.end76.Done_crit_edge, %sw.epilog72.Done_crit_edge, %ali1563_block.exit, %do.end14
  %error.0 = phi i32 [ -95, %do.end14 ], [ %call73, %sw.epilog72.Done_crit_edge ], [ 0, %if.end76.Done_crit_edge ], [ 0, %if.end83.Done_crit_edge ], [ 0, %sw.bb92 ], [ 0, %sw.bb88 ], [ 0, %sw.bb84 ], [ %error.2.i, %ali1563_block.exit ]
  ret i32 %error.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ali1563_func(ptr nocapture noundef readnone %a) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 58654720
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ali1563_transaction(ptr noundef %a, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali1563_transaction.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali1563_transaction, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %a, i32 0, i32 9
  %0 = load i16, ptr @ali1563_smba, align 2
  %conv = zext i16 %0 to i32
  %add.i = or i32 %conv, -18874368
  %1 = inttoptr i32 %add.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv5 = zext i8 %2 to i32
  %3 = load i16, ptr @ali1563_smba, align 2
  %conv6 = zext i16 %3 to i32
  %add.i186 = add nuw nsw i32 %conv6, -18874367
  %4 = inttoptr i32 %add.i186 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv9 = zext i8 %5 to i32
  %6 = load i16, ptr @ali1563_smba, align 2
  %conv10 = zext i16 %6 to i32
  %add.i188 = add nuw nsw i32 %conv10, -18874366
  %7 = inttoptr i32 %add.i188 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv13 = zext i8 %8 to i32
  %9 = load i16, ptr @ali1563_smba, align 2
  %conv14 = zext i16 %9 to i32
  %add.i190 = add nuw nsw i32 %conv14, -18874365
  %10 = inttoptr i32 %add.i190 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv17 = zext i8 %11 to i32
  %12 = load i16, ptr @ali1563_smba, align 2
  %conv18 = zext i16 %12 to i32
  %add.i192 = add nuw nsw i32 %conv18, -18874364
  %13 = inttoptr i32 %add.i192 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv21 = zext i8 %14 to i32
  %15 = load i16, ptr @ali1563_smba, align 2
  %conv22 = zext i16 %15 to i32
  %add.i194 = add nuw nsw i32 %conv22, -18874363
  %16 = inttoptr i32 %add.i194 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv25 = zext i8 %17 to i32
  %18 = load i16, ptr @ali1563_smba, align 2
  %conv26 = zext i16 %18 to i32
  %add.i196 = add nuw nsw i32 %conv26, -18874362
  %19 = inttoptr i32 %add.i196 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv29 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali1563_transaction.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %conv5, i32 noundef %conv9, i32 noundef %conv13, i32 noundef %conv17, i32 noundef %conv21, i32 noundef %conv25, i32 noundef %conv29) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %21 = load i16, ptr @ali1563_smba, align 2
  %conv30 = zext i16 %21 to i32
  %add.i198 = or i32 %conv30, -18874368
  %22 = inttoptr i32 %add.i198 to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %24 = and i8 %23, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool34.not = icmp eq i8 %24, 0
  br i1 %tobool34.not, label %do.end.if.end51_crit_edge, label %do.end38

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end38:                                         ; preds = %do.end
  %dev39 = getelementptr inbounds %struct.i2c_adapter, ptr %a, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.34) #11
  %or = or i8 %23, 28
  %25 = load i16, ptr @ali1563_smba, align 2
  %conv41 = zext i16 %25 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i200 = or i32 %conv41, -18874368
  %26 = inttoptr i32 %add.i200 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %or) #8, !srcloc !125
  %27 = load i16, ptr @ali1563_smba, align 2
  %conv43 = zext i16 %27 to i32
  %add.i202 = or i32 %conv43, -18874368
  %28 = inttoptr i32 %add.i202 to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %30 = and i8 %29, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool48.not = icmp eq i8 %30, 0
  br i1 %tobool48.not, label %do.end38.if.end51_crit_edge, label %do.end38.cleanup_crit_edge

do.end38.cleanup_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end38.if.end51_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end51:                                         ; preds = %do.end38.if.end51_crit_edge, %do.end.if.end51_crit_edge
  %31 = load i16, ptr @ali1563_smba, align 2
  %conv52 = zext i16 %31 to i32
  %add.i204 = add nuw nsw i32 %conv52, -18874366
  %32 = inttoptr i32 %add.i204 to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %34 = or i8 %33, 64
  %35 = load i16, ptr @ali1563_smba, align 2
  %conv58 = zext i16 %35 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i206 = add nuw nsw i32 %conv58, -18874366
  %36 = inttoptr i32 %add.i206 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %34) #8, !srcloc !125
  br label %do.body60

do.body60:                                        ; preds = %land.rhs.do.body60_crit_edge, %if.end51
  %timeout.0 = phi i32 [ 500, %if.end51 ], [ %dec, %land.rhs.do.body60_crit_edge ]
  tail call void @msleep(i32 noundef 1) #8
  %37 = load i16, ptr @ali1563_smba, align 2
  %conv62 = zext i16 %37 to i32
  %add.i208 = or i32 %conv62, -18874368
  %38 = inttoptr i32 %add.i208 to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv65 = zext i8 %39 to i32
  %and66 = and i32 %conv65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body60.do.body70_crit_edge, label %land.rhs

do.body60.do.body70_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

land.rhs:                                         ; preds = %do.body60
  %dec = add nsw i32 %timeout.0, -1
  %tobool68.not = icmp eq i32 %dec, 0
  br i1 %tobool68.not, label %land.rhs.do.body70_crit_edge, label %land.rhs.do.body60_crit_edge

land.rhs.do.body60_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body60

land.rhs.do.body70_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

do.body70:                                        ; preds = %land.rhs.do.body70_crit_edge, %do.body60.do.body70_crit_edge
  %timeout.1 = phi i32 [ 0, %land.rhs.do.body70_crit_edge ], [ %timeout.0, %do.body60.do.body70_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali1563_transaction.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali1563_transaction, %do.end116)) #8
          to label %if.then84 [label %do.end116], !srcloc !126

if.then84:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  %dev85 = getelementptr inbounds %struct.i2c_adapter, ptr %a, i32 0, i32 9
  %40 = load i16, ptr @ali1563_smba, align 2
  %conv86 = zext i16 %40 to i32
  %add.i210 = or i32 %conv86, -18874368
  %41 = inttoptr i32 %add.i210 to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv89 = zext i8 %42 to i32
  %43 = load i16, ptr @ali1563_smba, align 2
  %conv90 = zext i16 %43 to i32
  %add.i212 = add nuw nsw i32 %conv90, -18874367
  %44 = inttoptr i32 %add.i212 to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv93 = zext i8 %45 to i32
  %46 = load i16, ptr @ali1563_smba, align 2
  %conv94 = zext i16 %46 to i32
  %add.i214 = add nuw nsw i32 %conv94, -18874366
  %47 = inttoptr i32 %add.i214 to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv97 = zext i8 %48 to i32
  %49 = load i16, ptr @ali1563_smba, align 2
  %conv98 = zext i16 %49 to i32
  %add.i216 = add nuw nsw i32 %conv98, -18874365
  %50 = inttoptr i32 %add.i216 to ptr
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv101 = zext i8 %51 to i32
  %52 = load i16, ptr @ali1563_smba, align 2
  %conv102 = zext i16 %52 to i32
  %add.i218 = add nuw nsw i32 %conv102, -18874364
  %53 = inttoptr i32 %add.i218 to ptr
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv105 = zext i8 %54 to i32
  %55 = load i16, ptr @ali1563_smba, align 2
  %conv106 = zext i16 %55 to i32
  %add.i220 = add nuw nsw i32 %conv106, -18874363
  %56 = inttoptr i32 %add.i220 to ptr
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv109 = zext i8 %57 to i32
  %58 = load i16, ptr @ali1563_smba, align 2
  %conv110 = zext i16 %58 to i32
  %add.i222 = add nuw nsw i32 %conv110, -18874362
  %59 = inttoptr i32 %add.i222 to ptr
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %59) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv113 = zext i8 %60 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali1563_transaction.__UNIQUE_ID_ddebug293, ptr noundef %dev85, ptr noundef nonnull @.str.47, i32 noundef %conv89, i32 noundef %conv93, i32 noundef %conv97, i32 noundef %conv101, i32 noundef %conv105, i32 noundef %conv109, i32 noundef %conv113) #8
  br label %do.end116

do.end116:                                        ; preds = %if.then84, %do.body70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1)
  %tobool117.not = icmp eq i32 %timeout.1, 0
  %tobool117.not.not = xor i1 %tobool117.not, true
  %and118 = and i32 %conv65, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  %or.cond = select i1 %tobool117.not.not, i1 %tobool119.not, i1 false
  br i1 %or.cond, label %do.end116.cleanup_crit_edge, label %if.end121

do.end116.cleanup_crit_edge:                      ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end121:                                        ; preds = %do.end116
  br i1 %tobool117.not, label %do.end126, label %if.end121.if.end134_crit_edge

if.end121.if.end134_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

do.end126:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  %dev127 = getelementptr inbounds %struct.i2c_adapter, ptr %a, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev127, ptr noundef nonnull @.str.49) #11
  %61 = load i16, ptr @ali1563_smba, align 2
  %conv128 = zext i16 %61 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i224 = add nuw nsw i32 %conv128, -18874366
  %62 = inttoptr i32 %add.i224 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 4) #8, !srcloc !125
  %63 = load i16, ptr @ali1563_smba, align 2
  %conv130 = zext i16 %63 to i32
  %add.i226 = or i32 %conv130, -18874368
  %64 = inttoptr i32 %add.i226 to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv133 = zext i8 %65 to i32
  br label %if.end134

if.end134:                                        ; preds = %do.end126, %if.end121.if.end134_crit_edge
  %status.0 = phi i32 [ -5, %if.end121.if.end134_crit_edge ], [ -110, %do.end126 ]
  %data.0 = phi i32 [ %conv65, %if.end121.if.end134_crit_edge ], [ %conv133, %do.end126 ]
  %and135 = and i32 %data.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.end134.if.end145_crit_edge, label %if.then137

if.end134.if.end145_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then137:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not = icmp eq i32 %size, 0
  br i1 %cmp.not, label %if.then137.if.end145_crit_edge, label %do.end142

if.then137.if.end145_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

do.end142:                                        ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  %dev143 = getelementptr inbounds %struct.i2c_adapter, ptr %a, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev143, ptr noundef nonnull @.str.52) #11
  br label %if.end145

if.end145:                                        ; preds = %do.end142, %if.then137.if.end145_crit_edge, %if.end134.if.end145_crit_edge
  %status.1 = phi i32 [ %status.0, %if.end134.if.end145_crit_edge ], [ -6, %do.end142 ], [ -6, %if.then137.if.end145_crit_edge ]
  %and146 = and i32 %data.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end145.if.end155_crit_edge, label %do.end151

if.end145.if.end155_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

do.end151:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  %dev152 = getelementptr inbounds %struct.i2c_adapter, ptr %a, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev152, ptr noundef nonnull @.str.55) #11
  %66 = load i16, ptr @ali1563_smba, align 2
  %conv153 = zext i16 %66 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i228 = add nuw nsw i32 %conv153, -18874367
  %67 = inttoptr i32 %add.i228 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 -128) #8, !srcloc !125
  br label %if.end155

if.end155:                                        ; preds = %do.end151, %if.end145.if.end155_crit_edge
  %and156 = and i32 %data.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end155.cleanup_crit_edge, label %do.end161

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end161:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  %dev162 = getelementptr inbounds %struct.i2c_adapter, ptr %a, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev162, ptr noundef nonnull @.str.58) #11
  %68 = load i16, ptr @ali1563_smba, align 2
  %conv163 = zext i16 %68 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i230 = add nuw nsw i32 %conv163, -18874366
  %69 = inttoptr i32 %add.i230 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 0) #8, !srcloc !125
  br label %cleanup

cleanup:                                          ; preds = %do.end161, %if.end155.cleanup_crit_edge, %do.end116.cleanup_crit_edge, %do.end38.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end38.cleanup_crit_edge ], [ 0, %do.end116.cleanup_crit_edge ], [ %status.1, %do.end161 ], [ %status.1, %if.end155.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ali1563_block_start(ptr noundef %a) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali1563_block_start.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali1563_block_start, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %a, i32 0, i32 9
  %0 = load i16, ptr @ali1563_smba, align 2
  %conv = zext i16 %0 to i32
  %add.i = or i32 %conv, -18874368
  %1 = inttoptr i32 %add.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv5 = zext i8 %2 to i32
  %3 = load i16, ptr @ali1563_smba, align 2
  %conv6 = zext i16 %3 to i32
  %add.i173 = add nuw nsw i32 %conv6, -18874367
  %4 = inttoptr i32 %add.i173 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv9 = zext i8 %5 to i32
  %6 = load i16, ptr @ali1563_smba, align 2
  %conv10 = zext i16 %6 to i32
  %add.i175 = add nuw nsw i32 %conv10, -18874366
  %7 = inttoptr i32 %add.i175 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv13 = zext i8 %8 to i32
  %9 = load i16, ptr @ali1563_smba, align 2
  %conv14 = zext i16 %9 to i32
  %add.i177 = add nuw nsw i32 %conv14, -18874365
  %10 = inttoptr i32 %add.i177 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv17 = zext i8 %11 to i32
  %12 = load i16, ptr @ali1563_smba, align 2
  %conv18 = zext i16 %12 to i32
  %add.i179 = add nuw nsw i32 %conv18, -18874364
  %13 = inttoptr i32 %add.i179 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv21 = zext i8 %14 to i32
  %15 = load i16, ptr @ali1563_smba, align 2
  %conv22 = zext i16 %15 to i32
  %add.i181 = add nuw nsw i32 %conv22, -18874363
  %16 = inttoptr i32 %add.i181 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv25 = zext i8 %17 to i32
  %18 = load i16, ptr @ali1563_smba, align 2
  %conv26 = zext i16 %18 to i32
  %add.i183 = add nuw nsw i32 %conv26, -18874362
  %19 = inttoptr i32 %add.i183 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv29 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali1563_block_start.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %conv5, i32 noundef %conv9, i32 noundef %conv13, i32 noundef %conv17, i32 noundef %conv21, i32 noundef %conv25, i32 noundef %conv29) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %21 = load i16, ptr @ali1563_smba, align 2
  %conv30 = zext i16 %21 to i32
  %add.i185 = or i32 %conv30, -18874368
  %22 = inttoptr i32 %add.i185 to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %24 = and i8 %23, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool34.not = icmp eq i8 %24, 0
  br i1 %tobool34.not, label %do.end.if.end51_crit_edge, label %do.end38

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end38:                                         ; preds = %do.end
  %dev39 = getelementptr inbounds %struct.i2c_adapter, ptr %a, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev39, ptr noundef nonnull @.str.34) #11
  %or = or i8 %23, 28
  %25 = load i16, ptr @ali1563_smba, align 2
  %conv41 = zext i16 %25 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i187 = or i32 %conv41, -18874368
  %26 = inttoptr i32 %add.i187 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %or) #8, !srcloc !125
  %27 = load i16, ptr @ali1563_smba, align 2
  %conv43 = zext i16 %27 to i32
  %add.i189 = or i32 %conv43, -18874368
  %28 = inttoptr i32 %add.i189 to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %30 = and i8 %29, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool48.not = icmp eq i8 %30, 0
  br i1 %tobool48.not, label %do.end38.if.end51_crit_edge, label %do.end38.cleanup_crit_edge

do.end38.cleanup_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end38.if.end51_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end51:                                         ; preds = %do.end38.if.end51_crit_edge, %do.end.if.end51_crit_edge
  %data.0 = phi i8 [ %29, %do.end38.if.end51_crit_edge ], [ %23, %do.end.if.end51_crit_edge ]
  %or52 = or i8 %data.0, -128
  %31 = load i16, ptr @ali1563_smba, align 2
  %conv54 = zext i16 %31 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i191 = or i32 %conv54, -18874368
  %32 = inttoptr i32 %add.i191 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %or52) #8, !srcloc !125
  %33 = load i16, ptr @ali1563_smba, align 2
  %conv56 = zext i16 %33 to i32
  %add.i193 = add nuw nsw i32 %conv56, -18874366
  %34 = inttoptr i32 %add.i193 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %36 = or i8 %35, 64
  %37 = load i16, ptr @ali1563_smba, align 2
  %conv62 = zext i16 %37 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %add.i195 = add nuw nsw i32 %conv62, -18874366
  %38 = inttoptr i32 %add.i195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %36) #8, !srcloc !125
  br label %do.body64

do.body64:                                        ; preds = %land.rhs.do.body64_crit_edge, %if.end51
  %timeout.0 = phi i32 [ 500, %if.end51 ], [ %dec, %land.rhs.do.body64_crit_edge ]
  tail call void @msleep(i32 noundef 1) #8
  %39 = load i16, ptr @ali1563_smba, align 2
  %conv66 = zext i16 %39 to i32
  %add.i197 = or i32 %conv66, -18874368
  %40 = inttoptr i32 %add.i197 to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv69 = zext i8 %41 to i32
  %and70 = and i32 %conv69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %land.rhs, label %do.body64.do.body74_crit_edge

do.body64.do.body74_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body74

land.rhs:                                         ; preds = %do.body64
  %dec = add nsw i32 %timeout.0, -1
  %tobool72.not = icmp eq i32 %dec, 0
  br i1 %tobool72.not, label %land.rhs.do.body74_crit_edge, label %land.rhs.do.body64_crit_edge

land.rhs.do.body64_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

land.rhs.do.body74_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body74

do.body74:                                        ; preds = %land.rhs.do.body74_crit_edge, %do.body64.do.body74_crit_edge
  %timeout.1 = phi i32 [ %timeout.0, %do.body64.do.body74_crit_edge ], [ 0, %land.rhs.do.body74_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ali1563_block_start.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ali1563_block_start, %do.end120)) #8
          to label %if.then88 [label %do.end120], !srcloc !126

if.then88:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  %dev89 = getelementptr inbounds %struct.i2c_adapter, ptr %a, i32 0, i32 9
  %42 = load i16, ptr @ali1563_smba, align 2
  %conv90 = zext i16 %42 to i32
  %add.i199 = or i32 %conv90, -18874368
  %43 = inttoptr i32 %add.i199 to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv93 = zext i8 %44 to i32
  %45 = load i16, ptr @ali1563_smba, align 2
  %conv94 = zext i16 %45 to i32
  %add.i201 = add nuw nsw i32 %conv94, -18874367
  %46 = inttoptr i32 %add.i201 to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv97 = zext i8 %47 to i32
  %48 = load i16, ptr @ali1563_smba, align 2
  %conv98 = zext i16 %48 to i32
  %add.i203 = add nuw nsw i32 %conv98, -18874366
  %49 = inttoptr i32 %add.i203 to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv101 = zext i8 %50 to i32
  %51 = load i16, ptr @ali1563_smba, align 2
  %conv102 = zext i16 %51 to i32
  %add.i205 = add nuw nsw i32 %conv102, -18874365
  %52 = inttoptr i32 %add.i205 to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv105 = zext i8 %53 to i32
  %54 = load i16, ptr @ali1563_smba, align 2
  %conv106 = zext i16 %54 to i32
  %add.i207 = add nuw nsw i32 %conv106, -18874364
  %55 = inttoptr i32 %add.i207 to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv109 = zext i8 %56 to i32
  %57 = load i16, ptr @ali1563_smba, align 2
  %conv110 = zext i16 %57 to i32
  %add.i209 = add nuw nsw i32 %conv110, -18874363
  %58 = inttoptr i32 %add.i209 to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv113 = zext i8 %59 to i32
  %60 = load i16, ptr @ali1563_smba, align 2
  %conv114 = zext i16 %60 to i32
  %add.i211 = add nuw nsw i32 %conv114, -18874362
  %61 = inttoptr i32 %add.i211 to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %conv117 = zext i8 %62 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ali1563_block_start.__UNIQUE_ID_ddebug295, ptr noundef %dev89, ptr noundef nonnull @.str.35, i32 noundef %conv93, i32 noundef %conv97, i32 noundef %conv101, i32 noundef %conv105, i32 noundef %conv109, i32 noundef %conv113, i32 noundef %conv117) #8
  br label %do.end120

do.end120:                                        ; preds = %if.then88, %do.body74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1)
  %tobool121.not = icmp eq i32 %timeout.1, 0
  %tobool121.not.not = xor i1 %tobool121.not, true
  %and122 = and i32 %conv69, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  %or.cond = select i1 %tobool121.not.not, i1 %tobool123.not, i1 false
  br i1 %or.cond, label %do.end120.cleanup_crit_edge, label %if.end125

do.end120.cleanup_crit_edge:                      ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end125:                                        ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select = select i1 %tobool121.not, i32 -110, i32 -5
  %and129 = and i32 %conv69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  %cond146 = select i1 %tobool130.not, ptr @.str.39, ptr @.str.43
  %status.1 = select i1 %tobool130.not, i32 %spec.select, i32 -6
  %dev136 = getelementptr inbounds %struct.i2c_adapter, ptr %a, i32 0, i32 9
  %cond = select i1 %tobool121.not, ptr @.str.40, ptr @.str.39
  %and138 = and i32 %conv69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  %cond140 = select i1 %tobool139.not, ptr @.str.39, ptr @.str.41
  %and141 = and i32 %conv69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  %cond143 = select i1 %tobool142.not, ptr @.str.39, ptr @.str.42
  %cond151 = select i1 %tobool71.not, ptr @.str.44, ptr @.str.39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev136, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond, ptr noundef nonnull %cond140, ptr noundef nonnull %cond143, ptr noundef nonnull %cond146, ptr noundef nonnull %cond151) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %do.end120.cleanup_crit_edge, %do.end38.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %if.end125 ], [ -16, %do.end38.cleanup_crit_edge ], [ 0, %do.end120.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !79, !80, !81, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_i2c_ali1563__296_440_ali1563_pci_driver_init6, !1, !"__initcall__kmod_i2c_ali1563__296_440_ali1563_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 440, i32 1}
!2 = !{ptr @__exitcall_ali1563_pci_driver_exit, !1, !"__exitcall_ali1563_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file297, !4, !"__UNIQUE_ID_file297", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 442, i32 1}
!5 = !{ptr @__UNIQUE_ID_license298, !4, !"__UNIQUE_ID_license298", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 434, i32 11}
!9 = !{ptr @ali1563_pci_driver, !10, !"ali1563_pci_driver", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 433, i32 26}
!11 = !{ptr @ali1563_id_table, !12, !"ali1563_id_table", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 426, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 407, i32 4}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 416, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ali1563_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ali1563_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 343, i32 3}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ali1563_setup._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ali1563_setup._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 349, i32 3}
!30 = !{ptr @ali1563_setup._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ali1563_setup._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 353, i32 3}
!34 = !{ptr @ali1563_setup._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ali1563_setup._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 358, i32 4}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ali1563_setup._entry.16, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ali1563_setup._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 370, i32 3}
!43 = !{ptr @ali1563_setup._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ali1563_setup._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 374, i32 2}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ali1563_setup._entry.23, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ali1563_setup._entry_ptr.26, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @ali1563_adapter, !51, !"ali1563_adapter", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 391, i32 27}
!52 = !{ptr @ali1563_algorithm, !53, !"ali1563_algorithm", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 386, i32 35}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 247, i32 3}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ali1563_access._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ali1563_access._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 268, i32 3}
!61 = !{ptr @ali1563_access._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ali1563_access._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 136, i32 2}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ali1563_block_start.__UNIQUE_ID_ddebug294, !64, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 144, i32 3}
!69 = !{ptr @ali1563_block_start._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ali1563_block_start._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 162, i32 2}
!73 = !{ptr @ali1563_block_start.__UNIQUE_ID_ddebug295, !72, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 177, i32 2}
!76 = !{ptr @ali1563_block_start._entry.36, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ali1563_block_start._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 71, i32 2}
!86 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ali1563_transaction.__UNIQUE_ID_ddebug292, !85, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!88 = !{ptr @ali1563_transaction._entry, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 79, i32 3}
!90 = !{ptr @ali1563_transaction._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 92, i32 2}
!93 = !{ptr @ali1563_transaction.__UNIQUE_ID_ddebug293, !92, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 102, i32 3}
!96 = !{ptr @ali1563_transaction._entry.48, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ali1563_transaction._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 112, i32 4}
!100 = !{ptr @ali1563_transaction._entry.51, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ali1563_transaction._entry_ptr.53, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 117, i32 3}
!104 = !{ptr @ali1563_transaction._entry.54, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ali1563_transaction._entry_ptr.56, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 123, i32 3}
!108 = !{ptr @ali1563_transaction._entry.57, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ali1563_transaction._entry_ptr.59, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @ali1563_smba, !111, !"ali1563_smba", i1 false, i1 false}
!111 = !{!"../drivers/i2c/busses/i2c-ali1563.c", i32 63, i32 23}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"auto-init"}
!122 = !{i64 6840368}
!123 = !{i64 2154366554}
!124 = !{i64 2154368539}
!125 = !{i64 6839973}
!126 = !{i64 2148962729, i64 2148962734, i64 2148962747, i64 2148962791, i64 2148962825, i64 2148962846}
