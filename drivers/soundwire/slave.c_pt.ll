; ModuleID = '/llk/IR_all_yes/drivers/soundwire/slave.c_pt.bc'
source_filename = "../drivers/soundwire/slave.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sdw_slave_add\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_slave_add\09\09\09\09"
module asm "\09.long\09__crc_sdw_slave_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_slave_add:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_slave_add\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_slave_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sdw_bus = type { ptr, ptr, i32, i32, %struct.list_head, [1 x i32], %struct.mutex, %struct.mutex, ptr, ptr, ptr, %struct.sdw_bus_params, %struct.sdw_master_prop, %struct.list_head, ptr, %struct.sdw_defer, i32, i32, i8, i32 }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_master_prop = type { i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i8, i64 }
%struct.sdw_defer = type { i32, %struct.completion, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdw_slave\00", [22 x i8] zeroinitializer }, align 32
@sdw_slave_type = dso_local global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str, ptr null, ptr @sdw_slave_uevent, ptr null, ptr @sdw_slave_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdw:%01x:%04x:%04x:%02x\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sdw:%01x:%04x:%04x:%02x:%01x\00", [35 x i8] zeroinitializer }, align 32
@sdw_bus_type = external dso_local global %struct.bus_type, align 4
@sdw_slave_status_attr_groups = external dso_local global [0 x ptr], align 4
@sdw_slave_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 74, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to add slave: ret %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdw_slave_add\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/soundwire/slave.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdw_slave_add._entry_ptr = internal global ptr @sdw_slave_add._entry, section ".printk_index", align 4
@__kstrtab_sdw_slave_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_slave_add = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_slave_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_slave_add to i32), ptr @__kstrtab_sdw_slave_add, ptr @__kstrtabns_sdw_slave_add }, section "___ksymtab+sdw_slave_add", align 4
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdw%01x%04hx%04hx%02hhx\00", [40 x i8] zeroinitializer }, align 32
@sdw_of_find_slaves._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 226, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid compatible string found %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdw_of_find_slaves\00", [45 x i8] zeroinitializer }, align 32
@sdw_of_find_slaves._entry_ptr = internal global ptr @sdw_of_find_slaves._entry, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@sdw_of_find_slaves._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.5, i32 232, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid Link and Instance ID\0A\00", [34 x i8] zeroinitializer }, align 32
@sdw_of_find_slaves._entry_ptr.15 = internal global ptr @sdw_of_find_slaves._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 19, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"sdw_slave_type\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 18, i32 20 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 42, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 47, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 74, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 217, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 221, i32 24 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 225, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 230, i32 32 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private constant [29 x i8] c"../drivers/soundwire/slave.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 232, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 87, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_sdw_slave_add, ptr @sdw_of_find_slaves._entry, ptr @sdw_of_find_slaves._entry.13, ptr @sdw_of_find_slaves._entry_ptr, ptr @sdw_of_find_slaves._entry_ptr.15, ptr @sdw_slave_add._entry, ptr @sdw_slave_add._entry_ptr, ptr @.str, ptr @sdw_slave_type, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @init_completion.__key, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_slave_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_slave_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_of_find_slaves._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_of_find_slaves._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_slave_uevent(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdw_slave_release(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  tail call void @kfree(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_slave_add(ptr noundef %bus, ptr nocapture noundef readonly %id, ptr noundef %fwnode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2112) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %id, align 2
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %call7.i.i, align 8
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %dev2 = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 1
  %parent = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %parent, align 8
  %fwnode4 = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 1, i32 28
  %7 = ptrtoint ptr %fwnode4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fwnode, ptr %fwnode4, align 4
  %8 = lshr i64 %2, 16
  %9 = trunc i64 %8 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp = icmp eq i8 %9, -1
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %link_id = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 2
  %10 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_id, align 8
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %id, align 2
  %conv8 = zext i16 %13 to i32
  %part_id = getelementptr inbounds %struct.sdw_slave_id, ptr %id, i32 0, i32 1
  %14 = ptrtoint ptr %part_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %part_id, align 2
  %conv9 = zext i16 %15 to i32
  %class_id = getelementptr inbounds %struct.sdw_slave_id, ptr %id, i32 0, i32 2
  %16 = ptrtoint ptr %class_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %class_id, align 2
  %conv10 = zext i8 %17 to i32
  %call11 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev2, ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10) #6
  br label %if.end23

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = trunc i64 %8 to i32
  %conv = and i32 %18, 255
  %link_id13 = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 2
  %19 = ptrtoint ptr %link_id13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link_id13, align 8
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %id, align 2
  %conv15 = zext i16 %22 to i32
  %part_id16 = getelementptr inbounds %struct.sdw_slave_id, ptr %id, i32 0, i32 1
  %23 = ptrtoint ptr %part_id16 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %part_id16, align 2
  %conv17 = zext i16 %24 to i32
  %class_id18 = getelementptr inbounds %struct.sdw_slave_id, ptr %id, i32 0, i32 2
  %25 = ptrtoint ptr %class_id18 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %class_id18, align 2
  %conv19 = zext i8 %26 to i32
  %call22 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev2, ptr noundef nonnull @.str.2, i32 noundef %20, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %conv) #6
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then6
  %bus25 = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %bus25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @sdw_bus_type, ptr %bus25, align 8
  %tobool.not.i.i = icmp eq ptr %fwnode, null
  %cmp.i.i = icmp ugt ptr %fwnode, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end23.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

if.end23.is_of_node.exit.thread_crit_edge:        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %fwnode, i32 0, i32 1
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %29, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %fwnode, i32 -12
  %spec.select = select i1 %cmp.i, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %if.end23.is_of_node.exit.thread_crit_edge
  %30 = phi ptr [ null, %if.end23.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  %call29 = tail call ptr @of_node_get(ptr noundef %30) #6
  %of_node = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 1, i32 27
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call29, ptr %of_node, align 8
  %type = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sdw_slave_type, ptr %type, align 4
  %groups = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 1, i32 34
  %33 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @sdw_slave_status_attr_groups, ptr %groups, align 8
  %bus33 = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %bus33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %bus, ptr %bus33, align 4
  %status = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %status, align 8
  %enumeration_complete = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 14
  %36 = ptrtoint ptr %enumeration_complete to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %enumeration_complete, align 8
  %wait.i = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %initialization_complete = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 15
  %37 = ptrtoint ptr %initialization_complete to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %initialization_complete, align 8
  %wait.i96 = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i96, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %dev_num = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 10
  %38 = ptrtoint ptr %dev_num to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %dev_num, align 8
  %probe_complete = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 13
  %39 = ptrtoint ptr %probe_complete to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %probe_complete, align 8
  %wait.i97 = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i97, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %probed = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 12
  %40 = ptrtoint ptr %probed to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %probed, align 4
  %first_interrupt_done = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 17
  %41 = ptrtoint ptr %first_interrupt_done to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %first_interrupt_done, align 4
  %arrayidx = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 0
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx, align 4
  %wait.i98 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %arrayidx.1 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 1
  %43 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx.1, align 4
  %wait.i98.1 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98.1, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %arrayidx.2 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 2
  %44 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx.2, align 4
  %wait.i98.2 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98.2, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %arrayidx.3 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 3
  %45 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx.3, align 4
  %wait.i98.3 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98.3, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %arrayidx.4 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 4
  %46 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %arrayidx.4, align 4
  %wait.i98.4 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98.4, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %arrayidx.5 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 5
  %47 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %arrayidx.5, align 4
  %wait.i98.5 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98.5, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %arrayidx.6 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 6
  %48 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %arrayidx.6, align 4
  %wait.i98.6 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98.6, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %arrayidx.7 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 7
  %49 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx.7, align 4
  %wait.i98.7 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98.7, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %arrayidx.8 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 8
  %50 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx.8, align 4
  %wait.i98.8 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98.8, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %arrayidx.9 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 9
  %51 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx.9, align 4
  %wait.i98.9 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98.9, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %arrayidx.10 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 10
  %52 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx.10, align 4
  %wait.i98.10 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98.10, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %arrayidx.11 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 11
  %53 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx.11, align 4
  %wait.i98.11 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98.11, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %arrayidx.12 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 12
  %54 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx.12, align 4
  %wait.i98.12 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98.12, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %arrayidx.13 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 13
  %55 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx.13, align 4
  %wait.i98.13 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98.13, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %arrayidx.14 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 14
  %56 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %arrayidx.14, align 4
  %wait.i98.14 = getelementptr %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 8, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98.14, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #6
  %bus_lock = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bus_lock, i32 noundef 0) #6
  %node = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 7
  %slaves = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %58, ptr noundef %slaves) #6
  br i1 %call.i.i, label %if.end.i.i, label %is_of_node.exit.thread.list_add_tail.exit_crit_edge

is_of_node.exit.thread.list_add_tail.exit_crit_edge: ; preds = %is_of_node.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %is_of_node.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %node, ptr %prev.i, align 4
  %60 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %slaves, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 7, i32 1
  %61 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i, align 8
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %node, ptr %58, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %is_of_node.exit.thread.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %bus_lock) #6
  %call38 = tail call i32 @device_register(ptr noundef %dev2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end46, label %do.end

do.end:                                           ; preds = %list_add_tail.exit
  %63 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.3, i32 noundef %call38) #10
  tail call void @mutex_lock_nested(ptr noundef %bus_lock, i32 noundef 0) #6
  %call.i.i99 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #6
  br i1 %call.i.i99, label %if.end.i.i100, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i100:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 7, i32 1
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i, align 8
  %67 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i100, %do.end.list_del.exit_crit_edge
  %71 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i101 = getelementptr inbounds %struct.sdw_slave, ptr %call7.i.i, i32 0, i32 7, i32 1
  %72 = ptrtoint ptr %prev.i101 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i101, align 8
  tail call void @mutex_unlock(ptr noundef %bus_lock) #6
  tail call void @put_device(ptr noundef %dev2) #6
  br label %cleanup

if.end46:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sdw_slave_debugfs_init(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %list_del.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %list_del.exit ], [ 0, %if.end46 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdw_slave_debugfs_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_of_find_slaves(ptr noundef %bus) local_unnamed_addr #1 align 64 {
entry:
  %len = alloca i32, align 4
  %sdw_version = alloca i32, align 4
  %id = alloca %struct.sdw_slave_id, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef null) #6
  %cmp.not52 = icmp eq ptr %call, null
  br i1 %cmp.not52, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %part_id = getelementptr inbounds %struct.sdw_slave_id, ptr %id, i32 0, i32 1
  %class_id = getelementptr inbounds %struct.sdw_slave_id, ptr %id, i32 0, i32 2
  %unique_id = getelementptr inbounds %struct.sdw_slave_id, ptr %id, i32 0, i32 3
  %sdw_version19 = getelementptr inbounds %struct.sdw_slave_id, ptr %id, i32 0, i32 4
  %link_id20 = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %node.053 = phi ptr [ %call, %for.body.lr.ph ], [ %call35, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdw_version) #6
  %5 = ptrtoint ptr %sdw_version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %sdw_version, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %id) #6
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %id, align 8, !annotation !45
  %call3 = call ptr @of_get_property(ptr noundef nonnull %node.053, ptr noundef nonnull @.str.8, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call3, ptr noundef nonnull @.str.9, ptr noundef nonnull %sdw_version, ptr noundef nonnull %id, ptr noundef %part_id, ptr noundef %class_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 4
  br i1 %cmp5.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %call3) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call ptr @of_get_property(ptr noundef nonnull %node.053, ptr noundef nonnull @.str.12, ptr noundef nonnull %len) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.do.end14_crit_edge, label %lor.lhs.false

if.end7.do.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

lor.lhs.false:                                    ; preds = %if.end7
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp10 = icmp ult i32 %8, 8
  br i1 %cmp10, label %lor.lhs.false.do.end14_crit_edge, label %if.end15

lor.lhs.false.do.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.end14:                                         ; preds = %lor.lhs.false.do.end14_crit_edge, %if.end7.do.end14_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %incdec.ptr = getelementptr i32, ptr %call8, i32 1
  %9 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call8, align 4
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr, align 4
  %conv = trunc i32 %12 to i8
  %13 = ptrtoint ptr %unique_id to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %unique_id, align 1
  %14 = ptrtoint ptr %sdw_version to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sdw_version, align 4
  %conv18 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %sdw_version19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %sdw_version19, align 2
  %bf.shl = shl i8 %conv18, 4
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %sdw_version19, align 2
  %17 = ptrtoint ptr %link_id20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %link_id20, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %18)
  %cmp21.not = icmp eq i32 %10, %18
  br i1 %cmp21.not, label %cond.end, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %fwnode = getelementptr inbounds %struct.device_node, ptr %node.053, i32 0, i32 3
  %call26 = call i32 @sdw_slave_add(ptr noundef %bus, ptr noundef nonnull %id, ptr noundef %fwnode)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end15.cleanup_crit_edge, %do.end14, %do.end, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %id) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdw_version) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 8
  %of_node34 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %of_node34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node34, align 8
  %call35 = call ptr @of_get_next_child(ptr noundef %22, ptr noundef nonnull %node.053) #6
  %cmp.not = icmp eq ptr %call35, null
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !29, !31, !32, !33, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soundwire/slave.c", i32 19, i32 11}
!2 = !{ptr @sdw_slave_type, !3, !"sdw_slave_type", i1 false, i1 false}
!3 = !{!"../drivers/soundwire/slave.c", i32 18, i32 20}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soundwire/slave.c", i32 42, i32 29}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soundwire/slave.c", i32 47, i32 29}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soundwire/slave.c", i32 74, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sdw_slave_add._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @sdw_slave_add._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_sdw_slave_add, !17, !"__ksymtab_sdw_slave_add", i1 false, i1 false}
!17 = !{!"../drivers/soundwire/slave.c", i32 91, i32 1}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soundwire/slave.c", i32 217, i32 34}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soundwire/slave.c", i32 221, i32 24}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soundwire/slave.c", i32 225, i32 4}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sdw_of_find_slaves._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @sdw_of_find_slaves._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/soundwire/slave.c", i32 230, i32 32}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soundwire/slave.c", i32 232, i32 4}
!31 = !{ptr @sdw_of_find_slaves._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sdw_of_find_slaves._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @init_completion.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../include/linux/completion.h", i32 87, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
