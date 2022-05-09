; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-platform.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+coresight_find_csdev_by_fwnode\22, \22a\22\09"
module asm "\09.weak\09__crc_coresight_find_csdev_by_fwnode\09\09\09\09"
module asm "\09.long\09__crc_coresight_find_csdev_by_fwnode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_coresight_find_csdev_by_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22coresight_find_csdev_by_fwnode\22\09\09\09\09\09"
module asm "__kstrtabns_coresight_find_csdev_by_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+coresight_get_cpu\22, \22a\22\09"
module asm "\09.weak\09__crc_coresight_get_cpu\09\09\09\09"
module asm "\09.long\09__crc_coresight_get_cpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_coresight_get_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22coresight_get_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_coresight_get_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+coresight_get_platform_data\22, \22a\22\09"
module asm "\09.weak\09__crc_coresight_get_platform_data\09\09\09\09"
module asm "\09.long\09__crc_coresight_get_platform_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_coresight_get_platform_data:\09\09\09\09\09"
module asm "\09.asciz \09\22coresight_get_platform_data\22\09\09\09\09\09"
module asm "__kstrtabns_coresight_get_platform_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.coresight_platform_data = type { i32, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.coresight_connection = type { i32, i32, ptr, ptr, ptr }

@coresight_bustype = external dso_local global %struct.bus_type, align 4
@__kstrtab_coresight_find_csdev_by_fwnode = external dso_local constant [0 x i8], align 1
@__kstrtabns_coresight_find_csdev_by_fwnode = external dso_local constant [0 x i8], align 1
@__ksymtab_coresight_find_csdev_by_fwnode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @coresight_find_csdev_by_fwnode to i32), ptr @__kstrtab_coresight_find_csdev_by_fwnode, ptr @__kstrtabns_coresight_find_csdev_by_fwnode }, section "___ksymtab_gpl+coresight_find_csdev_by_fwnode", align 4
@__kstrtab_coresight_get_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_coresight_get_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_coresight_get_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @coresight_get_cpu to i32), ptr @__kstrtab_coresight_get_cpu, ptr @__kstrtabns_coresight_get_cpu }, section "___ksymtab_gpl+coresight_get_cpu", align 4
@__kstrtab_coresight_get_platform_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_coresight_get_platform_data = external dso_local constant [0 x i8], align 1
@__ksymtab_coresight_get_platform_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @coresight_get_platform_data to i32), ptr @__kstrtab_coresight_get_platform_data, ptr @__kstrtabns_coresight_get_platform_data }, section "___ksymtab_gpl+coresight_get_platform_data", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@of_get_coresight_platform_data.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@of_get_coresight_platform_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Uses obsolete Coresight DT bindings\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"of_get_coresight_platform_data\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/hwtracing/coresight/coresight-platform.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_get_coresight_platform_data._entry_ptr = internal global ptr @of_get_coresight_platform_data._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in-ports\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"out-ports\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slave-mode\00", [21 x i8] zeroinitializer }, align 32
@of_coresight_parse_endpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Duplicate output port %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"of_coresight_parse_endpoint\00", [36 x i8] zeroinitializer }, align 32
@of_coresight_parse_endpoint._entry_ptr = internal global ptr @of_coresight_parse_endpoint._entry, section ".printk_index", align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@amba_bustype = external dso_local global %struct.bus_type, align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 197, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 311, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 139, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 145, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 83, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [52 x i8] c"../drivers/hwtracing/coresight/coresight-platform.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 256, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_coresight_find_csdev_by_fwnode, ptr @__ksymtab_coresight_get_cpu, ptr @__ksymtab_coresight_get_platform_data, ptr @of_coresight_parse_endpoint._entry, ptr @of_coresight_parse_endpoint._entry_ptr, ptr @of_get_coresight_platform_data._entry, ptr @of_get_coresight_platform_data._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_coresight_platform_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_coresight_parse_endpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @coresight_find_csdev_by_fwnode(ptr noundef %r_fwnode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @bus_find_device(ptr noundef nonnull @coresight_bustype, ptr noundef null, ptr noundef %r_fwnode, ptr noundef nonnull @device_match_fwnode) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %call.i, i32 -32
  tail call void @put_device(ptr noundef nonnull %call.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %csdev.0 = phi ptr [ %add.ptr, %if.then ], [ null, %entry.if.end_crit_edge ]
  ret ptr %csdev.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coresight_get_cpu(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fwnode = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 28
  %0 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwnode, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.return_crit_edge, label %is_of_node.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %3, @of_fwnode_ops
  br i1 %cmp.i, label %if.then, label %is_of_node.exit.return_crit_edge

is_of_node.exit.return_crit_edge:                 ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %is_of_node.exit
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #5
  %6 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i10 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i10, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  br label %return

of_parse_phandle.exit.i:                          ; preds = %if.end.i
  %7 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %of_parse_phandle.exit.i.return_crit_edge, label %if.end4.i

of_parse_phandle.exit.i.return_crit_edge:         ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end4.i:                                        ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = call i32 @of_cpu_node_to_id(ptr noundef nonnull %8) #5
  call void @of_node_put(ptr noundef nonnull %8) #5
  br label %return

return:                                           ; preds = %if.end4.i, %of_parse_phandle.exit.i.return_crit_edge, %of_parse_phandle.exit.thread.i, %if.then.return_crit_edge, %is_of_node.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call5.i, %if.end4.i ], [ -19, %if.then.return_crit_edge ], [ -19, %of_parse_phandle.exit.i.return_crit_edge ], [ -19, %of_parse_phandle.exit.thread.i ], [ 0, %is_of_node.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @coresight_get_platform_data(ptr noundef %dev) #0 align 64 {
entry:
  %endpoint.i.i = alloca %struct.of_endpoint, align 4
  %rendpoint.i.i = alloca %struct.of_endpoint, align 4
  %endpoint.i37.i.i = alloca %struct.of_endpoint, align 4
  %endpoint.i23.i.i = alloca %struct.of_endpoint, align 4
  %endpoint.i.i.i = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dev_fwnode(ptr noundef %dev) #5
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end18_crit_edge, label %if.end

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %is_of_node.exit

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

is_of_node.exit:                                  ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.i33 = icmp eq ptr %1, @of_fwnode_ops
  br i1 %cmp.i33, label %if.then6, label %is_of_node.exit.error_crit_edge

is_of_node.exit.error_crit_edge:                  ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.then6:                                         ; preds = %is_of_node.exit
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %nr_outport.i = getelementptr inbounds %struct.coresight_platform_data, ptr %call.i, i32 0, i32 1
  %call.i.i.i = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.6) #5
  %call.i21.i.i = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.7) #5
  %tobool.not.i.i34 = icmp eq ptr %call.i.i.i, null
  %tobool2.not.i.i = icmp eq ptr %call.i21.i.i, null
  %or.cond.i.i = select i1 %tobool.not.i.i34, i1 %tobool2.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then6
  br i1 %tobool.not.i.i34, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then4.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint.i.i.i) #5
  %4 = ptrtoint ptr %endpoint.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %endpoint.i.i.i, align 4, !annotation !37
  %5 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !37
  %7 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !37
  br label %while.cond.outer.i.i.i

while.cond.outer.i.i.i:                           ; preds = %if.end.i.i.i, %if.then4.i.i
  %i.0.ph.i.i.i = phi i32 [ %11, %if.end.i.i.i ], [ 0, %if.then4.i.i ]
  %ep.0.ph.i.i.i = phi ptr [ %call.i22.i.i, %if.end.i.i.i ], [ null, %if.then4.i.i ]
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %while.cond.outer.i.i.i
  %ep.0.i.i.i = phi ptr [ %call.i22.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ %ep.0.ph.i.i.i, %while.cond.outer.i.i.i ]
  %call.i22.i.i = call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %call.i.i.i, ptr noundef %ep.0.i.i.i) #5
  %tobool.not.i.i.i = icmp eq ptr %call.i22.i.i, null
  br i1 %tobool.not.i.i.i, label %of_coresight_count_ports.exit.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %call1.i.i.i = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %call.i22.i.i, ptr noundef nonnull %endpoint.i.i.i) #5
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %endpoint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %endpoint.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  %11 = call i32 @llvm.umax.i32(i32 %add.i.i.i, i32 %i.0.ph.i.i.i) #5
  br label %while.cond.outer.i.i.i

of_coresight_count_ports.exit.i.i:                ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i.i.i) #5
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %i.0.ph.i.i.i, ptr %call.i, align 4
  call void @of_node_put(ptr noundef nonnull %call.i.i.i) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %of_coresight_count_ports.exit.i.i, %if.then.i.i.if.end.i.i_crit_edge
  br i1 %tobool2.not.i.i, label %if.end.i.i.of_coresight_get_ports.exit.i_crit_edge, label %if.then7.i.i

if.end.i.i.of_coresight_get_ports.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_coresight_get_ports.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint.i23.i.i) #5
  %13 = ptrtoint ptr %endpoint.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %endpoint.i23.i.i, align 4, !annotation !37
  %14 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i23.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !37
  %16 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i23.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %16, align 4, !annotation !37
  br label %while.cond.outer.i26.i.i

while.cond.outer.i26.i.i:                         ; preds = %if.end.i35.i.i, %if.then7.i.i
  %i.0.ph.i24.i.i = phi i32 [ %20, %if.end.i35.i.i ], [ 0, %if.then7.i.i ]
  %ep.0.ph.i25.i.i = phi ptr [ %call.i28.i.i, %if.end.i35.i.i ], [ null, %if.then7.i.i ]
  br label %while.cond.i30.i.i

while.cond.i30.i.i:                               ; preds = %while.body.i33.i.i.while.cond.i30.i.i_crit_edge, %while.cond.outer.i26.i.i
  %ep.0.i27.i.i = phi ptr [ %call.i28.i.i, %while.body.i33.i.i.while.cond.i30.i.i_crit_edge ], [ %ep.0.ph.i25.i.i, %while.cond.outer.i26.i.i ]
  %call.i28.i.i = call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %call.i21.i.i, ptr noundef %ep.0.i27.i.i) #5
  %tobool.not.i29.i.i = icmp eq ptr %call.i28.i.i, null
  br i1 %tobool.not.i29.i.i, label %of_coresight_count_ports.exit36.i.i, label %while.body.i33.i.i

while.body.i33.i.i:                               ; preds = %while.cond.i30.i.i
  %call1.i31.i.i = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %call.i28.i.i, ptr noundef nonnull %endpoint.i23.i.i) #5
  %tobool2.not.i32.i.i = icmp eq i32 %call1.i31.i.i, 0
  br i1 %tobool2.not.i32.i.i, label %if.end.i35.i.i, label %while.body.i33.i.i.while.cond.i30.i.i_crit_edge

while.body.i33.i.i.while.cond.i30.i.i_crit_edge:  ; preds = %while.body.i33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i30.i.i

if.end.i35.i.i:                                   ; preds = %while.body.i33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %endpoint.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %endpoint.i23.i.i, align 4
  %add.i34.i.i = add i32 %19, 1
  %20 = call i32 @llvm.umax.i32(i32 %add.i34.i.i, i32 %i.0.ph.i24.i.i) #5
  br label %while.cond.outer.i26.i.i

of_coresight_count_ports.exit36.i.i:              ; preds = %while.cond.i30.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i23.i.i) #5
  %21 = ptrtoint ptr %nr_outport.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %i.0.ph.i24.i.i, ptr %nr_outport.i, align 4
  call void @of_node_put(ptr noundef nonnull %call.i21.i.i) #5
  br label %of_coresight_get_ports.exit.i

if.else.i.i:                                      ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint.i37.i.i) #5
  %22 = ptrtoint ptr %endpoint.i37.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %endpoint.i37.i.i, align 4, !annotation !37
  %23 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i37.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4, !annotation !37
  %25 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i37.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %25, align 4, !annotation !37
  %call.i38.i.i = tail call zeroext i1 @of_graph_is_present(ptr noundef %3) #5
  br i1 %call.i38.i.i, label %do.body.preheader.i.i.i, label %if.else.i.i.of_coresight_get_ports_legacy.exit.i.i_crit_edge

if.else.i.i.of_coresight_get_ports_legacy.exit.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_coresight_get_ports_legacy.exit.i.i

do.body.preheader.i.i.i:                          ; preds = %if.else.i.i
  %call135.i.i.i = tail call ptr @of_graph_get_next_endpoint(ptr noundef %3, ptr noundef null) #5
  %tobool.not36.i.i.i = icmp eq ptr %call135.i.i.i, null
  br i1 %tobool.not36.i.i.i, label %do.body.preheader.i.i.i.do.end.i.i.i_crit_edge, label %do.body.preheader.i.i.i.if.end3.i.i.i_crit_edge

do.body.preheader.i.i.i.if.end3.i.i.i_crit_edge:  ; preds = %do.body.preheader.i.i.i
  br label %if.end3.i.i.i

do.body.preheader.i.i.i.do.end.i.i.i_crit_edge:   ; preds = %do.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i

if.end3.i.i.i:                                    ; preds = %do.cond.i.i.i.if.end3.i.i.i_crit_edge, %do.body.preheader.i.i.i.if.end3.i.i.i_crit_edge
  %call139.i.i.i = phi ptr [ %call1.i39.i.i, %do.cond.i.i.i.if.end3.i.i.i_crit_edge ], [ %call135.i.i.i, %do.body.preheader.i.i.i.if.end3.i.i.i_crit_edge ]
  %out.038.i.i.i = phi i32 [ %out.1.i.i.i, %do.cond.i.i.i.if.end3.i.i.i_crit_edge ], [ 0, %do.body.preheader.i.i.i.if.end3.i.i.i_crit_edge ]
  %in.037.i.i.i = phi i32 [ %in.1.i.i.i, %do.cond.i.i.i.if.end3.i.i.i_crit_edge ], [ 0, %do.body.preheader.i.i.i.if.end3.i.i.i_crit_edge ]
  %call4.i.i.i = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %call139.i.i.i, ptr noundef nonnull %endpoint.i37.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end7.i.i.i, label %if.end3.i.i.i.do.cond.i.i.i_crit_edge

if.end3.i.i.i.do.cond.i.i.i_crit_edge:            ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end3.i.i.i
  %call.i.i.i.i.i = call ptr @of_find_property(ptr noundef nonnull %call139.i.i.i, ptr noundef nonnull @.str.8, ptr noundef null) #5
  %tobool.i.i.not.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  %27 = ptrtoint ptr %endpoint.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %endpoint.i37.i.i, align 4
  %add13.i.i.i = add i32 %28, 1
  br i1 %tobool.i.i.not.i.i.i, label %if.else.i.i.i, label %if.then9.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = call i32 @llvm.umax.i32(i32 %add13.i.i.i, i32 %in.037.i.i.i) #5
  br label %do.cond.i.i.i

if.else.i.i.i:                                    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = call i32 @llvm.umax.i32(i32 %add13.i.i.i, i32 %out.038.i.i.i) #5
  br label %do.cond.i.i.i

do.cond.i.i.i:                                    ; preds = %if.else.i.i.i, %if.then9.i.i.i, %if.end3.i.i.i.do.cond.i.i.i_crit_edge
  %in.1.i.i.i = phi i32 [ %in.037.i.i.i, %if.end3.i.i.i.do.cond.i.i.i_crit_edge ], [ %29, %if.then9.i.i.i ], [ %in.037.i.i.i, %if.else.i.i.i ]
  %out.1.i.i.i = phi i32 [ %out.038.i.i.i, %if.end3.i.i.i.do.cond.i.i.i_crit_edge ], [ %out.038.i.i.i, %if.then9.i.i.i ], [ %30, %if.else.i.i.i ]
  %call1.i39.i.i = call ptr @of_graph_get_next_endpoint(ptr noundef %3, ptr noundef nonnull %call139.i.i.i) #5
  %tobool.not.i40.i.i = icmp eq ptr %call1.i39.i.i, null
  br i1 %tobool.not.i40.i.i, label %do.cond.i.i.i.do.end.i.i.i_crit_edge, label %do.cond.i.i.i.if.end3.i.i.i_crit_edge

do.cond.i.i.i.if.end3.i.i.i_crit_edge:            ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i.i.i

do.cond.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.cond.i.i.i.do.end.i.i.i_crit_edge, %do.body.preheader.i.i.i.do.end.i.i.i_crit_edge
  %in.0.lcssa.i.i.i = phi i32 [ 0, %do.body.preheader.i.i.i.do.end.i.i.i_crit_edge ], [ %in.1.i.i.i, %do.cond.i.i.i.do.end.i.i.i_crit_edge ]
  %out.0.lcssa.i.i.i = phi i32 [ 0, %do.body.preheader.i.i.i.do.end.i.i.i_crit_edge ], [ %out.1.i.i.i, %do.cond.i.i.i.do.end.i.i.i_crit_edge ]
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %in.0.lcssa.i.i.i, ptr %call.i, align 4
  %32 = ptrtoint ptr %nr_outport.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %out.0.lcssa.i.i.i, ptr %nr_outport.i, align 4
  br label %of_coresight_get_ports_legacy.exit.i.i

of_coresight_get_ports_legacy.exit.i.i:           ; preds = %do.end.i.i.i, %if.else.i.i.of_coresight_get_ports_legacy.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i37.i.i) #5
  br label %of_coresight_get_ports.exit.i

of_coresight_get_ports.exit.i:                    ; preds = %of_coresight_get_ports_legacy.exit.i.i, %of_coresight_count_ports.exit36.i.i, %if.end.i.i.of_coresight_get_ports.exit.i_crit_edge
  %33 = ptrtoint ptr %nr_outport.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_outport.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i35 = icmp eq i32 %34, 0
  br i1 %tobool.not.i35, label %of_coresight_get_ports.exit.i.cleanup_crit_edge, label %if.then.i46.i

of_coresight_get_ports.exit.i.cleanup_crit_edge:  ; preds = %of_coresight_get_ports.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i46.i:                                    ; preds = %of_coresight_get_ports.exit.i
  %35 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 20) #5
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %devm_kcalloc.exit.thread.i.i, label %devm_kcalloc.exit.i.i, !prof !38

devm_kcalloc.exit.thread.i.i:                     ; preds = %if.then.i46.i
  call void @__sanitizer_cov_trace_pc() #7
  %conns10.i.i = getelementptr inbounds %struct.coresight_platform_data, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %conns10.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %conns10.i.i, align 4
  br label %error

devm_kcalloc.exit.i.i:                            ; preds = %if.then.i46.i
  %38 = extractvalue { i32, i1 } %35, 0
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %38, i32 noundef 3520) #5
  %conns.i.i = getelementptr inbounds %struct.coresight_platform_data, ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %conns.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call5.i.i.i.i, ptr %conns.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool3.not.i.i, label %devm_kcalloc.exit.i.i.error_crit_edge, label %if.end4.i

devm_kcalloc.exit.i.i.error_crit_edge:            ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end4.i:                                        ; preds = %devm_kcalloc.exit.i.i
  %call.i.i = call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.7) #5
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end4.i.if.end14.i_crit_edge

if.end4.i.if.end14.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.end4.i
  %.b44.i = load i1, ptr @of_get_coresight_platform_data.__print_once, align 1
  br i1 %.b44.i, label %if.then7.i.if.end14.i_crit_edge, label %if.then9.i

if.then7.i.if.end14.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @of_get_coresight_platform_data.__print_once, align 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %if.then7.i.if.end14.i_crit_edge, %if.end4.i.if.end14.i_crit_edge
  %parent.0.i = phi ptr [ %call.i.i, %if.end4.i.if.end14.i_crit_edge ], [ %3, %if.then7.i.if.end14.i_crit_edge ], [ %3, %if.then9.i ]
  %call1560.i = call ptr @of_graph_get_next_endpoint(ptr noundef %parent.0.i, ptr noundef null) #5
  %tobool16.not61.i = icmp eq ptr %call1560.i, null
  br i1 %tobool16.not61.i, label %if.end14.i.cleanup_crit_edge, label %while.body.lr.ph.i

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.end14.i
  %40 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i.i, i32 0, i32 1
  %41 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i.i, i32 0, i32 2
  %42 = getelementptr inbounds %struct.of_endpoint, ptr %rendpoint.i.i, i32 0, i32 1
  %43 = getelementptr inbounds %struct.of_endpoint, ptr %rendpoint.i.i, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call1562.i = phi ptr [ %call1560.i, %while.body.lr.ph.i ], [ %call15.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %while.body.i.if.end20.i_crit_edge

while.body.i.if.end20.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %call.i.i47.i = call ptr @of_find_property(ptr noundef nonnull %call1562.i, ptr noundef nonnull @.str.8, ptr noundef null) #5
  %tobool.i.i.not.i = icmp eq ptr %call.i.i47.i, null
  br i1 %tobool.i.i.not.i, label %land.lhs.true.i.if.end20.i_crit_edge, label %land.lhs.true.i.while.cond.backedge.i_crit_edge

land.lhs.true.i.while.cond.backedge.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

while.cond.backedge.i:                            ; preds = %of_coresight_parse_endpoint.exit.i.while.cond.backedge.i_crit_edge, %land.lhs.true.i.while.cond.backedge.i_crit_edge
  %call15.i = call ptr @of_graph_get_next_endpoint(ptr noundef %parent.0.i, ptr noundef nonnull %call1562.i) #5
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %while.cond.backedge.i.cleanup_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond.backedge.i.cleanup_crit_edge:          ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20.i:                                       ; preds = %land.lhs.true.i.if.end20.i_crit_edge, %while.body.i.if.end20.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint.i.i) #5
  %44 = ptrtoint ptr %endpoint.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %endpoint.i.i, align 4, !annotation !37
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %40, align 4, !annotation !37
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %41, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rendpoint.i.i) #5
  %47 = ptrtoint ptr %rendpoint.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %rendpoint.i.i, align 4, !annotation !37
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %42, align 4, !annotation !37
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %43, align 4, !annotation !37
  %call.i48.i = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %call1562.i, ptr noundef nonnull %endpoint.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %tobool.not.i49.i = icmp eq i32 %call.i48.i, 0
  br i1 %tobool.not.i49.i, label %if.end.i51.i, label %if.end20.i.of_coresight_parse_endpoint.exit.i_crit_edge

if.end20.i.of_coresight_parse_endpoint.exit.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_coresight_parse_endpoint.exit.i

if.end.i51.i:                                     ; preds = %if.end20.i
  %call1.i.i = call ptr @of_graph_get_remote_endpoint(ptr noundef nonnull %call1562.i) #5
  %tobool2.not.i50.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i50.i, label %if.end.i51.i.of_coresight_parse_endpoint.exit.i_crit_edge, label %if.end4.i.i

if.end.i51.i.of_coresight_parse_endpoint.exit.i_crit_edge: ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_coresight_parse_endpoint.exit.i

if.end4.i.i:                                      ; preds = %if.end.i51.i
  %call.i.i52.i = call ptr @of_graph_get_port_parent(ptr noundef nonnull %call1.i.i) #5
  %call1.i.i53.i = call zeroext i1 @of_node_name_eq(ptr noundef %call.i.i52.i, ptr noundef nonnull @.str.6) #5
  br i1 %call1.i.i53.i, label %if.end4.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end4.i.i.if.then.i.i.i_crit_edge:              ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end4.i.i
  %call2.i.i.i = call zeroext i1 @of_node_name_eq(ptr noundef %call.i.i52.i, ptr noundef nonnull @.str.7) #5
  br i1 %call2.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.of_coresight_get_port_parent.exit.i.i_crit_edge

lor.lhs.false.i.i.i.of_coresight_get_port_parent.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_coresight_get_port_parent.exit.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %if.end4.i.i.if.then.i.i.i_crit_edge
  %call3.i.i.i = call ptr @of_get_next_parent(ptr noundef %call.i.i52.i) #5
  br label %of_coresight_get_port_parent.exit.i.i

of_coresight_get_port_parent.exit.i.i:            ; preds = %if.then.i.i.i, %lor.lhs.false.i.i.i.of_coresight_get_port_parent.exit.i.i_crit_edge
  %parent.0.i.i.i = phi ptr [ %call3.i.i.i, %if.then.i.i.i ], [ %call.i.i52.i, %lor.lhs.false.i.i.i.of_coresight_get_port_parent.exit.i.i_crit_edge ]
  %tobool6.not.i.i = icmp eq ptr %parent.0.i.i.i, null
  br i1 %tobool6.not.i.i, label %of_coresight_get_port_parent.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge, label %if.end8.i.i

of_coresight_get_port_parent.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge: ; preds = %of_coresight_get_port_parent.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_coresight_parse_endpoint.exit.i

if.end8.i.i:                                      ; preds = %of_coresight_get_port_parent.exit.i.i
  %call9.i.i = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %call1.i.i, ptr noundef nonnull %rendpoint.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %cond.true.i.i, label %if.end8.i.i.of_coresight_parse_endpoint.exit.i_crit_edge

if.end8.i.i.of_coresight_parse_endpoint.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_coresight_parse_endpoint.exit.i

cond.true.i.i:                                    ; preds = %if.end8.i.i
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %parent.0.i.i.i, i32 0, i32 3
  %call.i.i.i.i = call ptr @bus_find_device(ptr noundef nonnull @platform_bus_type, ptr noundef null, ptr noundef %fwnode.i.i, ptr noundef nonnull @device_match_fwnode) #5
  %tobool.not.i.i54.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i54.i, label %coresight_find_device_by_fwnode.exit.i.i, label %cond.true.i.i.if.end17.i.i_crit_edge

cond.true.i.i.if.end17.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.i

coresight_find_device_by_fwnode.exit.i.i:         ; preds = %cond.true.i.i
  %call.i4.i.i.i = call ptr @bus_find_device(ptr noundef nonnull @amba_bustype, ptr noundef null, ptr noundef %fwnode.i.i, ptr noundef nonnull @device_match_fwnode) #5
  %tobool15.not.i.i = icmp eq ptr %call.i4.i.i.i, null
  br i1 %tobool15.not.i.i, label %coresight_find_device_by_fwnode.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge, label %coresight_find_device_by_fwnode.exit.i.i.if.end17.i.i_crit_edge

coresight_find_device_by_fwnode.exit.i.i.if.end17.i.i_crit_edge: ; preds = %coresight_find_device_by_fwnode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.i

coresight_find_device_by_fwnode.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge: ; preds = %coresight_find_device_by_fwnode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_coresight_parse_endpoint.exit.i

if.end17.i.i:                                     ; preds = %coresight_find_device_by_fwnode.exit.i.i.if.end17.i.i_crit_edge, %cond.true.i.i.if.end17.i.i_crit_edge
  %retval.0.i43.i.i = phi ptr [ %call.i4.i.i.i, %coresight_find_device_by_fwnode.exit.i.i.if.end17.i.i_crit_edge ], [ %call.i.i.i.i, %cond.true.i.i.if.end17.i.i_crit_edge ]
  %50 = ptrtoint ptr %conns.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %conns.i.i, align 4
  %52 = ptrtoint ptr %endpoint.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %endpoint.i.i, align 4
  %child_fwnode.i.i = getelementptr %struct.coresight_connection, ptr %51, i32 %53, i32 2
  %54 = ptrtoint ptr %child_fwnode.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %child_fwnode.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %55, null
  br i1 %tobool18.not.i.i, label %if.end22.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %53) #8
  br label %of_coresight_parse_endpoint.exit.i

if.end22.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr %struct.coresight_connection, ptr %51, i32 %53
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %53, ptr %arrayidx.i.i, align 4
  %call24.i.i = call ptr @fwnode_handle_get(ptr noundef %fwnode.i.i) #5
  %57 = ptrtoint ptr %child_fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call24.i.i, ptr %child_fwnode.i.i, align 4
  %58 = ptrtoint ptr %rendpoint.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rendpoint.i.i, align 4
  %child_port.i.i = getelementptr %struct.coresight_connection, ptr %51, i32 %53, i32 1
  %60 = ptrtoint ptr %child_port.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %child_port.i.i, align 4
  br label %of_coresight_parse_endpoint.exit.i

of_coresight_parse_endpoint.exit.i:               ; preds = %if.end22.i.i, %do.end.i.i, %coresight_find_device_by_fwnode.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge, %if.end8.i.i.of_coresight_parse_endpoint.exit.i_crit_edge, %of_coresight_get_port_parent.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge, %if.end.i51.i.of_coresight_parse_endpoint.exit.i_crit_edge, %if.end20.i.of_coresight_parse_endpoint.exit.i_crit_edge
  %rparent.0.i.i = phi ptr [ null, %if.end20.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ %parent.0.i.i.i, %if.end8.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ %parent.0.i.i.i, %do.end.i.i ], [ %parent.0.i.i.i, %if.end22.i.i ], [ null, %of_coresight_get_port_parent.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ null, %if.end.i51.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ %parent.0.i.i.i, %coresight_find_device_by_fwnode.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ]
  %rep.0.i.i = phi ptr [ null, %if.end20.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ %call1.i.i, %if.end8.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ %call1.i.i, %do.end.i.i ], [ %call1.i.i, %if.end22.i.i ], [ %call1.i.i, %of_coresight_get_port_parent.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ null, %if.end.i51.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ %call1.i.i, %coresight_find_device_by_fwnode.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ]
  %rdev.0.i.i = phi ptr [ null, %if.end20.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ null, %if.end8.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ %retval.0.i43.i.i, %do.end.i.i ], [ %retval.0.i43.i.i, %if.end22.i.i ], [ null, %of_coresight_get_port_parent.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ null, %if.end.i51.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ null, %coresight_find_device_by_fwnode.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ]
  %tobool22.not.i = phi i1 [ true, %if.end20.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ true, %if.end8.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ false, %do.end.i.i ], [ true, %if.end22.i.i ], [ true, %of_coresight_get_port_parent.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ true, %if.end.i51.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ false, %coresight_find_device_by_fwnode.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ]
  %ret.0.i.i = phi i32 [ 0, %if.end20.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ 0, %if.end8.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ -22, %do.end.i.i ], [ 0, %if.end22.i.i ], [ 0, %of_coresight_get_port_parent.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ 0, %if.end.i51.i.of_coresight_parse_endpoint.exit.i_crit_edge ], [ -517, %coresight_find_device_by_fwnode.exit.i.i.of_coresight_parse_endpoint.exit.i_crit_edge ]
  call void @of_node_put(ptr noundef %rparent.0.i.i) #5
  call void @of_node_put(ptr noundef %rep.0.i.i) #5
  call void @put_device(ptr noundef %rdev.0.i.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rendpoint.i.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i.i) #5
  br i1 %tobool22.not.i, label %of_coresight_parse_endpoint.exit.i.while.cond.backedge.i_crit_edge, label %of_coresight_parse_endpoint.exit.i.error_crit_edge

of_coresight_parse_endpoint.exit.i.error_crit_edge: ; preds = %of_coresight_parse_endpoint.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

of_coresight_parse_endpoint.exit.i.while.cond.backedge.i_crit_edge: ; preds = %of_coresight_parse_endpoint.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

error:                                            ; preds = %of_coresight_parse_endpoint.exit.i.error_crit_edge, %devm_kcalloc.exit.i.i.error_crit_edge, %devm_kcalloc.exit.thread.i.i, %is_of_node.exit.error_crit_edge
  %ret.1 = phi i32 [ -2, %is_of_node.exit.error_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i.i ], [ -12, %devm_kcalloc.exit.i.i.error_crit_edge ], [ %ret.0.i.i, %of_coresight_parse_endpoint.exit.i.error_crit_edge ]
  %cmp.i37 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37, label %error.if.end18_crit_edge, label %if.then17

error.if.end18_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then17:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #7
  call void @coresight_release_platform_data(ptr noundef null, ptr noundef nonnull %call.i) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %error.if.end18_crit_edge, %if.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  %ret.150 = phi i32 [ %ret.1, %if.then17 ], [ %ret.1, %error.if.end18_crit_edge ], [ -12, %if.end.if.end18_crit_edge ], [ -2, %entry.if.end18_crit_edge ]
  %61 = inttoptr i32 %ret.150 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %while.cond.backedge.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %of_coresight_get_ports.exit.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %61, %if.end18 ], [ %call.i, %of_coresight_get_ports.exit.i.cleanup_crit_edge ], [ %call.i, %if.end14.i.cleanup_crit_edge ], [ %call.i, %while.cond.backedge.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_release_platform_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_fwnode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_cpu_node_to_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_graph_is_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_handle_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !17, !19, !21, !23, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__ksymtab_coresight_find_csdev_by_fwnode, !1, !"__ksymtab_coresight_find_csdev_by_fwnode", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-platform.c", i32 78, i32 1}
!2 = !{ptr @__ksymtab_coresight_get_cpu, !3, !"__ksymtab_coresight_get_cpu", i1 false, i1 false}
!3 = !{!"../drivers/hwtracing/coresight/coresight-platform.c", i32 838, i32 1}
!4 = !{ptr @__ksymtab_coresight_get_platform_data, !5, !"__ksymtab_coresight_get_platform_data", i1 false, i1 false}
!5 = !{!"../drivers/hwtracing/coresight/coresight-platform.c", i32 869, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/coresight/coresight-platform.c", i32 197, i32 38}
!8 = distinct !{null, !9, !"__print_once", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/coresight/coresight-platform.c", i32 311, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @of_get_coresight_platform_data._entry, !9, !"_entry", i1 false, i1 false}
!16 = !{ptr @of_get_coresight_platform_data._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwtracing/coresight/coresight-platform.c", i32 139, i32 36}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwtracing/coresight/coresight-platform.c", i32 145, i32 36}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwtracing/coresight/coresight-platform.c", i32 83, i32 35}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwtracing/coresight/coresight-platform.c", i32 256, i32 4}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @of_coresight_parse_endpoint._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @of_coresight_parse_endpoint._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
!38 = !{!"branch_weights", i32 1, i32 2000}
