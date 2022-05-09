; ModuleID = '/llk/IR_all_yes/drivers/usb/common/ulpi.c_pt.bc'
source_filename = "../drivers/usb/common/ulpi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ulpi_read\22, \22a\22\09"
module asm "\09.weak\09__crc_ulpi_read\09\09\09\09"
module asm "\09.long\09__crc_ulpi_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ulpi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22ulpi_read\22\09\09\09\09\09"
module asm "__kstrtabns_ulpi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ulpi_write\22, \22a\22\09"
module asm "\09.weak\09__crc_ulpi_write\09\09\09\09"
module asm "\09.long\09__crc_ulpi_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ulpi_write:\09\09\09\09\09"
module asm "\09.asciz \09\22ulpi_write\22\09\09\09\09\09"
module asm "__kstrtabns_ulpi_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__ulpi_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc___ulpi_register_driver\09\09\09\09"
module asm "\09.long\09__crc___ulpi_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ulpi_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__ulpi_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___ulpi_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ulpi_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_ulpi_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_ulpi_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ulpi_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22ulpi_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_ulpi_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ulpi_register_interface\22, \22a\22\09"
module asm "\09.weak\09__crc_ulpi_register_interface\09\09\09\09"
module asm "\09.long\09__crc_ulpi_register_interface\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ulpi_register_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22ulpi_register_interface\22\09\09\09\09\09"
module asm "__kstrtabns_ulpi_register_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ulpi_unregister_interface\22, \22a\22\09"
module asm "\09.weak\09__crc_ulpi_unregister_interface\09\09\09\09"
module asm "\09.long\09__crc_ulpi_unregister_interface\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ulpi_unregister_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22ulpi_unregister_interface\22\09\09\09\09\09"
module asm "__kstrtabns_ulpi_unregister_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ulpi = type { %struct.ulpi_device_id, ptr, %struct.device }
%struct.ulpi_device_id = type { i16, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ulpi_ops = type { ptr, ptr }
%struct.ulpi_driver = type { ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_ulpi_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_ulpi_read = external dso_local constant [0 x i8], align 1
@__ksymtab_ulpi_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ulpi_read to i32), ptr @__kstrtab_ulpi_read, ptr @__kstrtabns_ulpi_read }, section "___ksymtab_gpl+ulpi_read", align 4
@__kstrtab_ulpi_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_ulpi_write = external dso_local constant [0 x i8], align 1
@__ksymtab_ulpi_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ulpi_write to i32), ptr @__kstrtab_ulpi_write, ptr @__kstrtabns_ulpi_write }, section "___ksymtab_gpl+ulpi_write", align 4
@ulpi_bus = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ulpi_match, ptr @ulpi_uevent, ptr @ulpi_probe, ptr null, ptr @ulpi_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab___ulpi_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___ulpi_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___ulpi_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ulpi_register_driver to i32), ptr @__kstrtab___ulpi_register_driver, ptr @__kstrtabns___ulpi_register_driver }, section "___ksymtab_gpl+__ulpi_register_driver", align 4
@__kstrtab_ulpi_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_ulpi_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_ulpi_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ulpi_unregister_driver to i32), ptr @__kstrtab_ulpi_unregister_driver, ptr @__kstrtabns_ulpi_unregister_driver }, section "___ksymtab_gpl+ulpi_unregister_driver", align 4
@__kstrtab_ulpi_register_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_ulpi_register_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_ulpi_register_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ulpi_register_interface to i32), ptr @__kstrtab_ulpi_register_interface, ptr @__kstrtabns_ulpi_register_interface }, section "___ksymtab_gpl+ulpi_register_interface", align 4
@__kstrtab_ulpi_unregister_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_ulpi_unregister_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_ulpi_unregister_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ulpi_unregister_interface to i32), ptr @__kstrtab_ulpi_unregister_interface, ptr @__kstrtabns_ulpi_unregister_interface }, section "___ksymtab_gpl+ulpi_unregister_interface", align 4
@__initcall__kmod_ulpi__184_317_ulpi_init4 = internal global ptr @ulpi_init, section ".initcall4.init", align 4
@__exitcall_ulpi_exit = internal global ptr @ulpi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author185 = internal constant [30 x i8] c"ulpi.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [34 x i8] c"ulpi.file=drivers/usb/common/ulpi\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [20 x i8] c"ulpi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [34 x i8] c"ulpi.description=USB ULPI PHY bus\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ulpi\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MODALIAS=ulpi:v%04xp%04x\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ulpi_dev_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.6, ptr @ulpi_dev_attr_groups, ptr null, ptr null, ptr @ulpi_dev_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s.ulpi\00", [24 x i8] zeroinitializer }, align 32
@ulpi_register.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ulpi_register\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/usb/common/ulpi.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"registered ULPI PHY: vendor %04x, product %04x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ulpi_device\00", [20 x i8] zeroinitializer }, align 32
@ulpi_dev_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ulpi_dev_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ulpi_dev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ulpi_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ulpi_dev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_modalias, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_modalias = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modalias_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modalias\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ulpi:v%04xp%04x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ulpi:v%04xp%04x\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"ulpi_bus\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 92, i32 24 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 93, i32 10 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 66, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"ulpi_dev_type\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 137, i32 33 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 242, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 262, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 138, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"ulpi_dev_attr_groups\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 126, i32 38 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"ulpi_dev_attr_group\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 122, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"ulpi_dev_attrs\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 117, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"dev_attr_modalias\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 115, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 112, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [29 x i8] c"../drivers/usb/common/ulpi.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 228, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_ulpi_exit, ptr @__initcall__kmod_ulpi__184_317_ulpi_init4, ptr @__ksymtab___ulpi_register_driver, ptr @__ksymtab_ulpi_read, ptr @__ksymtab_ulpi_register_interface, ptr @__ksymtab_ulpi_unregister_driver, ptr @__ksymtab_ulpi_unregister_interface, ptr @__ksymtab_ulpi_write, ptr @ulpi_exit, ptr @ulpi_bus, ptr @.str, ptr @.str.1, ptr @ulpi_dev_type, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ulpi_dev_attr_groups, ptr @ulpi_dev_attr_group, ptr @ulpi_dev_attrs, ptr @dev_attr_modalias, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulpi_bus to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulpi_dev_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulpi_dev_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulpi_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulpi_dev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modalias to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ulpi_read(ptr nocapture noundef readonly %ulpi, i8 noundef zeroext %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %parent = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call = tail call i32 %3(ptr noundef %5, i8 noundef zeroext %addr) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ulpi_write(ptr nocapture noundef readonly %ulpi, i8 noundef zeroext %addr, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %write = getelementptr inbounds %struct.ulpi_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %parent = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call = tail call i32 %3(ptr noundef %5, i8 noundef zeroext %addr, i8 noundef zeroext %val) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ulpi_register_driver(ptr noundef %drv, ptr noundef %module) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %probe = getelementptr inbounds %struct.ulpi_driver, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %probe, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver = getelementptr inbounds %struct.ulpi_driver, ptr %drv, i32 0, i32 3
  %owner = getelementptr inbounds %struct.ulpi_driver, ptr %drv, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %module, ptr %owner, align 4
  %bus = getelementptr inbounds %struct.ulpi_driver, ptr %drv, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ulpi_bus, ptr %bus, align 4
  %call = tail call i32 @driver_register(ptr noundef %driver) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ulpi_unregister_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ulpi_driver, ptr %drv, i32 0, i32 3
  tail call void @driver_unregister(ptr noundef %driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ulpi_register_interface(ptr noundef %dev, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 944) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops2 = getelementptr inbounds %struct.ulpi, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ops2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ops, ptr %ops2, align 8
  %call3 = tail call fastcc i32 @ulpi_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %2 = inttoptr i32 %call3 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.then5 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ulpi_register(ptr noundef %dev, ptr noundef %ulpi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2
  %parent = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  %bus = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 5
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ulpi_bus, ptr %bus, align 8
  %type = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ulpi_dev_type, ptr %type, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i47 = phi ptr [ %6, %if.end.i ], [ %4, %entry.dev_name.exit_crit_edge ]
  %call5 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i47) #5
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i48 = icmp eq ptr %10, null
  br i1 %tobool.not.i48, label %if.else.i, label %dev_name.exit.if.end12.i_crit_edge

dev_name.exit.if.end12.i_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.else.i:                                        ; preds = %dev_name.exit
  %parent3.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %parent3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent3.i, align 8
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %if.else.i.if.end_crit_edge, label %land.lhs.true.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.else.i
  %of_node6.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node6.i, align 8
  %tobool7.not.i = icmp eq ptr %14, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %dev_name.exit.if.end12.i_crit_edge
  %.sink.i = phi ptr [ %10, %dev_name.exit.if.end12.i_crit_edge ], [ %14, %land.lhs.true.i.if.end12.i_crit_edge ]
  %call11.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %.sink.i, ptr noundef nonnull @.str) #5
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %if.end12.i.if.end_crit_edge, label %if.end15.i

if.end12.i.if.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end15.i:                                       ; preds = %if.end12.i
  %call16.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call11.i, ptr noundef null) #5
  tail call void @of_node_put(ptr noundef nonnull %call11.i) #5
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end15.i.cleanup_crit_edge, label %if.end19.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %of_node21.i = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 27
  %15 = ptrtoint ptr %of_node21.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call16.i, ptr %of_node21.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end19.i, %if.end12.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.else.i.if.end_crit_edge
  %ops.i.i = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 8
  %write.i.i = getelementptr inbounds %struct.ulpi_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i.i, align 4
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 8
  %call.i.i = tail call i32 %19(ptr noundef %21, i8 noundef zeroext 22, i8 noundef zeroext -86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.err.i_crit_edge, label %if.end.i50

if.end.err.i_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.i

if.end.i50:                                       ; preds = %if.end
  %22 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 8
  %call.i57.i = tail call i32 %25(ptr noundef %27, i8 noundef zeroext 22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i)
  %cmp2.i = icmp slt i32 %call.i57.i, 0
  br i1 %cmp2.i, label %if.then9, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %call.i57.i)
  %cmp5.not.i = icmp eq i32 %call.i57.i, 170
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end4.i.err.i_crit_edge

if.end4.i.err.i_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.i

if.end7.i:                                        ; preds = %if.end4.i
  %28 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent, align 8
  %call.i60.i = tail call i32 %31(ptr noundef %33, i8 noundef zeroext 0) #5
  %conv.i = trunc i32 %call.i60.i to i16
  %34 = ptrtoint ptr %ulpi to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i, ptr %ulpi, align 8
  %35 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %39 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent, align 8
  %call.i63.i = tail call i32 %38(ptr noundef %40, i8 noundef zeroext 1) #5
  %41 = ptrtoint ptr %ulpi to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ulpi, align 8
  %call9.tr.i = trunc i32 %call.i63.i to i16
  %43 = shl i16 %call9.tr.i, 8
  %conv13.i = or i16 %43, %42
  store i16 %conv13.i, ptr %ulpi, align 8
  %44 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent, align 8
  %call.i66.i = tail call i32 %47(ptr noundef %49, i8 noundef zeroext 2) #5
  %conv15.i = trunc i32 %call.i66.i to i16
  %product.i = getelementptr inbounds %struct.ulpi_device_id, ptr %ulpi, i32 0, i32 1
  %50 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv15.i, ptr %product.i, align 2
  %51 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parent, align 8
  %call.i69.i = tail call i32 %54(ptr noundef %56, i8 noundef zeroext 3) #5
  %57 = ptrtoint ptr %product.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %product.i, align 2
  %call17.tr.i = trunc i32 %call.i69.i to i16
  %59 = shl i16 %call17.tr.i, 8
  %conv23.i = or i16 %59, %58
  store i16 %conv23.i, ptr %product.i, align 2
  %60 = ptrtoint ptr %ulpi to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ulpi, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp27.i = icmp eq i16 %61, 0
  br i1 %cmp27.i, label %if.end7.i.err.i_crit_edge, label %if.end30.i

if.end7.i.err.i_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.i

if.end30.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv26.i = zext i16 %61 to i32
  %conv36.i = zext i16 %conv23.i to i32
  %call37.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.9, i32 noundef %conv26.i, i32 noundef %conv36.i) #5
  br label %if.end11

err.i:                                            ; preds = %if.end7.i.err.i_crit_edge, %if.end4.i.err.i_crit_edge, %if.end.err.i_crit_edge
  %call38.i = tail call i32 @of_device_request_module(ptr noundef %dev1) #5
  br label %if.end11

if.then9:                                         ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #7
  %of_node = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2, i32 27
  %62 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %of_node, align 8
  tail call void @of_node_put(ptr noundef %63) #5
  br label %cleanup

if.end11:                                         ; preds = %err.i, %if.end30.i
  %call13 = tail call i32 @device_register(ptr noundef %dev1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body18, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @put_device(ptr noundef %dev1) #5
  br label %cleanup

do.body18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ulpi_register.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ulpi_register, %if.then23)) #5
          to label %cleanup [label %if.then23], !srcloc !62

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %ulpi to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %ulpi, align 8
  %conv = zext i16 %65 to i32
  %product = getelementptr inbounds %struct.ulpi_device_id, ptr %ulpi, i32 0, i32 1
  %66 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %product, align 2
  %conv26 = zext i16 %67 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ulpi_register.__UNIQUE_ID_ddebug183, ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv26) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body18, %if.then15, %if.then9, %if.end15.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i57.i, %if.then9 ], [ %call13, %if.then15 ], [ 0, %if.then23 ], [ -22, %if.end15.i.cleanup_crit_edge ], [ 0, %do.body18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ulpi_unregister_interface(ptr noundef %ulpi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ulpi, ptr %ulpi, i32 0, i32 2
  tail call void @device_unregister(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ulpi_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @ulpi_bus) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ulpi_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bus_unregister(ptr noundef nonnull @ulpi_bus) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulpi_match(ptr noundef %dev, ptr nocapture noundef readonly %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -16
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %add.ptr3, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %driver, i32 -12
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %for.cond.preheader

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.cond.preheader:                               ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool8.not35 = icmp eq i16 %5, 0
  br i1 %tobool8.not35, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %product18 = getelementptr i8, ptr %dev, i32 -14
  br label %for.body

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %of_match_table.i = getelementptr inbounds %struct.device_driver, ptr %driver, i32 0, i32 6
  %6 = ptrtoint ptr %of_match_table.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_match_table.i, align 4
  %call.i = tail call ptr @of_match_device(ptr noundef %7, ptr noundef %dev) #5
  %cmp.i = icmp ne ptr %call.i, null
  %conv.i = zext i1 %cmp.i to i32
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i16 [ %5, %for.body.lr.ph ], [ %14, %for.inc.for.body_crit_edge ]
  %id.036 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %1)
  %cmp14 = icmp eq i16 %8, %1
  br i1 %cmp14, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %product = getelementptr inbounds %struct.ulpi_device_id, ptr %id.036, i32 0, i32 1
  %9 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %product, align 2
  %11 = ptrtoint ptr %product18 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %product18, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp20 = icmp eq i16 %10, %12
  br i1 %cmp20, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.ulpi_device_id, ptr %id.036, i32 1
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %incdec.ptr, align 4
  %tobool8.not = icmp eq i16 %14, 0
  br i1 %tobool8.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv.i, %if.then ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulpi_uevent(ptr noundef %dev, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_device_uevent_modalias(ptr noundef %dev, ptr noundef %env) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call)
  %cmp.not = icmp eq i32 %call, -19
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %add.ptr, align 8
  %conv = zext i16 %1 to i32
  %product = getelementptr i8, ptr %dev, i32 -14
  %2 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %product, align 2
  %conv2 = zext i16 %3 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulpi_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_clk_set_defaults(ptr noundef %3, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %probe = getelementptr i8, ptr %1, i32 -8
  %4 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %probe, align 4
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -16
  %call4 = tail call i32 %5(ptr noundef %add.ptr3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ulpi_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %remove = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr4 = getelementptr i8, ptr %dev, i32 -16
  tail call void %3(ptr noundef %add.ptr4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_uevent_modalias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ulpi_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_node_put(ptr noundef %1) #5
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @kfree(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_device_modalias(ptr noundef %dev, ptr noundef %buf, i32 noundef 4096) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call)
  %cmp.not = icmp eq i32 %call, -19
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %add.ptr, align 8
  %conv = zext i16 %1 to i32
  %product = getelementptr i8, ptr %dev, i32 -14
  %2 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %product, align 2
  %conv2 = zext i16 %3 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_modalias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_request_module(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__ksymtab_ulpi_read, !1, !"__ksymtab_ulpi_read", i1 false, i1 false}
!1 = !{!"../drivers/usb/common/ulpi.c", i32 26, i32 1}
!2 = !{ptr @__ksymtab_ulpi_write, !3, !"__ksymtab_ulpi_write", i1 false, i1 false}
!3 = !{!"../drivers/usb/common/ulpi.c", i32 32, i32 1}
!4 = !{ptr @__ksymtab___ulpi_register_driver, !5, !"__ksymtab___ulpi_register_driver", i1 false, i1 false}
!5 = !{!"../drivers/usb/common/ulpi.c", i32 162, i32 1}
!6 = !{ptr @__ksymtab_ulpi_unregister_driver, !7, !"__ksymtab_ulpi_unregister_driver", i1 false, i1 false}
!7 = !{!"../drivers/usb/common/ulpi.c", i32 174, i32 1}
!8 = !{ptr @__ksymtab_ulpi_register_interface, !9, !"__ksymtab_ulpi_register_interface", i1 false, i1 false}
!9 = !{!"../drivers/usb/common/ulpi.c", i32 296, i32 1}
!10 = !{ptr @__ksymtab_ulpi_unregister_interface, !11, !"__ksymtab_ulpi_unregister_interface", i1 false, i1 false}
!11 = !{!"../drivers/usb/common/ulpi.c", i32 309, i32 1}
!12 = !{ptr @__initcall__kmod_ulpi__184_317_ulpi_init4, !13, !"__initcall__kmod_ulpi__184_317_ulpi_init4", i1 false, i1 false}
!13 = !{!"../drivers/usb/common/ulpi.c", i32 317, i32 1}
!14 = !{ptr @__exitcall_ulpi_exit, !15, !"__exitcall_ulpi_exit", i1 false, i1 false}
!15 = !{!"../drivers/usb/common/ulpi.c", i32 323, i32 1}
!16 = !{ptr @__UNIQUE_ID_author185, !17, !"__UNIQUE_ID_author185", i1 false, i1 false}
!17 = !{!"../drivers/usb/common/ulpi.c", i32 325, i32 1}
!18 = !{ptr @__UNIQUE_ID_file186, !19, !"__UNIQUE_ID_file186", i1 false, i1 false}
!19 = !{!"../drivers/usb/common/ulpi.c", i32 326, i32 1}
!20 = !{ptr @__UNIQUE_ID_license187, !19, !"__UNIQUE_ID_license187", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_description188, !22, !"__UNIQUE_ID_description188", i1 false, i1 false}
!22 = !{!"../drivers/usb/common/ulpi.c", i32 327, i32 1}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/common/ulpi.c", i32 93, i32 10}
!25 = !{ptr @ulpi_bus, !26, !"ulpi_bus", i1 false, i1 false}
!26 = !{!"../drivers/usb/common/ulpi.c", i32 92, i32 24}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/common/ulpi.c", i32 66, i32 26}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/common/ulpi.c", i32 242, i32 27}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/common/ulpi.c", i32 262, i32 2}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ulpi_register.__UNIQUE_ID_ddebug183, !32, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/common/ulpi.c", i32 138, i32 10}
!38 = !{ptr @ulpi_dev_type, !39, !"ulpi_dev_type", i1 false, i1 false}
!39 = !{!"../drivers/usb/common/ulpi.c", i32 137, i32 33}
!40 = !{ptr @ulpi_dev_attr_groups, !41, !"ulpi_dev_attr_groups", i1 false, i1 false}
!41 = !{!"../drivers/usb/common/ulpi.c", i32 126, i32 38}
!42 = !{ptr @ulpi_dev_attr_group, !43, !"ulpi_dev_attr_group", i1 false, i1 false}
!43 = !{!"../drivers/usb/common/ulpi.c", i32 122, i32 37}
!44 = !{ptr @ulpi_dev_attrs, !45, !"ulpi_dev_attrs", i1 false, i1 false}
!45 = !{!"../drivers/usb/common/ulpi.c", i32 117, i32 26}
!46 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/common/ulpi.c", i32 115, i32 8}
!48 = !{ptr @dev_attr_modalias, !47, !"dev_attr_modalias", i1 false, i1 false}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/common/ulpi.c", i32 112, i32 22}
!51 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/common/ulpi.c", i32 228, i32 2}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2148337628, i64 2148337633, i64 2148337646, i64 2148337690, i64 2148337724, i64 2148337745}
