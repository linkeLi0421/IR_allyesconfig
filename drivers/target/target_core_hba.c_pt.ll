; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_hba.c_pt.bc'
source_filename = "../drivers/target/target_core_hba.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+transport_backend_register\22, \22a\22\09"
module asm "\09.weak\09__crc_transport_backend_register\09\09\09\09"
module asm "\09.long\09__crc_transport_backend_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_transport_backend_register:\09\09\09\09\09"
module asm "\09.asciz \09\22transport_backend_register\22\09\09\09\09\09"
module asm "__kstrtabns_transport_backend_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+target_backend_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_target_backend_unregister\09\09\09\09"
module asm "\09.long\09__crc_target_backend_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_target_backend_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22target_backend_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_target_backend_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.target_backend = type { %struct.list_head, ptr, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.target_backend_ops = type { [16 x i8], [16 x i8], [4 x i8], ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.se_hba = type { i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.config_group, %struct.mutex, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.t10_wwn = type { [9 x i8], [17 x i8], [5 x i8], [254 x i8], i32, %struct.spinlock, ptr, %struct.config_group, %struct.list_head }
%struct.t10_alua = type { i16, i32, %struct.spinlock, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.config_group, %struct.list_head }
%struct.t10_reservation = type { i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, %struct.list_head, %struct.list_head }
%struct.se_dev_attrib = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.config_group }
%struct.se_dev_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.se_lun = type { i64, i8, i8, i32, i16, %struct.atomic_t, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, %struct.mutex, %struct.list_head, ptr, %struct.spinlock, ptr, %struct.scsi_port_stats, %struct.config_group, %struct.se_port_stat_grps, %struct.completion, %struct.percpu_ref, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.scsi_port_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.se_port_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.percpu_ref = type { i32, ptr }
%struct.callback_head = type { ptr, ptr }

@backend_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @backend_mutex, i64 52), ptr getelementptr (i8, ptr @backend_mutex, i64 52) }, ptr @backend_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@backend_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @backend_list, ptr @backend_list }, [24 x i8] zeroinitializer }, align 32
@transport_backend_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013backend %s already registered.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"transport_backend_register\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/target/target_core_hba.c\00", [63 x i8] zeroinitializer }, align 32
@transport_backend_register._entry_ptr = internal global ptr @transport_backend_register._entry, section ".printk_index", align 4
@transport_backend_register.__UNIQUE_ID_ddebug595 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"target_core_mod\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"TCM: Registered subsystem plugin: %s struct module: %p\0A\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_transport_backend_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_transport_backend_register = external dso_local constant [0 x i8], align 1
@__ksymtab_transport_backend_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @transport_backend_register to i32), ptr @__kstrtab_transport_backend_register, ptr @__kstrtabns_transport_backend_register }, section "___ksymtab+transport_backend_register", align 4
@__kstrtab_target_backend_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_target_backend_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_target_backend_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @target_backend_unregister to i32), ptr @__kstrtab_target_backend_unregister, ptr @__kstrtabns_target_backend_unregister }, section "___ksymtab+target_backend_unregister", align 4
@core_alloc_hba._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Unable to allocate struct se_hba\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"core_alloc_hba\00", [17 x i8] zeroinitializer }, align 32
@core_alloc_hba._entry_ptr = internal global ptr @core_alloc_hba._entry, section ".printk_index", align 4
@core_alloc_hba.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&hba->device_lock\00", [46 x i8] zeroinitializer }, align 32
@core_alloc_hba.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&hba->hba_access_mutex\00", [41 x i8] zeroinitializer }, align 32
@hba_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@hba_id_counter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@hba_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hba_list, ptr @hba_list }, [24 x i8] zeroinitializer }, align 32
@core_alloc_hba.__UNIQUE_ID_ddebug596 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"CORE_HBA[%d] - Attached HBA to Generic Target Core\0A\00", [44 x i8] zeroinitializer }, align 32
@core_delete_hba.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"core_delete_hba\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"CORE_HBA[%d] - Detached HBA from Generic Target Core\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"backend_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"backend_mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hba_lock\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"backend_mutex\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"backend_list\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 29, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 50, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 60, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 116, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 120, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 121, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [9 x i8] c"hba_lock\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"hba_id_counter\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 32, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"hba_list\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 35, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 141, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 165, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 30, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [36 x i8] c"../drivers/target/target_core_hba.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 34, i32 8 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab_target_backend_unregister, ptr @__ksymtab_transport_backend_register, ptr @core_alloc_hba._entry, ptr @core_alloc_hba._entry_ptr, ptr @transport_backend_register._entry, ptr @transport_backend_register._entry_ptr, ptr @backend_mutex, ptr @backend_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @core_alloc_hba.__key, ptr @.str.7, ptr @core_alloc_hba.__key.8, ptr @.str.9, ptr @hba_lock, ptr @hba_id_counter, ptr @hba_list, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backend_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backend_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transport_backend_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alloc_hba._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alloc_hba.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alloc_hba.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hba_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hba_id_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hba_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @transport_backend_register(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 152) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops1 = getelementptr inbounds %struct.target_backend, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ops1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ops, ptr %ops1, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @backend_mutex, i32 noundef 0) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %old.0.in = phi ptr [ @backend_list, %if.end ], [ %old.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %old.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %old.0 = load ptr, ptr %old.0.in, align 4
  %cmp.not = icmp eq ptr %old.0, @backend_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %ops2 = getelementptr inbounds %struct.target_backend, ptr %old.0, i32 0, i32 1
  %3 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops2, align 4
  %call5 = tail call i32 @strcmp(ptr noundef %4, ptr noundef %ops) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %ops) #10
  tail call void @mutex_unlock(ptr noundef nonnull @backend_mutex) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

for.end:                                          ; preds = %for.cond
  tail call void @target_setup_backend_cits(ptr noundef nonnull %call7.i.i) #5
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @backend_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %5, ptr noundef nonnull @backend_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @backend_list, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @backend_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i.i, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @backend_mutex) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @transport_backend_register.__UNIQUE_ID_ddebug595, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@transport_backend_register, %if.then25)) #5
          to label %cleanup [label %if.then25], !srcloc !54

if.then25:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %owner = getelementptr inbounds %struct.target_backend_ops, ptr %ops, i32 0, i32 3
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @transport_backend_register.__UNIQUE_ID_ddebug595, ptr noundef nonnull @.str.4, ptr noundef %ops, ptr noundef %10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %list_add_tail.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_setup_backend_cits(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @target_backend_unregister(ptr noundef readnone %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @backend_mutex, i32 noundef 0) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tb.0.in = phi ptr [ @backend_list, %entry ], [ %tb.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %tb.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %tb.0 = load ptr, ptr %tb.0.in, align 4
  %cmp.not = icmp eq ptr %tb.0, @backend_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %ops1 = getelementptr inbounds %struct.target_backend, ptr %tb.0, i32 0, i32 1
  %1 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops1, align 4
  %cmp2 = icmp eq ptr %2, %ops
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tb.0) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tb.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %tb.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tb.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %tb.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %tb.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tb.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @backend_mutex) #5
  tail call void @rcu_barrier() #5
  tail call void @kfree(ptr noundef %tb.0) #5
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef nonnull @backend_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %list_del.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @core_alloc_hba(ptr nocapture noundef readonly %plugin_name, i32 noundef %plugin_dep_id, i32 noundef %hba_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 252) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %cleanup

do.body3:                                         ; preds = %entry
  %device_lock = getelementptr inbounds %struct.se_hba, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %device_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @core_alloc_hba.__key, i16 noundef signext 3) #5
  %hba_access_mutex = getelementptr inbounds %struct.se_hba, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %hba_access_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @core_alloc_hba.__key.8) #5
  %call10 = tail call i32 @scsi_get_new_index(i32 noundef 0) #5
  %hba_index = getelementptr inbounds %struct.se_hba, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %hba_index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call10, ptr %hba_index, align 8
  %hba_flags11 = getelementptr inbounds %struct.se_hba, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %hba_flags11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hba_flags11, align 8
  %or = or i32 %3, %hba_flags
  store i32 %or, ptr %hba_flags11, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @backend_mutex, i32 noundef 0) #5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body3
  %tb.0.in.i = phi ptr [ @backend_list, %do.body3 ], [ %tb.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %tb.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tb.0.i = load ptr, ptr %tb.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tb.0.i, @backend_list
  br i1 %cmp.not.i, label %for.cond.i.core_get_backend.exit.thread_crit_edge, label %for.body.i

for.cond.i.core_get_backend.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %core_get_backend.exit.thread

for.body.i:                                       ; preds = %for.cond.i
  %ops.i = getelementptr inbounds %struct.target_backend, ptr %tb.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %6, ptr noundef %plugin_name) #11
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %found.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

found.i:                                          ; preds = %for.body.i
  %ops.i.le = getelementptr inbounds %struct.target_backend, ptr %tb.0.i, i32 0, i32 1
  %owner.i = getelementptr inbounds %struct.target_backend_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner.i, align 4
  %tobool7.not.i = icmp eq ptr %8, null
  br i1 %tobool7.not.i, label %found.i.core_get_backend.exit_crit_edge, label %land.lhs.true.i

found.i.core_get_backend.exit_crit_edge:          ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %core_get_backend.exit

land.lhs.true.i:                                  ; preds = %found.i
  %call10.i = tail call zeroext i1 @try_module_get(ptr noundef nonnull %8) #5
  br i1 %call10.i, label %land.lhs.true.i.core_get_backend.exit_crit_edge, label %land.lhs.true.i.core_get_backend.exit.thread_crit_edge

land.lhs.true.i.core_get_backend.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %core_get_backend.exit.thread

land.lhs.true.i.core_get_backend.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %core_get_backend.exit

core_get_backend.exit.thread:                     ; preds = %land.lhs.true.i.core_get_backend.exit.thread_crit_edge, %for.cond.i.core_get_backend.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @backend_mutex) #5
  %backend55 = getelementptr inbounds %struct.se_hba, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %backend55 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %backend55, align 8
  br label %out_free_hba

core_get_backend.exit:                            ; preds = %land.lhs.true.i.core_get_backend.exit_crit_edge, %found.i.core_get_backend.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @backend_mutex) #5
  %backend = getelementptr inbounds %struct.se_hba, ptr %call7.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %backend to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tb.0.i, ptr %backend, align 8
  %tobool14.not = icmp eq ptr %tb.0.i, null
  br i1 %tobool14.not, label %core_get_backend.exit.out_free_hba_crit_edge, label %if.end16

core_get_backend.exit.out_free_hba_crit_edge:     ; preds = %core_get_backend.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_hba

if.end16:                                         ; preds = %core_get_backend.exit
  %11 = ptrtoint ptr %ops.i.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.le, align 4
  %attach_hba = getelementptr inbounds %struct.target_backend_ops, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %attach_hba to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attach_hba, align 4
  %call18 = tail call i32 %14(ptr noundef nonnull %call7.i.i, i32 noundef %plugin_dep_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %out_module_put, label %if.end20

if.end20:                                         ; preds = %if.end16
  tail call void @_raw_spin_lock(ptr noundef nonnull @hba_lock) #5
  %15 = load i32, ptr @hba_id_counter, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr @hba_id_counter, align 4
  %hba_id = getelementptr inbounds %struct.se_hba, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %hba_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hba_id, align 4
  %hba_node = getelementptr inbounds %struct.se_hba, ptr %call7.i.i, i32 0, i32 6
  %17 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hba_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hba_node, ptr noundef %17, ptr noundef nonnull @hba_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_add_tail.exit_crit_edge

if.end20.list_add_tail.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %hba_node, ptr getelementptr inbounds (%struct.list_head, ptr @hba_list, i32 0, i32 1), align 4
  %18 = ptrtoint ptr %hba_node to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @hba_list, ptr %hba_node, align 8
  %prev3.i.i = getelementptr inbounds %struct.se_hba, ptr %call7.i.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %hba_node, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end20.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @hba_lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_alloc_hba.__UNIQUE_ID_ddebug596, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_alloc_hba, %if.then27)) #5
          to label %cleanup [label %if.then27], !srcloc !54

if.then27:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %hba_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hba_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_alloc_hba.__UNIQUE_ID_ddebug596, ptr noundef nonnull @.str.10, i32 noundef %22) #5
  br label %cleanup

out_module_put:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %backend, align 8
  %ops33 = getelementptr inbounds %struct.target_backend, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %ops33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops33, align 4
  %owner = getelementptr inbounds %struct.target_backend_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %28) #5
  %29 = ptrtoint ptr %backend to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %backend, align 8
  %phi.cast = inttoptr i32 %call18 to ptr
  br label %out_free_hba

out_free_hba:                                     ; preds = %out_module_put, %core_get_backend.exit.out_free_hba_crit_edge, %core_get_backend.exit.thread
  %ret.0 = phi ptr [ %phi.cast, %out_module_put ], [ inttoptr (i32 -22 to ptr), %core_get_backend.exit.out_free_hba_crit_edge ], [ inttoptr (i32 -22 to ptr), %core_get_backend.exit.thread ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free_hba, %if.then27, %list_add_tail.exit, %do.end
  %retval.0 = phi ptr [ %ret.0, %out_free_hba ], [ inttoptr (i32 -12 to ptr), %do.end ], [ %call7.i.i, %if.then27 ], [ %call7.i.i, %list_add_tail.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_get_new_index(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_delete_hba(ptr noundef %hba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_count = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 3
  %0 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !55

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 157, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %backend = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 10
  %2 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backend, align 4
  %ops = getelementptr inbounds %struct.target_backend, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %detach_hba = getelementptr inbounds %struct.target_backend_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %detach_hba to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %detach_hba, align 4
  tail call void %7(ptr noundef %hba) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @hba_lock) #5
  %hba_node = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hba_node) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %hba_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hba_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %14 = ptrtoint ptr %hba_node to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %hba_node, align 4
  %prev.i = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @hba_lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_delete_hba.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_delete_hba, %if.then29)) #5
          to label %do.end32 [label %if.then29], !srcloc !54

if.then29:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %hba_id = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 1
  %16 = ptrtoint ptr %hba_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hba_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_delete_hba.__UNIQUE_ID_ddebug597, ptr noundef nonnull @.str.12, i32 noundef %17) #5
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %list_del.exit
  %18 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %backend, align 4
  %ops34 = getelementptr inbounds %struct.target_backend, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ops34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops34, align 4
  %owner = getelementptr inbounds %struct.target_backend_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %23) #5
  %24 = ptrtoint ptr %backend to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %backend, align 4
  tail call void @kfree(ptr noundef %hba) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @target_sense_desc_format(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %transport = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 46
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport, align 8
  %get_blocks = getelementptr inbounds %struct.target_backend_ops, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %get_blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_blocks, align 4
  %call = tail call i64 %3(ptr noundef nonnull %dev) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %call)
  %cmp = icmp ugt i64 %call, 4294967295
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i1 [ %cmp, %cond.true ], [ false, %entry.cond.end_crit_edge ]
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_hba.c", i32 50, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @transport_backend_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @transport_backend_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/target_core_hba.c", i32 60, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @transport_backend_register.__UNIQUE_ID_ddebug595, !7, !"__UNIQUE_ID_ddebug595", i1 false, i1 false}
!10 = !{ptr @__ksymtab_transport_backend_register, !11, !"__ksymtab_transport_backend_register", i1 false, i1 false}
!11 = !{!"../drivers/target/target_core_hba.c", i32 64, i32 1}
!12 = !{ptr @__ksymtab_target_backend_unregister, !13, !"__ksymtab_target_backend_unregister", i1 false, i1 false}
!13 = !{!"../drivers/target/target_core_hba.c", i32 88, i32 1}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/target/target_core_hba.c", i32 116, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @core_alloc_hba._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @core_alloc_hba._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @core_alloc_hba.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/target/target_core_hba.c", i32 120, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @core_alloc_hba.__key.8, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/target/target_core_hba.c", i32 121, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/target/target_core_hba.c", i32 141, i32 2}
!27 = !{ptr @core_alloc_hba.__UNIQUE_ID_ddebug596, !26, !"__UNIQUE_ID_ddebug596", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/target/target_core_hba.c", i32 165, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @core_delete_hba.__UNIQUE_ID_ddebug597, !29, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!32 = !{ptr @hba_id_counter, !33, !"hba_id_counter", i1 false, i1 false}
!33 = !{!"../drivers/target/target_core_hba.c", i32 32, i32 12}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/target/target_core_hba.c", i32 30, i32 8}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @backend_mutex, !35, !"backend_mutex", i1 false, i1 false}
!38 = !{ptr @backend_list, !39, !"backend_list", i1 false, i1 false}
!39 = !{!"../drivers/target/target_core_hba.c", i32 29, i32 8}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/target/target_core_hba.c", i32 34, i32 8}
!42 = !{ptr @hba_lock, !41, !"hba_lock", i1 false, i1 false}
!43 = !{ptr @hba_list, !44, !"hba_list", i1 false, i1 false}
!44 = !{!"../drivers/target/target_core_hba.c", i32 35, i32 8}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2148165019, i64 2148165024, i64 2148165037, i64 2148165081, i64 2148165115, i64 2148165136}
!55 = !{!"branch_weights", i32 2000, i32 1}
