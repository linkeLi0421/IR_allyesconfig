; ModuleID = '/llk/IR_all_yes/drivers/rtc/sysfs.c_pt.bc'
source_filename = "../drivers/rtc/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtc_add_groups\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_add_groups\09\09\09\09"
module asm "\09.long\09__crc_rtc_add_groups\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_add_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_add_groups\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_add_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtc_add_group\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_add_group\09\09\09\09"
module asm "\09.long\09__crc_rtc_add_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_add_group:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_add_group\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_add_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@rtc_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rtc_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@__kstrtab_rtc_add_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_add_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_add_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_add_groups to i32), ptr @__kstrtab_rtc_add_groups, ptr @__kstrtabns_rtc_add_groups }, section "___ksymtab+rtc_add_groups", align 4
@__kstrtab_rtc_add_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_add_group = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_add_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_add_group to i32), ptr @__kstrtab_rtc_add_group, ptr @__kstrtabns_rtc_add_group }, section "___ksymtab+rtc_add_group", align 4
@rtc_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @rtc_attr_is_visible, ptr null, ptr @rtc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rtc_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @dev_attr_name, ptr @dev_attr_date, ptr @dev_attr_time, ptr @dev_attr_since_epoch, ptr @dev_attr_max_user_freq, ptr @dev_attr_hctosys, ptr @dev_attr_wakealarm, ptr @dev_attr_offset, ptr @dev_attr_range, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_wakealarm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wakealarm_show, ptr @wakealarm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_offset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offset_show, ptr @offset_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_range = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @range_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wakealarm\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"range\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[%lld,%llu]\0A\00", [19 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_date = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @date_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_time = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @time_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_since_epoch = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @since_epoch_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_user_freq = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_user_freq_show, ptr @max_user_freq_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hctosys = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hctosys_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"date\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%ptRd\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"time\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%ptRt\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"since_epoch\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max_user_freq\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hctosys\00", [24 x i8] zeroinitializer }, align 32
@rtc_hctosys_ret = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtc0\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"rtc_attr_groups\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 305, i32 38 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"rtc_attr_group\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 300, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"rtc_attrs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 253, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"dev_attr_wakealarm\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"dev_attr_offset\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"dev_attr_range\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 215, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 144, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 243, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 225, i32 25 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 251, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 248, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"dev_attr_date\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"dev_attr_time\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"dev_attr_since_epoch\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [23 x i8] c"dev_attr_max_user_freq\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"dev_attr_hctosys\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 29, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 26, i32 22 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 43, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 41, i32 22 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 57, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 55, i32 22 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 75, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 102, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 80, i32 22 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 124, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 119, i32 6 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 120, i32 23 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [23 x i8] c"../drivers/rtc/sysfs.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 122, i32 22 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__ksymtab_rtc_add_group, ptr @__ksymtab_rtc_add_groups, ptr @rtc_attr_groups, ptr @rtc_attr_group, ptr @rtc_attrs, ptr @dev_attr_wakealarm, ptr @dev_attr_offset, ptr @dev_attr_range, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dev_attr_name, ptr @dev_attr_date, ptr @dev_attr_time, ptr @dev_attr_since_epoch, ptr @dev_attr_max_user_freq, ptr @dev_attr_hctosys, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wakealarm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_offset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_range to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_date to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_time to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_since_epoch to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_user_freq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hctosys to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @rtc_get_dev_attribute_groups() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @rtc_attr_groups
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtc_add_groups(ptr noundef %rtc, ptr noundef readonly %grps) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %grps, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %groups1 = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 34
  %0 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups1, align 8
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %for.cond.preheader

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.cond.preheader:                               ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool4.not62 = icmp eq ptr %3, null
  br i1 %tobool4.not62, label %for.cond.preheader.if.end5_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end5_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %groups.064 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %1, %for.cond.preheader.for.body_crit_edge ]
  %old_cnt.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %inc = add i32 %old_cnt.063, 1
  %incdec.ptr = getelementptr ptr, ptr %groups.064, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %for.body.if.end5_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end5:                                          ; preds = %for.body.if.end5_crit_edge, %for.cond.preheader.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %old_cnt.1 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ 0, %for.cond.preheader.if.end5_crit_edge ], [ %inc, %for.body.if.end5_crit_edge ]
  %6 = ptrtoint ptr %grps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grps, align 4
  %tobool7.not65 = icmp eq ptr %7, null
  br i1 %tobool7.not65, label %if.end5.for.end12_crit_edge, label %if.end5.for.body8_crit_edge

if.end5.for.body8_crit_edge:                      ; preds = %if.end5
  br label %for.body8

if.end5.for.end12_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end12

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %if.end5.for.body8_crit_edge
  %groups.167 = phi ptr [ %incdec.ptr11, %for.body8.for.body8_crit_edge ], [ %grps, %if.end5.for.body8_crit_edge ]
  %add_cnt.066 = phi i32 [ %inc9, %for.body8.for.body8_crit_edge ], [ 0, %if.end5.for.body8_crit_edge ]
  %inc9 = add i32 %add_cnt.066, 1
  %incdec.ptr11 = getelementptr ptr, ptr %groups.167, i32 1
  %8 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %incdec.ptr11, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %for.body8.for.end12_crit_edge, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

for.body8.for.end12_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end12

for.end12:                                        ; preds = %for.body8.for.end12_crit_edge, %if.end5.for.end12_crit_edge
  %add_cnt.0.lcssa = phi i32 [ 0, %if.end5.for.end12_crit_edge ], [ %inc9, %for.body8.for.end12_crit_edge ]
  %add = add i32 %add_cnt.0.lcssa, %old_cnt.1
  %add13 = add i32 %add, 1
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add13, i32 4) #10
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %for.end12.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !66

for.end12.cleanup_crit_edge:                      ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %for.end12
  %12 = extractvalue { i32, i1 } %10, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %rtc, i32 noundef %12, i32 noundef 3520) #10
  %tobool15.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool15.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end17

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %devm_kcalloc.exit
  %13 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %groups1, align 8
  %mul = shl i32 %old_cnt.1, 2
  %15 = call ptr @memcpy(ptr %call5.i.i, ptr %14, i32 %mul)
  %add.ptr = getelementptr ptr, ptr %call5.i.i, i32 %old_cnt.1
  %mul20 = shl i32 %add_cnt.0.lcssa, 2
  %16 = call ptr @memcpy(ptr %add.ptr, ptr %grps, i32 %mul20)
  %arrayidx = getelementptr ptr, ptr %call5.i.i, i32 %add
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx, align 4
  store ptr %call5.i.i, ptr %groups1, align 8
  %tobool26.not = icmp eq ptr %14, null
  %cmp.not = icmp eq ptr %14, @rtc_attr_groups
  %or.cond = or i1 %tobool26.not, %cmp.not
  br i1 %or.cond, label %if.end17.cleanup_crit_edge, label %if.then27

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_kfree(ptr noundef %rtc, ptr noundef nonnull %14) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end17.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %for.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end17.cleanup_crit_edge ], [ -12, %for.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtc_add_group(ptr noundef %rtc, ptr noundef %grp) #1 align 64 {
entry:
  %groups = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %groups) #10
  %0 = getelementptr inbounds [2 x ptr], ptr %groups, i32 0, i32 1
  %1 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %grp, ptr %groups, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %0, align 4
  %groups1.i = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 34
  %3 = ptrtoint ptr %groups1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %groups1.i, align 8
  %tobool2.not.i = icmp eq ptr %4, null
  br i1 %tobool2.not.i, label %entry.if.end5.i_crit_edge, label %for.cond.preheader.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

for.cond.preheader.i:                             ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool4.not62.i = icmp eq ptr %6, null
  br i1 %tobool4.not62.i, label %for.cond.preheader.i.if.end5.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end5.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %groups.064.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %4, %for.cond.preheader.i.for.body.i_crit_edge ]
  %old_cnt.063.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %inc.i = add i32 %old_cnt.063.i, 1
  %incdec.ptr.i = getelementptr ptr, ptr %groups.064.i, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %for.body.i.if.end5.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.end5.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %for.body.i.if.end5.i_crit_edge, %for.cond.preheader.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %old_cnt.1.i = phi i32 [ 0, %entry.if.end5.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end5.i_crit_edge ], [ %inc.i, %for.body.i.if.end5.i_crit_edge ]
  %tobool7.not65.i = icmp eq ptr %grp, null
  br i1 %tobool7.not65.i, label %if.end5.i.for.end12.i_crit_edge, label %if.end5.i.for.body8.i_crit_edge

if.end5.i.for.body8.i_crit_edge:                  ; preds = %if.end5.i
  br label %for.body8.i

if.end5.i.for.end12.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end12.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %if.end5.i.for.body8.i_crit_edge
  %groups.167.i = phi ptr [ %incdec.ptr11.i, %for.body8.i.for.body8.i_crit_edge ], [ %groups, %if.end5.i.for.body8.i_crit_edge ]
  %add_cnt.066.i = phi i32 [ %inc9.i, %for.body8.i.for.body8.i_crit_edge ], [ 0, %if.end5.i.for.body8.i_crit_edge ]
  %inc9.i = add i32 %add_cnt.066.i, 1
  %incdec.ptr11.i = getelementptr ptr, ptr %groups.167.i, i32 1
  %9 = ptrtoint ptr %incdec.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %incdec.ptr11.i, align 4
  %tobool7.not.i = icmp eq ptr %10, null
  br i1 %tobool7.not.i, label %for.body8.i.for.end12.i_crit_edge, label %for.body8.i.for.body8.i_crit_edge

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8.i

for.body8.i.for.end12.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end12.i

for.end12.i:                                      ; preds = %for.body8.i.for.end12.i_crit_edge, %if.end5.i.for.end12.i_crit_edge
  %add_cnt.0.lcssa.i = phi i32 [ 0, %if.end5.i.for.end12.i_crit_edge ], [ %inc9.i, %for.body8.i.for.end12.i_crit_edge ]
  %add.i = add i32 %add_cnt.0.lcssa.i, %old_cnt.1.i
  %add13.i = add i32 %add.i, 1
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add13.i, i32 4) #10
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %for.end12.i.rtc_add_groups.exit_crit_edge, label %devm_kcalloc.exit.i, !prof !66

for.end12.i.rtc_add_groups.exit_crit_edge:        ; preds = %for.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_add_groups.exit

devm_kcalloc.exit.i:                              ; preds = %for.end12.i
  %13 = extractvalue { i32, i1 } %11, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %rtc, i32 noundef %13, i32 noundef 3520) #10
  %tobool15.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool15.not.i, label %devm_kcalloc.exit.i.rtc_add_groups.exit_crit_edge, label %if.end17.i

devm_kcalloc.exit.i.rtc_add_groups.exit_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_add_groups.exit

if.end17.i:                                       ; preds = %devm_kcalloc.exit.i
  %14 = ptrtoint ptr %groups1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %groups1.i, align 8
  %mul.i = shl i32 %old_cnt.1.i, 2
  %16 = call ptr @memcpy(ptr %call5.i.i.i, ptr %15, i32 %mul.i)
  %add.ptr.i = getelementptr ptr, ptr %call5.i.i.i, i32 %old_cnt.1.i
  %mul20.i = shl i32 %add_cnt.0.lcssa.i, 2
  %17 = call ptr @memcpy(ptr %add.ptr.i, ptr %groups, i32 %mul20.i)
  %arrayidx.i = getelementptr ptr, ptr %call5.i.i.i, i32 %add.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx.i, align 4
  store ptr %call5.i.i.i, ptr %groups1.i, align 8
  %tobool26.not.i = icmp eq ptr %15, null
  %cmp.not.i = icmp eq ptr %15, @rtc_attr_groups
  %or.cond.i = or i1 %tobool26.not.i, %cmp.not.i
  br i1 %or.cond.i, label %if.end17.i.rtc_add_groups.exit_crit_edge, label %if.then27.i

if.end17.i.rtc_add_groups.exit_crit_edge:         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_add_groups.exit

if.then27.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_kfree(ptr noundef %rtc, ptr noundef nonnull %15) #10
  br label %rtc_add_groups.exit

rtc_add_groups.exit:                              ; preds = %if.then27.i, %if.end17.i.rtc_add_groups.exit_crit_edge, %devm_kcalloc.exit.i.rtc_add_groups.exit_crit_edge, %for.end12.i.rtc_add_groups.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %devm_kcalloc.exit.i.rtc_add_groups.exit_crit_edge ], [ 0, %if.then27.i ], [ 0, %if.end17.i.rtc_add_groups.exit_crit_edge ], [ -12, %for.end12.i.rtc_add_groups.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %groups) #10
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @rtc_attr_is_visible(ptr noundef %kobj, ptr noundef readonly %attr, i32 noundef %n) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mode1, align 4
  %cmp = icmp eq ptr %attr, @dev_attr_wakealarm
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %parent.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %can_wakeup.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %can_wakeup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i.i)
  %tobool.i.i = icmp slt i16 %bf.load.i.i, 0
  br i1 %tobool.i.i, label %rtc_does_wakealarm.exit, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

rtc_does_wakealarm.exit:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %features.i = getelementptr inbounds %struct.rtc_device, ptr %kobj, i32 0, i32 21
  %5 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %features.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %spec.select = select i1 %tobool.i.not, i16 0, i16 %1
  br label %if.end16

if.else:                                          ; preds = %entry
  %cmp4 = icmp eq ptr %attr, @dev_attr_offset
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %ops = getelementptr inbounds %struct.rtc_device, ptr %kobj, i32 0, i32 3
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 8
  %set_offset = getelementptr inbounds %struct.rtc_class_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %set_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_offset, align 4
  %tobool.not = icmp eq ptr %10, null
  %spec.select23 = select i1 %tobool.not, i16 0, i16 %1
  br label %if.end16

if.else8:                                         ; preds = %if.else
  %cmp9 = icmp eq ptr %attr, @dev_attr_range
  br i1 %cmp9, label %if.then10, label %if.else8.if.end16_crit_edge

if.else8.if.end16_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %kobj, i32 0, i32 23
  %11 = ptrtoint ptr %range_max to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %range_max, align 8
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %kobj, i32 0, i32 22
  %13 = ptrtoint ptr %range_min to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %range_min, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %tobool11.not = icmp eq i64 %12, %14
  %spec.select24 = select i1 %tobool11.not, i16 0, i16 %1
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.else8.if.end16_crit_edge, %if.then5, %rtc_does_wakealarm.exit, %if.then.if.end16_crit_edge
  %mode.0 = phi i16 [ %1, %if.else8.if.end16_crit_edge ], [ %spec.select23, %if.then5 ], [ %spec.select24, %if.then10 ], [ 0, %if.then.if.end16_crit_edge ], [ %spec.select, %rtc_does_wakealarm.exit ]
  ret i16 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakealarm_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  %alm = alloca %struct.rtc_wkalrm, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %alm) #10
  %0 = call ptr @memset(ptr %alm, i32 255, i32 40)
  %call = call i32 @rtc_read_alarm(ptr noundef %dev, ptr noundef nonnull %alm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %alm to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %alm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %call2 = call i64 @rtc_tm_to_time64(ptr noundef %time) #10
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i64 noundef %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ %call3, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %call, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %alm) #10
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakealarm_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #1 align 64 {
entry:
  %alarm = alloca i64, align 8
  %alm = alloca %struct.rtc_wkalrm, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %alarm) #10
  %0 = ptrtoint ptr %alarm to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %alarm, align 8, !annotation !67
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %alm) #10
  %1 = call ptr @memset(ptr %alm, i32 255, i32 40)
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %call = call i32 @rtc_read_time(ptr noundef %dev, ptr noundef %time) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i64 @rtc_tm_to_time64(ptr noundef %time) #10
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %3)
  %cmp4 = icmp eq i8 %3, 43
  br i1 %cmp4, label %if.then6, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %5)
  %cmp8 = icmp eq i8 %5, 61
  br i1 %cmp8, label %if.then10, label %if.end13.thread

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr11 = getelementptr i8, ptr %buf, i32 2
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %buf_ptr.0 = phi ptr [ %incdec.ptr11, %if.then10 ], [ %buf, %if.end.if.end13_crit_edge ]
  %6 = xor i1 %cmp4, true
  %call.i = call i32 @kstrtoll(ptr noundef %buf_ptr.0, i32 noundef 0, ptr noundef nonnull %alarm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end13.if.end19_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end13.thread:                                  ; preds = %if.then6
  %call.i80 = call i32 @kstrtoll(ptr noundef %incdec.ptr, i32 noundef 0, ptr noundef nonnull %alarm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not81 = icmp eq i32 %call.i80, 0
  br i1 %tobool.not81, label %if.then18, label %if.end13.thread.cleanup_crit_edge

if.end13.thread.cleanup_crit_edge:                ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %alarm to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %alarm, align 8
  %add = add i64 %8, %call3
  store i64 %add, ptr %alarm, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end13.if.end19_crit_edge
  %tobool22.not8287 = phi i1 [ true, %if.then18 ], [ %6, %if.end13.if.end19_crit_edge ]
  %9 = ptrtoint ptr %alarm to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %alarm, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %call3)
  %cmp20 = icmp sle i64 %10, %call3
  %11 = and i1 %tobool22.not8287, %cmp20
  br i1 %11, label %if.else44, label %if.then23

if.then23:                                        ; preds = %if.end19
  %call24 = call i32 @rtc_read_alarm(ptr noundef %dev, ptr noundef nonnull %alm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then23.cleanup_crit_edge, label %if.end28

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.then23
  %12 = ptrtoint ptr %alm to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %alm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool29.not = icmp eq i8 %13, 0
  br i1 %tobool29.not, label %if.else38, label %if.then30

if.then30:                                        ; preds = %if.end28
  br i1 %tobool22.not8287, label %if.then30.cleanup_crit_edge, label %if.then32

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = call i64 @rtc_tm_to_time64(ptr noundef %time) #10
  %14 = ptrtoint ptr %alarm to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %alarm, align 8
  %add35 = add i64 %15, %call34
  store i64 %add35, ptr %alarm, align 8
  br label %if.end42

if.else38:                                        ; preds = %if.end28
  br i1 %tobool22.not8287, label %if.else38.if.end42_crit_edge, label %if.else38.cleanup_crit_edge

if.else38.cleanup_crit_edge:                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else38.if.end42_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42:                                         ; preds = %if.else38.if.end42_crit_edge, %if.then32
  %16 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %alm, align 4
  br label %if.end47

if.else44:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %alm, align 4
  %add46 = add i64 %call3, 300
  %18 = ptrtoint ptr %alarm to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add46, ptr %alarm, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.else44, %if.end42
  %19 = ptrtoint ptr %alarm to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %alarm, align 8
  call void @rtc_time64_to_tm(i64 noundef %20, ptr noundef %time) #10
  %call49 = call i32 @rtc_set_alarm(ptr noundef %dev, ptr noundef nonnull %alm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  %call49.n = select i1 %cmp50, i32 %call49, i32 %n
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.else38.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.end13.thread.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call49.n, %if.end47 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.end13.cleanup_crit_edge ], [ %call24, %if.then23.cleanup_crit_edge ], [ -16, %if.then30.cleanup_crit_edge ], [ -22, %if.else38.cleanup_crit_edge ], [ %call.i80, %if.end13.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %alm) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %alarm) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_alarm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_time(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_set_alarm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @offset_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #10
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %offset, align 4, !annotation !67
  %call = call i32 @rtc_read_offset(ptr noundef %dev, ptr noundef nonnull %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset, align 4
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ %call2, %if.then ], [ %call, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #10
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @offset_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #1 align 64 {
entry:
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #10
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %offset, align 4, !annotation !67
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset, align 4
  %call2 = call i32 @rtc_set_offset(ptr noundef %dev, i32 noundef %2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ %call2, %if.then ], [ %call.i, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %cmp3 = icmp slt i32 %retval1.0, 0
  %retval1.0.n = select i1 %cmp3, i32 %retval1.0, i32 %n
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #10
  ret i32 %retval1.0.n
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_offset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_set_offset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @range_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %range_min to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %range_min, align 8
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %dev, i32 0, i32 23
  %2 = ptrtoint ptr %range_max to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %range_max, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i64 noundef %1, i64 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call ptr @dev_driver_string(ptr noundef %1) #10
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef %call, ptr noundef %retval.0.i)
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @date_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #10
  %0 = call ptr @memset(ptr %tm, i32 255, i32 36)
  %call = call i32 @rtc_read_time(ptr noundef %dev, ptr noundef nonnull %tm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, ptr noundef nonnull %tm)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @time_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #10
  %0 = call ptr @memset(ptr %tm, i32 255, i32 36)
  %call = call i32 @rtc_read_time(ptr noundef %dev, ptr noundef nonnull %tm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, ptr noundef nonnull %tm)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @since_epoch_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #10
  %0 = call ptr @memset(ptr %tm, i32 255, i32 36)
  %call = call i32 @rtc_read_time(ptr noundef %dev, ptr noundef nonnull %tm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %tm) #10
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i64 noundef %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ %call3, %if.then ], [ %call, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #10
  ret i32 %retval1.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_user_freq_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %max_user_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_user_freq, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_user_freq_store(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !67
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = add i32 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %3)
  %4 = icmp ult i32 %3, -4095
  br i1 %4, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %dev, i32 0, i32 12
  %5 = ptrtoint ptr %max_user_freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %max_user_freq, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %n, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hctosys_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtc_hctosys_ret to i32))
  %0 = load i32, ptr @rtc_hctosys_ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.dev_name.exit_crit_edge

land.lhs.true.dev_name.exit_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %land.lhs.true.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %land.lhs.true.dev_name.exit_crit_edge ]
  %call2 = tail call i32 @strcmp(ptr noundef %retval.0.i, ptr noundef nonnull dereferenceable(5) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %dev_name.exit.if.end_crit_edge

dev_name.exit.if.end_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.17, i32 3)
  br label %return

if.end:                                           ; preds = %dev_name.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = call ptr @memcpy(ptr %buf, ptr @.str.18, i32 3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret i32 2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20, !21, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !46, !48, !50, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__ksymtab_rtc_add_groups, !1, !"__ksymtab_rtc_add_groups", i1 false, i1 false}
!1 = !{!"../drivers/rtc/sysfs.c", i32 346, i32 1}
!2 = !{ptr @__ksymtab_rtc_add_group, !3, !"__ksymtab_rtc_add_group", i1 false, i1 false}
!3 = !{!"../drivers/rtc/sysfs.c", i32 354, i32 1}
!4 = !{ptr @rtc_attr_groups, !5, !"rtc_attr_groups", i1 false, i1 false}
!5 = !{!"../drivers/rtc/sysfs.c", i32 305, i32 38}
!6 = !{ptr @rtc_attr_group, !7, !"rtc_attr_group", i1 false, i1 false}
!7 = !{!"../drivers/rtc/sysfs.c", i32 300, i32 31}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/rtc/sysfs.c", i32 215, i32 8}
!10 = !{ptr @dev_attr_wakealarm, !9, !"dev_attr_wakealarm", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/rtc/sysfs.c", i32 144, i32 25}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/rtc/sysfs.c", i32 243, i32 8}
!15 = !{ptr @dev_attr_offset, !14, !"dev_attr_offset", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/sysfs.c", i32 225, i32 25}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/sysfs.c", i32 251, i32 8}
!20 = !{ptr @dev_attr_range, !19, !"dev_attr_range", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/rtc/sysfs.c", i32 248, i32 22}
!23 = !{ptr @rtc_attrs, !24, !"rtc_attrs", i1 false, i1 false}
!24 = !{!"../drivers/rtc/sysfs.c", i32 253, i32 26}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/sysfs.c", i32 29, i32 8}
!27 = !{ptr @dev_attr_name, !26, !"dev_attr_name", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/sysfs.c", i32 26, i32 22}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/sysfs.c", i32 43, i32 8}
!32 = !{ptr @dev_attr_date, !31, !"dev_attr_date", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/sysfs.c", i32 41, i32 22}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/sysfs.c", i32 57, i32 8}
!37 = !{ptr @dev_attr_time, !36, !"dev_attr_time", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rtc/sysfs.c", i32 55, i32 22}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/sysfs.c", i32 75, i32 8}
!42 = !{ptr @dev_attr_since_epoch, !41, !"dev_attr_since_epoch", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/sysfs.c", i32 102, i32 8}
!45 = !{ptr @dev_attr_max_user_freq, !44, !"dev_attr_max_user_freq", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/sysfs.c", i32 80, i32 22}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/sysfs.c", i32 124, i32 8}
!50 = !{ptr @dev_attr_hctosys, !49, !"dev_attr_hctosys", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/sysfs.c", i32 119, i32 6}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/sysfs.c", i32 120, i32 23}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/sysfs.c", i32 122, i32 22}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{!"auto-init"}
