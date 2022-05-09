; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/bus.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+scmi_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc_scmi_driver_register\09\09\09\09"
module asm "\09.long\09__crc_scmi_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scmi_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22scmi_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_scmi_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scmi_driver_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_scmi_driver_unregister\09\09\09\09"
module asm "\09.long\09__crc_scmi_driver_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scmi_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22scmi_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_scmi_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scmi_protocol_register\22, \22a\22\09"
module asm "\09.weak\09__crc_scmi_protocol_register\09\09\09\09"
module asm "\09.long\09__crc_scmi_protocol_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scmi_protocol_register:\09\09\09\09\09"
module asm "\09.asciz \09\22scmi_protocol_register\22\09\09\09\09\09"
module asm "__kstrtabns_scmi_protocol_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scmi_protocol_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_scmi_protocol_unregister\09\09\09\09"
module asm "\09.long\09__crc_scmi_protocol_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scmi_protocol_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22scmi_protocol_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_scmi_protocol_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.scmi_device_id = type { i8, ptr }
%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }

@scmi_protocols = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@scmi_protocol_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014scmi_module: SCMI Protocol 0x%x not found!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scmi_protocol_get\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/firmware/arm_scmi/bus.c\00", [32 x i8] zeroinitializer }, align 32
@scmi_protocol_get._entry_ptr = internal global ptr @scmi_protocol_get._entry, section ".printk_index", align 4
@scmi_protocol_get.__UNIQUE_ID_ddebug218 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi_module\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Found SCMI Protocol 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"scmi_module: Found SCMI Protocol 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@scmi_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.27, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scmi_dev_match, ptr null, ptr @scmi_dev_probe, ptr null, ptr @scmi_dev_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@scmi_driver_register.__UNIQUE_ID_ddebug219 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scmi_driver_register\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"registered new scmi driver %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"scmi_module: registered new scmi driver %s\0A\00", [52 x i8] zeroinitializer }, align 32
@__kstrtab_scmi_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_scmi_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_scmi_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scmi_driver_register to i32), ptr @__kstrtab_scmi_driver_register, ptr @__kstrtabns_scmi_driver_register }, section "___ksymtab_gpl+scmi_driver_register", align 4
@__kstrtab_scmi_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_scmi_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_scmi_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scmi_driver_unregister to i32), ptr @__kstrtab_scmi_driver_unregister, ptr @__kstrtabns_scmi_driver_unregister }, section "___ksymtab_gpl+scmi_driver_unregister", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@scmi_bus_id = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi_dev.%d\00", [20 x i8] zeroinitializer }, align 32
@scmi_protocol_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013scmi_module: invalid protocol\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"scmi_protocol_register\00", [41 x i8] zeroinitializer }, align 32
@scmi_protocol_register._entry_ptr = internal global ptr @scmi_protocol_register._entry, section ".printk_index", align 4
@scmi_protocol_register._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013scmi_module: missing init for protocol 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@scmi_protocol_register._entry_ptr.15 = internal global ptr @scmi_protocol_register._entry.13, section ".printk_index", align 4
@protocol_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@scmi_protocol_register._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013scmi_module: unable to allocate SCMI idr slot for 0x%x - err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@scmi_protocol_register._entry_ptr.18 = internal global ptr @scmi_protocol_register._entry.16, section ".printk_index", align 4
@scmi_protocol_register.__UNIQUE_ID_ddebug220 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.12, ptr @.str.2, ptr @.str.19, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Registered SCMI Protocol 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"scmi_module: Registered SCMI Protocol 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@__kstrtab_scmi_protocol_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_scmi_protocol_register = external dso_local constant [0 x i8], align 1
@__ksymtab_scmi_protocol_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scmi_protocol_register to i32), ptr @__kstrtab_scmi_protocol_register, ptr @__kstrtabns_scmi_protocol_register }, section "___ksymtab_gpl+scmi_protocol_register", align 4
@scmi_protocol_unregister.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"scmi_protocol_unregister\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unregistered SCMI Protocol 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"scmi_module: Unregistered SCMI Protocol 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@__kstrtab_scmi_protocol_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_scmi_protocol_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_scmi_protocol_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scmi_protocol_unregister to i32), ptr @__kstrtab_scmi_protocol_unregister, ptr @__kstrtabns_scmi_protocol_unregister }, section "___ksymtab_gpl+scmi_protocol_unregister", align 4
@scmi_bus_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013scmi_module: scmi protocol bus register failed (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"scmi_bus_init\00", [18 x i8] zeroinitializer }, align 32
@scmi_bus_init._entry_ptr = internal global ptr @scmi_bus_init._entry, section ".printk_index", align 4
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"scmi_protocols.xa_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"scmi_protocol\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"scmi_bus_id.xa_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"protocol_lock\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"scmi_protocols\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 85, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 89, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"scmi_bus_type\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 123, i32 24 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 149, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 178, i32 41 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"scmi_bus_id\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 197, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 229, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 234, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"protocol_lock\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 243, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 248, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 260, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 285, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 19, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 124, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 18, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [35 x i8] c"../drivers/firmware/arm_scmi/bus.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 20, i32 8 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__ksymtab_scmi_driver_register, ptr @__ksymtab_scmi_driver_unregister, ptr @__ksymtab_scmi_protocol_register, ptr @__ksymtab_scmi_protocol_unregister, ptr @scmi_bus_exit, ptr @scmi_bus_init._entry, ptr @scmi_bus_init._entry_ptr, ptr @scmi_protocol_get._entry, ptr @scmi_protocol_get._entry_ptr, ptr @scmi_protocol_register._entry, ptr @scmi_protocol_register._entry.13, ptr @scmi_protocol_register._entry.16, ptr @scmi_protocol_register._entry_ptr, ptr @scmi_protocol_register._entry_ptr.15, ptr @scmi_protocol_register._entry_ptr.18, ptr @scmi_protocols, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @scmi_bus_type, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @scmi_bus_id, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @protocol_lock, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_protocols to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_protocol_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_bus_id to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_protocol_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_protocol_register._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @protocol_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_protocol_register._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_bus_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scmi_child_dev_find(ptr noundef %parent, i32 noundef %prot_id, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %id_table = alloca %struct.scmi_device_id, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %id_table) #9
  %0 = ptrtoint ptr %id_table to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %id_table, align 8, !annotation !77
  %conv = trunc i32 %prot_id to i8
  store i8 %conv, ptr %id_table, align 8
  %name1 = getelementptr inbounds %struct.scmi_device_id, ptr %id_table, i32 0, i32 1
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %name1, align 4
  %call = call ptr @device_find_child(ptr noundef %parent, ptr noundef nonnull %id_table, ptr noundef nonnull @scmi_match_by_id_table) #9
  %tobool.not = icmp eq ptr %call, null
  %add.ptr = getelementptr i8, ptr %call, i32 -16
  %retval.0 = select i1 %tobool.not, ptr null, ptr %add.ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %id_table) #9
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scmi_match_by_id_table(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol_id = getelementptr i8, ptr %dev, i32 -12
  %0 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol_id, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp eq i8 %1, %3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr i8, ptr %dev, i32 -8
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %name4 = getelementptr inbounds %struct.scmi_device_id, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name4, align 4
  %call = tail call i32 @strcmp(ptr noundef %5, ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %phi.cast = zext i1 %tobool.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scmi_protocol_get(i32 noundef %protocol_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @idr_find(ptr noundef nonnull @scmi_protocols, i32 noundef %protocol_id) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.scmi_protocol, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %call1 = tail call zeroext i1 @try_module_get(ptr noundef %1) #9
  br i1 %call1, label %do.body3, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %protocol_id) #13
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_protocol_get.__UNIQUE_ID_ddebug218, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_protocol_get, %if.then9)) #9
          to label %cleanup [label %if.then9], !srcloc !78

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scmi_protocol_get.__UNIQUE_ID_ddebug218, ptr noundef nonnull @.str.5, i32 noundef %protocol_id) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body3, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %if.then9 ], [ %call, %do.body3 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_protocol_put(i32 noundef %protocol_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @idr_find(ptr noundef nonnull @scmi_protocols, i32 noundef %protocol_id) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %owner = getelementptr inbounds %struct.scmi_protocol, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_driver_register(ptr noundef %driver, ptr noundef %owner, ptr noundef %mod_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %probe = getelementptr inbounds %struct.scmi_driver, ptr %driver, i32 0, i32 1
  %0 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %probe, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %id_table = getelementptr inbounds %struct.scmi_driver, ptr %driver, i32 0, i32 3
  %2 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_table, align 4
  %call = tail call i32 @scmi_protocol_device_request(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver5 = getelementptr inbounds %struct.scmi_driver, ptr %driver, i32 0, i32 4
  %bus = getelementptr inbounds %struct.scmi_driver, ptr %driver, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @scmi_bus_type, ptr %bus, align 4
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %7 = ptrtoint ptr %driver5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %driver5, align 4
  %owner9 = getelementptr inbounds %struct.scmi_driver, ptr %driver, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %owner9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %owner, ptr %owner9, align 4
  %mod_name11 = getelementptr inbounds %struct.scmi_driver, ptr %driver, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %mod_name11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mod_name, ptr %mod_name11, align 4
  %call13 = tail call i32 @driver_register(ptr noundef %driver5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_driver_register.__UNIQUE_ID_ddebug219, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_driver_register, %if.then20)) #9
          to label %cleanup [label %if.then20], !srcloc !78

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scmi_driver_register.__UNIQUE_ID_ddebug219, ptr noundef nonnull @.str.8, ptr noundef %11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then20 ], [ %call13, %if.end4.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_device_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_driver_unregister(ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver1 = getelementptr inbounds %struct.scmi_driver, ptr %driver, i32 0, i32 4
  tail call void @driver_unregister(ptr noundef %driver1) #9
  %id_table = getelementptr inbounds %struct.scmi_driver, ptr %driver, i32 0, i32 3
  %0 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_table, align 4
  tail call void @scmi_protocol_device_unrequest(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_device_unrequest(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scmi_device_create(ptr noundef %np, ptr noundef %parent, i32 noundef %protocol, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 952) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %name, null
  %..str.9 = select i1 %tobool2.not, ptr @.str.9, ptr %name
  %call3 = tail call ptr @kstrdup_const(ptr noundef %..str.9, i32 noundef 3264) #9
  %name4 = getelementptr inbounds %struct.scmi_device, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %name4, align 8
  %tobool6.not = icmp eq ptr %call3, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @ida_alloc_range(ptr noundef nonnull @scmi_bus_id, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name4, align 8
  tail call void @kfree_const(ptr noundef %3) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call9, ptr %call7.i.i, align 8
  %conv = trunc i32 %protocol to i8
  %protocol_id = getelementptr inbounds %struct.scmi_device, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %protocol_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %protocol_id, align 4
  %dev = getelementptr inbounds %struct.scmi_device, ptr %call7.i.i, i32 0, i32 3
  %parent14 = getelementptr inbounds %struct.scmi_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %parent14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent, ptr %parent14, align 8
  %of_node = getelementptr inbounds %struct.scmi_device, ptr %call7.i.i, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %np, ptr %of_node, align 8
  %bus = getelementptr inbounds %struct.scmi_device, ptr %call7.i.i, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @scmi_bus_type, ptr %bus, align 8
  %release = getelementptr inbounds %struct.scmi_device, ptr %call7.i.i, i32 0, i32 3, i32 35
  %9 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @scmi_device_release, ptr %release, align 4
  %call19 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call9) #9
  %call21 = tail call i32 @device_register(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end12.cleanup_crit_edge, label %put_dev

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

put_dev:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name4, align 8
  tail call void @kfree_const(ptr noundef %11) #9
  tail call void @put_device(ptr noundef %dev) #9
  tail call void @ida_free(ptr noundef nonnull @scmi_bus_id, i32 noundef %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %put_dev, %if.end12.cleanup_crit_edge, %if.then10, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then10 ], [ null, %put_dev ], [ null, %if.then7 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_device_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_device_destroy(ptr noundef %scmi_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.scmi_device, ptr %scmi_dev, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  tail call void @kfree_const(ptr noundef %1) #9
  %handle = getelementptr inbounds %struct.scmi_device, ptr %scmi_dev, i32 0, i32 4
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %call = tail call i32 @scmi_handle_put(ptr noundef %3) #9
  %4 = ptrtoint ptr %scmi_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scmi_dev, align 8
  tail call void @ida_free(ptr noundef nonnull @scmi_bus_id, i32 noundef %5) #9
  %dev = getelementptr inbounds %struct.scmi_device, ptr %scmi_dev, i32 0, i32 3
  tail call void @device_unregister(ptr noundef %dev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_handle_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_set_handle(ptr noundef %scmi_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.scmi_device, ptr %scmi_dev, i32 0, i32 3
  %call = tail call ptr @scmi_handle_get(ptr noundef %dev) #9
  %handle = getelementptr inbounds %struct.scmi_device, ptr %scmi_dev, i32 0, i32 4
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scmi_handle_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_protocol_register(ptr noundef %proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %proto, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %instance_init = getelementptr inbounds %struct.scmi_protocol, ptr %proto, i32 0, i32 2
  %0 = ptrtoint ptr %instance_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance_init, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %proto, align 4
  %conv = zext i8 %3 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @protocol_lock) #9
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %proto, align 4
  %conv10 = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv10, 1
  %call13 = tail call i32 @idr_alloc(ptr noundef nonnull @scmi_protocols, ptr noundef nonnull %proto, i32 noundef %conv10, i32 noundef %add, i32 noundef 2592) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @protocol_lock) #9
  %6 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %proto, align 4
  %conv15 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %conv15)
  %cmp.not = icmp eq i32 %call13, %conv15
  br i1 %cmp.not, label %do.body26, label %do.end20

do.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv15, i32 noundef %call13) #13
  br label %cleanup

do.body26:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_protocol_register.__UNIQUE_ID_ddebug220, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_protocol_register, %if.then32)) #9
          to label %cleanup [label %if.then32], !srcloc !78

if.then32:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %proto, align 4
  %conv34 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scmi_protocol_register.__UNIQUE_ID_ddebug220, ptr noundef nonnull @.str.20, i32 noundef %conv34) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.body26, %do.end20, %do.end5, %do.end
  %retval.0 = phi i32 [ %call13, %do.end20 ], [ -22, %do.end5 ], [ -22, %do.end ], [ 0, %if.then32 ], [ 0, %do.body26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_protocol_unregister(ptr nocapture noundef readonly %proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @protocol_lock) #9
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %proto, align 4
  %conv = zext i8 %1 to i32
  %call = tail call ptr @idr_remove(ptr noundef nonnull @scmi_protocols, i32 noundef %conv) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @protocol_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_protocol_unregister.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_protocol_unregister, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %proto, align 4
  %conv5 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scmi_protocol_unregister.__UNIQUE_ID_ddebug221, ptr noundef nonnull @.str.23, i32 noundef %conv5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_bus_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @scmi_bus_type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_bus_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @bus_for_each_dev(ptr noundef nonnull @scmi_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @__scmi_devices_unregister) #9
  tail call void @bus_unregister(ptr noundef nonnull @scmi_bus_type) #9
  tail call void @ida_destroy(ptr noundef nonnull @scmi_bus_id) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_dev_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %drv) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id_table.i = getelementptr i8, ptr %drv, i32 -4
  %0 = ptrtoint ptr %id_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_table.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.scmi_dev_match_id.exit_crit_edge, label %for.cond.preheader.i

entry.scmi_dev_match_id.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_dev_match_id.exit

for.cond.preheader.i:                             ; preds = %entry
  %name10.i = getelementptr i8, ptr %dev, i32 -8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not26.i = icmp eq i8 %3, 0
  br i1 %tobool1.not26.i, label %for.cond.preheader.i.scmi_dev_match_id.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.scmi_dev_match_id.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_dev_match_id.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %protocol_id3.i = getelementptr i8, ptr %dev, i32 -12
  %4 = ptrtoint ptr %protocol_id3.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol_id3.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %6 = phi i8 [ %3, %for.body.lr.ph.i ], [ %12, %for.inc.i.for.body.i_crit_edge ]
  %id.027.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %5)
  %cmp.i = icmp eq i8 %6, %5
  br i1 %cmp.i, label %if.then6.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  %name.i = getelementptr inbounds %struct.scmi_device_id, ptr %id.027.i, i32 0, i32 1
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  %tobool7.not.i = icmp eq ptr %8, null
  br i1 %tobool7.not.i, label %if.then6.i.scmi_dev_match_id.exit_crit_edge, label %if.else.i

if.then6.i.scmi_dev_match_id.exit_crit_edge:      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_dev_match_id.exit

if.else.i:                                        ; preds = %if.then6.i
  %9 = ptrtoint ptr %name10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name10.i, align 8
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %8, ptr noundef %10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool11.not.i, label %if.else.i.scmi_dev_match_id.exit_crit_edge, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else.i.scmi_dev_match_id.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_dev_match_id.exit

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.scmi_device_id, ptr %id.027.i, i32 1
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.i, align 4
  %tobool1.not.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i, label %for.inc.i.scmi_dev_match_id.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.scmi_dev_match_id.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_dev_match_id.exit

scmi_dev_match_id.exit:                           ; preds = %for.inc.i.scmi_dev_match_id.exit_crit_edge, %if.else.i.scmi_dev_match_id.exit_crit_edge, %if.then6.i.scmi_dev_match_id.exit_crit_edge, %for.cond.preheader.i.scmi_dev_match_id.exit_crit_edge, %entry.scmi_dev_match_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.scmi_dev_match_id.exit_crit_edge ], [ null, %for.cond.preheader.i.scmi_dev_match_id.exit_crit_edge ], [ null, %for.inc.i.scmi_dev_match_id.exit_crit_edge ], [ %id.027.i, %if.else.i.scmi_dev_match_id.exit_crit_edge ], [ %id.027.i, %if.then6.i.scmi_dev_match_id.exit_crit_edge ]
  %tobool.not = icmp ne ptr %retval.0.i, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_dev_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -16
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %probe = getelementptr i8, ptr %3, i32 -12
  %4 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %probe, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -517, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_dev_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %remove = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -16
  tail call void %3(ptr noundef %add.ptr3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__scmi_devices_unregister(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %name.i = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name.i, align 8
  tail call void @kfree_const(ptr noundef %1) #9
  %handle.i = getelementptr i8, ptr %dev, i32 928
  %2 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle.i, align 8
  %call.i = tail call i32 @scmi_handle_put(ptr noundef %3) #9
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  tail call void @ida_free(ptr noundef nonnull @scmi_bus_id, i32 noundef %5) #9
  tail call void @device_unregister(ptr noundef %dev) #9
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !60, !62, !64, !65, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 85, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @scmi_protocol_get._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @scmi_protocol_get._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 89, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @scmi_protocol_get.__UNIQUE_ID_ddebug218, !7, !"__UNIQUE_ID_ddebug218", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 149, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @scmi_driver_register.__UNIQUE_ID_ddebug219, !12, !"__UNIQUE_ID_ddebug219", i1 false, i1 false}
!15 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__ksymtab_scmi_driver_register, !17, !"__ksymtab_scmi_driver_register", i1 false, i1 false}
!17 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 153, i32 1}
!18 = !{ptr @__ksymtab_scmi_driver_unregister, !19, !"__ksymtab_scmi_driver_unregister", i1 false, i1 false}
!19 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 160, i32 1}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 178, i32 41}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 197, i32 31}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 229, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @scmi_protocol_register._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @scmi_protocol_register._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 234, i32 3}
!31 = !{ptr @scmi_protocol_register._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @scmi_protocol_register._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 243, i32 3}
!35 = !{ptr @scmi_protocol_register._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @scmi_protocol_register._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 248, i32 2}
!39 = !{ptr @scmi_protocol_register.__UNIQUE_ID_ddebug220, !38, !"__UNIQUE_ID_ddebug220", i1 false, i1 false}
!40 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__ksymtab_scmi_protocol_register, !42, !"__ksymtab_scmi_protocol_register", i1 false, i1 false}
!42 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 252, i32 1}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 260, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @scmi_protocol_unregister.__UNIQUE_ID_ddebug221, !44, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!47 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__ksymtab_scmi_protocol_unregister, !49, !"__ksymtab_scmi_protocol_unregister", i1 false, i1 false}
!49 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 264, i32 1}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 285, i32 3}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @scmi_bus_init._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @scmi_bus_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 19, i32 8}
!57 = !{ptr @scmi_protocols, !56, !"scmi_protocols", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 124, i32 10}
!60 = !{ptr @scmi_bus_type, !61, !"scmi_bus_type", i1 false, i1 false}
!61 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 123, i32 24}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 18, i32 8}
!64 = !{ptr @scmi_bus_id, !63, !"scmi_bus_id", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/firmware/arm_scmi/bus.c", i32 20, i32 8}
!67 = !{ptr @protocol_lock, !66, !"protocol_lock", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i64 2148958039, i64 2148958044, i64 2148958057, i64 2148958101, i64 2148958135, i64 2148958156}
