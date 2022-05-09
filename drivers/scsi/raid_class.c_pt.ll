; ModuleID = '/llk/IR_all_yes/drivers/scsi/raid_class.c_pt.bc'
source_filename = "../drivers/scsi/raid_class.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+raid_component_add\22, \22a\22\09"
module asm "\09.weak\09__crc_raid_component_add\09\09\09\09"
module asm "\09.long\09__crc_raid_component_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raid_component_add:\09\09\09\09\09"
module asm "\09.asciz \09\22raid_component_add\22\09\09\09\09\09"
module asm "__kstrtabns_raid_component_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+raid_class_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_raid_class_attach\09\09\09\09"
module asm "\09.long\09__crc_raid_class_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raid_class_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22raid_class_attach\22\09\09\09\09\09"
module asm "__kstrtabns_raid_class_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+raid_class_release\22, \22a\22\09"
module asm "\09.weak\09__crc_raid_class_release\09\09\09\09"
module asm "\09.long\09__crc_raid_class_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raid_class_release:\09\09\09\09\09"
module asm "\09.asciz \09\22raid_class_release\22\09\09\09\09\09"
module asm "__kstrtabns_raid_class_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.transport_class = type { %struct.class, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.83 = type { i32, ptr }
%struct.anon.84 = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.raid_component = type { %struct.list_head, %struct.device, i32 }
%struct.raid_data = type { %struct.list_head, i32, i32, i32, i32 }
%struct.raid_internal = type { %struct.raid_template, ptr, [3 x %struct.device_attribute], [4 x ptr] }
%struct.raid_template = type { %struct.transport_container }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.raid_function_template = type { ptr, ptr, ptr, ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"component-%d\00", [19 x i8] zeroinitializer }, align 32
@raid_class = internal global { %struct.transport_class, [56 x i8] } { %struct.transport_class { %struct.class { ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @raid_setup, ptr null, ptr @raid_remove }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_raid_component_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_raid_component_add = external dso_local constant [0 x i8], align 1
@__ksymtab_raid_component_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raid_component_add to i32), ptr @__kstrtab_raid_component_add, ptr @__kstrtabns_raid_component_add }, section "___ksymtab+raid_component_add", align 4
@dev_attr_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @raid_show_level, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_resync = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @raid_show_resync, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @raid_show_state, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_raid_class_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_raid_class_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_raid_class_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raid_class_attach to i32), ptr @__kstrtab_raid_class_attach, ptr @__kstrtabns_raid_class_attach }, section "___ksymtab+raid_class_attach", align 4
@__kstrtab_raid_class_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_raid_class_release = external dso_local constant [0 x i8], align 1
@__ksymtab_raid_class_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raid_class_release to i32), ptr @__kstrtab_raid_class_release, ptr @__kstrtabns_raid_class_release }, section "___ksymtab+raid_class_release", align 4
@__UNIQUE_ID_author279 = internal constant [34 x i8] c"raid_class.author=James Bottomley\00", section ".modinfo", align 1
@__UNIQUE_ID_description280 = internal constant [41 x i8] c"raid_class.description=RAID device class\00", section ".modinfo", align 1
@__UNIQUE_ID_file281 = internal constant [40 x i8] c"raid_class.file=drivers/scsi/raid_class\00", section ".modinfo", align 1
@__UNIQUE_ID_license282 = internal constant [23 x i8] c"raid_class.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_raid_class__283_313_raid_init6 = internal global ptr @raid_init, section ".initcall6.init", align 4
@__exitcall_raid_exit = internal global ptr @raid_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@raid_component_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"COMPONENT RELEASE\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"raid_component_release\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/scsi/raid_class.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@raid_component_release._entry_ptr = internal global ptr @raid_component_release._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"raid_devices\00", [19 x i8] zeroinitializer }, align 32
@raid_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 99, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RAID REMOVE\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"raid_remove\00", [20 x i8] zeroinitializer }, align 32
@raid_remove._entry_ptr = internal global ptr @raid_remove._entry, section ".printk_index", align 4
@raid_remove._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RAID COMPONENT REMOVE\0A\00", [41 x i8] zeroinitializer }, align 32
@raid_remove._entry_ptr.11 = internal global ptr @raid_remove._entry.9, section ".printk_index", align 4
@raid_remove._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.3, i32 106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RAID REMOVE DONE\0A\00", [46 x i8] zeroinitializer }, align 32
@raid_remove._entry_ptr.14 = internal global ptr @raid_remove._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"level\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@raid_levels = internal constant { [12 x %struct.anon.83], [32 x i8] } { [12 x %struct.anon.83] [%struct.anon.83 { i32 0, ptr @.str.17 }, %struct.anon.83 { i32 1, ptr @.str.18 }, %struct.anon.83 { i32 2, ptr @.str.19 }, %struct.anon.83 { i32 3, ptr @.str.20 }, %struct.anon.83 { i32 4, ptr @.str.21 }, %struct.anon.83 { i32 5, ptr @.str.22 }, %struct.anon.83 { i32 6, ptr @.str.23 }, %struct.anon.83 { i32 7, ptr @.str.24 }, %struct.anon.83 { i32 8, ptr @.str.25 }, %struct.anon.83 { i32 9, ptr @.str.26 }, %struct.anon.83 { i32 10, ptr @.str.27 }, %struct.anon.83 { i32 11, ptr @.str.28 }], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"linear\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"raid0\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"raid1\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"raid10\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"raid1e\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"raid3\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"raid4\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"raid5\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"raid50\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"raid6\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"jbod\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resync\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@raid_states = internal constant { [5 x %struct.anon.84], [56 x i8] } { [5 x %struct.anon.84] [%struct.anon.84 { i32 0, ptr @.str.17 }, %struct.anon.84 { i32 1, ptr @.str.32 }, %struct.anon.84 { i32 2, ptr @.str.33 }, %struct.anon.84 { i32 3, ptr @.str.34 }, %struct.anon.84 { i32 4, ptr @.str.35 }], [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"degraded\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"resyncing\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"offline\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 241, i32 25 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"raid_class\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"dev_attr_level\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"dev_attr_resync\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"dev_attr_state\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 216, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 111, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 99, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 103, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 106, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 208, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"raid_levels\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 145, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 146, i32 24 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 147, i32 23 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 148, i32 18 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 149, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 150, i32 19 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 151, i32 19 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 152, i32 18 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 153, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 154, i32 18 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 155, i32 19 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 156, i32 18 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 157, i32 21 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 209, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 210, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant [12 x i8] c"raid_states\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 120, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 122, i32 23 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 123, i32 25 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 124, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [29 x i8] c"../drivers/scsi/raid_class.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 125, i32 24 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description280, ptr @__UNIQUE_ID_file281, ptr @__UNIQUE_ID_license282, ptr @__exitcall_raid_exit, ptr @__initcall__kmod_raid_class__283_313_raid_init6, ptr @__ksymtab_raid_class_attach, ptr @__ksymtab_raid_class_release, ptr @__ksymtab_raid_component_add, ptr @raid_component_release._entry, ptr @raid_component_release._entry_ptr, ptr @raid_exit, ptr @raid_remove._entry, ptr @raid_remove._entry.12, ptr @raid_remove._entry.9, ptr @raid_remove._entry_ptr, ptr @raid_remove._entry_ptr.11, ptr @raid_remove._entry_ptr.14, ptr @.str, ptr @raid_class, ptr @dev_attr_level, ptr @dev_attr_resync, ptr @dev_attr_state, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @raid_levels, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @raid_states, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_class to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_resync to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_component_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_remove._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_remove._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_levels to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_states to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @raid_component_add(ptr noundef %r, ptr noundef %raid_dev, ptr noundef %component_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @attribute_container_find_class_device(ptr noundef %r, ptr noundef %raid_dev) #7
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 944) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %dev = getelementptr inbounds %struct.raid_component, ptr %call7.i.i, i32 0, i32 1
  tail call void @device_initialize(ptr noundef %dev) #7
  %release = getelementptr inbounds %struct.raid_component, ptr %call7.i.i, i32 0, i32 1, i32 35
  %5 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @raid_component_release, ptr %release, align 4
  %call4 = tail call ptr @get_device(ptr noundef %component_dev) #7
  %parent = getelementptr inbounds %struct.raid_component, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %parent, align 8
  %component_count = getelementptr inbounds %struct.raid_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %component_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %component_count, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %component_count, align 4
  %num = getelementptr inbounds %struct.raid_component, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %num, align 8
  %call8 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %8) #7
  %prev.i37 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i37, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %11, ptr noundef %1) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %prev.i37, align 4
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %call7.i.i, align 8
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %class = getelementptr inbounds %struct.raid_component, ptr %call7.i.i, i32 0, i32 1, i32 33
  %16 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @raid_class, ptr %class, align 4
  %call12 = tail call i32 @device_add(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %list_add_tail.exit.cleanup_crit_edge, label %err_out

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_out:                                          ; preds = %list_add_tail.exit
  %call.i.i38 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i) #7
  br i1 %call.i.i38, label %if.end.i.i39, label %err_out.list_del.exit_crit_edge

err_out.list_del.exit_crit_edge:                  ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i39:                                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i39, %err_out.list_del.exit_crit_edge
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %25 = ptrtoint ptr %component_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %component_count, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %component_count, align 4
  tail call void @put_device(ptr noundef %component_dev) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %list_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %list_del.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @attribute_container_find_class_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid_component_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef nonnull @.str.1) #11
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  tail call void @put_device(ptr noundef %3) #7
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @raid_class_attach(ptr noundef %ft) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 196) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !99

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %f = getelementptr inbounds %struct.raid_internal, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ft, ptr %f, align 4
  %class = getelementptr inbounds %struct.attribute_container, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @raid_class, ptr %class, align 4
  %match = getelementptr inbounds %struct.attribute_container, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @raid_match, ptr %match, align 8
  %attrs = getelementptr inbounds %struct.raid_internal, ptr %call7.i.i, i32 0, i32 3
  %attrs10 = getelementptr inbounds %struct.attribute_container, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %attrs10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %attrs, ptr %attrs10, align 4
  %call14 = tail call i32 @attribute_container_register(ptr noundef nonnull %call7.i.i) #7
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dev_attr_level, ptr %attrs, align 4
  %arrayidx19 = getelementptr %struct.raid_internal, ptr %call7.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dev_attr_resync, ptr %arrayidx19, align 8
  %arrayidx22 = getelementptr %struct.raid_internal, ptr %call7.i.i, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dev_attr_state, ptr %arrayidx22, align 4
  %arrayidx24 = getelementptr %struct.raid_internal, ptr %call7.i.i, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx24, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_match(ptr nocapture noundef readonly %cont, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scsi_is_sdev_device(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup16_crit_edge, label %if.then

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16

if.then:                                          ; preds = %entry
  %add.ptr11 = getelementptr i8, ptr %dev, i32 -408
  %f = getelementptr inbounds %struct.raid_internal, ptr %cont, i32 0, i32 1
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr11, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostt, align 8
  %cmp.not = icmp eq ptr %3, %7
  br i1 %cmp.not, label %if.end, label %if.then.cleanup16_crit_edge

if.then.cleanup16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %is_raid = getelementptr inbounds %struct.raid_function_template, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %is_raid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %is_raid, align 4
  %call14 = tail call i32 %9(ptr noundef %dev) #7
  br label %cleanup16

cleanup16:                                        ; preds = %if.end, %if.then.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.1 = phi i32 [ %call14, %if.end ], [ 0, %if.then.cleanup16_crit_edge ], [ 0, %entry.cleanup16_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attribute_container_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @raid_class_release(ptr noundef %r) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @attribute_container_unregister(ptr noundef %r) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end9, label %do.body4, !prof !100

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/raid_class.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #7, !srcloc !101
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %r) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attribute_container_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @raid_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @transport_class_unregister(ptr noundef nonnull @raid_class) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @transport_class_register(ptr noundef nonnull @raid_class) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_setup(ptr nocapture noundef readnone %tc, ptr nocapture noundef readnone %dev, ptr nocapture noundef %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %cdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !100

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/raid_class.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 82, 0\0A.popsection", ""() #7, !srcloc !102
  unreachable

do.end8:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #10
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %do.end8.cleanup_crit_edge, label %if.end12

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -12, %do.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_remove(ptr nocapture noundef readnone %tc, ptr noundef %dev, ptr nocapture noundef %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %cdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %cmp.not32 = icmp eq ptr %4, %1
  br i1 %cmp.not32, label %entry.do.end21_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %rc.033 = phi ptr [ %next.0, %list_del.exit.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %rc.033 to i32
  call void @__asan_load4_noabort(i32 %5)
  %next.0 = load ptr, ptr %rc.033, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rc.033) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rc.033, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %rc.033 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rc.033, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %12 = ptrtoint ptr %rc.033 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %rc.033, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %rc.033, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dev12 = getelementptr inbounds %struct.raid_component, ptr %rc.033, i32 0, i32 1
  %parent = getelementptr inbounds %struct.raid_component, ptr %rc.033, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %15, ptr noundef nonnull @.str.10) #11
  tail call void @device_unregister(ptr noundef %dev12) #7
  %cmp.not = icmp eq ptr %next.0, %1
  br i1 %cmp.not, label %list_del.exit.do.end21_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.do.end21_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

do.end21:                                         ; preds = %list_del.exit.do.end21_crit_edge, %entry.do.end21_crit_edge
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_sdev_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_show_level(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %level, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %level1 = getelementptr inbounds %struct.raid_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %level1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %switch = icmp ult i32 %3, 12
  br i1 %switch, label %if.then.i, label %entry.raid_level_name.exit_crit_edge

entry.raid_level_name.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %raid_level_name.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name3.i = getelementptr [12 x %struct.anon.83], ptr @raid_levels, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name3.i, align 4
  br label %raid_level_name.exit

raid_level_name.exit:                             ; preds = %if.then.i, %entry.raid_level_name.exit_crit_edge
  %name.0.i = phi ptr [ %5, %if.then.i ], [ null, %entry.raid_level_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.16, ptr noundef %name.0.i)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_show_resync(ptr noundef %dev, ptr nocapture noundef readnone %resync, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @attribute_container_classdev_to_container(ptr noundef %dev) #7
  %f = getelementptr inbounds %struct.raid_internal, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f, align 4
  %get_resync = getelementptr inbounds %struct.raid_function_template, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %get_resync to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_resync, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  tail call void %5(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %resync13 = getelementptr inbounds %struct.raid_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %resync13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resync13, align 4
  %call14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.30, i32 noundef %9)
  ret i32 %call14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @attribute_container_classdev_to_container(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_show_state(ptr noundef %dev, ptr nocapture noundef readnone %state, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @attribute_container_classdev_to_container(ptr noundef %dev) #7
  %f = getelementptr inbounds %struct.raid_internal, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f, align 4
  %get_state = getelementptr inbounds %struct.raid_function_template, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %get_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_state, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  tail call void %5(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state13 = getelementptr inbounds %struct.raid_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %switch = icmp ult i32 %9, 5
  br i1 %switch, label %if.then.i, label %if.end.raid_state_name.exit_crit_edge

if.end.raid_state_name.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %raid_state_name.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name3.i = getelementptr [5 x %struct.anon.84], ptr @raid_states, i32 0, i32 %9, i32 1
  %10 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name3.i, align 4
  br label %raid_state_name.exit

raid_state_name.exit:                             ; preds = %if.then.i, %if.end.raid_state_name.exit_crit_edge
  %name.0.i = phi ptr [ %11, %if.then.i ], [ null, %if.end.raid_state_name.exit_crit_edge ]
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.16, ptr noundef %name.0.i)
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_class_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !79, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/raid_class.c", i32 241, i32 25}
!2 = !{ptr @__ksymtab_raid_component_add, !3, !"__ksymtab_raid_component_add", i1 false, i1 false}
!3 = !{!"../drivers/scsi/raid_class.c", i32 257, i32 1}
!4 = !{ptr @__ksymtab_raid_class_attach, !5, !"__ksymtab_raid_class_attach", i1 false, i1 false}
!5 = !{!"../drivers/scsi/raid_class.c", i32 286, i32 1}
!6 = !{ptr @__ksymtab_raid_class_release, !7, !"__ksymtab_raid_class_release", i1 false, i1 false}
!7 = !{!"../drivers/scsi/raid_class.c", i32 297, i32 1}
!8 = !{ptr @__UNIQUE_ID_author279, !9, !"__UNIQUE_ID_author279", i1 false, i1 false}
!9 = !{!"../drivers/scsi/raid_class.c", i32 309, i32 1}
!10 = !{ptr @__UNIQUE_ID_description280, !11, !"__UNIQUE_ID_description280", i1 false, i1 false}
!11 = !{!"../drivers/scsi/raid_class.c", i32 310, i32 1}
!12 = !{ptr @__UNIQUE_ID_file281, !13, !"__UNIQUE_ID_file281", i1 false, i1 false}
!13 = !{!"../drivers/scsi/raid_class.c", i32 311, i32 1}
!14 = !{ptr @__UNIQUE_ID_license282, !13, !"__UNIQUE_ID_license282", i1 false, i1 false}
!15 = !{ptr @__initcall__kmod_raid_class__283_313_raid_init6, !16, !"__initcall__kmod_raid_class__283_313_raid_init6", i1 false, i1 false}
!16 = !{!"../drivers/scsi/raid_class.c", i32 313, i32 1}
!17 = !{ptr @__exitcall_raid_exit, !18, !"__exitcall_raid_exit", i1 false, i1 false}
!18 = !{!"../drivers/scsi/raid_class.c", i32 314, i32 1}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/raid_class.c", i32 216, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @raid_component_release._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @raid_component_release._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/raid_class.c", i32 111, i32 8}
!29 = !{ptr @raid_class, !28, !"raid_class", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/raid_class.c", i32 99, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @raid_remove._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @raid_remove._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/raid_class.c", i32 103, i32 3}
!37 = !{ptr @raid_remove._entry.9, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @raid_remove._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/raid_class.c", i32 106, i32 2}
!41 = !{ptr @raid_remove._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @raid_remove._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/raid_class.c", i32 208, i32 1}
!45 = !{ptr @dev_attr_level, !44, !"dev_attr_level", i1 false, i1 false}
!46 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/raid_class.c", i32 146, i32 24}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/raid_class.c", i32 147, i32 23}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/raid_class.c", i32 148, i32 18}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/raid_class.c", i32 149, i32 18}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/raid_class.c", i32 150, i32 19}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/raid_class.c", i32 151, i32 19}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/raid_class.c", i32 152, i32 18}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/raid_class.c", i32 153, i32 18}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/raid_class.c", i32 154, i32 18}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/raid_class.c", i32 155, i32 19}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/raid_class.c", i32 156, i32 18}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/raid_class.c", i32 157, i32 21}
!71 = !{ptr @raid_levels, !72, !"raid_levels", i1 false, i1 false}
!72 = !{!"../drivers/scsi/raid_class.c", i32 145, i32 3}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/raid_class.c", i32 209, i32 1}
!75 = !{ptr @dev_attr_resync, !74, !"dev_attr_resync", i1 false, i1 false}
!76 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/raid_class.c", i32 210, i32 1}
!79 = !{ptr @dev_attr_state, !78, !"dev_attr_state", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/raid_class.c", i32 122, i32 23}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/raid_class.c", i32 123, i32 25}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/raid_class.c", i32 124, i32 26}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/raid_class.c", i32 125, i32 24}
!88 = !{ptr @raid_states, !89, !"raid_states", i1 false, i1 false}
!89 = !{!"../drivers/scsi/raid_class.c", i32 120, i32 3}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{!"branch_weights", i32 2000, i32 1}
!101 = !{i64 2154557224, i64 2154557714, i64 2154557261, i64 2154557317, i64 2154557351, i64 2154557375, i64 2154557416, i64 2154557437, i64 2154557465, i64 2154557499}
!102 = !{i64 2154515175, i64 2154515664, i64 2154515212, i64 2154515268, i64 2154515302, i64 2154515326, i64 2154515367, i64 2154515388, i64 2154515416, i64 2154515450}
