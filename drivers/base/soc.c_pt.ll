; ModuleID = '/llk/IR_all_yes/drivers/base/soc.c_pt.bc'
source_filename = "../drivers/base/soc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+soc_device_register\22, \22a\22\09"
module asm "\09.weak\09__crc_soc_device_register\09\09\09\09"
module asm "\09.long\09__crc_soc_device_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_soc_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22soc_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_soc_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+soc_device_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_soc_device_unregister\09\09\09\09"
module asm "\09.long\09__crc_soc_device_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_soc_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22soc_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_soc_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+soc_device_match\22, \22a\22\09"
module asm "\09.weak\09__crc_soc_device_match\09\09\09\09"
module asm "\09.long\09__crc_soc_device_match\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_soc_device_match:\09\09\09\09\09"
module asm "\09.asciz \09\22soc_device_match\22\09\09\09\09\09"
module asm "__kstrtabns_soc_device_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device = type { %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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

@soc_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@early_soc_dev_attr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@soc_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @soc_attribute_mode, ptr null, ptr @soc_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@soc_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"soc%d\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_soc_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_soc_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_soc_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @soc_device_register to i32), ptr @__kstrtab_soc_device_register, ptr @__kstrtabns_soc_device_register }, section "___ksymtab_gpl+soc_device_register", align 4
@__kstrtab_soc_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_soc_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_soc_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @soc_device_unregister to i32), ptr @__kstrtab_soc_device_unregister, ptr @__kstrtabns_soc_device_unregister }, section "___ksymtab_gpl+soc_device_unregister", align 4
@__initcall__kmod_soc__183_192_soc_bus_register1 = internal global ptr @soc_bus_register, section ".initcall1.init", align 4
@__kstrtab_soc_device_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_soc_device_match = external dso_local constant [0 x i8], align 1
@__ksymtab_soc_device_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @soc_device_match to i32), ptr @__kstrtab_soc_device_match, ptr @__kstrtabns_soc_device_match }, section "___ksymtab_gpl+soc_device_match", align 4
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"soc\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@soc_attr = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_machine, ptr @dev_attr_family, ptr @dev_attr_serial_number, ptr @dev_attr_soc_id, ptr @dev_attr_revision, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_machine = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @soc_info_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_family = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @soc_info_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_revision = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @soc_info_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_serial_number = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @soc_info_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_soc_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @soc_info_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"machine\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"family\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"revision\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"soc_id\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"soc_ida.xa_lock\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"soc_bus_type\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 30, i32 24 }
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"early_soc_dev_attr\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 112, i32 37 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"soc_attr_group\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 98, i32 37 }
@___asan_gen_.18 = private unnamed_addr constant [8 x i8] c"soc_ida\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 152, i32 30 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 31, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"soc_attr\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 89, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"dev_attr_machine\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"dev_attr_family\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"dev_attr_revision\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [23 x i8] c"dev_attr_serial_number\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"dev_attr_soc_id\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 34, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 86, i32 25 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 35, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 38, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 36, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 37, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [22 x i8] c"../drivers/base/soc.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 18, i32 8 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__initcall__kmod_soc__183_192_soc_bus_register1, ptr @__ksymtab_soc_device_match, ptr @__ksymtab_soc_device_register, ptr @__ksymtab_soc_device_unregister, ptr @soc_bus_type, ptr @early_soc_dev_attr, ptr @soc_attr_group, ptr @soc_ida, ptr @.str, ptr @.str.1, ptr @soc_attr, ptr @dev_attr_machine, ptr @dev_attr_family, ptr @dev_attr_revision, ptr @dev_attr_serial_number, ptr @dev_attr_soc_id, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_soc_dev_attr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_attr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_machine to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_family to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_revision to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_soc_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @soc_device_to_device(ptr noundef readnone returned %soc_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr %soc_dev
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @soc_device_register(ptr noundef %soc_dev_attr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.bus_type, ptr @soc_bus_type, i32 0, i32 20), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @early_soc_dev_attr, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %soc_dev_attr, ptr @early_soc_dev_attr, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 936) #11
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.out1_crit_edge, label %if.end7

if.end3.out1_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %out1

if.end7:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #11
  %tobool9.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool9.not, label %if.end7.out2_crit_edge, label %if.end11

if.end7.out2_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out2

if.end11:                                         ; preds = %if.end7
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @soc_attr_group, ptr %call7.i.i.i, align 8
  %custom_attr_group = getelementptr inbounds %struct.soc_device_attribute, ptr %soc_dev_attr, i32 0, i32 6
  %5 = ptrtoint ptr %custom_attr_group to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %custom_attr_group, align 4
  %arrayidx12 = getelementptr ptr, ptr %call7.i.i.i, i32 1
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %arrayidx12, align 4
  %call13 = tail call i32 @ida_alloc_range(ptr noundef nonnull @soc_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %out3, label %if.end15

if.end15:                                         ; preds = %if.end11
  %soc_dev_num = getelementptr inbounds %struct.soc_device, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %soc_dev_num to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call13, ptr %soc_dev_num, align 4
  %attr = getelementptr inbounds %struct.soc_device, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %soc_dev_attr, ptr %attr, align 8
  %bus = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @soc_bus_type, ptr %bus, align 8
  %groups = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 34
  %11 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %groups, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %12 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @soc_release, ptr %release, align 4
  %call20 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, i32 noundef %call13) #8
  %call22 = tail call i32 @device_register(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end15.cleanup_crit_edge, label %if.then24

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #8
  %13 = inttoptr i32 %call22 to ptr
  br label %cleanup

out3:                                             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %out2

out2:                                             ; preds = %out3, %if.end7.out2_crit_edge
  %ret.0 = phi i32 [ %call13, %out3 ], [ -12, %if.end7.out2_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %out1

out1:                                             ; preds = %out2, %if.end3.out1_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out2 ], [ -12, %if.end3.out1_crit_edge ]
  %14 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.then24, %if.end15.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %out1 ], [ %13, %if.then24 ], [ null, %if.end ], [ %call7.i.i, %if.end15.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @soc_release(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_dev_num = getelementptr inbounds %struct.soc_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %soc_dev_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %soc_dev_num, align 4
  tail call void @ida_free(ptr noundef nonnull @soc_ida, i32 noundef %1) #8
  %groups = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 34
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 8
  tail call void @kfree(ptr noundef %3) #8
  tail call void @kfree(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @soc_device_unregister(ptr noundef %soc_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_unregister(ptr noundef %soc_dev) #8
  store ptr null, ptr @early_soc_dev_attr, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_bus_register() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @soc_bus_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @early_soc_dev_attr, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call ptr @soc_device_register(ptr noundef nonnull %0)
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then2 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @soc_device_match(ptr noundef %matches) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %matches, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond:                                       ; preds = %if.then18, %entry.while.cond_crit_edge
  %matches.addr.0 = phi ptr [ %incdec.ptr, %if.then18 ], [ %matches, %entry.while.cond_crit_edge ]
  %0 = ptrtoint ptr %matches.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matches.addr.0, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false, label %while.cond.if.end9_crit_edge

while.cond.if.end9_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

lor.lhs.false:                                    ; preds = %while.cond
  %family = getelementptr inbounds %struct.soc_device_attribute, ptr %matches.addr.0, i32 0, i32 1
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %family, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.if.end9_crit_edge

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %revision = getelementptr inbounds %struct.soc_device_attribute, ptr %matches.addr.0, i32 0, i32 2
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %revision, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false4.if.end9_crit_edge

lor.lhs.false4.if.end9_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %soc_id = getelementptr inbounds %struct.soc_device_attribute, ptr %matches.addr.0, i32 0, i32 4
  %6 = ptrtoint ptr %soc_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc_id, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false6.if.end9_crit_edge

lor.lhs.false6.if.end9_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false6.if.end9_crit_edge, %lor.lhs.false4.if.end9_crit_edge, %lor.lhs.false.if.end9_crit_edge, %while.cond.if.end9_crit_edge
  %call = tail call i32 @bus_for_each_dev(ptr noundef nonnull @soc_bus_type, ptr noundef null, ptr noundef %matches.addr.0, ptr noundef nonnull @soc_device_match_one) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end9
  %8 = load ptr, ptr @early_soc_dev_attr, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.end13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true
  %call12 = tail call fastcc i32 @soc_device_match_attr(ptr noundef nonnull %8, ptr noundef %matches.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp14 = icmp slt i32 %call12, 0
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end13.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %ret.136 = phi i32 [ %call12, %if.end13.if.end16_crit_edge ], [ %call, %if.end9.if.end16_crit_edge ]
  %tobool17.not = icmp eq i32 %ret.136, 0
  br i1 %tobool17.not, label %if.then18, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr = getelementptr %struct.soc_device_attribute, ptr %matches.addr.0, i32 1
  br label %while.cond

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %lor.lhs.false6.cleanup_crit_edge ], [ %matches.addr.0, %if.end16.cleanup_crit_edge ], [ null, %if.end13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @soc_device_match_one(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.soc_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 8
  %call = tail call fastcc i32 @soc_device_match_attr(ptr noundef %1, ptr noundef %arg)
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @soc_device_match_attr(ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %match) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %match, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.return_crit_edge, label %lor.lhs.false

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = tail call zeroext i1 @glob_match(ptr noundef nonnull %1, ptr noundef nonnull %3) #12
  br i1 %call, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %family = getelementptr inbounds %struct.soc_device_attribute, ptr %match, i32 0, i32 1
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %family, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.if.end14_crit_edge, label %land.lhs.true6

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true6:                                   ; preds = %if.end
  %family7 = getelementptr inbounds %struct.soc_device_attribute, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %family7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %family7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %land.lhs.true6.return_crit_edge, label %lor.lhs.false9

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false9:                                   ; preds = %land.lhs.true6
  %call12 = tail call zeroext i1 @glob_match(ptr noundef nonnull %5, ptr noundef nonnull %7) #12
  br i1 %call12, label %lor.lhs.false9.if.end14_crit_edge, label %lor.lhs.false9.return_crit_edge

lor.lhs.false9.return_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false9.if.end14_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %lor.lhs.false9.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %revision = getelementptr inbounds %struct.soc_device_attribute, ptr %match, i32 0, i32 2
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %revision, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %if.end14.if.end24_crit_edge, label %land.lhs.true16

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true16:                                  ; preds = %if.end14
  %revision17 = getelementptr inbounds %struct.soc_device_attribute, ptr %attr, i32 0, i32 2
  %10 = ptrtoint ptr %revision17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %revision17, align 4
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %land.lhs.true16.return_crit_edge, label %lor.lhs.false19

land.lhs.true16.return_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false19:                                  ; preds = %land.lhs.true16
  %call22 = tail call zeroext i1 @glob_match(ptr noundef nonnull %9, ptr noundef nonnull %11) #12
  br i1 %call22, label %lor.lhs.false19.if.end24_crit_edge, label %lor.lhs.false19.return_crit_edge

lor.lhs.false19.return_crit_edge:                 ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false19.if.end24_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end24:                                         ; preds = %lor.lhs.false19.if.end24_crit_edge, %if.end14.if.end24_crit_edge
  %soc_id = getelementptr inbounds %struct.soc_device_attribute, ptr %match, i32 0, i32 4
  %12 = ptrtoint ptr %soc_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc_id, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %if.end24.if.end34_crit_edge, label %land.lhs.true26

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true26:                                  ; preds = %if.end24
  %soc_id27 = getelementptr inbounds %struct.soc_device_attribute, ptr %attr, i32 0, i32 4
  %14 = ptrtoint ptr %soc_id27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc_id27, align 4
  %tobool28.not = icmp eq ptr %15, null
  br i1 %tobool28.not, label %land.lhs.true26.return_crit_edge, label %lor.lhs.false29

land.lhs.true26.return_crit_edge:                 ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false29:                                  ; preds = %land.lhs.true26
  %call32 = tail call zeroext i1 @glob_match(ptr noundef nonnull %13, ptr noundef nonnull %15) #12
  br i1 %call32, label %lor.lhs.false29.if.end34_crit_edge, label %lor.lhs.false29.return_crit_edge

lor.lhs.false29.return_crit_edge:                 ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false29.if.end34_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end34:                                         ; preds = %lor.lhs.false29.if.end34_crit_edge, %if.end24.if.end34_crit_edge
  br label %return

return:                                           ; preds = %if.end34, %lor.lhs.false29.return_crit_edge, %land.lhs.true26.return_crit_edge, %lor.lhs.false19.return_crit_edge, %land.lhs.true16.return_crit_edge, %lor.lhs.false9.return_crit_edge, %land.lhs.true6.return_crit_edge, %lor.lhs.false.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end34 ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %lor.lhs.false9.return_crit_edge ], [ 0, %land.lhs.true6.return_crit_edge ], [ 0, %lor.lhs.false19.return_crit_edge ], [ 0, %land.lhs.true16.return_crit_edge ], [ 0, %lor.lhs.false29.return_crit_edge ], [ 0, %land.lhs.true26.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @soc_attribute_mode(ptr nocapture noundef readonly %kobj, ptr noundef readnone %attr, i32 noundef %index) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %attr, @dev_attr_machine
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %attr1 = getelementptr inbounds %struct.soc_device, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %attr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq ptr %attr, @dev_attr_family
  br i1 %cmp2, label %land.lhs.true3, label %if.end8

land.lhs.true3:                                   ; preds = %if.end
  %attr4 = getelementptr inbounds %struct.soc_device, ptr %kobj, i32 0, i32 1
  %4 = ptrtoint ptr %attr4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attr4, align 8
  %family = getelementptr inbounds %struct.soc_device_attribute, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %family, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true3.cleanup.sink.split_crit_edge

land.lhs.true3.cleanup.sink.split_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp eq ptr %attr, @dev_attr_revision
  br i1 %cmp9, label %land.lhs.true10, label %if.end15

land.lhs.true10:                                  ; preds = %if.end8
  %attr11 = getelementptr inbounds %struct.soc_device, ptr %kobj, i32 0, i32 1
  %8 = ptrtoint ptr %attr11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attr11, align 8
  %revision = getelementptr inbounds %struct.soc_device_attribute, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %revision, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.cleanup.sink.split_crit_edge

land.lhs.true10.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %cmp16 = icmp eq ptr %attr, @dev_attr_serial_number
  br i1 %cmp16, label %land.lhs.true17, label %if.end22

land.lhs.true17:                                  ; preds = %if.end15
  %attr18 = getelementptr inbounds %struct.soc_device, ptr %kobj, i32 0, i32 1
  %12 = ptrtoint ptr %attr18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %attr18, align 8
  %serial_number = getelementptr inbounds %struct.soc_device_attribute, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %serial_number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serial_number, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %land.lhs.true17.cleanup_crit_edge, label %land.lhs.true17.cleanup.sink.split_crit_edge

land.lhs.true17.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %cmp23 = icmp eq ptr %attr, @dev_attr_soc_id
  br i1 %cmp23, label %land.lhs.true24, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true24:                                  ; preds = %if.end22
  %attr25 = getelementptr inbounds %struct.soc_device, ptr %kobj, i32 0, i32 1
  %16 = ptrtoint ptr %attr25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %attr25, align 8
  %soc_id = getelementptr inbounds %struct.soc_device_attribute, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %soc_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soc_id, align 4
  %tobool26.not = icmp eq ptr %19, null
  br i1 %tobool26.not, label %land.lhs.true24.cleanup_crit_edge, label %land.lhs.true24.cleanup.sink.split_crit_edge

land.lhs.true24.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true24.cleanup.sink.split_crit_edge, %land.lhs.true17.cleanup.sink.split_crit_edge, %land.lhs.true10.cleanup.sink.split_crit_edge, %land.lhs.true3.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_machine, i32 0, i32 0, i32 1), %land.lhs.true.cleanup.sink.split_crit_edge ], [ getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_family, i32 0, i32 0, i32 1), %land.lhs.true3.cleanup.sink.split_crit_edge ], [ getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_revision, i32 0, i32 0, i32 1), %land.lhs.true10.cleanup.sink.split_crit_edge ], [ getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_serial_number, i32 0, i32 0, i32 1), %land.lhs.true17.cleanup.sink.split_crit_edge ], [ getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_soc_id, i32 0, i32 0, i32 1), %land.lhs.true24.cleanup.sink.split_crit_edge ]
  %20 = ptrtoint ptr %.sink to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true24.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %land.lhs.true24.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %land.lhs.true17.cleanup_crit_edge ], [ 0, %land.lhs.true10.cleanup_crit_edge ], [ 0, %land.lhs.true3.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %21, %cleanup.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_info_show(ptr nocapture noundef readonly %dev, ptr noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %attr, @dev_attr_machine
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %attr1 = getelementptr inbounds %struct.soc_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %attr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr1, align 8
  br label %if.end21

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq ptr %attr, @dev_attr_family
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %attr4 = getelementptr inbounds %struct.soc_device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %attr4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr4, align 8
  %family = getelementptr inbounds %struct.soc_device_attribute, ptr %3, i32 0, i32 1
  br label %if.end21

if.else5:                                         ; preds = %if.else
  %cmp6 = icmp eq ptr %attr, @dev_attr_revision
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #10
  %attr8 = getelementptr inbounds %struct.soc_device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %attr8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attr8, align 8
  %revision = getelementptr inbounds %struct.soc_device_attribute, ptr %5, i32 0, i32 2
  br label %if.end21

if.else9:                                         ; preds = %if.else5
  %cmp10 = icmp eq ptr %attr, @dev_attr_serial_number
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  %attr12 = getelementptr inbounds %struct.soc_device, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %attr12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr12, align 8
  %serial_number = getelementptr inbounds %struct.soc_device_attribute, ptr %7, i32 0, i32 3
  br label %if.end21

if.else13:                                        ; preds = %if.else9
  %cmp14 = icmp eq ptr %attr, @dev_attr_soc_id
  br i1 %cmp14, label %if.then15, label %if.else13.cleanup_crit_edge

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  %attr16 = getelementptr inbounds %struct.soc_device, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %attr16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attr16, align 8
  %soc_id = getelementptr inbounds %struct.soc_device_attribute, ptr %9, i32 0, i32 4
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %output.0.in = phi ptr [ %1, %if.then ], [ %family, %if.then3 ], [ %revision, %if.then7 ], [ %serial_number, %if.then11 ], [ %soc_id, %if.then15 ]
  %10 = ptrtoint ptr %output.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %output.0 = load ptr, ptr %output.0.in, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, ptr noundef %output.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.else13.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end21 ], [ -22, %if.else13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local zeroext i1 @glob_match(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/base/soc.c", i32 152, i32 30}
!2 = !{ptr @__ksymtab_soc_device_register, !3, !"__ksymtab_soc_device_register", i1 false, i1 false}
!3 = !{!"../drivers/base/soc.c", i32 169, i32 1}
!4 = !{ptr @__ksymtab_soc_device_unregister, !5, !"__ksymtab_soc_device_unregister", i1 false, i1 false}
!5 = !{!"../drivers/base/soc.c", i32 177, i32 1}
!6 = !{ptr @__initcall__kmod_soc__183_192_soc_bus_register1, !7, !"__initcall__kmod_soc__183_192_soc_bus_register1", i1 false, i1 false}
!7 = !{!"../drivers/base/soc.c", i32 192, i32 1}
!8 = !{ptr @__ksymtab_soc_device_match, !9, !"__ksymtab_soc_device_match", i1 false, i1 false}
!9 = !{!"../drivers/base/soc.c", i32 267, i32 1}
!10 = !{ptr @early_soc_dev_attr, !11, !"early_soc_dev_attr", i1 false, i1 false}
!11 = !{!"../drivers/base/soc.c", i32 112, i32 37}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/base/soc.c", i32 31, i32 11}
!14 = !{ptr @soc_bus_type, !15, !"soc_bus_type", i1 false, i1 false}
!15 = !{!"../drivers/base/soc.c", i32 30, i32 24}
!16 = !{ptr @soc_attr_group, !17, !"soc_attr_group", i1 false, i1 false}
!17 = !{!"../drivers/base/soc.c", i32 98, i32 37}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/base/soc.c", i32 34, i32 8}
!20 = !{ptr @dev_attr_machine, !19, !"dev_attr_machine", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/base/soc.c", i32 86, i32 25}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/base/soc.c", i32 35, i32 8}
!25 = !{ptr @dev_attr_family, !24, !"dev_attr_family", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/base/soc.c", i32 38, i32 8}
!28 = !{ptr @dev_attr_revision, !27, !"dev_attr_revision", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/base/soc.c", i32 36, i32 8}
!31 = !{ptr @dev_attr_serial_number, !30, !"dev_attr_serial_number", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/base/soc.c", i32 37, i32 8}
!34 = !{ptr @dev_attr_soc_id, !33, !"dev_attr_soc_id", i1 false, i1 false}
!35 = !{ptr @soc_attr, !36, !"soc_attr", i1 false, i1 false}
!36 = !{!"../drivers/base/soc.c", i32 89, i32 26}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/base/soc.c", i32 18, i32 8}
!39 = !{ptr @soc_ida, !38, !"soc_ida", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
