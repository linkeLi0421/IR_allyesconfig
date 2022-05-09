; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-amd756.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-amd756.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+amd756_smbus\22, \22a\22\09"
module asm "\09.weak\09__crc_amd756_smbus\09\09\09\09"
module asm "\09.long\09__crc_amd756_smbus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amd756_smbus:\09\09\09\09\09"
module asm "\09.asciz \09\22amd756_smbus\22\09\09\09\09\09"
module asm "__kstrtabns_amd756_smbus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }

@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @amd756_access, ptr null, ptr @amd756_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@amd756_smbus = dso_local global { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 129, ptr @smbus_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] zeroinitializer, %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@__initcall__kmod_i2c_amd756__303_396_amd756_driver_init6 = internal global ptr @amd756_driver_init, section ".initcall6.init", align 4
@amd756_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.20, ptr @amd756_ids, ptr @amd756_probe, ptr @amd756_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_amd756_driver_exit = internal global ptr @amd756_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [52 x i8] c"i2c_amd756.author=Merlin Hughes <merlin@merlin.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [74 x i8] c"i2c_amd756.description=AMD756/766/768/8111 and nVidia nForce SMBus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [46 x i8] c"i2c_amd756.file=drivers/i2c/busses/i2c-amd756\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [23 x i8] c"i2c_amd756.license=GPL\00", section ".modinfo", align 1
@__kstrtab_amd756_smbus = external dso_local constant [0 x i8], align 1
@__kstrtabns_amd756_smbus = external dso_local constant [0 x i8], align 1
@__ksymtab_amd756_smbus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amd756_smbus to i32), ptr @__kstrtab_amd756_smbus, ptr @__kstrtabns_amd756_smbus }, section "___ksymtab+amd756_smbus", align 4
@amd756_ioport = internal global { i16, [30 x i8] } zeroinitializer, align 32
@amd756_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 236, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amd756_access\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-amd756.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amd756_access._entry_ptr = internal global ptr @amd756_access._entry, section ".printk_index", align 4
@amd756_transaction.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_amd756\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amd756_transaction\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Transaction (pre): GS=%04x, GE=%04x, ADD=%04x, DAT=%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@amd756_transaction.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 27, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SMBus busy (%04x). Waiting...\0A\00", [33 x i8] zeroinitializer }, align 32
@amd756_transaction.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 29, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Busy wait timeout (%04x)\0A\00", [38 x i8] zeroinitializer }, align 32
@amd756_transaction.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 33, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Completion timeout!\0A\00", [43 x i8] zeroinitializer }, align 32
@amd756_transaction.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.11, i8 0, i8 35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SMBus Protocol error (no response)!\0A\00", [59 x i8] zeroinitializer }, align 32
@amd756_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SMBus collision!\0A\00", [46 x i8] zeroinitializer }, align 32
@amd756_transaction._entry_ptr = internal global ptr @amd756_transaction._entry, section ".printk_index", align 4
@amd756_transaction.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.13, i8 0, i8 37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SMBus protocol timeout!\0A\00", [39 x i8] zeroinitializer }, align 32
@amd756_transaction.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.14, i8 0, i8 38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SMBus protocol success!\0A\00", [39 x i8] zeroinitializer }, align 32
@amd756_transaction.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.15, i8 0, i8 40, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed reset at end of transaction (%04x)\0A\00", [53 x i8] zeroinitializer }, align 32
@amd756_transaction.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.16, i8 0, i8 42, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Transaction (post): GS=%04x, GE=%04x, ADD=%04x, DAT=%04x\0A\00", [38 x i8] zeroinitializer }, align 32
@amd756_transaction._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.2, i32 173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Sending abort\0A\00", [17 x i8] zeroinitializer }, align 32
@amd756_transaction._entry_ptr.19 = internal global ptr @amd756_transaction._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amd756_smbus\00", [19 x i8] zeroinitializer }, align 32
@amd756_ids = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 29707, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 29715, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4130, i32 29763, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4130, i32 29803, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4318, i32 436, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@amd756_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 322, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Only one device supported (you have a strange motherboard, btw)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amd756_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@amd756_probe._entry_ptr = internal global ptr @amd756_probe._entry, section ".printk_index", align 4
@amd756_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.2, i32 339, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error: SMBus controller I/O not enabled!\0A\00", [54 x i8] zeroinitializer }, align 32
@amd756_probe._entry_ptr.26 = internal global ptr @amd756_probe._entry.24, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@amd756_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.2, i32 357, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SMB region 0x%x already in use!\0A\00", [63 x i8] zeroinitializer }, align 32
@amd756_probe._entry_ptr.29 = internal global ptr @amd756_probe._entry.27, section ".printk_index", align 4
@amd756_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.30, i8 0, i8 90, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SMBREV = 0x%X\0A\00", [17 x i8] zeroinitializer }, align 32
@amd756_probe.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.31, i8 0, i8 90, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AMD756_smba = 0x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SMBus %s adapter at %04x\00", [39 x i8] zeroinitializer }, align 32
@chipname = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AMD756\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AMD766\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AMD768\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nVidia nForce\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AMD8111\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 281, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"amd756_smbus\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 286, i32 20 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"amd756_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 389, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"amd756_ioport\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 73, i32 23 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 236, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 102, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 109, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 117, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 134, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 140, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 145, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 150, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 154, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 160, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 165, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 173, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 390, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant [11 x i8] c"amd756_ids\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 298, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 321, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 338, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 356, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 362, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 363, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 369, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [9 x i8] c"chipname\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 293, i32 20 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 294, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 294, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 294, i32 22 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 295, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-amd756.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 295, i32 19 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_amd756_driver_exit, ptr @__initcall__kmod_i2c_amd756__303_396_amd756_driver_init6, ptr @__ksymtab_amd756_smbus, ptr @amd756_access._entry, ptr @amd756_access._entry_ptr, ptr @amd756_driver_exit, ptr @amd756_probe._entry, ptr @amd756_probe._entry.24, ptr @amd756_probe._entry.27, ptr @amd756_probe._entry_ptr, ptr @amd756_probe._entry_ptr.26, ptr @amd756_probe._entry_ptr.29, ptr @amd756_transaction._entry, ptr @amd756_transaction._entry.17, ptr @amd756_transaction._entry_ptr, ptr @amd756_transaction._entry_ptr.19, ptr @smbus_algorithm, ptr @amd756_smbus, ptr @amd756_driver, ptr @amd756_ioport, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @amd756_ids, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @chipname, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd756_smbus to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd756_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd756_ioport to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd756_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd756_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd756_transaction._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd756_ids to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd756_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd756_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd756_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chipname to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amd756_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @amd756_driver, ptr noundef null, ptr noundef nonnull @.str.5) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @amd756_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @amd756_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd756_access(ptr noundef %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb19
    i32 3, label %sw.bb39
    i32 5, label %sw.bb58
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = shl i16 %addr, 1
  %2 = and i16 %1, 254
  %3 = and i8 %read_write, 1
  %and2 = zext i8 %3 to i16
  %or = or i16 %2, %and2
  %4 = load i16, ptr @amd756_ioport, align 2
  %conv4 = zext i16 %4 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %5 = shl nuw i16 %or, 8
  %add.i = add nuw nsw i32 %conv4, -18874364
  %6 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 %5) #8, !srcloc !113
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %7 = shl i16 %addr, 1
  %8 = and i16 %7, 254
  %9 = and i8 %read_write, 1
  %10 = zext i8 %9 to i16
  %conv12 = or i16 %8, %10
  %11 = load i16, ptr @amd756_ioport, align 2
  %conv13 = zext i16 %11 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %12 = shl nuw i16 %conv12, 8
  %add.i193 = add nuw nsw i32 %conv13, -18874364
  %13 = inttoptr i32 %add.i193 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %12) #8, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp = icmp eq i8 %read_write, 0
  br i1 %cmp, label %if.then, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load i16, ptr @amd756_ioport, align 2
  %conv17 = zext i16 %14 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %add.i195 = add nuw nsw i32 %conv17, -18874362
  %15 = inttoptr i32 %add.i195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %command) #8, !srcloc !115
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %16 = shl i16 %addr, 1
  %17 = and i16 %16, 254
  %18 = and i8 %read_write, 1
  %19 = zext i8 %18 to i16
  %conv26 = or i16 %17, %19
  %20 = load i16, ptr @amd756_ioport, align 2
  %conv27 = zext i16 %20 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %21 = shl nuw i16 %conv26, 8
  %add.i197 = add nuw nsw i32 %conv27, -18874364
  %22 = inttoptr i32 %add.i197 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 %21) #8, !srcloc !113
  %23 = load i16, ptr @amd756_ioport, align 2
  %conv29 = zext i16 %23 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %add.i199 = add nuw nsw i32 %conv29, -18874360
  %24 = inttoptr i32 %add.i199 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %command) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp32 = icmp eq i8 %read_write, 0
  br i1 %cmp32, label %if.then34, label %sw.bb19.sw.epilog_crit_edge

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then34:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data, align 2
  %conv35 = zext i8 %26 to i16
  %27 = load i16, ptr @amd756_ioport, align 2
  %conv36 = zext i16 %27 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %28 = shl nuw i16 %conv35, 8
  %add.i201 = add nuw nsw i32 %conv36, -18874362
  %29 = inttoptr i32 %add.i201 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %29, i16 %28) #8, !srcloc !113
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  %30 = shl i16 %addr, 1
  %31 = and i16 %30, 254
  %32 = and i8 %read_write, 1
  %33 = zext i8 %32 to i16
  %conv46 = or i16 %31, %33
  %34 = load i16, ptr @amd756_ioport, align 2
  %conv47 = zext i16 %34 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %35 = shl nuw i16 %conv46, 8
  %add.i203 = add nuw nsw i32 %conv47, -18874364
  %36 = inttoptr i32 %add.i203 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %36, i16 %35) #8, !srcloc !113
  %37 = load i16, ptr @amd756_ioport, align 2
  %conv49 = zext i16 %37 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %add.i205 = add nuw nsw i32 %conv49, -18874360
  %38 = inttoptr i32 %add.i205 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %command) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp52 = icmp eq i8 %read_write, 0
  br i1 %cmp52, label %if.then54, label %sw.bb39.sw.epilog_crit_edge

sw.bb39.sw.epilog_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then54:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %data, align 2
  %41 = load i16, ptr @amd756_ioport, align 2
  %conv55 = zext i16 %41 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %42 = tail call i16 @llvm.bswap.i16(i16 %40) #8
  %add.i207 = add nuw nsw i32 %conv55, -18874362
  %43 = inttoptr i32 %add.i207 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %43, i16 %42) #8, !srcloc !113
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  %44 = shl i16 %addr, 1
  %45 = and i16 %44, 254
  %46 = and i8 %read_write, 1
  %47 = zext i8 %46 to i16
  %conv65 = or i16 %45, %47
  %48 = load i16, ptr @amd756_ioport, align 2
  %conv66 = zext i16 %48 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %49 = shl nuw i16 %conv65, 8
  %add.i209 = add nuw nsw i32 %conv66, -18874364
  %50 = inttoptr i32 %add.i209 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %50, i16 %49) #8, !srcloc !113
  %51 = load i16, ptr @amd756_ioport, align 2
  %conv68 = zext i16 %51 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %add.i211 = add nuw nsw i32 %conv68, -18874360
  %52 = inttoptr i32 %add.i211 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %command) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp71 = icmp eq i8 %read_write, 0
  br i1 %cmp71, label %if.then73, label %sw.bb58.sw.epilog_crit_edge

sw.bb58.sw.epilog_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then73:                                        ; preds = %sw.bb58
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %data, align 2
  %55 = tail call i8 @llvm.umin.i8(i8 %54, i8 32)
  %conv83 = zext i8 %55 to i16
  %56 = load i16, ptr @amd756_ioport, align 2
  %conv84 = zext i16 %56 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %57 = shl nuw nsw i16 %conv83, 8
  %add.i213 = add nuw nsw i32 %conv84, -18874362
  %58 = inttoptr i32 %add.i213 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %58, i16 %57) #8, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp86.not228 = icmp eq i8 %55, 0
  br i1 %cmp86.not228, label %if.then73.sw.epilog_crit_edge, label %for.body.preheader

if.then73.sw.epilog_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.preheader:                               ; preds = %if.then73
  %narrow = add nuw nsw i8 %55, 1
  %59 = zext i8 %narrow to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0229 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %arrayidx88 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.0229
  %60 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx88, align 1
  %62 = load i16, ptr @amd756_ioport, align 2
  %conv89 = zext i16 %62 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %add.i215 = add nuw nsw i32 %conv89, -18874359
  %63 = inttoptr i32 %add.i215 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %61) #8, !srcloc !115
  %inc = add nuw nsw i32 %i.0229, 1
  %exitcond = icmp eq i32 %inc, %59
  br i1 %exitcond, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %size) #11
  br label %cleanup

sw.epilog:                                        ; preds = %for.body.sw.epilog_crit_edge, %if.then73.sw.epilog_crit_edge, %sw.bb58.sw.epilog_crit_edge, %if.then54, %sw.bb39.sw.epilog_crit_edge, %if.then34, %sw.bb19.sw.epilog_crit_edge, %if.then, %sw.bb5.sw.epilog_crit_edge, %sw.bb
  %64 = trunc i32 %size to i16
  %65 = load i16, ptr @amd756_ioport, align 2
  %conv94 = zext i16 %65 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %conv93 = shl i16 %64, 8
  %66 = and i16 %conv93, 1792
  %add.i217 = add nuw nsw i32 %conv94, -18874366
  %67 = inttoptr i32 %add.i217 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %67, i16 %66) #8, !srcloc !113
  %call = tail call fastcc i32 @amd756_transaction(ptr noundef %adap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end97, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp99 = icmp eq i8 %read_write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp101 = icmp eq i32 %size, 0
  %or.cond = or i1 %cmp99, %cmp101
  br i1 %or.cond, label %if.end97.cleanup_crit_edge, label %if.end104

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end104:                                        ; preds = %if.end97
  %68 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %size, label %if.end104.cleanup_crit_edge [
    i32 1, label %sw.bb105
    i32 2, label %sw.bb110
    i32 3, label %sw.bb115
    i32 5, label %sw.bb119
  ]

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb105:                                         ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %69 = load i16, ptr @amd756_ioport, align 2
  %conv106 = zext i16 %69 to i32
  %add.i219 = add nuw nsw i32 %conv106, -18874362
  %70 = inttoptr i32 %add.i219 to ptr
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %70) #8, !srcloc !116
  %72 = lshr i16 %71, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %conv109 = trunc i16 %72 to i8
  %73 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv109, ptr %data, align 2
  br label %cleanup

sw.bb110:                                         ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %74 = load i16, ptr @amd756_ioport, align 2
  %conv111 = zext i16 %74 to i32
  %add.i221 = add nuw nsw i32 %conv111, -18874362
  %75 = inttoptr i32 %add.i221 to ptr
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %75) #8, !srcloc !116
  %77 = lshr i16 %76, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %conv114 = trunc i16 %77 to i8
  %78 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv114, ptr %data, align 2
  br label %cleanup

sw.bb115:                                         ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %79 = load i16, ptr @amd756_ioport, align 2
  %conv116 = zext i16 %79 to i32
  %add.i223 = add nuw nsw i32 %conv116, -18874362
  %80 = inttoptr i32 %add.i223 to ptr
  %81 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %80) #8, !srcloc !116
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %83 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %data, align 2
  br label %cleanup

sw.bb119:                                         ; preds = %if.end104
  %84 = load i16, ptr @amd756_ioport, align 2
  %conv120 = zext i16 %84 to i32
  %add.i225 = add nuw nsw i32 %conv120, -18874362
  %85 = inttoptr i32 %add.i225 to ptr
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %85) #8, !srcloc !116
  %87 = lshr i16 %86, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %88 = trunc i16 %87 to i8
  %conv125 = and i8 %88, 63
  %89 = tail call i8 @llvm.umin.i8(i8 %conv125, i8 32)
  %90 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp137.not231 = icmp eq i8 %89, 0
  br i1 %cmp137.not231, label %sw.bb119.cleanup_crit_edge, label %sw.bb119.for.body139_crit_edge

sw.bb119.for.body139_crit_edge:                   ; preds = %sw.bb119
  br label %for.body139

sw.bb119.cleanup_crit_edge:                       ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body139:                                      ; preds = %for.body139.for.body139_crit_edge, %sw.bb119.for.body139_crit_edge
  %i.1232 = phi i32 [ %inc145, %for.body139.for.body139_crit_edge ], [ 1, %sw.bb119.for.body139_crit_edge ]
  %91 = load i16, ptr @amd756_ioport, align 2
  %conv140 = zext i16 %91 to i32
  %add.i227 = add nuw nsw i32 %conv140, -18874359
  %92 = inttoptr i32 %add.i227 to ptr
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %92) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %arrayidx143 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.1232
  %94 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx143, align 1
  %inc145 = add nuw nsw i32 %i.1232, 1
  %95 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %data, align 2
  %conv136 = zext i8 %96 to i32
  %cmp137.not.not = icmp ult i32 %i.1232, %conv136
  br i1 %cmp137.not.not, label %for.body139.for.body139_crit_edge, label %for.body139.cleanup_crit_edge

for.body139.cleanup_crit_edge:                    ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body139.for.body139_crit_edge:                ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body139

cleanup:                                          ; preds = %for.body139.cleanup_crit_edge, %sw.bb119.cleanup_crit_edge, %sw.bb115, %sw.bb110, %sw.bb105, %if.end104.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ %call, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end97.cleanup_crit_edge ], [ 0, %if.end104.cleanup_crit_edge ], [ 0, %sw.bb115 ], [ 0, %sw.bb110 ], [ 0, %sw.bb105 ], [ 0, %sw.bb119.cleanup_crit_edge ], [ 0, %for.body139.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amd756_func(ptr nocapture noundef readnone %adapter) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 58654720
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amd756_transaction(ptr noundef %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd756_transaction.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amd756_transaction, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %0 = load i16, ptr @amd756_ioport, align 2
  %conv = zext i16 %0 to i32
  %add.i = or i32 %conv, -18874368
  %1 = inttoptr i32 %add.i to ptr
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %1) #8, !srcloc !116
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %conv5 = zext i16 %3 to i32
  %4 = load i16, ptr @amd756_ioport, align 2
  %conv6 = zext i16 %4 to i32
  %add.i334 = add nuw nsw i32 %conv6, -18874366
  %5 = inttoptr i32 %add.i334 to ptr
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #8, !srcloc !116
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %conv9 = zext i16 %7 to i32
  %8 = load i16, ptr @amd756_ioport, align 2
  %conv10 = zext i16 %8 to i32
  %add.i336 = add nuw nsw i32 %conv10, -18874364
  %9 = inttoptr i32 %add.i336 to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #8, !srcloc !116
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %conv13 = zext i16 %11 to i32
  %12 = load i16, ptr @amd756_ioport, align 2
  %conv14 = zext i16 %12 to i32
  %add.i338 = add nuw nsw i32 %conv14, -18874362
  %13 = inttoptr i32 %add.i338 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %conv17 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd756_transaction.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv5, i32 noundef %conv9, i32 noundef %conv13, i32 noundef %conv17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %15 = load i16, ptr @amd756_ioport, align 2
  %conv18 = zext i16 %15 to i32
  %add.i340 = or i32 %conv18, -18874368
  %16 = inttoptr i32 %add.i340 to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #8, !srcloc !116
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %conv21 = zext i16 %18 to i32
  %and = and i32 %conv21, 2056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %do.end.if.end76_crit_edge, label %do.body24

do.end.if.end76_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.body24:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd756_transaction.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amd756_transaction, %do.body43)) #8
          to label %if.then38 [label %do.body43], !srcloc !120

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %dev39 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd756_transaction.__UNIQUE_ID_ddebug293, ptr noundef %dev39, ptr noundef nonnull @.str.8, i32 noundef %conv21) #8
  br label %do.body43

do.body43:                                        ; preds = %land.rhs.do.body43_crit_edge, %if.then38, %do.body24
  %timeout.0 = phi i32 [ %inc, %land.rhs.do.body43_crit_edge ], [ 0, %do.body24 ], [ 0, %if.then38 ]
  tail call void @msleep(i32 noundef 1) #8
  %19 = load i16, ptr @amd756_ioport, align 2
  %conv44 = zext i16 %19 to i32
  %add.i342 = or i32 %conv44, -18874368
  %20 = inttoptr i32 %add.i342 to ptr
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %20) #8, !srcloc !116
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %conv47 = zext i16 %22 to i32
  %and49 = and i32 %conv47, 2056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body43.if.end76_crit_edge, label %land.rhs

do.body43.if.end76_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

land.rhs:                                         ; preds = %do.body43
  %inc = add nuw nsw i32 %timeout.0, 1
  %exitcond.not = icmp eq i32 %inc, 501
  br i1 %exitcond.not, label %do.body56, label %land.rhs.do.body43_crit_edge

land.rhs.do.body43_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

do.body56:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd756_transaction.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amd756_transaction, %do.end269)) #8
          to label %if.then70 [label %do.end269], !srcloc !120

if.then70:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  %dev71 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd756_transaction.__UNIQUE_ID_ddebug294, ptr noundef %dev71, ptr noundef nonnull @.str.9, i32 noundef %conv47) #8
  br label %do.end269

if.end76:                                         ; preds = %do.body43.if.end76_crit_edge, %do.end.if.end76_crit_edge
  %23 = load i16, ptr @amd756_ioport, align 2
  %conv77 = zext i16 %23 to i32
  %add80 = add nuw nsw i32 %conv77, -18874366
  %24 = inttoptr i32 %add80 to ptr
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %24) #8, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %26 = or i16 %25, 2048
  %27 = load i16, ptr @amd756_ioport, align 2
  %conv86 = zext i16 %27 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %add.i344 = add nuw nsw i32 %conv86, -18874366
  %28 = inttoptr i32 %add.i344 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 %26) #8, !srcloc !113
  br label %do.body88

do.body88:                                        ; preds = %land.rhs96.do.body88_crit_edge, %if.end76
  %timeout.3 = phi i32 [ 0, %if.end76 ], [ %inc97, %land.rhs96.do.body88_crit_edge ]
  tail call void @msleep(i32 noundef 1) #8
  %29 = load i16, ptr @amd756_ioport, align 2
  %conv89 = zext i16 %29 to i32
  %add.i346 = or i32 %conv89, -18874368
  %30 = inttoptr i32 %add.i346 to ptr
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %30) #8, !srcloc !116
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %conv92 = zext i16 %32 to i32
  %and94 = and i32 %conv92, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end124, label %land.rhs96

land.rhs96:                                       ; preds = %do.body88
  %inc97 = add nuw nsw i32 %timeout.3, 1
  %exitcond382.not = icmp eq i32 %inc97, 501
  br i1 %exitcond382.not, label %do.body105, label %land.rhs96.do.body88_crit_edge

land.rhs96.do.body88_crit_edge:                   ; preds = %land.rhs96
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body88

do.body105:                                       ; preds = %land.rhs96
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd756_transaction.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amd756_transaction, %do.end269)) #8
          to label %if.then119 [label %do.end269], !srcloc !120

if.then119:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #10
  %dev120 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd756_transaction.__UNIQUE_ID_ddebug295, ptr noundef %dev120, ptr noundef nonnull @.str.10) #8
  br label %do.end269

if.end124:                                        ; preds = %do.body88
  %and125 = and i32 %conv92, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end124.if.end147_crit_edge, label %if.then127

if.end124.if.end147_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd756_transaction.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amd756_transaction, %if.end147)) #8
          to label %if.then142 [label %if.end147], !srcloc !120

if.then142:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  %dev143 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd756_transaction.__UNIQUE_ID_ddebug296, ptr noundef %dev143, ptr noundef nonnull @.str.11) #8
  br label %if.end147

if.end147:                                        ; preds = %if.then142, %if.then127, %if.end124.if.end147_crit_edge
  %result.0 = phi i32 [ -6, %if.then142 ], [ 0, %if.end124.if.end147_crit_edge ], [ -6, %if.then127 ]
  %and148 = and i32 %conv92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end147.if.end155_crit_edge, label %if.then150

if.end147.if.end155_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then150:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  %dev154 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev154, ptr noundef nonnull @.str.12) #11
  br label %if.end155

if.end155:                                        ; preds = %if.then150, %if.end147.if.end155_crit_edge
  %result.1 = phi i32 [ -5, %if.then150 ], [ %result.0, %if.end147.if.end155_crit_edge ]
  %and156 = and i32 %conv92, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end155.if.end178_crit_edge, label %if.then158

if.end155.if.end178_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

if.then158:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd756_transaction.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amd756_transaction, %if.end178)) #8
          to label %if.then173 [label %if.end178], !srcloc !120

if.then173:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  %dev174 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd756_transaction.__UNIQUE_ID_ddebug297, ptr noundef %dev174, ptr noundef nonnull @.str.13) #8
  br label %if.end178

if.end178:                                        ; preds = %if.then173, %if.then158, %if.end155.if.end178_crit_edge
  %result.2 = phi i32 [ -110, %if.then173 ], [ %result.1, %if.end155.if.end178_crit_edge ], [ -110, %if.then158 ]
  %and179 = and i32 %conv92, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %if.end178.if.end201_crit_edge, label %do.body182

if.end178.if.end201_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

do.body182:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd756_transaction.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amd756_transaction, %if.end201)) #8
          to label %if.then196 [label %if.end201], !srcloc !120

if.then196:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #10
  %dev197 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd756_transaction.__UNIQUE_ID_ddebug298, ptr noundef %dev197, ptr noundef nonnull @.str.14) #8
  br label %if.end201

if.end201:                                        ; preds = %if.then196, %do.body182, %if.end178.if.end201_crit_edge
  %33 = load i16, ptr @amd756_ioport, align 2
  %conv202 = zext i16 %33 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %add.i348 = or i32 %conv202, -18874368
  %34 = inttoptr i32 %add.i348 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 14080) #8, !srcloc !113
  %35 = load i16, ptr @amd756_ioport, align 2
  %conv204 = zext i16 %35 to i32
  %add.i350 = or i32 %conv204, -18874368
  %36 = inttoptr i32 %add.i350 to ptr
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %36) #8, !srcloc !116
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %conv207 = zext i16 %38 to i32
  %and208 = and i32 %conv207, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %cmp209.not = icmp eq i32 %and208, 0
  br i1 %cmp209.not, label %if.end201.do.body232_crit_edge, label %do.body212

if.end201.do.body232_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body232

do.body212:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd756_transaction.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amd756_transaction, %do.body232)) #8
          to label %if.then226 [label %do.body232], !srcloc !120

if.then226:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #10
  %dev227 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd756_transaction.__UNIQUE_ID_ddebug299, ptr noundef %dev227, ptr noundef nonnull @.str.15, i32 noundef %conv207) #8
  br label %do.body232

do.body232:                                       ; preds = %if.then226, %do.body212, %if.end201.do.body232_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd756_transaction.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amd756_transaction, %cleanup)) #8
          to label %if.then246 [label %cleanup], !srcloc !120

if.then246:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #10
  %dev247 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %39 = load i16, ptr @amd756_ioport, align 2
  %conv248 = zext i16 %39 to i32
  %add.i352 = or i32 %conv248, -18874368
  %40 = inttoptr i32 %add.i352 to ptr
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %40) #8, !srcloc !116
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %conv251 = zext i16 %42 to i32
  %43 = load i16, ptr @amd756_ioport, align 2
  %conv252 = zext i16 %43 to i32
  %add.i354 = add nuw nsw i32 %conv252, -18874366
  %44 = inttoptr i32 %add.i354 to ptr
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %44) #8, !srcloc !116
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %conv255 = zext i16 %46 to i32
  %47 = load i16, ptr @amd756_ioport, align 2
  %conv256 = zext i16 %47 to i32
  %add.i356 = add nuw nsw i32 %conv256, -18874364
  %48 = inttoptr i32 %add.i356 to ptr
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %48) #8, !srcloc !116
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %conv259 = zext i16 %50 to i32
  %51 = load i16, ptr @amd756_ioport, align 2
  %conv260 = zext i16 %51 to i32
  %add.i358 = add nuw nsw i32 %conv260, -18874362
  %52 = inttoptr i32 %add.i358 to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %conv263 = zext i8 %53 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd756_transaction.__UNIQUE_ID_ddebug300, ptr noundef %dev247, ptr noundef nonnull @.str.16, i32 noundef %conv251, i32 noundef %conv255, i32 noundef %conv259, i32 noundef %conv263) #8
  br label %cleanup

do.end269:                                        ; preds = %if.then119, %do.body105, %if.then70, %do.body56
  %dev270 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev270, ptr noundef nonnull @.str.18) #11
  %54 = load i16, ptr @amd756_ioport, align 2
  %conv272 = zext i16 %54 to i32
  %add275 = add nuw nsw i32 %conv272, -18874366
  %55 = inttoptr i32 %add275 to ptr
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %55) #8, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %57 = or i16 %56, 8192
  %58 = load i16, ptr @amd756_ioport, align 2
  %conv282 = zext i16 %58 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %add.i360 = add nuw nsw i32 %conv282, -18874366
  %59 = inttoptr i32 %add.i360 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %59, i16 %57) #8, !srcloc !113
  tail call void @msleep(i32 noundef 100) #8
  %60 = load i16, ptr @amd756_ioport, align 2
  %conv284 = zext i16 %60 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %add.i362 = or i32 %conv284, -18874368
  %61 = inttoptr i32 %add.i362 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %61, i16 14080) #8, !srcloc !113
  br label %cleanup

cleanup:                                          ; preds = %do.end269, %if.then246, %do.body232
  %retval.0 = phi i32 [ -5, %do.end269 ], [ %result.2, %if.then246 ], [ %result.2, %do.body232 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd756_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %temp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #8
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %temp, align 1, !annotation !123
  %3 = load i16, ptr @amd756_ioport, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %4 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devfn, align 4
  %and = and i32 %5, 7
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp3.not = icmp eq i32 %and, 1
  br i1 %cmp3.not, label %if.end6, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 20, ptr noundef nonnull @amd756_ioport) #8
  %6 = load i16, ptr @amd756_ioport, align 2
  %7 = and i16 %6, -4
  br label %if.end33

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp12.not = icmp eq i32 %and, 3
  br i1 %cmp12.not, label %if.end15, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.else
  %call16 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 65, ptr noundef nonnull %temp) #8
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %temp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp19 = icmp sgt i8 %9, -1
  br i1 %cmp19, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.25) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 88, ptr noundef nonnull @amd756_ioport) #8
  %10 = load i16, ptr @amd756_ioport, align 2
  %11 = and i16 %10, -256
  %12 = or i16 %11, 224
  br label %if.end33

if.end33:                                         ; preds = %if.end26, %if.end6
  %storemerge = phi i16 [ %12, %if.end26 ], [ %7, %if.end6 ]
  store i16 %storemerge, ptr @amd756_ioport, align 2
  %conv39 = zext i16 %storemerge to i32
  %13 = load ptr, ptr getelementptr inbounds (%struct.pci_driver, ptr @amd756_driver, i32 0, i32 1), align 4
  %call40 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv39, i32 noundef 16, ptr noundef %13, i32 noundef 0) #8
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %do.end45, label %if.end48

do.end45:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %14 = load i16, ptr @amd756_ioport, align 2
  %conv47 = zext i16 %14 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.28, i32 noundef %conv47) #11
  br label %cleanup

if.end48:                                         ; preds = %if.end33
  %call49 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 8, ptr noundef nonnull %temp) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd756_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amd756_probe, %do.body62)) #8
          to label %if.then56 [label %do.body62], !srcloc !120

if.then56:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %15 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %temp, align 1
  %conv58 = zext i8 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd756_probe.__UNIQUE_ID_ddebug301, ptr noundef %dev57, ptr noundef nonnull @.str.30, i32 noundef %conv58) #8
  br label %do.body62

do.body62:                                        ; preds = %if.then56, %if.end48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd756_probe.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amd756_probe, %do.end81)) #8
          to label %if.then76 [label %do.end81], !srcloc !120

if.then76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %17 = load i16, ptr @amd756_ioport, align 2
  %conv78 = zext i16 %17 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd756_probe.__UNIQUE_ID_ddebug302, ptr noundef %dev77, ptr noundef nonnull @.str.31, i32 noundef %conv78) #8
  br label %do.end81

do.end81:                                         ; preds = %if.then76, %do.body62
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  store ptr %dev82, ptr getelementptr inbounds (%struct.i2c_adapter, ptr @amd756_smbus, i32 0, i32 9, i32 1), align 8
  %18 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @chipname, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %22 = load i16, ptr @amd756_ioport, align 2
  %conv84 = zext i16 %22 to i32
  %call85 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @amd756_smbus, i32 0, i32 12), i32 noundef 48, ptr noundef nonnull @.str.32, ptr noundef %21, i32 noundef %conv84)
  %call86 = call i32 @i2c_add_adapter(ptr noundef nonnull @amd756_smbus) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %do.end81.cleanup_crit_edge, label %out_err

do.end81.cleanup_crit_edge:                       ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_err:                                          ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #10
  %23 = load i16, ptr @amd756_ioport, align 2
  %conv90 = zext i16 %23 to i32
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv90, i32 noundef 16) #8
  br label %cleanup

cleanup:                                          ; preds = %out_err, %do.end81.cleanup_crit_edge, %do.end45, %do.end24, %if.else.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call86, %out_err ], [ -19, %do.end45 ], [ -19, %do.end24 ], [ -19, %if.then2.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ], [ 0, %do.end81.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd756_remove(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @i2c_del_adapter(ptr noundef nonnull @amd756_smbus) #8
  %0 = load i16, ptr @amd756_ioport, align 2
  %conv = zext i16 %0 to i32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv, i32 noundef 16) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !63, !65, !67, !69, !71, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !93, !95, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @amd756_smbus, !1, !"amd756_smbus", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 286, i32 20}
!2 = !{ptr @__initcall__kmod_i2c_amd756__303_396_amd756_driver_init6, !3, !"__initcall__kmod_i2c_amd756__303_396_amd756_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 396, i32 1}
!4 = !{ptr @__exitcall_amd756_driver_exit, !3, !"__exitcall_amd756_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author304, !6, !"__UNIQUE_ID_author304", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 398, i32 1}
!7 = !{ptr @__UNIQUE_ID_description305, !8, !"__UNIQUE_ID_description305", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 399, i32 1}
!9 = !{ptr @__UNIQUE_ID_file306, !10, !"__UNIQUE_ID_file306", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 400, i32 1}
!11 = !{ptr @__UNIQUE_ID_license307, !10, !"__UNIQUE_ID_license307", i1 false, i1 false}
!12 = !{ptr @__ksymtab_amd756_smbus, !13, !"__ksymtab_amd756_smbus", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 402, i32 1}
!14 = !{ptr @smbus_algorithm, !15, !"smbus_algorithm", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 281, i32 35}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 236, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @amd756_access._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @amd756_access._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @amd756_ioport, !25, !"amd756_ioport", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 73, i32 23}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 102, i32 2}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @amd756_transaction.__UNIQUE_ID_ddebug292, !27, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 109, i32 3}
!33 = !{ptr @amd756_transaction.__UNIQUE_ID_ddebug293, !32, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 117, i32 4}
!36 = !{ptr @amd756_transaction.__UNIQUE_ID_ddebug294, !35, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 134, i32 3}
!39 = !{ptr @amd756_transaction.__UNIQUE_ID_ddebug295, !38, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 140, i32 3}
!42 = !{ptr @amd756_transaction.__UNIQUE_ID_ddebug296, !41, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 145, i32 3}
!45 = !{ptr @amd756_transaction._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @amd756_transaction._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 150, i32 3}
!49 = !{ptr @amd756_transaction.__UNIQUE_ID_ddebug297, !48, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 154, i32 3}
!52 = !{ptr @amd756_transaction.__UNIQUE_ID_ddebug298, !51, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 160, i32 3}
!55 = !{ptr @amd756_transaction.__UNIQUE_ID_ddebug299, !54, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 165, i32 2}
!58 = !{ptr @amd756_transaction.__UNIQUE_ID_ddebug300, !57, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 173, i32 2}
!61 = !{ptr @amd756_transaction._entry.17, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @amd756_transaction._entry_ptr.19, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 390, i32 11}
!65 = !{ptr @amd756_driver, !66, !"amd756_driver", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 389, i32 26}
!67 = !{ptr @amd756_ids, !68, !"amd756_ids", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 298, i32 35}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 321, i32 3}
!71 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @amd756_probe._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @amd756_probe._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 338, i32 4}
!77 = !{ptr @amd756_probe._entry.24, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @amd756_probe._entry_ptr.26, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 356, i32 3}
!81 = !{ptr @amd756_probe._entry.27, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @amd756_probe._entry_ptr.29, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 362, i32 2}
!85 = !{ptr @amd756_probe.__UNIQUE_ID_ddebug301, !84, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 363, i32 2}
!88 = !{ptr @amd756_probe.__UNIQUE_ID_ddebug302, !87, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 369, i32 4}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 294, i32 2}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 294, i32 12}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 294, i32 22}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 295, i32 2}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 295, i32 19}
!101 = !{ptr @chipname, !102, !"chipname", i1 false, i1 false}
!102 = !{!"../drivers/i2c/busses/i2c-amd756.c", i32 293, i32 20}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2152524963}
!113 = !{i64 4987952}
!114 = !{i64 2152524431}
!115 = !{i64 4988375}
!116 = !{i64 4988152}
!117 = !{i64 2152523247}
!118 = !{i64 4988770}
!119 = !{i64 2152522446}
!120 = !{i64 2148962142, i64 2148962147, i64 2148962160, i64 2148962204, i64 2148962238, i64 2148962259}
!121 = !{i64 2155903338}
!122 = !{i64 2155922322}
!123 = !{!"auto-init"}
