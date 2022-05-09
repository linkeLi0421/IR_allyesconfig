; ModuleID = '/llk/IR_all_yes/drivers/cxl/core/pmem.c_pt.bc'
source_filename = "../drivers/cxl/core/pmem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+to_cxl_nvdimm_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_to_cxl_nvdimm_bridge\09\09\09\09"
module asm "\09.long\09__crc_to_cxl_nvdimm_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_to_cxl_nvdimm_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22to_cxl_nvdimm_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_to_cxl_nvdimm_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+is_cxl_nvdimm_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_is_cxl_nvdimm_bridge\09\09\09\09"
module asm "\09.long\09__crc_is_cxl_nvdimm_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_cxl_nvdimm_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22is_cxl_nvdimm_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_is_cxl_nvdimm_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cxl_find_nvdimm_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_cxl_find_nvdimm_bridge\09\09\09\09"
module asm "\09.long\09__crc_cxl_find_nvdimm_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxl_find_nvdimm_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22cxl_find_nvdimm_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_cxl_find_nvdimm_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_cxl_add_nvdimm_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_cxl_add_nvdimm_bridge\09\09\09\09"
module asm "\09.long\09__crc_devm_cxl_add_nvdimm_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_cxl_add_nvdimm_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_cxl_add_nvdimm_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_devm_cxl_add_nvdimm_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+is_cxl_nvdimm\22, \22a\22\09"
module asm "\09.weak\09__crc_is_cxl_nvdimm\09\09\09\09"
module asm "\09.long\09__crc_is_cxl_nvdimm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_cxl_nvdimm:\09\09\09\09\09"
module asm "\09.asciz \09\22is_cxl_nvdimm\22\09\09\09\09\09"
module asm "__kstrtabns_is_cxl_nvdimm:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+to_cxl_nvdimm\22, \22a\22\09"
module asm "\09.weak\09__crc_to_cxl_nvdimm\09\09\09\09"
module asm "\09.long\09__crc_to_cxl_nvdimm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_to_cxl_nvdimm:\09\09\09\09\09"
module asm "\09.asciz \09\22to_cxl_nvdimm\22\09\09\09\09\09"
module asm "__kstrtabns_to_cxl_nvdimm:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_cxl_add_nvdimm\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_cxl_add_nvdimm\09\09\09\09"
module asm "\09.long\09__crc_devm_cxl_add_nvdimm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_cxl_add_nvdimm:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_cxl_add_nvdimm\22\09\09\09\09\09"
module asm "__kstrtabns_devm_cxl_add_nvdimm:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.cxl_nvdimm = type { %struct.device, ptr, ptr }
%struct.cxl_memdev = type { %struct.device, %struct.cdev, ptr, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxl_nvdimm_bridge\00", [46 x i8] zeroinitializer }, align 32
@cxl_nvdimm_bridge_attribute_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @cxl_base_attribute_group, ptr null], [24 x i8] zeroinitializer }, align 32
@cxl_nvdimm_bridge_type = dso_local constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str, ptr @cxl_nvdimm_bridge_attribute_groups, ptr null, ptr null, ptr @cxl_nvdimm_bridge_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@to_cxl_nvdimm_bridge.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/cxl/core/pmem.c\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s %s: not a cxl_nvdimm_bridge device\0A\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_to_cxl_nvdimm_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_to_cxl_nvdimm_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_to_cxl_nvdimm_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @to_cxl_nvdimm_bridge to i32), ptr @__kstrtab_to_cxl_nvdimm_bridge, ptr @__kstrtabns_to_cxl_nvdimm_bridge }, section "___ksymtab_gpl+to_cxl_nvdimm_bridge", align 4
@__kstrtab_is_cxl_nvdimm_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_cxl_nvdimm_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_is_cxl_nvdimm_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_cxl_nvdimm_bridge to i32), ptr @__kstrtab_is_cxl_nvdimm_bridge, ptr @__kstrtabns_is_cxl_nvdimm_bridge }, section "___ksymtab_gpl+is_cxl_nvdimm_bridge", align 4
@cxl_bus_type = external dso_local global %struct.bus_type, align 4
@__kstrtab_cxl_find_nvdimm_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxl_find_nvdimm_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_cxl_find_nvdimm_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxl_find_nvdimm_bridge to i32), ptr @__kstrtab_cxl_find_nvdimm_bridge, ptr @__kstrtabns_cxl_find_nvdimm_bridge }, section "___ksymtab_gpl+cxl_find_nvdimm_bridge", align 4
@__kstrtab_devm_cxl_add_nvdimm_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_cxl_add_nvdimm_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_cxl_add_nvdimm_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_cxl_add_nvdimm_bridge to i32), ptr @__kstrtab_devm_cxl_add_nvdimm_bridge, ptr @__kstrtabns_devm_cxl_add_nvdimm_bridge }, section "___ksymtab_gpl+devm_cxl_add_nvdimm_bridge", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cxl_nvdimm\00", [21 x i8] zeroinitializer }, align 32
@cxl_nvdimm_attribute_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @cxl_base_attribute_group, ptr null], [24 x i8] zeroinitializer }, align 32
@cxl_nvdimm_type = dso_local constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.3, ptr @cxl_nvdimm_attribute_groups, ptr null, ptr null, ptr @cxl_nvdimm_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_is_cxl_nvdimm = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_cxl_nvdimm = external dso_local constant [0 x i8], align 1
@__ksymtab_is_cxl_nvdimm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_cxl_nvdimm to i32), ptr @__kstrtab_is_cxl_nvdimm, ptr @__kstrtabns_is_cxl_nvdimm }, section "___ksymtab_gpl+is_cxl_nvdimm", align 4
@to_cxl_nvdimm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s %s: not a cxl_nvdimm device\0A\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_to_cxl_nvdimm = external dso_local constant [0 x i8], align 1
@__kstrtabns_to_cxl_nvdimm = external dso_local constant [0 x i8], align 1
@__ksymtab_to_cxl_nvdimm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @to_cxl_nvdimm to i32), ptr @__kstrtab_to_cxl_nvdimm, ptr @__kstrtabns_to_cxl_nvdimm }, section "___ksymtab_gpl+to_cxl_nvdimm", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pmem%d\00", [25 x i8] zeroinitializer }, align 32
@devm_cxl_add_nvdimm.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.1, ptr @.str.8, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cxl_core\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"devm_cxl_add_nvdimm\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: register %s\0A\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_devm_cxl_add_nvdimm = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_cxl_add_nvdimm = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_cxl_add_nvdimm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_cxl_add_nvdimm to i32), ptr @__kstrtab_devm_cxl_add_nvdimm, ptr @__kstrtabns_devm_cxl_add_nvdimm }, section "___ksymtab_gpl+devm_cxl_add_nvdimm", align 4
@cxl_base_attribute_group = external dso_local global %struct.attribute_group, align 4
@cxl_nvdimm_bridge_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cxl_nvdimm_bridge_ida.xa_lock\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 40, i32 10 }
@___asan_gen_.13 = private unnamed_addr constant [35 x i8] c"cxl_nvdimm_bridge_attribute_groups\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 34, i32 38 }
@___asan_gen_.16 = private unnamed_addr constant [23 x i8] c"cxl_nvdimm_bridge_type\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 39, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 47, i32 6 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 191, i32 10 }
@___asan_gen_.28 = private unnamed_addr constant [28 x i8] c"cxl_nvdimm_attribute_groups\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 185, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"cxl_nvdimm_type\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 190, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 204, i32 6 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 254, i32 25 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 262, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [22 x i8] c"cxl_nvdimm_bridge_ida\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [27 x i8] c"../drivers/cxl/core/pmem.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 24, i32 8 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_cxl_find_nvdimm_bridge, ptr @__ksymtab_devm_cxl_add_nvdimm, ptr @__ksymtab_devm_cxl_add_nvdimm_bridge, ptr @__ksymtab_is_cxl_nvdimm, ptr @__ksymtab_is_cxl_nvdimm_bridge, ptr @__ksymtab_to_cxl_nvdimm, ptr @__ksymtab_to_cxl_nvdimm_bridge, ptr @.str, ptr @cxl_nvdimm_bridge_attribute_groups, ptr @cxl_nvdimm_bridge_type, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cxl_nvdimm_attribute_groups, ptr @cxl_nvdimm_type, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cxl_nvdimm_bridge_ida, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_nvdimm_bridge_attribute_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_nvdimm_bridge_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_nvdimm_attribute_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_nvdimm_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_nvdimm_bridge_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxl_nvdimm_bridge_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.not.i = icmp eq ptr %1, @cxl_nvdimm_bridge_type
  br i1 %cmp.not.i, label %if.end38.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %.b45.i = load i1, ptr @to_cxl_nvdimm_bridge.__already_done, align 1
  br i1 %.b45.i, label %land.rhs.i.to_cxl_nvdimm_bridge.exit_crit_edge, label %if.then.i, !prof !52

land.rhs.i.to_cxl_nvdimm_bridge.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %to_cxl_nvdimm_bridge.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @to_cxl_nvdimm_bridge.__already_done, align 1
  %call.i = tail call ptr @dev_driver_string(ptr noundef %dev) #5
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %call.i, ptr noundef %retval.0.i.i) #5
  br label %to_cxl_nvdimm_bridge.exit

if.end38.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  br label %to_cxl_nvdimm_bridge.exit

to_cxl_nvdimm_bridge.exit:                        ; preds = %if.end38.i, %dev_name.exit.i, %land.rhs.i.to_cxl_nvdimm_bridge.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.end38.i ], [ null, %dev_name.exit.i ], [ null, %land.rhs.i.to_cxl_nvdimm_bridge.exit_crit_edge ]
  %6 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %retval.0.i, align 8
  tail call void @ida_free(ptr noundef nonnull @cxl_nvdimm_bridge_ida, i32 noundef %7) #5
  tail call void @kfree(ptr noundef %retval.0.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @to_cxl_nvdimm_bridge(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp.not = icmp eq ptr %1, @cxl_nvdimm_bridge_type
  br i1 %cmp.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b45 = load i1, ptr @to_cxl_nvdimm_bridge.__already_done, align 1
  br i1 %.b45, label %land.rhs.return_crit_edge, label %if.then, !prof !52

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @to_cxl_nvdimm_bridge.__already_done, align 1
  %call = tail call ptr @dev_driver_string(ptr noundef %dev) #5
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %call, ptr noundef %retval.0.i) #5
  br label %return

if.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  br label %return

return:                                           ; preds = %if.end38, %dev_name.exit, %land.rhs.return_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end38 ], [ null, %dev_name.exit ], [ null, %land.rhs.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_cxl_nvdimm_bridge(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp = icmp eq ptr %1, @cxl_nvdimm_bridge_type
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxl_find_nvdimm_bridge(ptr noundef %cxl_nvd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bus_find_device(ptr noundef nonnull @cxl_bus_type, ptr noundef null, ptr noundef %cxl_nvd, ptr noundef nonnull @match_nvdimm_bridge) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %type.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.not.i = icmp eq ptr %1, @cxl_nvdimm_bridge_type
  br i1 %cmp.not.i, label %if.end38.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end
  %.b45.i = load i1, ptr @to_cxl_nvdimm_bridge.__already_done, align 1
  br i1 %.b45.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !52

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @to_cxl_nvdimm_bridge.__already_done, align 1
  %call.i = tail call ptr @dev_driver_string(ptr noundef nonnull %call) #5
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %call.i, ptr noundef %retval.0.i.i) #5
  br label %cleanup

if.end38.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %call, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %if.end38.i, %dev_name.exit.i, %land.rhs.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %add.ptr.i, %if.end38.i ], [ null, %dev_name.exit.i ], [ null, %land.rhs.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @match_nvdimm_bridge(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %1, @cxl_nvdimm_bridge_type
  %conv = zext i1 %cmp.i to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @devm_cxl_add_nvdimm_bridge(ptr nocapture readnone %host, ptr nocapture readnone %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -6 to ptr)
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxl_nvdimm_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @cxl_nvdimm_type
  br i1 %cmp.i.i, label %entry.to_cxl_nvdimm.exit_crit_edge, label %land.rhs.i

entry.to_cxl_nvdimm.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %to_cxl_nvdimm.exit

land.rhs.i:                                       ; preds = %entry
  %.b47.i = load i1, ptr @to_cxl_nvdimm.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.to_cxl_nvdimm.exit_crit_edge, label %if.then.i, !prof !52

land.rhs.i.to_cxl_nvdimm.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %to_cxl_nvdimm.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @to_cxl_nvdimm.__already_done, align 1
  %call17.i = tail call ptr @dev_driver_string(ptr noundef %dev) #5
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 205, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %call17.i, ptr noundef %retval.0.i.i) #5
  br label %to_cxl_nvdimm.exit

to_cxl_nvdimm.exit:                               ; preds = %dev_name.exit.i, %land.rhs.i.to_cxl_nvdimm.exit_crit_edge, %entry.to_cxl_nvdimm.exit_crit_edge
  %dev..i = phi ptr [ %dev, %entry.to_cxl_nvdimm.exit_crit_edge ], [ null, %dev_name.exit.i ], [ null, %land.rhs.i.to_cxl_nvdimm.exit_crit_edge ]
  tail call void @kfree(ptr noundef %dev..i) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_cxl_nvdimm(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp = icmp eq ptr %1, @cxl_nvdimm_type
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @to_cxl_nvdimm(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %1, @cxl_nvdimm_type
  br i1 %cmp.i, label %entry.if.end30_crit_edge, label %land.rhs

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b47 = load i1, ptr @to_cxl_nvdimm.__already_done, align 1
  br i1 %.b47, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !52

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @to_cxl_nvdimm.__already_done, align 1
  %call17 = tail call ptr @dev_driver_string(ptr noundef %dev) #5
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 205, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %call17, ptr noundef %retval.0.i) #5
  br label %if.end30

if.end30:                                         ; preds = %dev_name.exit, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %dev. = phi ptr [ %dev, %entry.if.end30_crit_edge ], [ null, %dev_name.exit ], [ null, %land.rhs.if.end30_crit_edge ]
  ret ptr %dev.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_cxl_add_nvdimm(ptr noundef %host, ptr noundef %cxlmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 936) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %cxl_nvdimm_alloc.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

cxl_nvdimm_alloc.exit:                            ; preds = %entry
  %cxlmd3.i = getelementptr inbounds %struct.cxl_nvdimm, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %cxlmd3.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cxlmd, ptr %cxlmd3.i, align 8
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i.i) #5
  %no_pm.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %no_pm.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i.i = load i16, ptr %no_pm.i.i, align 4
  %bf.set.i.i = or i16 %bf.load.i.i, 256
  store i16 %bf.set.i.i, ptr %no_pm.i.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cxlmd, ptr %parent.i, align 8
  %bus.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cxl_bus_type, ptr %bus.i, align 8
  %type.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cxl_nvdimm_type, ptr %type.i, align 4
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cxl_nvdimm_alloc.exit.if.then_crit_edge, label %if.end

cxl_nvdimm_alloc.exit.if.then_crit_edge:          ; preds = %cxl_nvdimm_alloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %cxl_nvdimm_alloc.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i3346 = phi ptr [ %call7.i.i.i, %cxl_nvdimm_alloc.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %6 = ptrtoint ptr %retval.0.i3346 to i32
  br label %cleanup

if.end:                                           ; preds = %cxl_nvdimm_alloc.exit
  %id = getelementptr inbounds %struct.cxl_memdev, ptr %cxlmd, i32 0, i32 3
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %call4 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.5, i32 noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @device_add(ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body, label %if.end6.err_crit_edge

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

do.body:                                          ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @devm_cxl_add_nvdimm.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@devm_cxl_add_nvdimm, %if.then15)) #5
          to label %do.end [label %if.then15], !srcloc !53

if.then15:                                        ; preds = %do.body
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i34 = icmp eq ptr %12, null
  br i1 %tobool.not.i34, label %if.end.i35, label %if.then15.dev_name.exit_crit_edge

if.then15.dev_name.exit_crit_edge:                ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i35:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i35, %if.then15.dev_name.exit_crit_edge
  %retval.0.i36 = phi ptr [ %14, %if.end.i35 ], [ %12, %if.then15.dev_name.exit_crit_edge ]
  %init_name.i37 = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i37, align 8
  %tobool.not.i38 = icmp eq ptr %16, null
  br i1 %tobool.not.i38, label %if.end.i39, label %dev_name.exit.dev_name.exit41_crit_edge

dev_name.exit.dev_name.exit41_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit41

if.end.i39:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i.i, align 8
  br label %dev_name.exit41

dev_name.exit41:                                  ; preds = %if.end.i39, %dev_name.exit.dev_name.exit41_crit_edge
  %retval.0.i40 = phi ptr [ %18, %if.end.i39 ], [ %16, %dev_name.exit.dev_name.exit41_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @devm_cxl_add_nvdimm.__UNIQUE_ID_ddebug259, ptr noundef %host, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i36, ptr noundef %retval.0.i40) #5
  br label %do.end

do.end:                                           ; preds = %dev_name.exit41, %do.body
  %call.i = tail call i32 @devm_add_action(ptr noundef %host, ptr noundef nonnull @cxl_nvd_unregister, ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i42 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i42, label %do.end.cleanup_crit_edge, label %if.then.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @device_unregister(ptr noundef nonnull %call7.i.i.i) #5
  br label %cleanup

err:                                              ; preds = %if.end6.err_crit_edge, %if.end.err_crit_edge
  %rc.0 = phi i32 [ %call4, %if.end.err_crit_edge ], [ %call7, %if.end6.err_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call7.i.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then.i, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %rc.0, %err ], [ 0, %do.end.cleanup_crit_edge ], [ %call.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxl_nvd_unregister(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_unregister(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !32, !33, !34, !36, !38, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/cxl/core/pmem.c", i32 40, i32 10}
!2 = !{ptr @cxl_nvdimm_bridge_type, !3, !"cxl_nvdimm_bridge_type", i1 false, i1 false}
!3 = !{!"../drivers/cxl/core/pmem.c", i32 39, i32 26}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/cxl/core/pmem.c", i32 47, i32 6}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__ksymtab_to_cxl_nvdimm_bridge, !9, !"__ksymtab_to_cxl_nvdimm_bridge", i1 false, i1 false}
!9 = !{!"../drivers/cxl/core/pmem.c", i32 52, i32 1}
!10 = !{ptr @__ksymtab_is_cxl_nvdimm_bridge, !11, !"__ksymtab_is_cxl_nvdimm_bridge", i1 false, i1 false}
!11 = !{!"../drivers/cxl/core/pmem.c", i32 58, i32 1}
!12 = !{ptr @__ksymtab_cxl_find_nvdimm_bridge, !13, !"__ksymtab_cxl_find_nvdimm_bridge", i1 false, i1 false}
!13 = !{!"../drivers/cxl/core/pmem.c", i32 74, i32 1}
!14 = !{ptr @__ksymtab_devm_cxl_add_nvdimm_bridge, !15, !"__ksymtab_devm_cxl_add_nvdimm_bridge", i1 false, i1 false}
!15 = !{!"../drivers/cxl/core/pmem.c", i32 176, i32 1}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/cxl/core/pmem.c", i32 191, i32 10}
!18 = !{ptr @cxl_nvdimm_type, !19, !"cxl_nvdimm_type", i1 false, i1 false}
!19 = !{!"../drivers/cxl/core/pmem.c", i32 190, i32 26}
!20 = !{ptr @__ksymtab_is_cxl_nvdimm, !21, !"__ksymtab_is_cxl_nvdimm", i1 false, i1 false}
!21 = !{!"../drivers/cxl/core/pmem.c", i32 200, i32 1}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/cxl/core/pmem.c", i32 204, i32 6}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__ksymtab_to_cxl_nvdimm, !26, !"__ksymtab_to_cxl_nvdimm", i1 false, i1 false}
!26 = !{!"../drivers/cxl/core/pmem.c", i32 209, i32 1}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/cxl/core/pmem.c", i32 254, i32 25}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/cxl/core/pmem.c", i32 262, i32 2}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @devm_cxl_add_nvdimm.__UNIQUE_ID_ddebug259, !30, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!34 = !{ptr @__ksymtab_devm_cxl_add_nvdimm, !35, !"__ksymtab_devm_cxl_add_nvdimm", i1 false, i1 false}
!35 = !{!"../drivers/cxl/core/pmem.c", i32 271, i32 1}
!36 = !{ptr @cxl_nvdimm_bridge_attribute_groups, !37, !"cxl_nvdimm_bridge_attribute_groups", i1 false, i1 false}
!37 = !{!"../drivers/cxl/core/pmem.c", i32 34, i32 38}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/cxl/core/pmem.c", i32 24, i32 8}
!40 = !{ptr @cxl_nvdimm_bridge_ida, !39, !"cxl_nvdimm_bridge_ida", i1 false, i1 false}
!41 = !{ptr @cxl_nvdimm_attribute_groups, !42, !"cxl_nvdimm_attribute_groups", i1 false, i1 false}
!42 = !{!"../drivers/cxl/core/pmem.c", i32 185, i32 38}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2148282202, i64 2148282207, i64 2148282220, i64 2148282264, i64 2148282298, i64 2148282319}
