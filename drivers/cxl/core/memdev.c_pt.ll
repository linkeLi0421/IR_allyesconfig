; ModuleID = '/llk/IR_all_yes/drivers/cxl/core/memdev.c_pt.bc'
source_filename = "../drivers/cxl/core/memdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+set_exclusive_cxl_commands\22, \22a\22\09"
module asm "\09.weak\09__crc_set_exclusive_cxl_commands\09\09\09\09"
module asm "\09.long\09__crc_set_exclusive_cxl_commands\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_exclusive_cxl_commands:\09\09\09\09\09"
module asm "\09.asciz \09\22set_exclusive_cxl_commands\22\09\09\09\09\09"
module asm "__kstrtabns_set_exclusive_cxl_commands:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clear_exclusive_cxl_commands\22, \22a\22\09"
module asm "\09.weak\09__crc_clear_exclusive_cxl_commands\09\09\09\09"
module asm "\09.long\09__crc_clear_exclusive_cxl_commands\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clear_exclusive_cxl_commands:\09\09\09\09\09"
module asm "\09.asciz \09\22clear_exclusive_cxl_commands\22\09\09\09\09\09"
module asm "__kstrtabns_clear_exclusive_cxl_commands:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_cxl_add_memdev\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_cxl_add_memdev\09\09\09\09"
module asm "\09.long\09__crc_devm_cxl_add_memdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_cxl_add_memdev:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_cxl_add_memdev\22\09\09\09\09\09"
module asm "__kstrtabns_devm_cxl_add_memdev:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.cxl_dev_state = type { ptr, %struct.cxl_regs, i32, i32, %struct.mutex, [16 x i8], [1 x i32], [1 x i32], %struct.range, %struct.range, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.cxl_regs = type { %union.anon.71, %union.anon.73 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { ptr }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.range = type { i64, i64 }
%struct.cxl_memdev = type { %struct.device, %struct.cdev, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }

@cxl_memdev_rwsem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @cxl_memdev_rwsem, i64 56), ptr getelementptr (i8, ptr @cxl_memdev_rwsem, i64 56) }, ptr @cxl_memdev_rwsem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_set_exclusive_cxl_commands = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_exclusive_cxl_commands = external dso_local constant [0 x i8], align 1
@__ksymtab_set_exclusive_cxl_commands = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_exclusive_cxl_commands to i32), ptr @__kstrtab_set_exclusive_cxl_commands, ptr @__kstrtabns_set_exclusive_cxl_commands }, section "___ksymtab_gpl+set_exclusive_cxl_commands", align 4
@__kstrtab_clear_exclusive_cxl_commands = external dso_local constant [0 x i8], align 1
@__kstrtabns_clear_exclusive_cxl_commands = external dso_local constant [0 x i8], align 1
@__ksymtab_clear_exclusive_cxl_commands = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clear_exclusive_cxl_commands to i32), ptr @__kstrtab_clear_exclusive_cxl_commands, ptr @__kstrtabns_clear_exclusive_cxl_commands }, section "___ksymtab_gpl+clear_exclusive_cxl_commands", align 4
@cxl_memdev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxl_memdev_ioctl, ptr null, ptr null, i32 0, ptr @cxl_memdev_open, ptr null, ptr @cxl_memdev_release_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mem%d\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_devm_cxl_add_memdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_cxl_add_memdev = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_cxl_add_memdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_cxl_add_memdev to i32), ptr @__kstrtab_devm_cxl_add_memdev, ptr @__kstrtabns_devm_cxl_add_memdev }, section "___ksymtab_gpl+devm_cxl_add_memdev", align 4
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cxl\00", [28 x i8] zeroinitializer }, align 32
@cxl_mem_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cxl_memdev_rwsem.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxl_memdev_rwsem\00", [47 x i8] zeroinitializer }, align 32
@cxl_memdev_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@cxl_bus_type = external dso_local global %struct.bus_type, align 4
@cxl_memdev_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.5, ptr @cxl_memdev_attribute_groups, ptr null, ptr @cxl_memdev_devnode, ptr @cxl_memdev_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxl_memdev_ida.xa_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cxl_memdev\00", [21 x i8] zeroinitializer }, align 32
@cxl_memdev_attribute_groups = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @cxl_memdev_attribute_group, ptr @cxl_memdev_ram_attribute_group, ptr @cxl_memdev_pmem_attribute_group, ptr null], [16 x i8] zeroinitializer }, align 32
@cxl_memdev_attribute_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cxl_memdev_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@cxl_memdev_ram_attribute_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.11, ptr null, ptr null, ptr @cxl_memdev_ram_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@cxl_memdev_pmem_attribute_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.14, ptr null, ptr null, ptr @cxl_memdev_pmem_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@cxl_memdev_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_firmware_version, ptr @dev_attr_payload_max, ptr @dev_attr_label_storage_size, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @firmware_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_payload_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @payload_max_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_label_storage_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_storage_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%.16s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"payload_max\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%zu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"label_storage_size\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ram\00", [28 x i8] zeroinitializer }, align 32
@cxl_memdev_ram_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_ram_size, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_ram_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ram_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%#llx\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pmem\00", [27 x i8] zeroinitializer }, align 32
@cxl_memdev_pmem_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_pmem_size, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_pmem_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pmem_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxl/%s\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2148060673, i64 3224423938]
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"cxl_memdev_rwsem\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"cxl_memdev_fops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 270, i32 37 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 291, i32 25 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 327, i32 55 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"cxl_mem_major\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 19, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 11, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"cxl_memdev_ida\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"cxl_memdev_type\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 130, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 20, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 131, i32 10 }
@___asan_gen_.49 = private unnamed_addr constant [28 x i8] c"cxl_memdev_attribute_groups\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 123, i32 38 }
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"cxl_memdev_attribute_group\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 109, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant [31 x i8] c"cxl_memdev_ram_attribute_group\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 113, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant [32 x i8] c"cxl_memdev_pmem_attribute_group\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 118, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"cxl_memdev_attributes\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 92, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [21 x i8] c"dev_attr_payload_max\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [28 x i8] c"dev_attr_label_storage_size\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 44, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 42, i32 25 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 54, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 52, i32 25 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 64, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 114, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant [26 x i8] c"cxl_memdev_ram_attributes\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 104, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"dev_attr_ram_size\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 76, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 77, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 73, i32 25 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 119, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"cxl_memdev_pmem_attributes\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 99, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"dev_attr_pmem_size\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 89, i32 32 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [29 x i8] c"../drivers/cxl/core/memdev.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 33, i32 31 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__ksymtab_clear_exclusive_cxl_commands, ptr @__ksymtab_devm_cxl_add_memdev, ptr @__ksymtab_set_exclusive_cxl_commands, ptr @cxl_memdev_rwsem, ptr @cxl_memdev_fops, ptr @.str, ptr @.str.1, ptr @cxl_mem_major, ptr @.str.2, ptr @.str.3, ptr @cxl_memdev_ida, ptr @cxl_memdev_type, ptr @.str.4, ptr @.str.5, ptr @cxl_memdev_attribute_groups, ptr @cxl_memdev_attribute_group, ptr @cxl_memdev_ram_attribute_group, ptr @cxl_memdev_pmem_attribute_group, ptr @cxl_memdev_attributes, ptr @dev_attr_firmware_version, ptr @dev_attr_payload_max, ptr @dev_attr_label_storage_size, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @cxl_memdev_ram_attributes, ptr @dev_attr_ram_size, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @cxl_memdev_pmem_attributes, ptr @dev_attr_pmem_size, ptr @.str.15], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_memdev_rwsem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_memdev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_mem_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_memdev_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_memdev_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_memdev_attribute_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_memdev_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_memdev_ram_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_memdev_pmem_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_memdev_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_payload_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_label_storage_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_memdev_ram_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ram_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_memdev_pmem_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pmem_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_exclusive_cxl_commands(ptr nocapture noundef %cxlds, ptr nocapture noundef readonly %cmds) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @cxl_memdev_rwsem) #5
  %exclusive_cmds = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 7
  %0 = ptrtoint ptr %exclusive_cmds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %exclusive_cmds, align 4
  %2 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmds, align 4
  %or.i = or i32 %3, %1
  store i32 %or.i, ptr %exclusive_cmds, align 4
  tail call void @up_write(ptr noundef nonnull @cxl_memdev_rwsem) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_exclusive_cxl_commands(ptr nocapture noundef %cxlds, ptr nocapture noundef readonly %cmds) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @cxl_memdev_rwsem) #5
  %exclusive_cmds = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 7
  %0 = ptrtoint ptr %exclusive_cmds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %exclusive_cmds, align 4
  %2 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmds, align 4
  %neg.i = xor i32 %3, -1
  %and.i = and i32 %1, 2097151
  %and4.i = and i32 %and.i, %neg.i
  store i32 %and4.i, ptr %exclusive_cmds, align 4
  tail call void @up_write(ptr noundef nonnull @cxl_memdev_rwsem) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_cxl_add_memdev(ptr noundef %cxlds) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1096) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @cxl_memdev_ida, i32 noundef 0, i32 noundef 65536, i32 noundef 3264) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %err.i, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %id.i = getelementptr inbounds %struct.cxl_memdev, ptr %call7.i.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2.i, ptr %id.i, align 4
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i.i) #5
  %2 = ptrtoint ptr %cxlds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cxlds, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %parent.i, align 8
  %bus.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cxl_bus_type, ptr %bus.i, align 8
  %6 = load i32, ptr @cxl_mem_major, align 4
  %shl.i = shl i32 %6, 20
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 4
  %or.i = or i32 %shl.i, %8
  %devt.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 29
  %9 = ptrtoint ptr %devt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %devt.i, align 8
  %type.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cxl_memdev_type, ptr %type.i, align 4
  %no_pm.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %no_pm.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i = load i16, ptr %no_pm.i.i, align 4
  %bf.set.i.i = or i16 %bf.load.i.i, 256
  store i16 %bf.set.i.i, ptr %no_pm.i.i, align 4
  %cdev8.i = getelementptr inbounds %struct.cxl_memdev, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @cdev_init(ptr noundef %cdev8.i, ptr noundef nonnull @cxl_memdev_fops) #5
  br label %cxl_memdev_alloc.exit

err.i:                                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  %12 = inttoptr i32 %call2.i to ptr
  br label %cxl_memdev_alloc.exit

cxl_memdev_alloc.exit:                            ; preds = %err.i, %if.end4.i
  %retval.0.i = phi ptr [ %12, %err.i ], [ %call7.i.i.i, %if.end4.i ]
  %cmp.i38 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38, label %cxl_memdev_alloc.exit.cleanup_crit_edge, label %if.end

cxl_memdev_alloc.exit.cleanup_crit_edge:          ; preds = %cxl_memdev_alloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %cxl_memdev_alloc.exit
  %id = getelementptr inbounds %struct.cxl_memdev, ptr %retval.0.i, i32 0, i32 3
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %retval.0.i, ptr noundef nonnull @.str, i32 noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end5:                                          ; preds = %if.end
  %cxlds6 = getelementptr inbounds %struct.cxl_memdev, ptr %retval.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %cxlds6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cxlds, ptr %cxlds6, align 8
  %cdev7 = getelementptr inbounds %struct.cxl_memdev, ptr %retval.0.i, i32 0, i32 1
  %call8 = tail call i32 @cdev_device_add(ptr noundef %cdev7, ptr noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.err_crit_edge

if.end5.err_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end11:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %cxlds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cxlds, align 8
  %call.i = tail call i32 @devm_add_action(ptr noundef %17, ptr noundef nonnull @cxl_memdev_unregister, ptr noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i39 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i39, label %if.end11.cleanup_crit_edge, label %if.then15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @down_write(ptr noundef nonnull @cxl_memdev_rwsem) #5
  %18 = ptrtoint ptr %cxlds6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cxlds6, align 8
  tail call void @up_write(ptr noundef nonnull @cxl_memdev_rwsem) #5
  tail call void @cdev_device_del(ptr noundef %cdev7, ptr noundef %retval.0.i) #5
  br label %cleanup.sink.split

err:                                              ; preds = %if.end5.err_crit_edge, %if.end.err_crit_edge
  %rc.0 = phi i32 [ %call3, %if.end.err_crit_edge ], [ %call8, %if.end5.err_crit_edge ]
  tail call void @down_write(ptr noundef nonnull @cxl_memdev_rwsem) #5
  %cxlds.i = getelementptr inbounds %struct.cxl_memdev, ptr %retval.0.i, i32 0, i32 2
  %19 = ptrtoint ptr %cxlds.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cxlds.i, align 8
  tail call void @up_write(ptr noundef nonnull @cxl_memdev_rwsem) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err, %if.then15
  %rc.0.sink = phi i32 [ %rc.0, %err ], [ %call.i, %if.then15 ]
  tail call void @put_device(ptr noundef %retval.0.i) #5
  %20 = inttoptr i32 %rc.0.sink to ptr
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11.cleanup_crit_edge, %cxl_memdev_alloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %cxl_memdev_alloc.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %retval.0.i, %if.end11.cleanup_crit_edge ], [ %20, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxl_memdev_unregister(ptr noundef %_cxlmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @cxl_memdev_rwsem) #5
  %cxlds.i = getelementptr inbounds %struct.cxl_memdev, ptr %_cxlmd, i32 0, i32 2
  %0 = ptrtoint ptr %cxlds.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cxlds.i, align 8
  tail call void @up_write(ptr noundef nonnull @cxl_memdev_rwsem) #5
  %cdev = getelementptr inbounds %struct.cxl_memdev, ptr %_cxlmd, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %_cxlmd) #5
  tail call void @put_device(ptr noundef %_cxlmd) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxl_memdev_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %devt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %devt) #5
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %devt, align 4, !annotation !75
  %call = call i32 @alloc_chrdev_region(ptr noundef nonnull %devt, i32 noundef 0, i32 noundef 65536, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %devt, align 4
  %shr = lshr i32 %2, 20
  store i32 %shr, ptr @cxl_mem_major, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devt) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxl_memdev_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cxl_mem_major, align 4
  %shl = shl i32 %0, 20
  tail call void @unregister_chrdev_region(i32 noundef %shl, i32 noundef 65536) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @cxl_memdev_devnode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %uid, ptr nocapture noundef readnone %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i) #5
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxl_memdev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.cxl_memdev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef nonnull @cxl_memdev_ida, i32 noundef %1) #5
  tail call void @kfree(ptr noundef %dev) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cxlds1 = getelementptr inbounds %struct.cxl_memdev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %cxlds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cxlds1, align 8
  %firmware_version = getelementptr inbounds %struct.cxl_dev_state, ptr %1, i32 0, i32 5
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef %firmware_version) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @payload_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cxlds1 = getelementptr inbounds %struct.cxl_memdev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %cxlds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cxlds1, align 8
  %payload_size = getelementptr inbounds %struct.cxl_dev_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %payload_size, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %3) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @label_storage_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cxlds1 = getelementptr inbounds %struct.cxl_memdev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %cxlds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cxlds1, align 8
  %lsa_size = getelementptr inbounds %struct.cxl_dev_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %lsa_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lsa_size, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %3) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ram_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cxlds1 = getelementptr inbounds %struct.cxl_memdev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %cxlds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cxlds1, align 8
  %ram_range = getelementptr inbounds %struct.cxl_dev_state, ptr %1, i32 0, i32 9
  %end.i = getelementptr inbounds %struct.cxl_dev_state, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %end.i, align 8
  %4 = ptrtoint ptr %ram_range to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ram_range, align 8
  %sub.i = add i64 %3, 1
  %add.i = sub i64 %sub.i, %5
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.13, i64 noundef %add.i) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmem_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cxlds1 = getelementptr inbounds %struct.cxl_memdev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %cxlds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cxlds1, align 8
  %pmem_range = getelementptr inbounds %struct.cxl_dev_state, ptr %1, i32 0, i32 8
  %end.i = getelementptr inbounds %struct.cxl_dev_state, ptr %1, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %end.i, align 8
  %4 = ptrtoint ptr %pmem_range to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pmem_range, align 8
  %sub.i = add i64 %3, 1
  %add.i = sub i64 %sub.i, %5
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.13, i64 noundef %add.i) #5
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxl_memdev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @down_read(ptr noundef nonnull @cxl_memdev_rwsem) #5
  %cxlds = getelementptr inbounds %struct.cxl_memdev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cxlds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cxlds, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.then.if.end_crit_edge [
    i32 -2146906623, label %sw.bb.i
    i32 -1070543358, label %sw.bb1.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %5 = inttoptr i32 %arg to ptr
  %call.i = tail call i32 @cxl_query_cmd(ptr noundef %1, ptr noundef %5) #5
  br label %if.end

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %6 = inttoptr i32 %arg to ptr
  %call2.i = tail call i32 @cxl_send_cmd(ptr noundef %1, ptr noundef %6) #5
  br label %if.end

if.end:                                           ; preds = %sw.bb1.i, %sw.bb.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ -6, %entry.if.end_crit_edge ], [ %call2.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ], [ -25, %if.then.if.end_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @cxl_memdev_rwsem) #5
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxl_memdev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -928
  %call = tail call ptr @get_device(ptr noundef %add.ptr) #5
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxl_memdev_release_file(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -928
  tail call void @put_device(ptr noundef %add.ptr) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxl_query_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxl_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !32, !34, !36, !37, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__ksymtab_set_exclusive_cxl_commands, !1, !"__ksymtab_set_exclusive_cxl_commands", i1 false, i1 false}
!1 = !{!"../drivers/cxl/core/memdev.c", i32 153, i32 1}
!2 = !{ptr @__ksymtab_clear_exclusive_cxl_commands, !3, !"__ksymtab_clear_exclusive_cxl_commands", i1 false, i1 false}
!3 = !{!"../drivers/cxl/core/memdev.c", i32 167, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/cxl/core/memdev.c", i32 291, i32 25}
!6 = !{ptr @__ksymtab_devm_cxl_add_memdev, !7, !"__ksymtab_devm_cxl_add_memdev", i1 false, i1 false}
!7 = !{!"../drivers/cxl/core/memdev.c", i32 320, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/cxl/core/memdev.c", i32 327, i32 55}
!10 = !{ptr @cxl_mem_major, !11, !"cxl_mem_major", i1 false, i1 false}
!11 = !{!"../drivers/cxl/core/memdev.c", i32 19, i32 12}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/cxl/core/memdev.c", i32 11, i32 8}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cxl_memdev_rwsem, !13, !"cxl_memdev_rwsem", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/cxl/core/memdev.c", i32 20, i32 8}
!18 = !{ptr @cxl_memdev_ida, !17, !"cxl_memdev_ida", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/cxl/core/memdev.c", i32 131, i32 10}
!21 = !{ptr @cxl_memdev_type, !22, !"cxl_memdev_type", i1 false, i1 false}
!22 = !{!"../drivers/cxl/core/memdev.c", i32 130, i32 33}
!23 = !{ptr @cxl_memdev_attribute_groups, !24, !"cxl_memdev_attribute_groups", i1 false, i1 false}
!24 = !{!"../drivers/cxl/core/memdev.c", i32 123, i32 38}
!25 = !{ptr @cxl_memdev_attribute_group, !26, !"cxl_memdev_attribute_group", i1 false, i1 false}
!26 = !{!"../drivers/cxl/core/memdev.c", i32 109, i32 31}
!27 = !{ptr @cxl_memdev_attributes, !28, !"cxl_memdev_attributes", i1 false, i1 false}
!28 = !{!"../drivers/cxl/core/memdev.c", i32 92, i32 26}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/cxl/core/memdev.c", i32 44, i32 8}
!31 = !{ptr @dev_attr_firmware_version, !30, !"dev_attr_firmware_version", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/cxl/core/memdev.c", i32 42, i32 25}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/cxl/core/memdev.c", i32 54, i32 8}
!36 = !{ptr @dev_attr_payload_max, !35, !"dev_attr_payload_max", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/cxl/core/memdev.c", i32 52, i32 25}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/cxl/core/memdev.c", i32 64, i32 8}
!41 = !{ptr @dev_attr_label_storage_size, !40, !"dev_attr_label_storage_size", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/cxl/core/memdev.c", i32 114, i32 10}
!44 = !{ptr @cxl_memdev_ram_attribute_group, !45, !"cxl_memdev_ram_attribute_group", i1 false, i1 false}
!45 = !{!"../drivers/cxl/core/memdev.c", i32 113, i32 31}
!46 = !{ptr @cxl_memdev_ram_attributes, !47, !"cxl_memdev_ram_attributes", i1 false, i1 false}
!47 = !{!"../drivers/cxl/core/memdev.c", i32 104, i32 26}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/cxl/core/memdev.c", i32 77, i32 2}
!50 = !{ptr @dev_attr_ram_size, !51, !"dev_attr_ram_size", i1 false, i1 false}
!51 = !{!"../drivers/cxl/core/memdev.c", i32 76, i32 32}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/cxl/core/memdev.c", i32 73, i32 25}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/cxl/core/memdev.c", i32 119, i32 10}
!56 = !{ptr @cxl_memdev_pmem_attribute_group, !57, !"cxl_memdev_pmem_attribute_group", i1 false, i1 false}
!57 = !{!"../drivers/cxl/core/memdev.c", i32 118, i32 31}
!58 = !{ptr @cxl_memdev_pmem_attributes, !59, !"cxl_memdev_pmem_attributes", i1 false, i1 false}
!59 = !{!"../drivers/cxl/core/memdev.c", i32 99, i32 26}
!60 = !{ptr @dev_attr_pmem_size, !61, !"dev_attr_pmem_size", i1 false, i1 false}
!61 = !{!"../drivers/cxl/core/memdev.c", i32 89, i32 32}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/cxl/core/memdev.c", i32 33, i32 31}
!64 = !{ptr @cxl_memdev_fops, !65, !"cxl_memdev_fops", i1 false, i1 false}
!65 = !{!"../drivers/cxl/core/memdev.c", i32 270, i32 37}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
