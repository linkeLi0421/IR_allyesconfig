; ModuleID = '/llk/IR_all_yes/drivers/thermal/thermal_hwmon.c_pt.bc'
source_filename = "../drivers/thermal/thermal_hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+thermal_add_hwmon_sysfs\22, \22a\22\09"
module asm "\09.weak\09__crc_thermal_add_hwmon_sysfs\09\09\09\09"
module asm "\09.long\09__crc_thermal_add_hwmon_sysfs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_add_hwmon_sysfs:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_add_hwmon_sysfs\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_add_hwmon_sysfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+thermal_remove_hwmon_sysfs\22, \22a\22\09"
module asm "\09.weak\09__crc_thermal_remove_hwmon_sysfs\09\09\09\09"
module asm "\09.long\09__crc_thermal_remove_hwmon_sysfs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_remove_hwmon_sysfs:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_remove_hwmon_sysfs\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_remove_hwmon_sysfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_thermal_add_hwmon_sysfs\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_thermal_add_hwmon_sysfs\09\09\09\09"
module asm "\09.long\09__crc_devm_thermal_add_hwmon_sysfs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_thermal_add_hwmon_sysfs:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_thermal_add_hwmon_sysfs\22\09\09\09\09\09"
module asm "__kstrtabns_devm_thermal_add_hwmon_sysfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.thermal_hwmon_device = type { [20 x i8], ptr, i32, %struct.list_head, %struct.list_head }
%struct.thermal_hwmon_temp = type { %struct.list_head, ptr, %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr }
%struct.thermal_hwmon_attr = type { %struct.device_attribute, [16 x i8] }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%d_input\00", [19 x i8] zeroinitializer }, align 32
@thermal_add_hwmon_sysfs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp%d_crit\00", [20 x i8] zeroinitializer }, align 32
@thermal_add_hwmon_sysfs.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@thermal_hwmon_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @thermal_hwmon_list_lock, i64 52), ptr getelementptr (i8, ptr @thermal_hwmon_list_lock, i64 52) }, ptr @thermal_hwmon_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@thermal_hwmon_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @thermal_hwmon_list, ptr @thermal_hwmon_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_thermal_add_hwmon_sysfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_add_hwmon_sysfs = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_add_hwmon_sysfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_add_hwmon_sysfs to i32), ptr @__kstrtab_thermal_add_hwmon_sysfs, ptr @__kstrtabns_thermal_add_hwmon_sysfs }, section "___ksymtab_gpl+thermal_add_hwmon_sysfs", align 4
@thermal_remove_hwmon_sysfs.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thermal_sys\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"thermal_remove_hwmon_sysfs\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/thermal/thermal_hwmon.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hwmon device lookup failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@thermal_remove_hwmon_sysfs.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"temperature input lookup failed!\0A\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_thermal_remove_hwmon_sysfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_remove_hwmon_sysfs = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_remove_hwmon_sysfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_remove_hwmon_sysfs to i32), ptr @__kstrtab_thermal_remove_hwmon_sysfs, ptr @__kstrtabns_thermal_remove_hwmon_sysfs }, section "___ksymtab_gpl+thermal_remove_hwmon_sysfs", align 4
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"devm_thermal_hwmon_release\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_devm_thermal_add_hwmon_sysfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_thermal_add_hwmon_sysfs = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_thermal_add_hwmon_sysfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_thermal_add_hwmon_sysfs to i32), ptr @__kstrtab_devm_thermal_add_hwmon_sysfs, ptr @__kstrtabns_devm_thermal_add_hwmon_sysfs }, section "___ksymtab_gpl+devm_thermal_add_hwmon_sysfs", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"thermal_hwmon_list_lock.wait_lock\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"thermal_hwmon_list_lock\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 170, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 174, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 182, i32 5 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 186, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [24 x i8] c"thermal_hwmon_list_lock\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"thermal_hwmon_list\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 44, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 223, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 230, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 263, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 65, i32 22 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [35 x i8] c"../drivers/thermal/thermal_hwmon.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 46, i32 8 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_devm_thermal_add_hwmon_sysfs, ptr @__ksymtab_thermal_add_hwmon_sysfs, ptr @__ksymtab_thermal_remove_hwmon_sysfs, ptr @.str, ptr @thermal_add_hwmon_sysfs.__key, ptr @.str.1, ptr @thermal_add_hwmon_sysfs.__key.2, ptr @thermal_hwmon_list_lock, ptr @thermal_hwmon_list, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_add_hwmon_sysfs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_add_hwmon_sysfs.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_hwmon_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_hwmon_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_add_hwmon_sysfs(ptr noundef %tz) #0 align 64 {
entry:
  %temp.i = alloca i32, align 4
  %type.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %type.i) #8
  %0 = call ptr @memset(ptr %type.i, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef nonnull @thermal_hwmon_list_lock, i32 noundef 0) #8
  %type1.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @thermal_hwmon_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @thermal_hwmon_list
  br i1 %cmp.not.i, label %thermal_hwmon_lookup_by_type.exit.thread, label %for.body.i

thermal_hwmon_lookup_by_type.exit.thread:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %type.i) #8
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %hwmon.0.i = getelementptr i8, ptr %.pn.i, i32 -36
  %call.i = call ptr @strcpy(ptr noundef nonnull %type.i, ptr noundef %type1.i) #11
  %call4.i = call ptr @strreplace(ptr noundef nonnull %type.i, i8 noundef zeroext 45, i8 noundef zeroext 95) #8
  %call8.i = call i32 @strcmp(ptr noundef %hwmon.0.i, ptr noundef nonnull %type.i) #11
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %thermal_hwmon_lookup_by_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

thermal_hwmon_lookup_by_type.exit:                ; preds = %for.body.i
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %type.i) #8
  %tobool.not = icmp eq ptr %hwmon.0.i, null
  br i1 %tobool.not, label %thermal_hwmon_lookup_by_type.exit.if.end_crit_edge, label %thermal_hwmon_lookup_by_type.exit.register_sys_interface_crit_edge

thermal_hwmon_lookup_by_type.exit.register_sys_interface_crit_edge: ; preds = %thermal_hwmon_lookup_by_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %register_sys_interface

thermal_hwmon_lookup_by_type.exit.if.end_crit_edge: ; preds = %thermal_hwmon_lookup_by_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %thermal_hwmon_lookup_by_type.exit.if.end_crit_edge, %thermal_hwmon_lookup_by_type.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 44) #12
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tz_list = getelementptr inbounds %struct.thermal_hwmon_device, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %tz_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %tz_list, ptr %tz_list, align 4
  %prev.i = getelementptr inbounds %struct.thermal_hwmon_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tz_list, ptr %prev.i, align 8
  %call7 = call i32 @strlcpy(ptr noundef nonnull %call7.i.i, ptr noundef %type1.i, i32 noundef 20) #8
  %call10 = call ptr @strreplace(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 45, i8 noundef zeroext 95) #8
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  %call13 = call ptr @hwmon_device_register_with_info(ptr noundef %device, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i, ptr noundef null, ptr noundef null) #8
  %device14 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %device14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %device14, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end4.register_sys_interface_crit_edge

if.end4.register_sys_interface_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %register_sys_interface

if.then17:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call13 to i32
  br label %free_mem

register_sys_interface:                           ; preds = %if.end4.register_sys_interface_crit_edge, %thermal_hwmon_lookup_by_type.exit.register_sys_interface_crit_edge
  %tobool.not153 = phi i1 [ true, %if.end4.register_sys_interface_crit_edge ], [ false, %thermal_hwmon_lookup_by_type.exit.register_sys_interface_crit_edge ]
  %hwmon.0 = phi ptr [ %call7.i.i, %if.end4.register_sys_interface_crit_edge ], [ %hwmon.0.i, %thermal_hwmon_lookup_by_type.exit.register_sys_interface_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i143 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 100) #12
  %tobool22.not = icmp eq ptr %call7.i.i143, null
  br i1 %tobool22.not, label %register_sys_interface.unregister_name_crit_edge, label %if.end24

register_sys_interface.unregister_name_crit_edge: ; preds = %register_sys_interface
  call void @__sanitizer_cov_trace_pc() #10
  br label %unregister_name

if.end24:                                         ; preds = %register_sys_interface
  %tz25 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %call7.i.i143, i32 0, i32 1
  %8 = ptrtoint ptr %tz25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tz, ptr %tz25, align 8
  %count = getelementptr inbounds %struct.thermal_hwmon_device, ptr %hwmon.0, i32 0, i32 2
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %count, align 4
  %temp_input = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %call7.i.i143, i32 0, i32 2
  %name = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %call7.i.i143, i32 0, i32 2, i32 1
  %call28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %inc)
  %11 = ptrtoint ptr %temp_input to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %name, ptr %temp_input, align 4
  %mode = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %call7.i.i143, i32 0, i32 2, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 292, ptr %mode, align 8
  %show = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %call7.i.i143, i32 0, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @temp_input_show, ptr %show, align 8
  %key = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %call7.i.i143, i32 0, i32 2, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @thermal_add_hwmon_sysfs.__key, ptr %key, align 4
  %device43 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %hwmon.0, i32 0, i32 1
  %15 = ptrtoint ptr %device43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device43, align 4
  %call46 = call i32 @device_create_file(ptr noundef %16, ptr noundef %temp_input) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end24.free_temp_mem_crit_edge

if.end24.free_temp_mem_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_temp_mem

if.end49:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #8
  %17 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %temp.i, align 4, !annotation !42
  %ops.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %get_crit_temp.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %get_crit_temp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_crit_temp.i, align 4
  %tobool.not.i144 = icmp eq ptr %21, null
  br i1 %tobool.not.i144, label %thermal_zone_crit_temp_valid.exit.thread, label %thermal_zone_crit_temp_valid.exit

thermal_zone_crit_temp_valid.exit.thread:         ; preds = %if.end49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #8
  call void @mutex_lock_nested(ptr noundef nonnull @thermal_hwmon_list_lock, i32 noundef 0) #8
  br i1 %tobool.not153, label %thermal_zone_crit_temp_valid.exit.thread.if.then86_crit_edge, label %thermal_zone_crit_temp_valid.exit.thread.if.end87_crit_edge

thermal_zone_crit_temp_valid.exit.thread.if.end87_crit_edge: ; preds = %thermal_zone_crit_temp_valid.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

thermal_zone_crit_temp_valid.exit.thread.if.then86_crit_edge: ; preds = %thermal_zone_crit_temp_valid.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

thermal_zone_crit_temp_valid.exit:                ; preds = %if.end49
  %call.i145 = call i32 %21(ptr noundef %tz, ptr noundef nonnull %temp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool3.not.i = icmp eq i32 %call.i145, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #8
  br i1 %tobool3.not.i, label %if.then51, label %thermal_zone_crit_temp_valid.exit.if.end84_crit_edge

thermal_zone_crit_temp_valid.exit.if.end84_crit_edge: ; preds = %thermal_zone_crit_temp_valid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then51:                                        ; preds = %thermal_zone_crit_temp_valid.exit
  %temp_crit = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %call7.i.i143, i32 0, i32 3
  %name52 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %call7.i.i143, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count, align 4
  %call55 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name52, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %23)
  %24 = ptrtoint ptr %temp_crit to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %name52, ptr %temp_crit, align 8
  %mode66 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %call7.i.i143, i32 0, i32 3, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %mode66 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 292, ptr %mode66, align 4
  %show69 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %call7.i.i143, i32 0, i32 3, i32 0, i32 1
  %26 = ptrtoint ptr %show69 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @temp_crit_show, ptr %show69, align 4
  %key74 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %call7.i.i143, i32 0, i32 3, i32 0, i32 0, i32 3
  %27 = ptrtoint ptr %key74 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @thermal_add_hwmon_sysfs.__key.2, ptr %key74, align 8
  %28 = ptrtoint ptr %device43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device43, align 4
  %call80 = call i32 @device_create_file(ptr noundef %29, ptr noundef %temp_crit) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then51.if.end84_crit_edge, label %unregister_input

if.then51.if.end84_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.end84:                                         ; preds = %if.then51.if.end84_crit_edge, %thermal_zone_crit_temp_valid.exit.if.end84_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @thermal_hwmon_list_lock, i32 noundef 0) #8
  br i1 %tobool.not153, label %if.end84.if.then86_crit_edge, label %if.end84.if.end87_crit_edge

if.end84.if.end87_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.end84.if.then86_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

if.then86:                                        ; preds = %if.end84.if.then86_crit_edge, %thermal_zone_crit_temp_valid.exit.thread.if.then86_crit_edge
  %node = getelementptr inbounds %struct.thermal_hwmon_device, ptr %hwmon.0, i32 0, i32 4
  %30 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @thermal_hwmon_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %30, ptr noundef nonnull @thermal_hwmon_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then86.if.end87_crit_edge

if.then86.if.end87_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.end.i.i:                                       ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @thermal_hwmon_list, i32 0, i32 1), align 4
  %31 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @thermal_hwmon_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.thermal_hwmon_device, ptr %hwmon.0, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %node, ptr %30, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.end.i.i, %if.then86.if.end87_crit_edge, %if.end84.if.end87_crit_edge, %thermal_zone_crit_temp_valid.exit.thread.if.end87_crit_edge
  %tz_list88 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %hwmon.0, i32 0, i32 3
  %prev.i146 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %hwmon.0, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %prev.i146 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i146, align 4
  %call.i.i147 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i143, ptr noundef %35, ptr noundef %tz_list88) #8
  br i1 %call.i.i147, label %if.end.i.i149, label %if.end87.list_add_tail.exit150_crit_edge

if.end87.list_add_tail.exit150_crit_edge:         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit150

if.end.i.i149:                                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %prev.i146 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i143, ptr %prev.i146, align 4
  %37 = ptrtoint ptr %call7.i.i143 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %tz_list88, ptr %call7.i.i143, align 8
  %prev3.i.i148 = getelementptr inbounds %struct.list_head, ptr %call7.i.i143, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i148 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i148, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call7.i.i143, ptr %35, align 4
  br label %list_add_tail.exit150

list_add_tail.exit150:                            ; preds = %if.end.i.i149, %if.end87.list_add_tail.exit150_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #8
  br label %cleanup

unregister_input:                                 ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %device43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device43, align 4
  call void @device_remove_file(ptr noundef %41, ptr noundef %temp_input) #8
  br label %free_temp_mem

free_temp_mem:                                    ; preds = %unregister_input, %if.end24.free_temp_mem_crit_edge
  %result.0 = phi i32 [ %call46, %if.end24.free_temp_mem_crit_edge ], [ %call80, %unregister_input ]
  call void @kfree(ptr noundef nonnull %call7.i.i143) #8
  br label %unregister_name

unregister_name:                                  ; preds = %free_temp_mem, %register_sys_interface.unregister_name_crit_edge
  %result.1 = phi i32 [ %result.0, %free_temp_mem ], [ -12, %register_sys_interface.unregister_name_crit_edge ]
  br i1 %tobool.not153, label %if.then93, label %unregister_name.free_mem_crit_edge

unregister_name.free_mem_crit_edge:               ; preds = %unregister_name
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_mem

if.then93:                                        ; preds = %unregister_name
  call void @__sanitizer_cov_trace_pc() #10
  %device94 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %hwmon.0, i32 0, i32 1
  %42 = ptrtoint ptr %device94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device94, align 4
  call void @hwmon_device_unregister(ptr noundef %43) #8
  br label %free_mem

free_mem:                                         ; preds = %if.then93, %unregister_name.free_mem_crit_edge, %if.then17
  %hwmon.1 = phi ptr [ %hwmon.0, %if.then93 ], [ %hwmon.0, %unregister_name.free_mem_crit_edge ], [ %call7.i.i, %if.then17 ]
  %result.2 = phi i32 [ %result.1, %if.then93 ], [ %result.1, %unregister_name.free_mem_crit_edge ], [ %6, %if.then17 ]
  call void @kfree(ptr noundef nonnull %hwmon.1) #8
  br label %cleanup

cleanup:                                          ; preds = %free_mem, %list_add_tail.exit150, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.2, %free_mem ], [ 0, %list_add_tail.exit150 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_input_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temperature = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #8
  %0 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temperature, align 4, !annotation !42
  %tz4 = getelementptr i8, ptr %attr, i32 -4
  %1 = ptrtoint ptr %tz4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tz4, align 4
  %call = call i32 @thermal_zone_get_temp(ptr noundef %2, ptr noundef nonnull %temperature) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temperature, align 4
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_crit_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temperature = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tz4 = getelementptr i8, ptr %attr, i32 -48
  %0 = ptrtoint ptr %tz4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tz4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #8
  %2 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temperature, align 4, !annotation !42
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %get_crit_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %get_crit_temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_crit_temp, align 4
  %call = call i32 %6(ptr noundef %1, ptr noundef nonnull %temperature) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temperature, align 4
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @thermal_remove_hwmon_sysfs(ptr noundef %tz) #0 align 64 {
entry:
  %temp.i = alloca i32, align 4
  %type.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %type.i) #8
  %0 = call ptr @memset(ptr %type.i, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef nonnull @thermal_hwmon_list_lock, i32 noundef 0) #8
  %type1.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @thermal_hwmon_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @thermal_hwmon_list
  br i1 %cmp.not.i, label %thermal_hwmon_lookup_by_type.exit.thread, label %for.body.i

thermal_hwmon_lookup_by_type.exit.thread:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %type.i) #8
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %hwmon.0.i = getelementptr i8, ptr %.pn.i, i32 -36
  %call.i = call ptr @strcpy(ptr noundef nonnull %type.i, ptr noundef %type1.i) #11
  %call4.i = call ptr @strreplace(ptr noundef nonnull %type.i, i8 noundef zeroext 45, i8 noundef zeroext 95) #8
  %call8.i = call i32 @strcmp(ptr noundef %hwmon.0.i, ptr noundef nonnull %type.i) #11
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %thermal_hwmon_lookup_by_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

thermal_hwmon_lookup_by_type.exit:                ; preds = %for.body.i
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %type.i) #8
  %tobool.not = icmp eq ptr %hwmon.0.i, null
  br i1 %tobool.not, label %thermal_hwmon_lookup_by_type.exit.do.body_crit_edge, label %if.end13, !prof !43

thermal_hwmon_lookup_by_type.exit.do.body_crit_edge: ; preds = %thermal_hwmon_lookup_by_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %thermal_hwmon_lookup_by_type.exit.do.body_crit_edge, %thermal_hwmon_lookup_by_type.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @thermal_remove_hwmon_sysfs.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@thermal_remove_hwmon_sysfs, %if.then12)) #8
          to label %cleanup [label %if.then12], !srcloc !44

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @thermal_remove_hwmon_sysfs.__UNIQUE_ID_ddebug183, ptr noundef %device, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end13:                                         ; preds = %thermal_hwmon_lookup_by_type.exit
  call void @mutex_lock_nested(ptr noundef nonnull @thermal_hwmon_list_lock, i32 noundef 0) #8
  %tz_list.i = getelementptr i8, ptr %.pn.i, i32 -8
  br label %for.cond.i75

for.cond.i75:                                     ; preds = %for.body.i76.for.cond.i75_crit_edge, %if.end13
  %temp.0.in.i = phi ptr [ %tz_list.i, %if.end13 ], [ %temp.0.i, %for.body.i76.for.cond.i75_crit_edge ]
  %2 = ptrtoint ptr %temp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %temp.0.i = load ptr, ptr %temp.0.in.i, align 4
  %cmp.not.i74 = icmp eq ptr %temp.0.i, %tz_list.i
  br i1 %cmp.not.i74, label %thermal_hwmon_lookup_temp.exit.thread, label %for.body.i76

thermal_hwmon_lookup_temp.exit.thread:            ; preds = %for.cond.i75
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #8
  br label %do.body25

for.body.i76:                                     ; preds = %for.cond.i75
  %tz2.i = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %temp.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %tz2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tz2.i, align 4
  %cmp3.i = icmp eq ptr %4, %tz
  br i1 %cmp3.i, label %thermal_hwmon_lookup_temp.exit, label %for.body.i76.for.cond.i75_crit_edge

for.body.i76.for.cond.i75_crit_edge:              ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i75

thermal_hwmon_lookup_temp.exit:                   ; preds = %for.body.i76
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #8
  %tobool15.not = icmp eq ptr %temp.0.i, null
  br i1 %tobool15.not, label %thermal_hwmon_lookup_temp.exit.do.body25_crit_edge, label %if.end42, !prof !43

thermal_hwmon_lookup_temp.exit.do.body25_crit_edge: ; preds = %thermal_hwmon_lookup_temp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

do.body25:                                        ; preds = %thermal_hwmon_lookup_temp.exit.do.body25_crit_edge, %thermal_hwmon_lookup_temp.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @thermal_remove_hwmon_sysfs.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@thermal_remove_hwmon_sysfs, %if.then37)) #8
          to label %cleanup [label %if.then37], !srcloc !44

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %device38 = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @thermal_remove_hwmon_sysfs.__UNIQUE_ID_ddebug184, ptr noundef %device38, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end42:                                         ; preds = %thermal_hwmon_lookup_temp.exit
  %device43 = getelementptr i8, ptr %.pn.i, i32 -16
  %5 = ptrtoint ptr %device43 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device43, align 4
  %temp_input = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %temp.0.i, i32 0, i32 2
  call void @device_remove_file(ptr noundef %6, ptr noundef %temp_input) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #8
  %7 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %temp.i, align 4, !annotation !42
  %ops.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %get_crit_temp.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %get_crit_temp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_crit_temp.i, align 4
  %tobool.not.i78 = icmp eq ptr %11, null
  br i1 %tobool.not.i78, label %thermal_zone_crit_temp_valid.exit.thread, label %thermal_zone_crit_temp_valid.exit

thermal_zone_crit_temp_valid.exit.thread:         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #8
  br label %if.end48

thermal_zone_crit_temp_valid.exit:                ; preds = %if.end42
  %call.i79 = call i32 %11(ptr noundef %tz, ptr noundef nonnull %temp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool3.not.i = icmp eq i32 %call.i79, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #8
  br i1 %tobool3.not.i, label %if.then45, label %thermal_zone_crit_temp_valid.exit.if.end48_crit_edge

thermal_zone_crit_temp_valid.exit.if.end48_crit_edge: ; preds = %thermal_zone_crit_temp_valid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then45:                                        ; preds = %thermal_zone_crit_temp_valid.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %device43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device43, align 4
  %temp_crit = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %temp.0.i, i32 0, i32 3
  call void @device_remove_file(ptr noundef %13, ptr noundef %temp_crit) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %thermal_zone_crit_temp_valid.exit.if.end48_crit_edge, %thermal_zone_crit_temp_valid.exit.thread
  call void @mutex_lock_nested(ptr noundef nonnull @thermal_hwmon_list_lock, i32 noundef 0) #8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %temp.0.i) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end48.list_del.exit_crit_edge

if.end48.list_del.exit_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %temp.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %temp.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %temp.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end48.list_del.exit_crit_edge
  %20 = ptrtoint ptr %temp.0.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %temp.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %temp.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef nonnull %temp.0.i) #8
  %22 = ptrtoint ptr %tz_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %tz_list.i, align 4
  %cmp.i.not = icmp eq ptr %23, %tz_list.i
  br i1 %cmp.i.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #8
  br label %cleanup

if.end52:                                         ; preds = %list_del.exit
  %call.i.i80 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #8
  br i1 %call.i.i80, label %if.end.i.i83, label %if.end52.list_del.exit85_crit_edge

if.end52.list_del.exit85_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit85

if.end.i.i83:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i81 = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i81 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i81, align 4
  %26 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i82 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i82, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit85

list_del.exit85:                                  ; preds = %if.end.i.i83, %if.end52.list_del.exit85_crit_edge
  %30 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i84 = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i84 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i84, align 4
  call void @mutex_unlock(ptr noundef nonnull @thermal_hwmon_list_lock) #8
  %32 = ptrtoint ptr %device43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device43, align 4
  call void @hwmon_device_unregister(ptr noundef %33) #8
  call void @kfree(ptr noundef nonnull %hwmon.0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit85, %if.then51, %if.then37, %do.body25, %if.then12, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_thermal_add_hwmon_sysfs(ptr noundef %tz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_thermal_hwmon_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.8) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @thermal_add_hwmon_sysfs(ptr noundef %tz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @devres_free(ptr noundef nonnull %call) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %tz, ptr %call, align 4
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  tail call void @devres_add(ptr noundef %device, ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_thermal_hwmon_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @thermal_remove_hwmon_sysfs(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_temp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !30, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thermal/thermal_hwmon.c", i32 170, i32 4}
!2 = !{ptr @thermal_add_hwmon_sysfs.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/thermal/thermal_hwmon.c", i32 174, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/thermal/thermal_hwmon.c", i32 182, i32 5}
!6 = !{ptr @thermal_add_hwmon_sysfs.__key.2, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/thermal/thermal_hwmon.c", i32 186, i32 3}
!8 = !{ptr @__ksymtab_thermal_add_hwmon_sysfs, !9, !"__ksymtab_thermal_add_hwmon_sysfs", i1 false, i1 false}
!9 = !{!"../drivers/thermal/thermal_hwmon.c", i32 213, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/thermal_hwmon.c", i32 223, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @thermal_remove_hwmon_sysfs.__UNIQUE_ID_ddebug183, !11, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/thermal_hwmon.c", i32 230, i32 3}
!18 = !{ptr @thermal_remove_hwmon_sysfs.__UNIQUE_ID_ddebug184, !17, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!19 = !{ptr @__ksymtab_thermal_remove_hwmon_sysfs, !20, !"__ksymtab_thermal_remove_hwmon_sysfs", i1 false, i1 false}
!20 = !{!"../drivers/thermal/thermal_hwmon.c", i32 251, i32 1}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/thermal/thermal_hwmon.c", i32 263, i32 8}
!23 = !{ptr @__ksymtab_devm_thermal_add_hwmon_sysfs, !24, !"__ksymtab_devm_thermal_add_hwmon_sysfs", i1 false, i1 false}
!24 = !{!"../drivers/thermal/thermal_hwmon.c", i32 279, i32 1}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/thermal/thermal_hwmon.c", i32 65, i32 22}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/thermal/thermal_hwmon.c", i32 46, i32 8}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @thermal_hwmon_list_lock, !28, !"thermal_hwmon_list_lock", i1 false, i1 false}
!31 = !{ptr @thermal_hwmon_list, !32, !"thermal_hwmon_list", i1 false, i1 false}
!32 = !{!"../drivers/thermal/thermal_hwmon.c", i32 44, i32 8}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2148727593, i64 2148727598, i64 2148727611, i64 2148727655, i64 2148727689, i64 2148727710}
