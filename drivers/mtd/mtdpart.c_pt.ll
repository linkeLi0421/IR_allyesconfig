; ModuleID = '/llk/IR_all_yes/drivers/mtd/mtdpart.c_pt.bc'
source_filename = "../drivers/mtd/mtdpart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mtd_add_partition\22, \22a\22\09"
module asm "\09.weak\09__crc_mtd_add_partition\09\09\09\09"
module asm "\09.long\09__crc_mtd_add_partition\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_add_partition:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_add_partition\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_add_partition:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtd_del_partition\22, \22a\22\09"
module asm "\09.weak\09__crc_mtd_del_partition\09\09\09\09"
module asm "\09.long\09__crc_mtd_del_partition\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_del_partition:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_del_partition\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_del_partition:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__register_mtd_parser\22, \22a\22\09"
module asm "\09.weak\09__crc___register_mtd_parser\09\09\09\09"
module asm "\09.long\09__crc___register_mtd_parser\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___register_mtd_parser:\09\09\09\09\09"
module asm "\09.asciz \09\22__register_mtd_parser\22\09\09\09\09\09"
module asm "__kstrtabns___register_mtd_parser:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+deregister_mtd_parser\22, \22a\22\09"
module asm "\09.weak\09__crc_deregister_mtd_parser\09\09\09\09"
module asm "\09.long\09__crc_deregister_mtd_parser\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_deregister_mtd_parser:\09\09\09\09\09"
module asm "\09.asciz \09\22deregister_mtd_parser\22\09\09\09\09\09"
module asm "__kstrtabns_deregister_mtd_parser:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mtd_get_device_size\22, \22a\22\09"
module asm "\09.weak\09__crc_mtd_get_device_size\09\09\09\09"
module asm "\09.long\09__crc_mtd_get_device_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_get_device_size:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_get_device_size\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_get_device_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_erase_region_info = type { i64, i32, i32, ptr }
%struct.mtd_partitions = type { ptr, i32, ptr }
%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@__kstrtab_mtd_add_partition = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_add_partition = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_add_partition = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_add_partition to i32), ptr @__kstrtab_mtd_add_partition, ptr @__kstrtabns_mtd_add_partition }, section "___ksymtab_gpl+mtd_add_partition", align 4
@del_mtd_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016Deleting MTD partitions on \22%s\22:\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"del_mtd_partitions\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mtd/mtdpart.c\00", [42 x i8] zeroinitializer }, align 32
@del_mtd_partitions._entry_ptr = internal global ptr @del_mtd_partitions._entry, section ".printk_index", align 4
@__kstrtab_mtd_del_partition = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_del_partition = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_del_partition = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_del_partition to i32), ptr @__kstrtab_mtd_del_partition, ptr @__kstrtabns_mtd_del_partition }, section "___ksymtab_gpl+mtd_del_partition", align 4
@add_mtd_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015Creating %d MTD partitions on \22%s\22:\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"add_mtd_partitions\00", [45 x i8] zeroinitializer }, align 32
@add_mtd_partitions._entry_ptr = internal global ptr @add_mtd_partitions._entry, section ".printk_index", align 4
@part_parser_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@part_parsers = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @part_parsers, ptr @part_parsers }, [24 x i8] zeroinitializer }, align 32
@__kstrtab___register_mtd_parser = external dso_local constant [0 x i8], align 1
@__kstrtabns___register_mtd_parser = external dso_local constant [0 x i8], align 1
@__ksymtab___register_mtd_parser = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__register_mtd_parser to i32), ptr @__kstrtab___register_mtd_parser, ptr @__kstrtabns___register_mtd_parser }, section "___ksymtab_gpl+__register_mtd_parser", align 4
@__kstrtab_deregister_mtd_parser = external dso_local constant [0 x i8], align 1
@__kstrtabns_deregister_mtd_parser = external dso_local constant [0 x i8], align 1
@__ksymtab_deregister_mtd_parser = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @deregister_mtd_parser to i32), ptr @__kstrtab_deregister_mtd_parser, ptr @__kstrtabns_deregister_mtd_parser }, section "___ksymtab_gpl+deregister_mtd_parser", align 4
@default_subpartition_types = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.5, ptr null], [24 x i8] zeroinitializer }, align 32
@default_mtd_part_types = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.44, ptr @.str.5, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ofpart\00", [25 x i8] zeroinitializer }, align 32
@parse_mtd_partitions.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mtd\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"parse_mtd_partitions\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: parsing partitions %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@parse_mtd_partitions.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.10, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: got parser %s\0A\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_mtd_get_device_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_get_device_size = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_get_device_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_get_device_size to i32), ptr @__kstrtab_mtd_get_device_size, ptr @__kstrtabns_mtd_get_device_size }, section "___ksymtab_gpl+mtd_get_device_size", align 4
@allocate_partition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013memory allocation error while creating partitions for \22%s\22\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"allocate_partition\00", [45 x i8] zeroinitializer }, align 32
@allocate_partition._entry_ptr = internal global ptr @allocate_partition._entry, section ".printk_index", align 4
@allocate_partition._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015Moving partition %d: 0x%012llx -> 0x%012llx\0A\00", [49 x i8] zeroinitializer }, align 32
@allocate_partition._entry_ptr.15 = internal global ptr @allocate_partition._entry.13, section ".printk_index", align 4
@allocate_partition._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013mtd partition \22%s\22 doesn't have enough space: %#llx < %#llx, disabled\0A\00", [55 x i8] zeroinitializer }, align 32
@allocate_partition._entry_ptr.18 = internal global ptr @allocate_partition._entry.16, section ".printk_index", align 4
@allocate_partition._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0150x%012llx-0x%012llx : \22%s\22\0A\00", [34 x i8] zeroinitializer }, align 32
@allocate_partition._entry_ptr.21 = internal global ptr @allocate_partition._entry.19, section ".printk_index", align 4
@allocate_partition._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013mtd: partition \22%s\22 is out of reach -- disabled\0A\00", [45 x i8] zeroinitializer }, align 32
@allocate_partition._entry_ptr.24 = internal global ptr @allocate_partition._entry.22, section ".printk_index", align 4
@allocate_partition._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\014mtd: partition \22%s\22 extends beyond the end of device \22%s\22 -- size truncated to %#llx\0A\00", [40 x i8] zeroinitializer }, align 32
@allocate_partition._entry_ptr.27 = internal global ptr @allocate_partition._entry.25, section ".printk_index", align 4
@allocate_partition._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.12, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\014mtd: partition \22%s\22 doesn't start on an erase/write block boundary -- force read-only\0A\00", [39 x i8] zeroinitializer }, align 32
@allocate_partition._entry_ptr.30 = internal global ptr @allocate_partition._entry.28, section ".printk_index", align 4
@allocate_partition._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.12, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014mtd: partition \22%s\22 doesn't end on an erase/write block -- force read-only\0A\00", [50 x i8] zeroinitializer }, align 32
@allocate_partition._entry_ptr.33 = internal global ptr @allocate_partition._entry.31, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mtd_partition_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_offset, ptr null], [24 x i8] zeroinitializer }, align 32
@mtd_add_partition_attrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014mtd: failed to create partition attrs, err=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtd_add_partition_attrs\00", [40 x i8] zeroinitializer }, align 32
@mtd_add_partition_attrs._entry_ptr = internal global ptr @mtd_add_partition_attrs._entry, section ".printk_index", align 4
@dev_attr_offset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offset_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@__del_mtd_partitions._entry = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 335, ptr null, ptr null }, align 1
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Deleting %s MTD partition\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__del_mtd_partitions\00", [43 x i8] zeroinitializer }, align 32
@__del_mtd_partitions._entry_ptr = internal global ptr @__del_mtd_partitions._entry, section ".printk_index", align 4
@__del_mtd_partitions._entry.40 = internal constant %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 339, ptr null, ptr null }, align 1
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Error when deleting partition \22%s\22 (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@__del_mtd_partitions._entry_ptr.42 = internal global ptr @__del_mtd_partitions._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"part_parser_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmdlinepart\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fixed-partitions\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"partitions\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@mtd_part_do_parse.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtd_part_do_parse\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: parser %s: %i\0A\00", [45 x i8] zeroinitializer }, align 32
@mtd_part_do_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015%d %s partitions found on MTD device %s\0A\00", [53 x i8] zeroinitializer }, align 32
@mtd_part_do_parse._entry_ptr = internal global ptr @mtd_part_do_parse._entry, section ".printk_index", align 4
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 356, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 400, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"part_parser_lock\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"part_parsers\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 441, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"default_subpartition_types\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 509, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant [23 x i8] c"default_mtd_part_types\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 502, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 661, i32 23 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 664, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 667, i32 20 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 669, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 52, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 97, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 109, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 119, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 131, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 137, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 182, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 190, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"mtd_partition_attrs\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 224, i32 32 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 233, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [16 x i8] c"dev_attr_offset\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 222, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 220, i32 25 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 335, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 338, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 440, i32 8 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 503, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 581, i32 22 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 588, i32 33 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 590, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 522, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [25 x i8] c"../drivers/mtd/mtdpart.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 526, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__del_mtd_partitions._entry, ptr @__del_mtd_partitions._entry.40, ptr @__del_mtd_partitions._entry_ptr, ptr @__del_mtd_partitions._entry_ptr.42, ptr @__ksymtab___register_mtd_parser, ptr @__ksymtab_deregister_mtd_parser, ptr @__ksymtab_mtd_add_partition, ptr @__ksymtab_mtd_del_partition, ptr @__ksymtab_mtd_get_device_size, ptr @add_mtd_partitions._entry, ptr @add_mtd_partitions._entry_ptr, ptr @allocate_partition._entry, ptr @allocate_partition._entry.13, ptr @allocate_partition._entry.16, ptr @allocate_partition._entry.19, ptr @allocate_partition._entry.22, ptr @allocate_partition._entry.25, ptr @allocate_partition._entry.28, ptr @allocate_partition._entry.31, ptr @allocate_partition._entry_ptr, ptr @allocate_partition._entry_ptr.15, ptr @allocate_partition._entry_ptr.18, ptr @allocate_partition._entry_ptr.21, ptr @allocate_partition._entry_ptr.24, ptr @allocate_partition._entry_ptr.27, ptr @allocate_partition._entry_ptr.30, ptr @allocate_partition._entry_ptr.33, ptr @del_mtd_partitions._entry, ptr @del_mtd_partitions._entry_ptr, ptr @mtd_add_partition_attrs._entry, ptr @mtd_add_partition_attrs._entry_ptr, ptr @mtd_part_do_parse._entry, ptr @mtd_part_do_parse._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @part_parser_lock, ptr @part_parsers, ptr @default_subpartition_types, ptr @default_mtd_part_types, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @mtd_partition_attrs, ptr @.str.34, ptr @.str.35, ptr @dev_attr_offset, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @del_mtd_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_mtd_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @part_parser_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @part_parsers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_subpartition_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mtd_part_types to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_partition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_partition._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_partition._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_partition._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_partition._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_partition._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_partition._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_partition._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_partition_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_add_partition_attrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_offset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_part_do_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtd_add_partition(ptr noundef %parent, ptr noundef %name, i64 noundef %offset, i64 noundef %length) #0 align 64 {
entry:
  %part = alloca %struct.mtd_partition, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %mtd.addr.0.i = phi ptr [ %parent, %entry ], [ %1, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 62
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %mtd_get_master.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

mtd_get_master.exit:                              ; preds = %while.cond.i
  %parent.i51 = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 62
  %2 = ptrtoint ptr %parent.i51 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i51, align 4
  %tobool.i.not = icmp eq ptr %3, null
  %size = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 64, i32 0, i32 2
  %size2 = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 2
  %cond.in = select i1 %tobool.i.not, ptr %size2, ptr %size
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load8_noabort(i32 %4)
  %cond = load i64, ptr %cond.in, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %part) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %offset)
  %switch = icmp ugt i64 %offset, -3
  br i1 %switch, label %mtd_get_master.exit.cleanup_crit_edge, label %if.end

mtd_get_master.exit.cleanup_crit_edge:            ; preds = %mtd_get_master.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mtd_get_master.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length)
  %cmp4 = icmp eq i64 %length, 0
  %sub = sub i64 %cond, %offset
  %spec.select = select i1 %cmp4, i64 %sub, i64 %length
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %spec.select)
  %cmp7 = icmp slt i64 %spec.select, 1
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %5 = call ptr @memset(ptr %part, i32 0, i32 40)
  %6 = ptrtoint ptr %part to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %part, align 8
  %size11 = getelementptr inbounds %struct.mtd_partition, ptr %part, i32 0, i32 2
  %7 = ptrtoint ptr %size11 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %spec.select, ptr %size11, align 8
  %offset12 = getelementptr inbounds %struct.mtd_partition, ptr %part, i32 0, i32 3
  %8 = ptrtoint ptr %offset12 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %offset, ptr %offset12, align 8
  %call13 = call fastcc ptr @allocate_partition(ptr noundef %parent, ptr noundef nonnull %part, i32 noundef -1, i64 noundef %offset)
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %10 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %10, i32 noundef 0) #7
  %11 = getelementptr inbounds %struct.mtd_info, ptr %call13, i32 0, i32 64
  %partitions = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 63
  %prev.i = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 63, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %11, ptr noundef %13, ptr noundef %partitions) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.list_add_tail.exit_crit_edge

if.end17.list_add_tail.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %partitions, ptr %11, align 4
  %prev3.i.i = getelementptr inbounds %struct.mtd_info, ptr %call13, i32 0, i32 64, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %11, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end17.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %10) #7
  %call19 = tail call i32 @add_mtd_device(ptr noundef %call13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end21, label %err_remove_part

if.end21:                                         ; preds = %list_add_tail.exit
  %dev.i = getelementptr inbounds %struct.mtd_info, ptr %call13, i32 0, i32 56
  %call.i = tail call i32 @sysfs_create_files(ptr noundef %dev.i, ptr noundef nonnull @mtd_partition_attrs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i52 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i52, label %if.end21.cleanup_crit_edge, label %do.end.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %call.i) #10
  br label %cleanup

err_remove_part:                                  ; preds = %list_add_tail.exit
  tail call void @mutex_lock_nested(ptr noundef %10, i32 noundef 0) #7
  %call.i.i53 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #7
  br i1 %call.i.i53, label %if.end.i.i54, label %err_remove_part.list_del.exit_crit_edge

err_remove_part.list_del.exit_crit_edge:          ; preds = %err_remove_part
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i54:                                     ; preds = %err_remove_part
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.mtd_info, ptr %call13, i32 0, i32 64, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i54, %err_remove_part.list_del.exit_crit_edge
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i55 = getelementptr inbounds %struct.mtd_info, ptr %call13, i32 0, i32 64, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i55 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i55, align 4
  tail call void @mutex_unlock(ptr noundef %10) #7
  %name.i = getelementptr inbounds %struct.mtd_info, ptr %call13, i32 0, i32 13
  %26 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name.i, align 8
  tail call void @kfree(ptr noundef %27) #7
  tail call void @kfree(ptr noundef %call13) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %do.end.i, %if.end21.cleanup_crit_edge, %if.then15, %if.end.cleanup_crit_edge, %mtd_get_master.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then15 ], [ %call19, %list_del.exit ], [ -22, %mtd_get_master.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %part) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @allocate_partition(ptr noundef %parent, ptr nocapture noundef readonly %part, i32 noundef %partno, i64 noundef %cur_offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %mtd.addr.0.i = phi ptr [ %parent, %entry ], [ %1, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 62
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %mtd_get_master.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

mtd_get_master.exit:                              ; preds = %while.cond.i
  %flags = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 3
  %cond.in = select i1 %tobool.not, ptr %erasesize, ptr %writesize
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load i32, ptr %cond.in, align 4
  %parent.i1304 = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 62
  %5 = ptrtoint ptr %parent.i1304 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i1304, align 4
  %tobool.i.not = icmp eq ptr %6, null
  %size = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 64, i32 0, i32 2
  %size4 = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 2
  %cond6.in = select i1 %tobool.i.not, ptr %size4, ptr %size
  %7 = ptrtoint ptr %cond6.in to i32
  call void @__asan_load8_noabort(i32 %7)
  %cond6 = load i64, ptr %cond6.in, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1408) #11
  %9 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %part, align 8
  %call9 = tail call noalias ptr @kstrdup(ptr noundef %10, i32 noundef 3264) #7
  %tobool10.not = icmp eq ptr %call9, null
  %tobool11.not = icmp eq ptr %call7.i.i, null
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %mtd_get_master.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name13 = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 13
  %11 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name13, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %12) #10
  tail call void @kfree(ptr noundef %call9) #7
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

if.end:                                           ; preds = %mtd_get_master.exit
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %parent, align 8
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %call7.i.i, align 8
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %mask_flags = getelementptr inbounds %struct.mtd_partition, ptr %part, i32 0, i32 4
  %18 = ptrtoint ptr %mask_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask_flags, align 8
  %neg = xor i32 %19, -1
  %and18 = and i32 %17, %neg
  %flags19 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 64, i32 0, i32 3
  %add_flags = getelementptr inbounds %struct.mtd_partition, ptr %part, i32 0, i32 5
  %20 = ptrtoint ptr %add_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add_flags, align 4
  %or = or i32 %21, %and18
  %22 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %flags19, align 8
  %flags22 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %flags22, align 4
  %size23 = getelementptr inbounds %struct.mtd_partition, ptr %part, i32 0, i32 2
  %24 = ptrtoint ptr %size23 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %size23, align 8
  %size24 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 64, i32 0, i32 2
  %26 = ptrtoint ptr %size24 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %size24, align 8
  %writesize25 = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 4
  %27 = ptrtoint ptr %writesize25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %writesize25, align 4
  %writesize26 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %writesize26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %writesize26, align 4
  %writebufsize = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 5
  %30 = ptrtoint ptr %writebufsize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %writebufsize, align 8
  %writebufsize27 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %writebufsize27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %writebufsize27, align 8
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 6
  %33 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %oobsize, align 4
  %oobsize28 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %oobsize28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %oobsize28, align 4
  %oobavail = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 7
  %36 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %oobavail, align 8
  %oobavail29 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %oobavail29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %oobavail29, align 8
  %subpage_sft = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 53
  %39 = ptrtoint ptr %subpage_sft to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %subpage_sft, align 4
  %subpage_sft30 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 53
  %41 = ptrtoint ptr %subpage_sft30 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %subpage_sft30, align 4
  %name31 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 13
  %42 = ptrtoint ptr %name31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9, ptr %name31, align 8
  %owner = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 55
  %43 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %owner, align 4
  %owner32 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 55
  %45 = ptrtoint ptr %owner32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %owner32, align 4
  %dev = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 56
  %parent34 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 56, i32 1
  %46 = ptrtoint ptr %parent34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev, ptr %parent34, align 8
  %of_node = getelementptr inbounds %struct.mtd_partition, ptr %part, i32 0, i32 6
  %47 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node, align 8
  %of_node36 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 56, i32 27
  %49 = ptrtoint ptr %of_node36 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %of_node36, align 8
  %parent37 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 62
  %50 = ptrtoint ptr %parent37 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %parent, ptr %parent37, align 4
  %offset = getelementptr inbounds %struct.mtd_partition, ptr %part, i32 0, i32 3
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %offset, align 8
  %offset38 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 64, i32 0, i32 1
  %53 = ptrtoint ptr %offset38 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %offset38, align 8
  %partitions = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 63
  %54 = ptrtoint ptr %partitions to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %partitions, ptr %partitions, align 8
  %prev.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 63, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %partitions, ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %52)
  %cmp = icmp eq i64 %52, -1
  br i1 %cmp, label %if.then40, label %if.end42thread-pre-split

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %offset38 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %cur_offset, ptr %offset38, align 8
  br label %if.end42

if.end42thread-pre-split:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %offset38 to i32
  call void @__asan_load8_noabort(i32 %57)
  %.pr = load i64, ptr %offset38, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.end42thread-pre-split, %if.then40
  %58 = phi i64 [ %.pr, %if.end42thread-pre-split ], [ %cur_offset, %if.then40 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %58)
  %cmp44 = icmp eq i64 %58, -2
  br i1 %cmp44, label %if.then45, label %if.end42.if.end252_crit_edge

if.end42.if.end252_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end252

if.then45:                                        ; preds = %if.end42
  %59 = ptrtoint ptr %offset38 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %cur_offset, ptr %offset38, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %cur_offset)
  %cmp223 = icmp ult i64 %cur_offset, 4294967296
  br i1 %cmp223, label %if.then227, label %if.else233, !prof !121

if.then227:                                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %conv228 = trunc i64 %cur_offset to i32
  %rem229 = urem i32 %conv228, %cond
  br label %if.end237

if.else233:                                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %60 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %cond, i64 %cur_offset) #12, !srcloc !122
  %asmresult.i1306 = extractvalue { i64, i64 } %60, 0
  %shr.i = lshr i64 %asmresult.i1306, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end237

if.end237:                                        ; preds = %if.else233, %if.then227
  %__rem.0 = phi i32 [ %rem229, %if.then227 ], [ %conv.i, %if.else233 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0)
  %tobool239.not = icmp eq i32 %__rem.0, 0
  br i1 %tobool239.not, label %if.end237.if.end252_crit_edge, label %if.then240

if.end237.if.end252_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end252

if.then240:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #9
  %sub241 = sub i32 %cond, %__rem.0
  %conv242 = zext i32 %sub241 to i64
  %add244 = add i64 %conv242, %cur_offset
  %61 = ptrtoint ptr %offset38 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %add244, ptr %offset38, align 8
  %call250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %partno, i64 noundef %cur_offset, i64 noundef %add244) #10
  br label %if.end252

if.end252:                                        ; preds = %if.then240, %if.end237.if.end252_crit_edge, %if.end42.if.end252_crit_edge
  %62 = ptrtoint ptr %offset38 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %offset38, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %63)
  %cmp254 = icmp eq i64 %63, -3
  br i1 %cmp254, label %if.then256, label %if.end280thread-pre-split

if.then256:                                       ; preds = %if.end252
  %64 = ptrtoint ptr %offset38 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %cur_offset, ptr %offset38, align 8
  %sub259 = sub i64 %cond6, %cur_offset
  %65 = ptrtoint ptr %size24 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %size24, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub259, i64 %66)
  %cmp261.not = icmp ult i64 %sub259, %66
  br i1 %cmp261.not, label %do.end272, label %if.then263

if.then263:                                       ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #9
  %sub267 = sub i64 %sub259, %66
  %67 = ptrtoint ptr %size24 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %sub267, ptr %size24, align 8
  br label %if.end280

do.end272:                                        ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %part, align 8
  %call278 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %69, i64 noundef %sub259, i64 noundef %66) #10
  br label %cleanup

if.end280thread-pre-split:                        ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %size24 to i32
  call void @__asan_load8_noabort(i32 %70)
  %.pr1406 = load i64, ptr %size24, align 8
  br label %if.end280

if.end280:                                        ; preds = %if.end280thread-pre-split, %if.then263
  %71 = phi i64 [ %.pr1406, %if.end280thread-pre-split ], [ %sub267, %if.then263 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %71)
  %cmp282 = icmp eq i64 %71, 0
  br i1 %cmp282, label %if.then284, label %if.end280.do.end291_crit_edge

if.end280.do.end291_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end291

if.then284:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %offset38 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %offset38, align 8
  %sub286 = sub i64 %cond6, %73
  %74 = ptrtoint ptr %size24 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %sub286, ptr %size24, align 8
  br label %do.end291

do.end291:                                        ; preds = %if.then284, %if.end280.do.end291_crit_edge
  %75 = ptrtoint ptr %offset38 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %offset38, align 8
  %77 = ptrtoint ptr %size24 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %size24, align 8
  %add296 = add i64 %78, %76
  %79 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name31, align 8
  %call298 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i64 noundef %76, i64 noundef %add296, ptr noundef %80) #10
  %81 = ptrtoint ptr %offset38 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %offset38, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %cond6, i64 %82)
  %cmp300.not = icmp ugt i64 %cond6, %82
  br i1 %cmp300.not, label %if.end313, label %if.then302

if.then302:                                       ; preds = %do.end291
  call void @__sanitizer_cov_trace_pc() #9
  %erasesize305 = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 3
  %83 = call ptr @memset(ptr %offset38, i32 0, i32 16)
  %84 = ptrtoint ptr %erasesize305 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %erasesize305, align 8
  %erasesize306 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 3
  %86 = ptrtoint ptr %erasesize306 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %erasesize306, align 8
  %87 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %part, align 8
  %call312 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %88) #10
  br label %cleanup

if.end313:                                        ; preds = %do.end291
  %89 = ptrtoint ptr %size24 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %size24, align 8
  %add316 = add i64 %90, %82
  %91 = ptrtoint ptr %size4 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %size4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add316, i64 %92)
  %cmp318 = icmp ugt i64 %add316, %92
  br i1 %cmp318, label %if.then320, label %if.end313.if.end332_crit_edge

if.end313.if.end332_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end332

if.then320:                                       ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #9
  %sub322 = sub i64 %cond6, %82
  %93 = ptrtoint ptr %size24 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %sub322, ptr %size24, align 8
  %94 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %part, align 8
  %name329 = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 13
  %96 = ptrtoint ptr %name329 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %name329, align 8
  %call331 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %95, ptr noundef %97, i64 noundef %sub322) #10
  br label %if.end332

if.end332:                                        ; preds = %if.then320, %if.end313.if.end332_crit_edge
  %numeraseregions = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 19
  %98 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %numeraseregions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp333 = icmp sgt i32 %99, 1
  br i1 %cmp333, label %land.rhs.preheader, label %if.else393

land.rhs.preheader:                               ; preds = %if.end332
  %100 = ptrtoint ptr %offset38 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %offset38, align 8
  %102 = ptrtoint ptr %size24 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %size24, align 8
  %add339 = add i64 %103, %101
  %eraseregions = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 20
  %104 = ptrtoint ptr %eraseregions to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %eraseregions, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.preheader
  %i.01449 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %arrayidx = getelementptr %struct.mtd_erase_region_info, ptr %105, i32 %i.01449
  %106 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %101)
  %cmp344.not = icmp ugt i64 %107, %101
  br i1 %cmp344.not, label %land.rhs.for.end_crit_edge, label %for.inc

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw nsw i32 %i.01449, 1
  %exitcond.not = icmp eq i32 %inc, %99
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %i.0.lcssa.ph = phi i32 [ %i.01449, %land.rhs.for.end_crit_edge ], [ %99, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.ph)
  %cmp346.not = icmp eq i32 %i.0.lcssa.ph, 0
  %dec = add nsw i32 %i.0.lcssa.ph, -1
  %spec.select = select i1 %cmp346.not, i32 0, i32 %dec
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %99)
  %cmp3511451 = icmp slt i32 %spec.select, %99
  br i1 %cmp3511451, label %land.rhs353.lr.ph, label %for.end.do.body373_crit_edge

for.end.do.body373_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body373

land.rhs353.lr.ph:                                ; preds = %for.end
  %erasesize360 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 3
  br label %land.rhs353

land.rhs353:                                      ; preds = %for.inc370.land.rhs353_crit_edge, %land.rhs353.lr.ph
  %i.21452 = phi i32 [ %spec.select, %land.rhs353.lr.ph ], [ %inc371, %for.inc370.land.rhs353_crit_edge ]
  %arrayidx354 = getelementptr %struct.mtd_erase_region_info, ptr %105, i32 %i.21452
  %108 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx354, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %add339)
  %cmp356 = icmp ult i64 %109, %add339
  br i1 %cmp356, label %for.body359, label %land.rhs353.do.body373_crit_edge

land.rhs353.do.body373_crit_edge:                 ; preds = %land.rhs353
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body373

for.body359:                                      ; preds = %land.rhs353
  %110 = ptrtoint ptr %erasesize360 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %erasesize360, align 8
  %erasesize362 = getelementptr %struct.mtd_erase_region_info, ptr %105, i32 %i.21452, i32 1
  %112 = ptrtoint ptr %erasesize362 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %erasesize362, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %113)
  %cmp363 = icmp ult i32 %111, %113
  br i1 %cmp363, label %if.then365, label %for.body359.for.inc370_crit_edge

for.body359.for.inc370_crit_edge:                 ; preds = %for.body359
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc370

if.then365:                                       ; preds = %for.body359
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %erasesize360 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %erasesize360, align 8
  br label %for.inc370

for.inc370:                                       ; preds = %if.then365, %for.body359.for.inc370_crit_edge
  %inc371 = add i32 %i.21452, 1
  %exitcond1455.not = icmp eq i32 %inc371, %99
  br i1 %exitcond1455.not, label %for.inc370.do.body373_crit_edge, label %for.inc370.land.rhs353_crit_edge

for.inc370.land.rhs353_crit_edge:                 ; preds = %for.inc370
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs353

for.inc370.do.body373_crit_edge:                  ; preds = %for.inc370
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body373

do.body373:                                       ; preds = %for.inc370.do.body373_crit_edge, %land.rhs353.do.body373_crit_edge, %for.end.do.body373_crit_edge
  %erasesize374 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 3
  %115 = ptrtoint ptr %erasesize374 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %erasesize374, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp375 = icmp eq i32 %116, 0
  br i1 %cmp375, label %do.body384, label %do.body373.if.end396_crit_edge, !prof !123

do.body373.if.end396_crit_edge:                   ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end396

do.body384:                                       ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtdpart.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 161, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

if.else393:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %erasesize, align 8
  %erasesize395 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 3
  %119 = ptrtoint ptr %erasesize395 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %erasesize395, align 8
  br label %if.end396

if.end396:                                        ; preds = %if.else393, %do.body373.if.end396_crit_edge
  %120 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags22, align 4
  %and398 = and i32 %121, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and398)
  %tobool399.not = icmp eq i32 %and398, 0
  br i1 %tobool399.not, label %if.then400, label %if.end396.if.end402_crit_edge

if.end396.if.end402_crit_edge:                    ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end402

if.then400:                                       ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #9
  %erasesize401 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 3
  %122 = ptrtoint ptr %erasesize401 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %erasesize401, align 8
  br label %if.end402

if.end402:                                        ; preds = %if.then400, %if.end396.if.end402_crit_edge
  %wr_alignment.0 = phi i32 [ %cond, %if.end396.if.end402_crit_edge ], [ %123, %if.then400 ]
  %124 = ptrtoint ptr %parent37 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %parent37, align 4
  %tobool.not2.i = icmp eq ptr %125, null
  br i1 %tobool.not2.i, label %if.end402.if.else603_crit_edge, label %if.end402.while.body.i_crit_edge

if.end402.while.body.i_crit_edge:                 ; preds = %if.end402
  br label %while.body.i

if.end402.if.else603_crit_edge:                   ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else603

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end402.while.body.i_crit_edge
  %126 = phi ptr [ %130, %while.body.i.while.body.i_crit_edge ], [ %125, %if.end402.while.body.i_crit_edge ]
  %ofs.addr.04.i = phi i64 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end402.while.body.i_crit_edge ]
  %mtd.addr.03.i = phi ptr [ %126, %while.body.i.while.body.i_crit_edge ], [ %call7.i.i, %if.end402.while.body.i_crit_edge ]
  %offset.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.03.i, i32 0, i32 64, i32 0, i32 1
  %127 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %offset.i, align 8
  %add.i = add i64 %128, %ofs.addr.04.i
  %parent.i1307 = getelementptr inbounds %struct.mtd_info, ptr %126, i32 0, i32 62
  %129 = ptrtoint ptr %parent.i1307 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %parent.i1307, align 4
  %tobool.not.i1308 = icmp eq ptr %130, null
  br i1 %tobool.not.i1308, label %while.body.i.if.else603_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.if.else603_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else603

if.else603:                                       ; preds = %while.body.i.if.else603_crit_edge, %if.end402.if.else603_crit_edge
  %ofs.addr.0.lcssa.i = phi i64 [ 0, %if.end402.if.else603_crit_edge ], [ %add.i, %while.body.i.if.else603_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %ofs.addr.0.lcssa.i)
  %cmp605 = icmp ult i64 %ofs.addr.0.lcssa.i, 4294967296
  br i1 %cmp605, label %if.then613, label %if.else619, !prof !121

if.then613:                                       ; preds = %if.else603
  call void @__sanitizer_cov_trace_pc() #9
  %conv614 = trunc i64 %ofs.addr.0.lcssa.i to i32
  %rem615 = urem i32 %conv614, %wr_alignment.0
  br label %if.end623

if.else619:                                       ; preds = %if.else603
  call void @__sanitizer_cov_trace_pc() #9
  %131 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %wr_alignment.0, i64 %ofs.addr.0.lcssa.i) #12, !srcloc !122
  %asmresult.i1333 = extractvalue { i64, i64 } %131, 0
  %shr.i1335 = lshr i64 %asmresult.i1333, 32
  %conv.i1336 = trunc i64 %shr.i1335 to i32
  br label %if.end623

if.end623:                                        ; preds = %if.else619, %if.then613
  %__rem405.0 = phi i32 [ %rem615, %if.then613 ], [ %conv.i1336, %if.else619 ]
  %and626 = and i32 %121, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and626)
  %tobool627.not = icmp eq i32 %and626, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem405.0)
  %tobool629.not = icmp eq i32 %__rem405.0, 0
  %or.cond1302 = select i1 %tobool627.not, i1 true, i1 %tobool629.not
  br i1 %or.cond1302, label %if.end623.if.end639_crit_edge, label %if.then630

if.end623.if.end639_crit_edge:                    ; preds = %if.end623
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end639

if.then630:                                       ; preds = %if.end623
  call void @__sanitizer_cov_trace_pc() #9
  %and632 = and i32 %121, -1025
  %132 = ptrtoint ptr %flags22 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %and632, ptr %flags22, align 4
  %133 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %part, align 8
  %call638 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %134) #10
  br label %if.end639

if.end639:                                        ; preds = %if.then630, %if.end623.if.end639_crit_edge
  %135 = ptrtoint ptr %parent37 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %parent37, align 4
  %tobool.not2.i1338 = icmp eq ptr %136, null
  br i1 %tobool.not2.i1338, label %if.end639.mtd_get_master_ofs.exit1347_crit_edge, label %if.end639.while.body.i1345_crit_edge

if.end639.while.body.i1345_crit_edge:             ; preds = %if.end639
  br label %while.body.i1345

if.end639.mtd_get_master_ofs.exit1347_crit_edge:  ; preds = %if.end639
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_get_master_ofs.exit1347

while.body.i1345:                                 ; preds = %while.body.i1345.while.body.i1345_crit_edge, %if.end639.while.body.i1345_crit_edge
  %137 = phi ptr [ %141, %while.body.i1345.while.body.i1345_crit_edge ], [ %136, %if.end639.while.body.i1345_crit_edge ]
  %ofs.addr.04.i1339 = phi i64 [ %add.i1342, %while.body.i1345.while.body.i1345_crit_edge ], [ 0, %if.end639.while.body.i1345_crit_edge ]
  %mtd.addr.03.i1340 = phi ptr [ %137, %while.body.i1345.while.body.i1345_crit_edge ], [ %call7.i.i, %if.end639.while.body.i1345_crit_edge ]
  %offset.i1341 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.03.i1340, i32 0, i32 64, i32 0, i32 1
  %138 = ptrtoint ptr %offset.i1341 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %offset.i1341, align 8
  %add.i1342 = add i64 %139, %ofs.addr.04.i1339
  %parent.i1343 = getelementptr inbounds %struct.mtd_info, ptr %137, i32 0, i32 62
  %140 = ptrtoint ptr %parent.i1343 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %parent.i1343, align 4
  %tobool.not.i1344 = icmp eq ptr %141, null
  br i1 %tobool.not.i1344, label %while.body.i1345.mtd_get_master_ofs.exit1347_crit_edge, label %while.body.i1345.while.body.i1345_crit_edge

while.body.i1345.while.body.i1345_crit_edge:      ; preds = %while.body.i1345
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i1345

while.body.i1345.mtd_get_master_ofs.exit1347_crit_edge: ; preds = %while.body.i1345
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_get_master_ofs.exit1347

mtd_get_master_ofs.exit1347:                      ; preds = %while.body.i1345.mtd_get_master_ofs.exit1347_crit_edge, %if.end639.mtd_get_master_ofs.exit1347_crit_edge
  %ofs.addr.0.lcssa.i1346 = phi i64 [ 0, %if.end639.mtd_get_master_ofs.exit1347_crit_edge ], [ %add.i1342, %while.body.i1345.mtd_get_master_ofs.exit1347_crit_edge ]
  %142 = ptrtoint ptr %size24 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %size24, align 8
  %add642 = add i64 %143, %ofs.addr.0.lcssa.i1346
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add642)
  %cmp844 = icmp ult i64 %add642, 4294967296
  br i1 %cmp844, label %if.then852, label %if.else858, !prof !121

if.then852:                                       ; preds = %mtd_get_master_ofs.exit1347
  call void @__sanitizer_cov_trace_pc() #9
  %conv853 = trunc i64 %add642 to i32
  %rem854 = urem i32 %conv853, %wr_alignment.0
  br label %if.end862

if.else858:                                       ; preds = %mtd_get_master_ofs.exit1347
  call void @__sanitizer_cov_trace_pc() #9
  %144 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %wr_alignment.0, i64 %add642) #12, !srcloc !122
  %asmresult.i1372 = extractvalue { i64, i64 } %144, 0
  %shr.i1374 = lshr i64 %asmresult.i1372, 32
  %conv.i1375 = trunc i64 %shr.i1374 to i32
  br label %if.end862

if.end862:                                        ; preds = %if.else858, %if.then852
  %__rem644.0 = phi i32 [ %rem854, %if.then852 ], [ %conv.i1375, %if.else858 ]
  %145 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %flags22, align 4
  %and865 = and i32 %146, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and865)
  %tobool866.not = icmp eq i32 %and865, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem644.0)
  %tobool868.not = icmp eq i32 %__rem644.0, 0
  %or.cond1303 = select i1 %tobool866.not, i1 true, i1 %tobool868.not
  br i1 %or.cond1303, label %if.end862.if.end878_crit_edge, label %if.then869

if.end862.if.end878_crit_edge:                    ; preds = %if.end862
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end878

if.then869:                                       ; preds = %if.end862
  call void @__sanitizer_cov_trace_pc() #9
  %and871 = and i32 %146, -1025
  %147 = ptrtoint ptr %flags22 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %and871, ptr %flags22, align 4
  %148 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %part, align 8
  %call877 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %149) #10
  br label %if.end878

if.end878:                                        ; preds = %if.then869, %if.end862.if.end878_crit_edge
  %150 = ptrtoint ptr %size24 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %size24, align 8
  %size880 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 2
  %152 = ptrtoint ptr %size880 to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %151, ptr %size880, align 8
  %ecc_step_size = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 17
  %153 = ptrtoint ptr %ecc_step_size to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ecc_step_size, align 8
  %ecc_step_size881 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 17
  %155 = ptrtoint ptr %ecc_step_size881 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %ecc_step_size881, align 8
  %ecc_strength = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 18
  %156 = ptrtoint ptr %ecc_strength to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ecc_strength, align 4
  %ecc_strength882 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 18
  %158 = ptrtoint ptr %ecc_strength882 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %ecc_strength882, align 4
  %bitflip_threshold = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 12
  %159 = ptrtoint ptr %bitflip_threshold to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %bitflip_threshold, align 4
  %bitflip_threshold883 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 12
  %161 = ptrtoint ptr %bitflip_threshold883 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %bitflip_threshold883, align 4
  %_block_isbad = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 42
  %162 = ptrtoint ptr %_block_isbad to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %_block_isbad, align 4
  %tobool884.not = icmp eq ptr %163, null
  br i1 %tobool884.not, label %if.end878.cleanup_crit_edge, label %while.cond.preheader

if.end878.cleanup_crit_edge:                      ; preds = %if.end878
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end878
  %164 = ptrtoint ptr %size24 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %size24, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %165)
  %cmp8871453.not = icmp eq i64 %165, 0
  br i1 %cmp8871453.not, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %bbtblocks = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 52, i32 3
  %badblocks = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 52, i32 2
  %erasesize901 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end900.while.body_crit_edge, %while.body.lr.ph
  %offs.01454 = phi i64 [ 0, %while.body.lr.ph ], [ %add903, %if.end900.while.body_crit_edge ]
  %call889 = tail call i32 @mtd_block_isreserved(ptr noundef nonnull %call7.i.i, i64 noundef %offs.01454) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call889)
  %tobool890.not = icmp eq i32 %call889, 0
  br i1 %tobool890.not, label %if.else893, label %if.then891

if.then891:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %166 = ptrtoint ptr %bbtblocks to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %bbtblocks, align 8
  %inc892 = add i32 %167, 1
  store i32 %inc892, ptr %bbtblocks, align 8
  br label %if.end900

if.else893:                                       ; preds = %while.body
  %call894 = tail call i32 @mtd_block_isbad(ptr noundef nonnull %call7.i.i, i64 noundef %offs.01454) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call894)
  %tobool895.not = icmp eq i32 %call894, 0
  br i1 %tobool895.not, label %if.else893.if.end900_crit_edge, label %if.then896

if.else893.if.end900_crit_edge:                   ; preds = %if.else893
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end900

if.then896:                                       ; preds = %if.else893
  call void @__sanitizer_cov_trace_pc() #9
  %168 = ptrtoint ptr %badblocks to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %badblocks, align 4
  %inc898 = add i32 %169, 1
  store i32 %inc898, ptr %badblocks, align 4
  br label %if.end900

if.end900:                                        ; preds = %if.then896, %if.else893.if.end900_crit_edge, %if.then891
  %170 = ptrtoint ptr %erasesize901 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %erasesize901, align 8
  %conv902 = zext i32 %171 to i64
  %add903 = add i64 %offs.01454, %conv902
  %172 = ptrtoint ptr %size24 to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %size24, align 8
  %cmp887 = icmp ult i64 %add903, %173
  br i1 %cmp887, label %if.end900.while.body_crit_edge, label %if.end900.cleanup_crit_edge

if.end900.cleanup_crit_edge:                      ; preds = %if.end900
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end900.while.body_crit_edge:                   ; preds = %if.end900
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %if.end900.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end878.cleanup_crit_edge, %if.then302, %do.end272, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call7.i.i, %if.end878.cleanup_crit_edge ], [ %call7.i.i, %if.then302 ], [ %call7.i.i, %do.end272 ], [ %call7.i.i, %while.cond.preheader.cleanup_crit_edge ], [ %call7.i.i, %if.end900.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_mtd_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @del_mtd_partitions(ptr noundef %mtd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %mtd.addr.0.i = phi ptr [ %mtd, %entry ], [ %1, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 62
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %mtd_get_master.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

mtd_get_master.exit:                              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %4, i32 noundef 0) #7
  %call2 = tail call fastcc i32 @__del_mtd_partitions(ptr noundef %mtd)
  tail call void @mutex_unlock(ptr noundef %4) #7
  ret i32 %call2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__del_mtd_partitions(ptr noundef readonly %mtd) unnamed_addr #0 align 64 {
entry:
  %tmp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list, ptr %tmp_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list, ptr %0, align 4
  %partitions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 63
  %3 = ptrtoint ptr %partitions to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %partitions, align 8
  %cmp.not43 = icmp eq ptr %4, %partitions
  br i1 %cmp.not43, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in45 = phi ptr [ %.pn47, %for.inc.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %err.044 = phi i32 [ %err.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %child.046 = getelementptr i8, ptr %.pn.in45, i32 -1216
  %5 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn47 = load ptr, ptr %.pn.in45, align 8
  %partitions.i = getelementptr i8, ptr %.pn.in45, i32 -8
  %6 = ptrtoint ptr %partitions.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %partitions.i, align 4
  %cmp.i.i.not = icmp eq ptr %7, %partitions.i
  br i1 %cmp.i.i.not, label %for.body.do.end_crit_edge, label %if.then

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call fastcc i32 @__del_mtd_partitions(ptr noundef %child.046)
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body.do.end_crit_edge
  %name = getelementptr i8, ptr %.pn.in45, i32 -1160
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %9) #10
  %call12 = call i32 @del_mtd_device(ptr noundef %child.046) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end21

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %11, i32 noundef %call12) #10
  br label %for.inc

if.end21:                                         ; preds = %do.end
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in45) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.list_del.exit_crit_edge

if.end21.list_del.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in45, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn.in45, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end21.list_del.exit_crit_edge
  %18 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in45, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in45, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 8
  call void @kfree(ptr noundef %21) #7
  call void @kfree(ptr noundef %child.046) #7
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %do.end17
  %err.1 = phi i32 [ %call12, %do.end17 ], [ %err.044, %list_del.exit ]
  %cmp.not = icmp eq ptr %.pn47, %partitions
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %err.1, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list) #7
  ret i32 %err.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtd_del_partition(ptr noundef %mtd, i32 noundef %partno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %mtd.addr.0.i = phi ptr [ %mtd, %entry ], [ %1, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 62
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %mtd_get_master.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

mtd_get_master.exit:                              ; preds = %while.cond.i
  %2 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %2, i32 noundef 0) #7
  %partitions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 63
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %mtd_get_master.exit
  %.pn.in = phi ptr [ %partitions, %mtd_get_master.exit ], [ %.pn, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp.not = icmp eq ptr %.pn, %partitions
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %index = getelementptr i8, ptr %.pn, i32 -1156
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %cmp2 = icmp eq i32 %5, %partno
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %child.0.le = getelementptr i8, ptr %.pn, i32 -1216
  %call3 = tail call fastcc i32 @__mtd_del_partition(ptr noundef %child.0.le)
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ -22, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %2) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mtd_del_partition(ptr noundef %mtd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %partitions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 63
  %0 = ptrtoint ptr %partitions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %partitions, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %1, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %cmp.not = icmp eq ptr %.pn.in, %partitions
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 8
  %child.0 = getelementptr i8, ptr %.pn.in, i32 -1216
  %call = tail call fastcc i32 @__mtd_del_partition(ptr noundef %child.0)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %dev = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56
  tail call void @sysfs_remove_files(ptr noundef %dev, ptr noundef nonnull @mtd_partition_attrs) #7
  %call13 = tail call i32 @del_mtd_device(ptr noundef %mtd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %for.end
  %3 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 64
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.list_del.exit_crit_edge

if.end16.list_del.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 64, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end16.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 64, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %name.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i, align 8
  tail call void @kfree(ptr noundef %13) #7
  tail call void @kfree(ptr noundef %mtd) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ %call13, %for.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_mtd_partitions(ptr noundef %parent, ptr nocapture noundef readonly %parts, i32 noundef %nbparts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %mtd.addr.0.i = phi ptr [ %parent, %entry ], [ %1, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 62
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %mtd_get_master.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

mtd_get_master.exit:                              ; preds = %while.cond.i
  %name = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 13
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %nbparts, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbparts)
  %cmp51 = icmp sgt i32 %nbparts, 0
  br i1 %cmp51, label %for.body.lr.ph, label %mtd_get_master.exit.cleanup_crit_edge

mtd_get_master.exit.cleanup_crit_edge:            ; preds = %mtd_get_master.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %mtd_get_master.exit
  %4 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 64
  %partitions = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 63
  %prev.i = getelementptr inbounds %struct.mtd_info, ptr %parent, i32 0, i32 63, i32 1
  br label %for.body

for.body:                                         ; preds = %mtd_add_partition_attrs.exit.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mtd_add_partition_attrs.exit.for.body_crit_edge ]
  %cur_offset.052 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %mtd_add_partition_attrs.exit.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.mtd_partition, ptr %parts, i32 %i.053
  %call2 = tail call fastcc ptr @allocate_partition(ptr noundef %parent, ptr noundef %add.ptr, i32 noundef %i.053, i64 noundef %cur_offset.052)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call2 to i32
  br label %err_del_partitions

if.end:                                           ; preds = %for.body
  tail call void @mutex_lock_nested(ptr noundef %4, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.mtd_info, ptr %call2, i32 0, i32 64
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %8, ptr noundef %partitions) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %partitions, ptr %6, align 4
  %prev3.i.i = getelementptr inbounds %struct.mtd_info, ptr %call2, i32 0, i32 64, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %6, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %4) #7
  %call6 = tail call i32 @add_mtd_device(ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %list_add_tail.exit
  tail call void @mutex_lock_nested(ptr noundef %4, i32 noundef 0) #7
  %call.i.i42 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #7
  br i1 %call.i.i42, label %if.end.i.i43, label %if.then7.list_del.exit_crit_edge

if.then7.list_del.exit_crit_edge:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i43:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.mtd_info, ptr %call2, i32 0, i32 64, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i43, %if.then7.list_del.exit_crit_edge
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i44 = getelementptr inbounds %struct.mtd_info, ptr %call2, i32 0, i32 64, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i44, align 4
  tail call void @mutex_unlock(ptr noundef %4) #7
  %name.i = getelementptr inbounds %struct.mtd_info, ptr %call2, i32 0, i32 13
  %21 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name.i, align 8
  tail call void @kfree(ptr noundef %22) #7
  tail call void @kfree(ptr noundef %call2) #7
  br label %err_del_partitions

if.end11:                                         ; preds = %list_add_tail.exit
  %dev.i = getelementptr inbounds %struct.mtd_info, ptr %call2, i32 0, i32 56
  %call.i = tail call i32 @sysfs_create_files(ptr noundef %dev.i, ptr noundef nonnull @mtd_partition_attrs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i45 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i45, label %if.end11.mtd_add_partition_attrs.exit_crit_edge, label %do.end.i

if.end11.mtd_add_partition_attrs.exit_crit_edge:  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_add_partition_attrs.exit

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %call.i) #10
  br label %mtd_add_partition_attrs.exit

mtd_add_partition_attrs.exit:                     ; preds = %do.end.i, %if.end11.mtd_add_partition_attrs.exit_crit_edge
  %types = getelementptr %struct.mtd_partition, ptr %parts, i32 %i.053, i32 1
  %23 = ptrtoint ptr %types to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %types, align 4
  %call13 = tail call i32 @parse_mtd_partitions(ptr noundef %call2, ptr noundef %24, ptr noundef null)
  %offset = getelementptr inbounds %struct.mtd_info, ptr %call2, i32 0, i32 64, i32 0, i32 1
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %offset, align 8
  %size = getelementptr inbounds %struct.mtd_info, ptr %call2, i32 0, i32 64, i32 0, i32 2
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %size, align 8
  %add = add i64 %28, %26
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %nbparts
  br i1 %exitcond.not, label %mtd_add_partition_attrs.exit.cleanup_crit_edge, label %mtd_add_partition_attrs.exit.for.body_crit_edge

mtd_add_partition_attrs.exit.for.body_crit_edge:  ; preds = %mtd_add_partition_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

mtd_add_partition_attrs.exit.cleanup_crit_edge:   ; preds = %mtd_add_partition_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_del_partitions:                               ; preds = %list_del.exit, %if.then
  %ret.0 = phi i32 [ %5, %if.then ], [ %call6, %list_del.exit ]
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %err_del_partitions
  %mtd.addr.0.i.i = phi ptr [ %mtd.addr.0.i, %err_del_partitions ], [ %30, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %29 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %del_mtd_partitions.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

del_mtd_partitions.exit:                          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i46 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 13
  %31 = ptrtoint ptr %name.i46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name.i46, align 8
  %call1.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %32) #10
  %33 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %33, i32 noundef 0) #7
  %call2.i = tail call fastcc i32 @__del_mtd_partitions(ptr noundef %mtd.addr.0.i) #7
  tail call void @mutex_unlock(ptr noundef %33) #7
  br label %cleanup

cleanup:                                          ; preds = %del_mtd_partitions.exit, %mtd_add_partition_attrs.exit.cleanup_crit_edge, %mtd_get_master.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %del_mtd_partitions.exit ], [ 0, %mtd_get_master.exit.cleanup_crit_edge ], [ 0, %mtd_add_partition_attrs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parse_mtd_partitions(ptr noundef %master, ptr noundef readonly %types, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %pparts = alloca %struct.mtd_partitions, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pparts) #7
  %0 = call ptr @memset(ptr %pparts, i32 0, i32 12)
  %tobool.not = icmp eq ptr %types, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 62
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 4
  %tobool.i.not = icmp eq ptr %2, null
  %cond = select i1 %tobool.i.not, ptr @default_mtd_part_types, ptr @default_subpartition_types
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %types.addr.0 = phi ptr [ %types, %entry.if.end_crit_edge ], [ %cond, %if.then ]
  %3 = ptrtoint ptr %types.addr.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %types.addr.0, align 4
  %tobool1.not121 = icmp eq ptr %4, null
  br i1 %tobool1.not121, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %name = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %5 = phi ptr [ %4, %for.body.lr.ph ], [ %61, %for.inc.for.body_crit_edge ]
  %types.addr.1124 = phi ptr [ %types.addr.0, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %err.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %err.1, %for.inc.for.body_crit_edge ]
  %call2 = call i32 @strcmp(ptr noundef nonnull %5, ptr noundef nonnull dereferenceable(7) @.str.5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end45, label %do.body

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_mtd_partitions.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_mtd_partitions, %if.then10)) #7
          to label %do.end [label %if.then10], !srcloc !125

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %8 = ptrtoint ptr %types.addr.1124 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %types.addr.1124, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_mtd_partitions.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.8, ptr noundef %7, ptr noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %10 = ptrtoint ptr %types.addr.1124 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %types.addr.1124, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @part_parser_lock) #7
  %p.011.i = load ptr, ptr @part_parsers, align 4
  %cmp.not12.i = icmp eq ptr %p.011.i, @part_parsers
  br i1 %cmp.not12.i, label %do.end.mtd_part_parser_get.exit.thread_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.mtd_part_parser_get.exit.thread_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_part_parser_get.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %p.013.i = phi ptr [ %p.0.i, %for.inc.i.for.body.i_crit_edge ], [ %p.011.i, %do.end.for.body.i_crit_edge ]
  %name1.i = getelementptr inbounds %struct.mtd_part_parser, ptr %p.013.i, i32 0, i32 2
  %12 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name1.i, align 4
  %call.i = call i32 @strcmp(ptr noundef %13, ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %owner.i = getelementptr inbounds %struct.mtd_part_parser, ptr %p.013.i, i32 0, i32 1
  %14 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner.i, align 4
  %call2.i = call zeroext i1 @try_module_get(ptr noundef %15) #7
  br i1 %call2.i, label %mtd_part_parser_get.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %16 = ptrtoint ptr %p.013.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %p.0.i = load ptr, ptr %p.013.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, @part_parsers
  br i1 %cmp.not.i, label %for.inc.i.mtd_part_parser_get.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.mtd_part_parser_get.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_part_parser_get.exit.thread

mtd_part_parser_get.exit.thread:                  ; preds = %for.inc.i.mtd_part_parser_get.exit.thread_crit_edge, %do.end.mtd_part_parser_get.exit.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @part_parser_lock) #7
  br label %land.lhs.true

mtd_part_parser_get.exit:                         ; preds = %land.lhs.true.i
  call void @_raw_spin_unlock(ptr noundef nonnull @part_parser_lock) #7
  %tobool13.not = icmp eq ptr %p.013.i, null
  br i1 %tobool13.not, label %mtd_part_parser_get.exit.land.lhs.true_crit_edge, label %mtd_part_parser_get.exit.do.body19_crit_edge

mtd_part_parser_get.exit.do.body19_crit_edge:     ; preds = %mtd_part_parser_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

mtd_part_parser_get.exit.land.lhs.true_crit_edge: ; preds = %mtd_part_parser_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %mtd_part_parser_get.exit.land.lhs.true_crit_edge, %mtd_part_parser_get.exit.thread
  %17 = ptrtoint ptr %types.addr.1124 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %types.addr.1124, align 4
  %call14 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.9, ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.do.body19_crit_edge

land.lhs.true.do.body19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

if.then16:                                        ; preds = %land.lhs.true
  %19 = ptrtoint ptr %types.addr.1124 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %types.addr.1124, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @part_parser_lock) #7
  %p.011.i90 = load ptr, ptr @part_parsers, align 4
  %cmp.not12.i91 = icmp eq ptr %p.011.i90, @part_parsers
  br i1 %cmp.not12.i91, label %if.then16.mtd_part_parser_get.exit104_crit_edge, label %if.then16.for.body.i96_crit_edge

if.then16.for.body.i96_crit_edge:                 ; preds = %if.then16
  br label %for.body.i96

if.then16.mtd_part_parser_get.exit104_crit_edge:  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_part_parser_get.exit104

for.body.i96:                                     ; preds = %for.inc.i102.for.body.i96_crit_edge, %if.then16.for.body.i96_crit_edge
  %p.013.i92 = phi ptr [ %p.0.i100, %for.inc.i102.for.body.i96_crit_edge ], [ %p.011.i90, %if.then16.for.body.i96_crit_edge ]
  %name1.i93 = getelementptr inbounds %struct.mtd_part_parser, ptr %p.013.i92, i32 0, i32 2
  %21 = ptrtoint ptr %name1.i93 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name1.i93, align 4
  %call.i94 = call i32 @strcmp(ptr noundef %22, ptr noundef %20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool.not.i95 = icmp eq i32 %call.i94, 0
  br i1 %tobool.not.i95, label %land.lhs.true.i99, label %for.body.i96.for.inc.i102_crit_edge

for.body.i96.for.inc.i102_crit_edge:              ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i102

land.lhs.true.i99:                                ; preds = %for.body.i96
  %owner.i97 = getelementptr inbounds %struct.mtd_part_parser, ptr %p.013.i92, i32 0, i32 1
  %23 = ptrtoint ptr %owner.i97 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %owner.i97, align 4
  %call2.i98 = call zeroext i1 @try_module_get(ptr noundef %24) #7
  br i1 %call2.i98, label %land.lhs.true.i99.mtd_part_parser_get.exit104_crit_edge, label %land.lhs.true.i99.for.inc.i102_crit_edge

land.lhs.true.i99.for.inc.i102_crit_edge:         ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i102

land.lhs.true.i99.mtd_part_parser_get.exit104_crit_edge: ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_part_parser_get.exit104

for.inc.i102:                                     ; preds = %land.lhs.true.i99.for.inc.i102_crit_edge, %for.body.i96.for.inc.i102_crit_edge
  %25 = ptrtoint ptr %p.013.i92 to i32
  call void @__asan_load4_noabort(i32 %25)
  %p.0.i100 = load ptr, ptr %p.013.i92, align 4
  %cmp.not.i101 = icmp eq ptr %p.0.i100, @part_parsers
  br i1 %cmp.not.i101, label %for.inc.i102.mtd_part_parser_get.exit104_crit_edge, label %for.inc.i102.for.body.i96_crit_edge

for.inc.i102.for.body.i96_crit_edge:              ; preds = %for.inc.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i96

for.inc.i102.mtd_part_parser_get.exit104_crit_edge: ; preds = %for.inc.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_part_parser_get.exit104

mtd_part_parser_get.exit104:                      ; preds = %for.inc.i102.mtd_part_parser_get.exit104_crit_edge, %land.lhs.true.i99.mtd_part_parser_get.exit104_crit_edge, %if.then16.mtd_part_parser_get.exit104_crit_edge
  %ret.0.i103 = phi ptr [ null, %if.then16.mtd_part_parser_get.exit104_crit_edge ], [ null, %for.inc.i102.mtd_part_parser_get.exit104_crit_edge ], [ %p.013.i92, %land.lhs.true.i99.mtd_part_parser_get.exit104_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef nonnull @part_parser_lock) #7
  br label %do.body19

do.body19:                                        ; preds = %mtd_part_parser_get.exit104, %land.lhs.true.do.body19_crit_edge, %mtd_part_parser_get.exit.do.body19_crit_edge
  %parser.0 = phi ptr [ %p.013.i, %mtd_part_parser_get.exit.do.body19_crit_edge ], [ null, %land.lhs.true.do.body19_crit_edge ], [ %ret.0.i103, %mtd_part_parser_get.exit104 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_mtd_partitions.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_mtd_partitions, %if.then31)) #7
          to label %do.end38 [label %if.then31], !srcloc !125

if.then31:                                        ; preds = %do.body19
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 8
  %tobool33.not = icmp eq ptr %parser.0, null
  br i1 %tobool33.not, label %if.then31.cond.end_crit_edge, label %cond.true

if.then31.cond.end_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %name34 = getelementptr inbounds %struct.mtd_part_parser, ptr %parser.0, i32 0, i32 2
  %28 = ptrtoint ptr %name34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name34, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then31.cond.end_crit_edge
  %cond35 = phi ptr [ %29, %cond.true ], [ null, %if.then31.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_mtd_partitions.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.10, ptr noundef %27, ptr noundef %cond35) #7
  br label %do.end38

do.end38:                                         ; preds = %cond.end, %do.body19
  %tobool39.not = icmp eq ptr %parser.0, null
  br i1 %tobool39.not, label %do.end38.for.inc_crit_edge, label %if.end41

do.end38.for.inc_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end41:                                         ; preds = %do.end38
  %parse_fn.i = getelementptr inbounds %struct.mtd_part_parser, ptr %parser.0, i32 0, i32 4
  %30 = ptrtoint ptr %parse_fn.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parse_fn.i, align 4
  %call.i105 = call i32 %31(ptr noundef %master, ptr noundef nonnull %pparts, ptr noundef %data) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtd_part_do_parse.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_mtd_partitions, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !125

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name, align 8
  %name4.i = getelementptr inbounds %struct.mtd_part_parser, ptr %parser.0, i32 0, i32 2
  %34 = ptrtoint ptr %name4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name4.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtd_part_do_parse.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.49, ptr noundef %33, ptr noundef %35, i32 noundef %call.i105) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i105)
  %cmp.i = icmp slt i32 %call.i105, 1
  br i1 %cmp.i, label %if.end45.thread114, label %if.end45.thread

if.end45.thread:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name11.i = getelementptr inbounds %struct.mtd_part_parser, ptr %parser.0, i32 0, i32 2
  %36 = ptrtoint ptr %name11.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name11.i, align 4
  %38 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name, align 8
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call.i105, ptr noundef %37, ptr noundef %39) #10
  %nr_parts.i = getelementptr inbounds %struct.mtd_partitions, ptr %pparts, i32 0, i32 1
  %40 = ptrtoint ptr %nr_parts.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call.i105, ptr %nr_parts.i, align 4
  %parser14.i = getelementptr inbounds %struct.mtd_partitions, ptr %pparts, i32 0, i32 2
  %41 = ptrtoint ptr %parser14.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %parser.0, ptr %parser14.i, align 4
  br label %if.then47

if.end45.thread114:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %owner.i106 = getelementptr inbounds %struct.mtd_part_parser, ptr %parser.0, i32 0, i32 1
  %42 = ptrtoint ptr %owner.i106 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %owner.i106, align 4
  call void @module_put(ptr noundef %43) #7
  br label %if.end55

if.end45:                                         ; preds = %for.body
  %call5 = call fastcc i32 @mtd_part_of_parse(ptr noundef %master, ptr noundef nonnull %pparts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp46 = icmp sgt i32 %call5, 0
  br i1 %cmp46, label %if.end45.if.then47_crit_edge, label %if.end45.if.end55_crit_edge

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %if.end45.thread
  %44 = ptrtoint ptr %pparts to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pparts, align 4
  %nr_parts = getelementptr inbounds %struct.mtd_partitions, ptr %pparts, i32 0, i32 1
  %46 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_parts, align 4
  %call48 = call i32 @add_mtd_partitions(ptr noundef %master, ptr noundef %45, i32 noundef %47)
  %parser1.i = getelementptr inbounds %struct.mtd_partitions, ptr %pparts, i32 0, i32 2
  %48 = ptrtoint ptr %parser1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parser1.i, align 4
  %tobool2.not.i = icmp eq ptr %49, null
  br i1 %tobool2.not.i, label %if.then47.mtd_part_parser_cleanup.exit_crit_edge, label %if.then3.i

if.then47.mtd_part_parser_cleanup.exit_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_part_parser_cleanup.exit

if.then3.i:                                       ; preds = %if.then47
  %cleanup.i = getelementptr inbounds %struct.mtd_part_parser, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cleanup.i, align 4
  %tobool4.not.i = icmp eq ptr %51, null
  br i1 %tobool4.not.i, label %if.then3.i.if.end8.i_crit_edge, label %if.then5.i

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %pparts to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pparts, align 4
  %54 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_parts, align 4
  call void %51(ptr noundef %53, i32 noundef %55) #7
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.then3.i.if.end8.i_crit_edge
  %owner.i.i = getelementptr inbounds %struct.mtd_part_parser, ptr %49, i32 0, i32 1
  %56 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %owner.i.i, align 4
  call void @module_put(ptr noundef %57) #7
  br label %mtd_part_parser_cleanup.exit

mtd_part_parser_cleanup.exit:                     ; preds = %if.end8.i, %if.then47.mtd_part_parser_cleanup.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cond.false51, label %mtd_part_parser_cleanup.exit.cleanup_crit_edge

mtd_part_parser_cleanup.exit.cleanup_crit_edge:   ; preds = %mtd_part_parser_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.false51:                                     ; preds = %mtd_part_parser_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_parts, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.end45.if.end55_crit_edge, %if.end45.thread114
  %ret.0117 = phi i32 [ %call.i105, %if.end45.thread114 ], [ %call5, %if.end45.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0117)
  %cmp56 = icmp slt i32 %ret.0117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0122)
  %tobool58.not = icmp eq i32 %err.0122, 0
  %or.cond = select i1 %cmp56, i1 %tobool58.not, i1 false
  %spec.select = select i1 %or.cond, i32 %ret.0117, i32 %err.0122
  br label %for.inc

for.inc:                                          ; preds = %if.end55, %do.end38.for.inc_crit_edge
  %err.1 = phi i32 [ %err.0122, %do.end38.for.inc_crit_edge ], [ %spec.select, %if.end55 ]
  %incdec.ptr = getelementptr ptr, ptr %types.addr.1124, i32 1
  %60 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %incdec.ptr, align 4
  %tobool1.not = icmp eq ptr %61, null
  br i1 %tobool1.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %cond.false51, %mtd_part_parser_cleanup.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %59, %cond.false51 ], [ %call48, %mtd_part_parser_cleanup.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %err.1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pparts) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__register_mtd_parser(ptr noundef %p, ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %owner1 = getelementptr inbounds %struct.mtd_part_parser, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %owner1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %owner, ptr %owner1, align 4
  %cleanup = getelementptr inbounds %struct.mtd_part_parser, ptr %p, i32 0, i32 5
  %1 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cleanup, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mtd_part_parser_cleanup_default, ptr %cleanup, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @part_parser_lock) #7
  %4 = load ptr, ptr @part_parsers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p, ptr noundef nonnull @part_parsers, ptr noundef %4) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %p, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %p, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %p, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @part_parsers, ptr %prev3.i.i, align 4
  store volatile ptr %p, ptr @part_parsers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @part_parser_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtd_part_parser_cleanup_default(ptr noundef %pparts, i32 noundef %nr_parts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %pparts) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @deregister_mtd_parser(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @part_parser_lock) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %p, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @part_parser_lock) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtd_part_of_parse(ptr noundef %master, ptr noundef %pparts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node.i.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 56, i32 27
  %0 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i.i, align 8
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 62
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call ptr @of_node_get(ptr noundef %1) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef nonnull @.str.46) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %np.0 = phi ptr [ %1, %if.then ], [ %call3, %if.else ]
  %call4 = tail call ptr @of_find_property(ptr noundef %np.0, ptr noundef nonnull @.str.47, ptr noundef null) #7
  %call5 = tail call ptr @of_prop_next_string(ptr noundef %call4, ptr noundef null) #7
  %tobool.not149 = icmp eq ptr %call5, null
  br i1 %tobool.not149, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %name.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %err.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %err.1, %for.inc.for.body_crit_edge ]
  %compat.0150 = phi ptr [ %call5, %for.body.lr.ph ], [ %call17, %for.inc.for.body_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @part_parser_lock) #7
  %p.0.i146 = load ptr, ptr @part_parsers, align 4
  %cmp.not.i147 = icmp eq ptr %p.0.i146, @part_parsers
  br i1 %cmp.not.i147, label %for.body.mtd_part_get_compatible_parser.exit.thread_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.mtd_part_get_compatible_parser.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_part_get_compatible_parser.exit.thread

mtd_part_get_compatible_parser.exit.thread:       ; preds = %cleanup.i.mtd_part_get_compatible_parser.exit.thread_crit_edge, %for.body.mtd_part_get_compatible_parser.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @part_parser_lock) #7
  br label %for.inc

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %p.0.i148 = phi ptr [ %p.0.i, %cleanup.i.for.body.i_crit_edge ], [ %p.0.i146, %for.body.for.body.i_crit_edge ]
  %of_match_table.i = getelementptr inbounds %struct.mtd_part_parser, ptr %p.0.i148, i32 0, i32 3
  %4 = ptrtoint ptr %of_match_table.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_match_table.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %for.cond1.preheader.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

for.cond1.preheader.i:                            ; preds = %for.body.i
  %compatible28.i = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %compatible28.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %compatible28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not29.i = icmp eq i8 %7, 0
  br i1 %tobool2.not29.i, label %for.cond1.preheader.i.cleanup.i_crit_edge, label %for.body3.lr.ph.i

for.cond1.preheader.i.cleanup.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %owner.i = getelementptr inbounds %struct.mtd_part_parser, ptr %p.0.i148, i32 0, i32 1
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %compatible31.i = phi ptr [ %compatible28.i, %for.body3.lr.ph.i ], [ %compatible.i, %for.inc.i.for.body3.i_crit_edge ]
  %matches.030.i = phi ptr [ %5, %for.body3.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body3.i_crit_edge ]
  %call.i = tail call i32 @strcmp(ptr noundef %compatible31.i, ptr noundef nonnull %compat.0150) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %for.body3.i.for.inc.i_crit_edge

for.body3.i.for.inc.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body3.i
  %8 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner.i, align 4
  %call6.i = tail call zeroext i1 @try_module_get(ptr noundef %9) #7
  br i1 %call6.i, label %for.end.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body3.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.of_device_id, ptr %matches.030.i, i32 1
  %compatible.i = getelementptr %struct.of_device_id, ptr %matches.030.i, i32 1, i32 2
  %10 = ptrtoint ptr %compatible.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %compatible.i, align 4
  %tobool2.not.i = icmp eq i8 %11, 0
  br i1 %tobool2.not.i, label %for.inc.i.cleanup.i_crit_edge, label %for.inc.i.for.body3.i_crit_edge

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i

for.inc.i.cleanup.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %tobool9.not.i = icmp eq ptr %p.0.i148, null
  br i1 %tobool9.not.i, label %for.end.i.cleanup.i_crit_edge, label %if.end9

for.end.i.cleanup.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.end.i.cleanup.i_crit_edge, %for.inc.i.cleanup.i_crit_edge, %for.cond1.preheader.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %12 = ptrtoint ptr %p.0.i148 to i32
  call void @__asan_load4_noabort(i32 %12)
  %p.0.i = load ptr, ptr %p.0.i148, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, @part_parsers
  br i1 %cmp.not.i, label %cleanup.i.mtd_part_get_compatible_parser.exit.thread_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.i.mtd_part_get_compatible_parser.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_part_get_compatible_parser.exit.thread

if.end9:                                          ; preds = %for.end.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @part_parser_lock) #7
  %parse_fn.i = getelementptr inbounds %struct.mtd_part_parser, ptr %p.0.i148, i32 0, i32 4
  %13 = ptrtoint ptr %parse_fn.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parse_fn.i, align 4
  %call.i74 = tail call i32 %14(ptr noundef %master, ptr noundef %pparts, ptr noundef null) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtd_part_do_parse.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtd_part_of_parse, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !125

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 8
  %name4.i = getelementptr inbounds %struct.mtd_part_parser, ptr %p.0.i148, i32 0, i32 2
  %17 = ptrtoint ptr %name4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name4.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtd_part_do_parse.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.49, ptr noundef %16, ptr noundef %18, i32 noundef %call.i74) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i74)
  %cmp.i = icmp slt i32 %call.i74, 1
  br i1 %cmp.i, label %if.end12, label %if.then11

if.then11:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name11.i = getelementptr inbounds %struct.mtd_part_parser, ptr %p.0.i148, i32 0, i32 2
  %19 = ptrtoint ptr %name11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name11.i, align 4
  %21 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name.i, align 8
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call.i74, ptr noundef %20, ptr noundef %22) #10
  %nr_parts.i = getelementptr inbounds %struct.mtd_partitions, ptr %pparts, i32 0, i32 1
  %23 = ptrtoint ptr %nr_parts.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i74, ptr %nr_parts.i, align 4
  %parser14.i = getelementptr inbounds %struct.mtd_partitions, ptr %pparts, i32 0, i32 2
  %24 = ptrtoint ptr %parser14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %p.0.i148, ptr %parser14.i, align 4
  tail call void @of_node_put(ptr noundef %np.0) #7
  br label %cleanup

if.end12:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp13 = icmp ne i32 %call.i74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0153)
  %tobool14.not = icmp eq i32 %err.0153, 0
  %or.cond = select i1 %cmp13, i1 %tobool14.not, i1 false
  %spec.select = select i1 %or.cond, i32 %call.i74, i32 %err.0153
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %mtd_part_get_compatible_parser.exit.thread
  %err.1 = phi i32 [ %spec.select, %if.end12 ], [ %err.0153, %mtd_part_get_compatible_parser.exit.thread ]
  %call17 = tail call ptr @of_prop_next_string(ptr noundef %call4, ptr noundef nonnull %compat.0150) #7
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %err.1, %for.inc.for.end_crit_edge ]
  tail call void @of_node_put(ptr noundef %np.0) #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @part_parser_lock) #7
  %p.011.i = load ptr, ptr @part_parsers, align 4
  %cmp.not12.i = icmp eq ptr %p.011.i, @part_parsers
  br i1 %cmp.not12.i, label %for.end.mtd_part_parser_get.exit.thread_crit_edge, label %for.end.for.body.i79_crit_edge

for.end.for.body.i79_crit_edge:                   ; preds = %for.end
  br label %for.body.i79

for.end.mtd_part_parser_get.exit.thread_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_part_parser_get.exit.thread

for.body.i79:                                     ; preds = %for.inc.i84.for.body.i79_crit_edge, %for.end.for.body.i79_crit_edge
  %p.013.i = phi ptr [ %p.0.i82, %for.inc.i84.for.body.i79_crit_edge ], [ %p.011.i, %for.end.for.body.i79_crit_edge ]
  %name1.i = getelementptr inbounds %struct.mtd_part_parser, ptr %p.013.i, i32 0, i32 2
  %27 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name1.i, align 4
  %call.i77 = tail call i32 @strcmp(ptr noundef %28, ptr noundef nonnull dereferenceable(17) @.str.45) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i81, label %for.body.i79.for.inc.i84_crit_edge

for.body.i79.for.inc.i84_crit_edge:               ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i84

land.lhs.true.i81:                                ; preds = %for.body.i79
  %owner.i80 = getelementptr inbounds %struct.mtd_part_parser, ptr %p.013.i, i32 0, i32 1
  %29 = ptrtoint ptr %owner.i80 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %owner.i80, align 4
  %call2.i = tail call zeroext i1 @try_module_get(ptr noundef %30) #7
  br i1 %call2.i, label %mtd_part_parser_get.exit, label %land.lhs.true.i81.for.inc.i84_crit_edge

land.lhs.true.i81.for.inc.i84_crit_edge:          ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i84

for.inc.i84:                                      ; preds = %land.lhs.true.i81.for.inc.i84_crit_edge, %for.body.i79.for.inc.i84_crit_edge
  %31 = ptrtoint ptr %p.013.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %p.0.i82 = load ptr, ptr %p.013.i, align 4
  %cmp.not.i83 = icmp eq ptr %p.0.i82, @part_parsers
  br i1 %cmp.not.i83, label %for.inc.i84.mtd_part_parser_get.exit.thread_crit_edge, label %for.inc.i84.for.body.i79_crit_edge

for.inc.i84.for.body.i79_crit_edge:               ; preds = %for.inc.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i79

for.inc.i84.mtd_part_parser_get.exit.thread_crit_edge: ; preds = %for.inc.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_part_parser_get.exit.thread

mtd_part_parser_get.exit.thread:                  ; preds = %for.inc.i84.mtd_part_parser_get.exit.thread_crit_edge, %for.end.mtd_part_parser_get.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @part_parser_lock) #7
  br label %land.lhs.true20

mtd_part_parser_get.exit:                         ; preds = %land.lhs.true.i81
  tail call void @_raw_spin_unlock(ptr noundef nonnull @part_parser_lock) #7
  %tobool19.not = icmp eq ptr %p.013.i, null
  br i1 %tobool19.not, label %mtd_part_parser_get.exit.land.lhs.true20_crit_edge, label %mtd_part_parser_get.exit.if.then27_crit_edge

mtd_part_parser_get.exit.if.then27_crit_edge:     ; preds = %mtd_part_parser_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

mtd_part_parser_get.exit.land.lhs.true20_crit_edge: ; preds = %mtd_part_parser_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true20

land.lhs.true20:                                  ; preds = %mtd_part_parser_get.exit.land.lhs.true20_crit_edge, %mtd_part_parser_get.exit.thread
  %call21 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true20.cleanup_crit_edge

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %land.lhs.true20
  tail call void @_raw_spin_lock(ptr noundef nonnull @part_parser_lock) #7
  %p.011.i86 = load ptr, ptr @part_parsers, align 4
  %cmp.not12.i87 = icmp eq ptr %p.011.i86, @part_parsers
  br i1 %cmp.not12.i87, label %if.then23.if.end25.thread136_crit_edge, label %if.then23.for.body.i92_crit_edge

if.then23.for.body.i92_crit_edge:                 ; preds = %if.then23
  br label %for.body.i92

if.then23.if.end25.thread136_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.thread136

for.body.i92:                                     ; preds = %for.inc.i98.for.body.i92_crit_edge, %if.then23.for.body.i92_crit_edge
  %p.013.i88 = phi ptr [ %p.0.i96, %for.inc.i98.for.body.i92_crit_edge ], [ %p.011.i86, %if.then23.for.body.i92_crit_edge ]
  %name1.i89 = getelementptr inbounds %struct.mtd_part_parser, ptr %p.013.i88, i32 0, i32 2
  %32 = ptrtoint ptr %name1.i89 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name1.i89, align 4
  %call.i90 = tail call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(17) @.str.45) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool.not.i91 = icmp eq i32 %call.i90, 0
  br i1 %tobool.not.i91, label %land.lhs.true.i95, label %for.body.i92.for.inc.i98_crit_edge

for.body.i92.for.inc.i98_crit_edge:               ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i98

land.lhs.true.i95:                                ; preds = %for.body.i92
  %owner.i93 = getelementptr inbounds %struct.mtd_part_parser, ptr %p.013.i88, i32 0, i32 1
  %34 = ptrtoint ptr %owner.i93 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %owner.i93, align 4
  %call2.i94 = tail call zeroext i1 @try_module_get(ptr noundef %35) #7
  br i1 %call2.i94, label %if.end25, label %land.lhs.true.i95.for.inc.i98_crit_edge

land.lhs.true.i95.for.inc.i98_crit_edge:          ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i98

for.inc.i98:                                      ; preds = %land.lhs.true.i95.for.inc.i98_crit_edge, %for.body.i92.for.inc.i98_crit_edge
  %36 = ptrtoint ptr %p.013.i88 to i32
  call void @__asan_load4_noabort(i32 %36)
  %p.0.i96 = load ptr, ptr %p.013.i88, align 4
  %cmp.not.i97 = icmp eq ptr %p.0.i96, @part_parsers
  br i1 %cmp.not.i97, label %for.inc.i98.if.end25.thread136_crit_edge, label %for.inc.i98.for.body.i92_crit_edge

for.inc.i98.for.body.i92_crit_edge:               ; preds = %for.inc.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i92

for.inc.i98.if.end25.thread136_crit_edge:         ; preds = %for.inc.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.thread136

if.end25.thread136:                               ; preds = %for.inc.i98.if.end25.thread136_crit_edge, %if.then23.if.end25.thread136_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @part_parser_lock) #7
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.i95
  tail call void @_raw_spin_unlock(ptr noundef nonnull @part_parser_lock) #7
  %tobool26.not = icmp eq ptr %p.013.i88, null
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.end25.if.then27_crit_edge

if.end25.if.then27_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %if.end25.if.then27_crit_edge, %mtd_part_parser_get.exit.if.then27_crit_edge
  %parser.0135 = phi ptr [ %p.013.i88, %if.end25.if.then27_crit_edge ], [ %p.013.i, %mtd_part_parser_get.exit.if.then27_crit_edge ]
  %parse_fn.i102 = getelementptr inbounds %struct.mtd_part_parser, ptr %parser.0135, i32 0, i32 4
  %37 = ptrtoint ptr %parse_fn.i102 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parse_fn.i102, align 4
  %call.i103 = tail call i32 %38(ptr noundef %master, ptr noundef %pparts, ptr noundef null) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtd_part_do_parse.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtd_part_of_parse, %if.then.i106)) #7
          to label %do.end.i108 [label %if.then.i106], !srcloc !125

if.then.i106:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %name.i104 = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 13
  %39 = ptrtoint ptr %name.i104 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name.i104, align 8
  %name4.i105 = getelementptr inbounds %struct.mtd_part_parser, ptr %parser.0135, i32 0, i32 2
  %41 = ptrtoint ptr %name4.i105 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name4.i105, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtd_part_do_parse.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.49, ptr noundef %40, ptr noundef %42, i32 noundef %call.i103) #7
  br label %do.end.i108

do.end.i108:                                      ; preds = %if.then.i106, %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i103)
  %cmp.i107 = icmp slt i32 %call.i103, 1
  br i1 %cmp.i107, label %if.end31, label %mtd_part_do_parse.exit116.thread

mtd_part_do_parse.exit116.thread:                 ; preds = %do.end.i108
  call void @__sanitizer_cov_trace_pc() #9
  %name11.i109 = getelementptr inbounds %struct.mtd_part_parser, ptr %parser.0135, i32 0, i32 2
  %43 = ptrtoint ptr %name11.i109 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name11.i109, align 4
  %name12.i110 = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 13
  %45 = ptrtoint ptr %name12.i110 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name12.i110, align 8
  %call13.i111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call.i103, ptr noundef %44, ptr noundef %46) #10
  %nr_parts.i112 = getelementptr inbounds %struct.mtd_partitions, ptr %pparts, i32 0, i32 1
  %47 = ptrtoint ptr %nr_parts.i112 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call.i103, ptr %nr_parts.i112, align 4
  %parser14.i113 = getelementptr inbounds %struct.mtd_partitions, ptr %pparts, i32 0, i32 2
  %48 = ptrtoint ptr %parser14.i113 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %parser.0135, ptr %parser14.i113, align 4
  br label %cleanup

if.end31:                                         ; preds = %do.end.i108
  call void @__sanitizer_cov_trace_pc() #9
  %owner.i117 = getelementptr inbounds %struct.mtd_part_parser, ptr %parser.0135, i32 0, i32 1
  %49 = ptrtoint ptr %owner.i117 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %owner.i117, align 4
  tail call void @module_put(ptr noundef %50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp32 = icmp ne i32 %call.i103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.lcssa)
  %tobool34.not = icmp eq i32 %err.0.lcssa, 0
  %or.cond72 = select i1 %cmp32, i1 %tobool34.not, i1 false
  %spec.select73 = select i1 %or.cond72, i32 %call.i103, i32 %err.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %mtd_part_do_parse.exit116.thread, %if.end25.cleanup_crit_edge, %if.end25.thread136, %land.lhs.true20.cleanup_crit_edge, %if.then11
  %retval.0 = phi i32 [ %call.i74, %if.then11 ], [ %err.0.lcssa, %if.end25.cleanup_crit_edge ], [ %spec.select73, %if.end31 ], [ %err.0.lcssa, %if.end25.thread136 ], [ %call.i103, %mtd_part_do_parse.exit116.thread ], [ %err.0.lcssa, %land.lhs.true20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtd_part_parser_cleanup(ptr noundef readonly %parts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parts, null
  br i1 %tobool.not, label %entry.cleanup10_crit_edge, label %if.end

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.end:                                           ; preds = %entry
  %parser1 = getelementptr inbounds %struct.mtd_partitions, ptr %parts, i32 0, i32 2
  %0 = ptrtoint ptr %parser1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parser1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup10_crit_edge, label %if.then3

if.end.cleanup10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.then3:                                         ; preds = %if.end
  %cleanup = getelementptr inbounds %struct.mtd_part_parser, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cleanup, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.then3.if.end8_crit_edge, label %if.then5

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parts, align 4
  %nr_parts = getelementptr inbounds %struct.mtd_partitions, ptr %parts, i32 0, i32 1
  %6 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_parts, align 4
  tail call void %3(ptr noundef %5, i32 noundef %7) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then3.if.end8_crit_edge
  %owner.i = getelementptr inbounds %struct.mtd_part_parser, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %9) #7
  br label %cleanup10

cleanup10:                                        ; preds = %if.end8, %if.end.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @mtd_get_device_size(ptr nocapture noundef readonly %mtd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %mtd.addr.0.i = phi ptr [ %mtd, %entry ], [ %1, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 62
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %mtd_get_master.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

mtd_get_master.exit:                              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size, align 8
  ret i64 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isreserved(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_files(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @offset_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %offset = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 64, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.37, i64 noundef %3) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_mtd_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_files(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !24, !25, !26, !28, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__ksymtab_mtd_add_partition, !1, !"__ksymtab_mtd_add_partition", i1 false, i1 false}
!1 = !{!"../drivers/mtd/mtdpart.c", i32 289, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/mtdpart.c", i32 356, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @del_mtd_partitions._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @del_mtd_partitions._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_mtd_del_partition, !9, !"__ksymtab_mtd_del_partition", i1 false, i1 false}
!9 = !{!"../drivers/mtd/mtdpart.c", i32 381, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/mtdpart.c", i32 400, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @add_mtd_partitions._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @add_mtd_partitions._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab___register_mtd_parser, !16, !"__ksymtab___register_mtd_parser", i1 false, i1 false}
!16 = !{!"../drivers/mtd/mtdpart.c", i32 488, i32 1}
!17 = !{ptr @__ksymtab_deregister_mtd_parser, !18, !"__ksymtab_deregister_mtd_parser", i1 false, i1 false}
!18 = !{!"../drivers/mtd/mtdpart.c", i32 496, i32 1}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/mtdpart.c", i32 661, i32 23}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/mtdpart.c", i32 664, i32 4}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @parse_mtd_partitions.__UNIQUE_ID_ddebug186, !22, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/mtdpart.c", i32 667, i32 20}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/mtdpart.c", i32 669, i32 4}
!30 = !{ptr @parse_mtd_partitions.__UNIQUE_ID_ddebug187, !29, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!31 = !{ptr @__ksymtab_mtd_get_device_size, !32, !"__ksymtab_mtd_get_device_size", i1 false, i1 false}
!32 = !{!"../drivers/mtd/mtdpart.c", i32 717, i32 1}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/mtdpart.c", i32 52, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @allocate_partition._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @allocate_partition._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/mtdpart.c", i32 97, i32 4}
!40 = !{ptr @allocate_partition._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @allocate_partition._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/mtdpart.c", i32 109, i32 4}
!44 = !{ptr @allocate_partition._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @allocate_partition._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/mtdpart.c", i32 119, i32 2}
!48 = !{ptr @allocate_partition._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @allocate_partition._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/mtdpart.c", i32 131, i32 3}
!52 = !{ptr @allocate_partition._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @allocate_partition._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/mtdpart.c", i32 137, i32 3}
!56 = !{ptr @allocate_partition._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @allocate_partition._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/mtdpart.c", i32 182, i32 3}
!60 = !{ptr @allocate_partition._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @allocate_partition._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/mtdpart.c", i32 190, i32 3}
!64 = !{ptr @allocate_partition._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @allocate_partition._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/mtdpart.c", i32 233, i32 3}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @mtd_add_partition_attrs._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @mtd_add_partition_attrs._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @mtd_partition_attrs, !72, !"mtd_partition_attrs", i1 false, i1 false}
!72 = !{!"../drivers/mtd/mtdpart.c", i32 224, i32 32}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/mtdpart.c", i32 222, i32 8}
!75 = !{ptr @dev_attr_offset, !74, !"dev_attr_offset", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/mtdpart.c", i32 220, i32 25}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/mtdpart.c", i32 335, i32 3}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__del_mtd_partitions._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @__del_mtd_partitions._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/mtdpart.c", i32 338, i32 4}
!85 = !{ptr @__del_mtd_partitions._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @__del_mtd_partitions._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/mtdpart.c", i32 440, i32 8}
!89 = !{ptr @part_parser_lock, !88, !"part_parser_lock", i1 false, i1 false}
!90 = !{ptr @part_parsers, !91, !"part_parsers", i1 false, i1 false}
!91 = !{!"../drivers/mtd/mtdpart.c", i32 441, i32 8}
!92 = !{ptr @default_subpartition_types, !93, !"default_subpartition_types", i1 false, i1 false}
!93 = !{!"../drivers/mtd/mtdpart.c", i32 509, i32 27}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/mtdpart.c", i32 503, i32 2}
!96 = !{ptr @default_mtd_part_types, !97, !"default_mtd_part_types", i1 false, i1 false}
!97 = !{!"../drivers/mtd/mtdpart.c", i32 502, i32 27}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/mtdpart.c", i32 581, i32 22}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/mtdpart.c", i32 588, i32 33}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/mtdpart.c", i32 590, i32 2}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mtd/mtdpart.c", i32 522, i32 2}
!106 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @mtd_part_do_parse.__UNIQUE_ID_ddebug185, !105, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/mtdpart.c", i32 526, i32 2}
!110 = !{ptr @mtd_part_do_parse._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mtd_part_do_parse._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2148203583, i64 2148203863, i64 2148204197, i64 2148204531}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i64 2152901566, i64 2152902052, i64 2152901603, i64 2152901659, i64 2152901693, i64 2152901717, i64 2152901758, i64 2152901779, i64 2152901807, i64 2152901841}
!125 = !{i64 2148970536, i64 2148970541, i64 2148970554, i64 2148970598, i64 2148970632, i64 2148970653}
