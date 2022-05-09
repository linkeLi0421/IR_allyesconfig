; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-cti-platform.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-cti-platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.cti_drvdata = type { ptr, ptr, %struct.cti_device, %struct.spinlock, %struct.cti_config, %struct.list_head, ptr }
%struct.cti_device = type { i32, i32, %struct.list_head, i32, ptr }
%struct.cti_config = type { i32, i32, %struct.atomic_t, i8, i8, i32, i32, i32, i8, i8, i32, i8, [32 x i32], [32 x i32], i32, i32 }
%struct.cti_trig_grp = type { i32, i32, [0 x i32] }
%struct.cti_trig_con = type { ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.coresight_device = type { ptr, i32, %union.coresight_dev_subtype, ptr, %struct.csdev_access, %struct.device, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, %struct.list_head, %struct.spinlock, ptr }
%union.coresight_dev_subtype = type { %struct.anon.104 }
%struct.anon.104 = type { i32, i32 }
%struct.csdev_access = type { i8, %union.anon.105 }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { ptr, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm,cti-ctm-id\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arm,coresight-cti-v8-arch\00", [38 x i8] zeroinitializer }, align 32
@cti_plat_create_v8_connections._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 186, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ARM v8 architectural CTI connection: missing cpu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cti_plat_create_v8_connections\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/hwtracing/coresight/coresight-cti-platform.c\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cti_plat_create_v8_connections._entry_ptr = internal global ptr @cti_plat_create_v8_connections._entry, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpu%d\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arm,cs-dev-assoc\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"trig-conns\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arm,trig-in-sigs\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm,trig-out-sigs\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm,trig-in-types\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm,trig-out-types\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm,trig-conn-name\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arm,trig-filters\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 85, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 261, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 444, i32 32 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 228, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 185, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 204, i32 48 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 50, i32 30 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 128, i32 49 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 426, i32 36 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 352, i32 51 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 353, i32 52 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 370, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 380, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 389, i32 38 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [56 x i8] c"../drivers/hwtracing/coresight/coresight-cti-platform.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 321, i32 12 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @cti_plat_create_v8_connections._entry, ptr @cti_plat_create_v8_connections._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cti_plat_create_v8_connections._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @cti_plat_get_node_name(ptr noundef readonly %fwnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %fwnode, null
  %cmp.i.i = icmp ugt ptr %fwnode, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.return_crit_edge, label %is_of_node.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %fwnode, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %1, @of_fwnode_ops
  br i1 %cmp.i, label %is_of_node.exit12, label %is_of_node.exit.return_crit_edge

is_of_node.exit.return_crit_edge:                 ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

is_of_node.exit12:                                ; preds = %is_of_node.exit
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i10 = icmp ne ptr %3, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %fwnode, i32 -12
  %tobool.not.i13 = icmp eq ptr %add.ptr, null
  %tobool.not.i = or i1 %tobool.not.i13, %cmp.i10
  br i1 %tobool.not.i, label %is_of_node.exit12.return_crit_edge, label %cond.true.i

is_of_node.exit12.return_crit_edge:               ; preds = %is_of_node.exit12
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cond.true.i:                                      ; preds = %is_of_node.exit12
  call void @__sanitizer_cov_trace_pc() #10
  %full_name.i = getelementptr i8, ptr %fwnode, i32 -4
  %4 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %full_name.i, align 4
  br label %return

return:                                           ; preds = %cond.true.i, %is_of_node.exit12.return_crit_edge, %is_of_node.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str, %is_of_node.exit.return_crit_edge ], [ %5, %cond.true.i ], [ @.str.1, %is_of_node.exit12.return_crit_edge ], [ @.str, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @coresight_cti_get_platform_data(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  %args.i.i.i.i27.i = alloca %struct.of_phandle_args, align 4
  %assoc_name.i.i.i = alloca ptr, align 4
  %cpu_name_str.i.i.i = alloca [16 x i8], align 1
  %args.i.i.i.i.i = alloca %struct.of_phandle_args, align 4
  %cpu_name_str.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dev_fwnode(ptr noundef %dev) #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.error_crit_edge, label %if.end5

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end5:                                          ; preds = %if.end
  %ctidev.i = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 2
  %ctm_id.i = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 2, i32 1
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %ctm_id.i, i32 noundef 1) #8
  %call.i21.i = tail call ptr @dev_fwnode(ptr noundef %dev) #8
  %tobool.not.i.i.i.i = icmp eq ptr %call.i21.i, null
  %cmp.i.i.i.i = icmp ugt ptr %call.i21.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %if.end5.if.else.i_crit_edge, label %is_of_node.exit.i.i

if.end5.if.else.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

is_of_node.exit.i.i:                              ; preds = %if.end5
  %ops.i.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %call.i21.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %3, @of_fwnode_ops
  br i1 %cmp.i.i.i, label %cti_plat_check_v8_arch_compatible.exit.i, label %is_of_node.exit.i.i.if.else.i_crit_edge

is_of_node.exit.i.i.if.else.i_crit_edge:          ; preds = %is_of_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

cti_plat_check_v8_arch_compatible.exit.i:         ; preds = %is_of_node.exit.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i21.i, i32 -12
  %call4.i.i = tail call i32 @of_device_is_compatible(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i19 = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i19, label %cti_plat_check_v8_arch_compatible.exit.i.if.else.i_crit_edge, label %if.then.i

cti_plat_check_v8_arch_compatible.exit.i.if.else.i_crit_edge: ; preds = %cti_plat_check_v8_arch_compatible.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %cti_plat_check_v8_arch_compatible.exit.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cpu_name_str.i.i) #8
  %4 = call ptr @memset(ptr %cpu_name_str.i.i, i32 255, i32 16)
  %call.i22.i = tail call ptr @dev_fwnode(ptr noundef %dev) #8
  %tobool.not.i.i.i.i.i = icmp eq ptr %call.i22.i, null
  %cmp.i.i.i.i.i = icmp ugt ptr %call.i22.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i.i = or i1 %tobool.not.i.i.i.i.i, %cmp.i.i.i.i.i
  br i1 %spec.select.i.i.i.i.i, label %if.then.i.do.end.i.i_crit_edge, label %is_of_node.exit.i.i.i

if.then.i.do.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

is_of_node.exit.i.i.i:                            ; preds = %if.then.i
  %ops.i.i.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %call.i22.i, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i.i.i.i, align 4
  %cmp.i.i.i23.i = icmp eq ptr %6, @of_fwnode_ops
  br i1 %cmp.i.i.i23.i, label %is_of_node.exit12.i.i.i, label %is_of_node.exit.i.i.i.do.end.i.i_crit_edge

is_of_node.exit.i.i.i.do.end.i.i_crit_edge:       ; preds = %is_of_node.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

is_of_node.exit12.i.i.i:                          ; preds = %is_of_node.exit.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i22.i, i32 -12
  %cmp.i1315.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp.i1315.i.i.i, label %is_of_node.exit12.i.i.i.do.end.i.i_crit_edge, label %if.end.i.i.i.i

is_of_node.exit12.i.i.i.do.end.i.i_crit_edge:     ; preds = %is_of_node.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.end.i.i.i.i:                                   ; preds = %is_of_node.exit12.i.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i.i.i.i) #8
  %7 = call ptr @memset(ptr %args.i.i.i.i.i, i32 255, i32 72)
  %call.i.i.i.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %add.ptr.i.i.i, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i14.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i14.i.i.i, label %of_parse_phandle.exit.i.i.i.i, label %of_parse_phandle.exit.thread.i.i.i.i

of_parse_phandle.exit.thread.i.i.i.i:             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i.i.i) #8
  br label %do.end.i.i

of_parse_phandle.exit.i.i.i.i:                    ; preds = %if.end.i.i.i.i
  %8 = ptrtoint ptr %args.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args.i.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i.i.i) #8
  %tobool.not.i.i.i24.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i24.i, label %of_parse_phandle.exit.i.i.i.i.do.end.i.i_crit_edge, label %cti_plat_get_cpu_at_node.exit.i.i

of_parse_phandle.exit.i.i.i.i.do.end.i.i_crit_edge: ; preds = %of_parse_phandle.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

cti_plat_get_cpu_at_node.exit.i.i:                ; preds = %of_parse_phandle.exit.i.i.i.i
  %call3.i.i.i.i = call i32 @of_cpu_node_to_id(ptr noundef nonnull %9) #8
  call void @of_node_put(ptr noundef nonnull %9) #8
  %10 = call i32 @llvm.smax.i32(i32 %call3.i.i.i.i, i32 -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i = icmp slt i32 %10, 0
  br i1 %cmp.i.i, label %cti_plat_get_cpu_at_node.exit.i.i.do.end.i.i_crit_edge, label %if.end.i.i

cti_plat_get_cpu_at_node.exit.i.i.do.end.i.i_crit_edge: ; preds = %cti_plat_get_cpu_at_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %cti_plat_get_cpu_at_node.exit.i.i.do.end.i.i_crit_edge, %of_parse_phandle.exit.i.i.i.i.do.end.i.i_crit_edge, %of_parse_phandle.exit.thread.i.i.i.i, %is_of_node.exit12.i.i.i.do.end.i.i_crit_edge, %is_of_node.exit.i.i.i.do.end.i.i_crit_edge, %if.then.i.do.end.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4) #11
  br label %cti_plat_create_v8_connections.exit.i

if.end.i.i:                                       ; preds = %cti_plat_get_cpu_at_node.exit.i.i
  %cpu.i.i = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cpu.i.i, align 4
  %call2.i.i = call ptr @cti_allocate_trig_con(ptr noundef %dev, i32 noundef 2, i32 noundef 3) #8
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.cti_plat_create_v8_connections.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.cti_plat_create_v8_connections.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cti_plat_create_v8_connections.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %12 = ptrtoint ptr %call2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call2.i.i, align 4
  %used_mask.i.i = getelementptr inbounds %struct.cti_trig_grp, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %used_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %used_mask.i.i, align 4
  %15 = load ptr, ptr %call2.i.i, align 4
  %sig_types.i.i = getelementptr inbounds %struct.cti_trig_grp, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %sig_types.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 9, ptr %sig_types.i.i, align 4
  %17 = load ptr, ptr %call2.i.i, align 4
  %arrayidx8.i.i = getelementptr %struct.cti_trig_grp, ptr %17, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %arrayidx8.i.i, align 4
  %con_out.i.i = getelementptr inbounds %struct.cti_trig_con, ptr %call2.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %con_out.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %con_out.i.i, align 4
  %used_mask9.i.i = getelementptr inbounds %struct.cti_trig_grp, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %used_mask9.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %used_mask9.i.i, align 4
  %22 = load ptr, ptr %con_out.i.i, align 4
  %sig_types11.i.i = getelementptr inbounds %struct.cti_trig_grp, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %sig_types11.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %sig_types11.i.i, align 4
  %24 = load ptr, ptr %con_out.i.i, align 4
  %arrayidx15.i.i = getelementptr %struct.cti_trig_grp, ptr %24, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %arrayidx15.i.i, align 4
  %26 = load ptr, ptr %con_out.i.i, align 4
  %arrayidx18.i.i = getelementptr %struct.cti_trig_grp, ptr %26, i32 2
  %27 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 7, ptr %arrayidx18.i.i, align 4
  %call19.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %cpu_name_str.i.i, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %10) #8
  %call21.i.i = call i32 @cti_add_connection_entry(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull %call2.i.i, ptr noundef null, ptr noundef nonnull %cpu_name_str.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end24.i.i, label %if.end4.i.i.cti_plat_create_v8_connections.exit.i_crit_edge

if.end4.i.i.cti_plat_create_v8_connections.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cti_plat_create_v8_connections.exit.i

if.end24.i.i:                                     ; preds = %if.end4.i.i
  %call.i.i.i = call ptr @dev_fwnode(ptr noundef %dev) #8
  %tobool.not.i.i52.i.i = icmp eq ptr %call.i.i.i, null
  %cmp.i.i53.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i25.i = or i1 %tobool.not.i.i52.i.i, %cmp.i.i53.i.i
  br i1 %spec.select.i.i.i25.i, label %if.end24.i.i.cti_plat_create_v8_connections.exit.i_crit_edge, label %if.end.i.i.i

if.end24.i.i.cti_plat_create_v8_connections.exit.i_crit_edge: ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cti_plat_create_v8_connections.exit.i

if.end.i.i.i:                                     ; preds = %if.end24.i.i
  %call2.i.i.i = call ptr @fwnode_find_reference(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %cmp.i35.i.i.i = icmp ugt ptr %call2.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35.i.i.i, label %if.end.i.i.i.if.end28.i.i_crit_edge, label %if.end5.i.i.i

if.end.i.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %call6.i.i.i = call ptr @cti_allocate_trig_con(ptr noundef %dev, i32 noundef 4, i32 noundef 4) #8
  %tobool.not.i.i.i = icmp eq ptr %call6.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cti_plat_create_v8_etm_connection.exit.thread63.i.i, label %if.end8.i.i.i

cti_plat_create_v8_etm_connection.exit.thread63.i.i: ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @fwnode_handle_put(ptr noundef %call2.i.i.i) #8
  br label %cti_plat_create_v8_connections.exit.i

if.end8.i.i.i:                                    ; preds = %if.end5.i.i.i
  %28 = ptrtoint ptr %call6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call6.i.i.i, align 4
  %used_mask.i.i.i = getelementptr inbounds %struct.cti_trig_grp, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %used_mask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 240, ptr %used_mask.i.i.i, align 4
  %con_out.i.i.i = getelementptr inbounds %struct.cti_trig_con, ptr %call6.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %con_out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %con_out.i.i.i, align 4
  %used_mask9.i.i.i = getelementptr inbounds %struct.cti_trig_grp, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %used_mask9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 240, ptr %used_mask9.i.i.i, align 4
  %34 = load ptr, ptr %call6.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.cti_trig_grp, ptr %34, i32 0, i32 2, i32 0
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 10, ptr %arrayidx.i.i.i, align 4
  %36 = load ptr, ptr %con_out.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr %struct.cti_trig_grp, ptr %36, i32 0, i32 2, i32 0
  %37 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 11, ptr %arrayidx13.i.i.i, align 4
  %38 = load ptr, ptr %call6.i.i.i, align 4
  %arrayidx.1.i.i.i = getelementptr %struct.cti_trig_grp, ptr %38, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 10, ptr %arrayidx.1.i.i.i, align 4
  %40 = load ptr, ptr %con_out.i.i.i, align 4
  %arrayidx13.1.i.i.i = getelementptr %struct.cti_trig_grp, ptr %40, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %arrayidx13.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 11, ptr %arrayidx13.1.i.i.i, align 4
  %42 = load ptr, ptr %call6.i.i.i, align 4
  %arrayidx.2.i.i.i = getelementptr %struct.cti_trig_grp, ptr %42, i32 0, i32 2, i32 2
  %43 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 10, ptr %arrayidx.2.i.i.i, align 4
  %44 = load ptr, ptr %con_out.i.i.i, align 4
  %arrayidx13.2.i.i.i = getelementptr %struct.cti_trig_grp, ptr %44, i32 0, i32 2, i32 2
  %45 = ptrtoint ptr %arrayidx13.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 11, ptr %arrayidx13.2.i.i.i, align 4
  %46 = load ptr, ptr %call6.i.i.i, align 4
  %arrayidx.3.i.i.i = getelementptr %struct.cti_trig_grp, ptr %46, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 10, ptr %arrayidx.3.i.i.i, align 4
  %48 = load ptr, ptr %con_out.i.i.i, align 4
  %arrayidx13.3.i.i.i = getelementptr %struct.cti_trig_grp, ptr %48, i32 0, i32 2, i32 3
  %49 = ptrtoint ptr %arrayidx13.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 11, ptr %arrayidx13.3.i.i.i, align 4
  %call.i.i.i.i = call ptr @coresight_find_csdev_by_fwnode(ptr noundef %call2.i.i.i) #8
  %tobool.not.i36.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i36.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.coresight_device, ptr %call.i.i.i.i, i32 0, i32 5, i32 3
  %50 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i54.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i.i54.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge

if.then.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cti_plat_create_v8_etm_connection.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i.i.i = getelementptr inbounds %struct.coresight_device, ptr %call.i.i.i.i, i32 0, i32 5
  br label %if.end.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  %tobool.not.i.i.i.i.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge, label %is_of_node.exit.i.i.i.i.i

if.else.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cti_plat_create_v8_etm_connection.exit.i.i

is_of_node.exit.i.i.i.i.i:                        ; preds = %if.else.i.i.i.i
  %ops.i.i.i.i.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %call2.i.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %ops.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i = icmp eq ptr %53, @of_fwnode_ops
  br i1 %cmp.i.i.i.i.i.i, label %is_of_node.exit12.i.i.i.i.i, label %is_of_node.exit.i.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge

is_of_node.exit.i.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge: ; preds = %is_of_node.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cti_plat_create_v8_etm_connection.exit.i.i

is_of_node.exit12.i.i.i.i.i:                      ; preds = %is_of_node.exit.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %call2.i.i.i, i32 -12
  %tobool.not.i13.i.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  br i1 %tobool.not.i13.i.i.i.i.i, label %is_of_node.exit12.i.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge, label %cond.true.i.i.i.i.i.i

is_of_node.exit12.i.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge: ; preds = %is_of_node.exit12.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cti_plat_create_v8_etm_connection.exit.i.i

cond.true.i.i.i.i.i.i:                            ; preds = %is_of_node.exit12.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %full_name.i.i.i.i.i.i = getelementptr i8, ptr %call2.i.i.i, i32 -4
  br label %if.end.sink.split.i.i.i.i

if.end.sink.split.i.i.i.i:                        ; preds = %cond.true.i.i.i.i.i.i, %if.end.i.i.i.i.i
  %full_name.i.i.sink.i.i.i.i = phi ptr [ %full_name.i.i.i.i.i.i, %cond.true.i.i.i.i.i.i ], [ %dev.i.i.i.i, %if.end.i.i.i.i.i ]
  %54 = ptrtoint ptr %full_name.i.i.sink.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %full_name.i.i.sink.i.i.i.i, align 4
  br label %cti_plat_create_v8_etm_connection.exit.i.i

cti_plat_create_v8_etm_connection.exit.i.i:       ; preds = %if.end.sink.split.i.i.i.i, %is_of_node.exit12.i.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge, %is_of_node.exit.i.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge, %if.else.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge, %if.then.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge
  %name.0.i.i.i.i = phi ptr [ %51, %if.then.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge ], [ @.str, %is_of_node.exit.i.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge ], [ @.str.1, %is_of_node.exit12.i.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge ], [ @.str, %if.else.i.i.i.i.cti_plat_create_v8_etm_connection.exit.i.i_crit_edge ], [ %55, %if.end.sink.split.i.i.i.i ]
  %call15.i.i.i = call i32 @cti_add_connection_entry(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull %call6.i.i.i, ptr noundef %call.i.i.i.i, ptr noundef %name.0.i.i.i.i) #8
  call void @fwnode_handle_put(ptr noundef %call2.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool26.not.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool26.not.i.i, label %cti_plat_create_v8_etm_connection.exit.i.i.if.end28.i.i_crit_edge, label %cti_plat_create_v8_etm_connection.exit.i.i.cti_plat_create_v8_connections.exit.i_crit_edge

cti_plat_create_v8_etm_connection.exit.i.i.cti_plat_create_v8_connections.exit.i_crit_edge: ; preds = %cti_plat_create_v8_etm_connection.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cti_plat_create_v8_connections.exit.i

cti_plat_create_v8_etm_connection.exit.i.i.if.end28.i.i_crit_edge: ; preds = %cti_plat_create_v8_etm_connection.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %cti_plat_create_v8_etm_connection.exit.i.i.if.end28.i.i_crit_edge, %if.end.i.i.i.if.end28.i.i_crit_edge
  %trig_out_filter.i.i = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 4, i32 7
  %56 = ptrtoint ptr %trig_out_filter.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %trig_out_filter.i.i, align 4
  %or.i.i = or i32 %57, 1
  store i32 %or.i.i, ptr %trig_out_filter.i.i, align 4
  br label %cti_plat_create_v8_connections.exit.i

cti_plat_create_v8_connections.exit.i:            ; preds = %if.end28.i.i, %cti_plat_create_v8_etm_connection.exit.i.i.cti_plat_create_v8_connections.exit.i_crit_edge, %cti_plat_create_v8_etm_connection.exit.thread63.i.i, %if.end24.i.i.cti_plat_create_v8_connections.exit.i_crit_edge, %if.end4.i.i.cti_plat_create_v8_connections.exit.i_crit_edge, %if.end.i.i.cti_plat_create_v8_connections.exit.i_crit_edge, %do.end.i.i
  %retval.0.i26.i = phi i32 [ -22, %do.end.i.i ], [ %call21.i.i, %if.end4.i.i.cti_plat_create_v8_connections.exit.i_crit_edge ], [ %call15.i.i.i, %cti_plat_create_v8_etm_connection.exit.i.i.cti_plat_create_v8_connections.exit.i_crit_edge ], [ 0, %if.end28.i.i ], [ -12, %if.end.i.i.cti_plat_create_v8_connections.exit.i_crit_edge ], [ -12, %cti_plat_create_v8_etm_connection.exit.thread63.i.i ], [ -22, %if.end24.i.i.cti_plat_create_v8_connections.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cpu_name_str.i.i) #8
  br label %if.end.i

if.else.i:                                        ; preds = %cti_plat_check_v8_arch_compatible.exit.i.if.else.i_crit_edge, %is_of_node.exit.i.i.if.else.i_crit_edge, %if.end5.if.else.i_crit_edge
  %call.i28.i = tail call ptr @dev_fwnode(ptr noundef %dev) #8
  %tobool.not.i.i29.i = icmp eq ptr %call.i28.i, null
  %cmp.i.i30.i = icmp ugt ptr %call.i28.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i29.i, %cmp.i.i30.i
  br i1 %spec.select.i.i.i, label %if.else.i.error_crit_edge, label %if.end.i32.i

if.else.i.error_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end.i32.i:                                     ; preds = %if.else.i
  %call2.i31.i = tail call ptr @fwnode_get_next_child_node(ptr noundef nonnull %call.i28.i, ptr noundef null) #8
  %tobool.not128.i.i = icmp eq ptr %call2.i31.i, null
  br i1 %tobool.not128.i.i, label %if.end.i32.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i32.i.for.end.i.i_crit_edge:               ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i32.i
  %nr_trig_max.i.i.i = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 4, i32 1
  %trig_out_filter.i.i.i = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 4, i32 7
  %cpu.i.i.i = getelementptr inbounds %struct.cti_drvdata, ptr %1, i32 0, i32 2, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %child.0129.i.i = phi ptr [ %call2.i31.i, %for.body.lr.ph.i.i ], [ %call9.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %cmp.i.i.i.i33.i = icmp ugt ptr %child.0129.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i33.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %is_of_node.exit.i.i36.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

is_of_node.exit.i.i36.i:                          ; preds = %for.body.i.i
  %ops.i.i.i34.i = getelementptr inbounds %struct.fwnode_handle, ptr %child.0129.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %ops.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i.i.i34.i, align 4
  %cmp.i.i.i35.i = icmp eq ptr %59, @of_fwnode_ops
  br i1 %cmp.i.i.i35.i, label %cti_plat_node_name_eq.exit.i.i, label %is_of_node.exit.i.i36.i.for.inc.i.i_crit_edge

is_of_node.exit.i.i36.i.for.inc.i.i_crit_edge:    ; preds = %is_of_node.exit.i.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

cti_plat_node_name_eq.exit.i.i:                   ; preds = %is_of_node.exit.i.i36.i
  %add.ptr.i.i37.i = getelementptr i8, ptr %child.0129.i.i, i32 -12
  %call3.i.i.i = call zeroext i1 @of_node_name_eq(ptr noundef %add.ptr.i.i37.i, ptr noundef nonnull @.str.12) #8
  br i1 %call3.i.i.i, label %if.then4.i.i, label %cti_plat_node_name_eq.exit.i.i.for.inc.i.i_crit_edge

cti_plat_node_name_eq.exit.i.i.for.inc.i.i_crit_edge: ; preds = %cti_plat_node_name_eq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then4.i.i:                                     ; preds = %cti_plat_node_name_eq.exit.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %assoc_name.i.i.i) #8
  %60 = ptrtoint ptr %assoc_name.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str, ptr %assoc_name.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cpu_name_str.i.i.i) #8
  %61 = call ptr @memset(ptr %cpu_name_str.i.i.i, i32 255, i32 16)
  %call.i.i.i.i38.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0129.i.i, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0) #8
  %62 = call i32 @llvm.smax.i32(i32 %call.i.i.i.i38.i, i32 0) #8
  %call.i.i80.i.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0129.i.i, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0) #8
  %63 = call i32 @llvm.smax.i32(i32 %call.i.i80.i.i.i, i32 0) #8
  %64 = ptrtoint ptr %nr_trig_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr_trig_max.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %65)
  %cmp.i21.i.i = icmp sgt i32 %62, %65
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp4.i.i.i = icmp sgt i32 %63, %65
  %or.cond.i.i.i = select i1 %cmp.i21.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %or.cond.i.i.i, label %if.then4.i.i.if.end6.thread115.i.i_crit_edge, label %if.end.i.i39.i

if.then4.i.i.if.end6.thread115.i.i_crit_edge:     ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread115.i.i

if.end.i.i39.i:                                   ; preds = %if.then4.i.i
  %call5.i.i.i = call ptr @cti_allocate_trig_con(ptr noundef %dev, i32 noundef %62, i32 noundef %63) #8
  %tobool.not.i22.i.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i22.i.i, label %if.end.i.i39.i.if.end6.thread115.i.i_crit_edge, label %if.end7.i.i.i

if.end.i.i39.i.if.end6.thread115.i.i_crit_edge:   ; preds = %if.end.i.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread115.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i39.i
  %66 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call5.i.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i.i.i40.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i.i.i40.i, label %if.end7.i.i.i.if.end11.i.i.i_crit_edge, label %if.end.i.i.i41.i

if.end7.i.i.i.if.end11.i.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i.i

if.end.i.i.i41.i:                                 ; preds = %if.end7.i.i.i
  %70 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %69, i32 4) #8
  %71 = extractvalue { i32, i1 } %70, 1
  br i1 %71, label %if.end.i.i.i41.i.if.end6.thread115.i.i_crit_edge, label %if.end7.i.i.i.i.i.i, !prof !45

if.end.i.i.i41.i.if.end6.thread115.i.i_crit_edge: ; preds = %if.end.i.i.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread115.i.i

if.end7.i.i.i.i.i.i:                              ; preds = %if.end.i.i.i41.i
  %72 = extractvalue { i32, i1 } %70, 0
  %call8.i.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %72, i32 noundef 3520) #12
  %tobool2.not.i.i.i.i = icmp eq ptr %call8.i.i.i.i.i.i, null
  br i1 %tobool2.not.i.i.i.i, label %if.end7.i.i.i.i.i.i.if.end6.thread115.i.i_crit_edge, label %if.end4.i.i.i.i

if.end7.i.i.i.i.i.i.if.end6.thread115.i.i_crit_edge: ; preds = %if.end7.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread115.i.i

if.end4.i.i.i.i:                                  ; preds = %if.end7.i.i.i.i.i.i
  %73 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %67, align 4
  %call6.i.i.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0129.i.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %call8.i.i.i.i.i.i, i32 noundef %74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %call6.i.i.i.i, 0
  br i1 %tobool7.not.i.i.i.i, label %for.cond.preheader.i.i.i.i, label %if.end4.i.i.i.i.if.end6.thread115.sink.split.i.i_crit_edge

if.end4.i.i.i.i.if.end6.thread115.sink.split.i.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread115.sink.split.i.i

for.cond.preheader.i.i.i.i:                       ; preds = %if.end4.i.i.i.i
  %75 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp30.i.i.i.i = icmp sgt i32 %76, 0
  br i1 %cmp30.i.i.i.i, label %for.body.lr.ph.i.i.i.i, label %for.cond.preheader.i.i.i.i.if.end11.sink.split.i.i.i_crit_edge

for.cond.preheader.i.i.i.i.if.end11.sink.split.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.sink.split.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %for.cond.preheader.i.i.i.i
  %used_mask.i.i.i.i = getelementptr inbounds %struct.cti_trig_grp, ptr %67, i32 0, i32 1
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %idx.031.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr i32, ptr %call8.i.i.i.i.i.i, i32 %idx.031.i.i.i.i
  %77 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %shl.i.i.i.i = shl nuw i32 1, %78
  %79 = ptrtoint ptr %used_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %used_mask.i.i.i.i, align 4
  %or.i.i.i.i = or i32 %80, %shl.i.i.i.i
  store i32 %or.i.i.i.i, ptr %used_mask.i.i.i.i, align 4
  %inc.i.i.i.i = add nuw nsw i32 %idx.031.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %76
  br i1 %exitcond.not.i.i.i.i, label %for.body.i.i.i.i.if.end11.sink.split.i.i.i_crit_edge, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

for.body.i.i.i.i.if.end11.sink.split.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.sink.split.i.i.i

if.end11.sink.split.i.i.i:                        ; preds = %for.body.i.i.i.i.if.end11.sink.split.i.i.i_crit_edge, %for.cond.preheader.i.i.i.i.if.end11.sink.split.i.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i.i.i) #8
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.end11.sink.split.i.i.i, %if.end7.i.i.i.if.end11.i.i.i_crit_edge
  %81 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call5.i.i.i, align 4
  %call13.i.i.i = call fastcc i32 @cti_plat_read_trig_types(ptr noundef %82, ptr noundef nonnull %child.0129.i.i, ptr noundef nonnull @.str.15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %call13.i.i.i, 0
  br i1 %tobool14.not.i.i.i, label %if.end16.i.i.i, label %if.end11.i.i.i.if.end6.thread115.i.i_crit_edge

if.end11.i.i.i.if.end6.thread115.i.i_crit_edge:   ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread115.i.i

if.end16.i.i.i:                                   ; preds = %if.end11.i.i.i
  %con_out.i.i42.i = getelementptr inbounds %struct.cti_trig_con, ptr %call5.i.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %con_out.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %con_out.i.i42.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i81.i.i.i = icmp eq i32 %86, 0
  br i1 %tobool.not.i81.i.i.i, label %if.end16.i.i.i.if.end20.i.i.i_crit_edge, label %if.end.i82.i.i.i

if.end16.i.i.i.if.end20.i.i.i_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i.i

if.end.i82.i.i.i:                                 ; preds = %if.end16.i.i.i
  %87 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %86, i32 4) #8
  %88 = extractvalue { i32, i1 } %87, 1
  br i1 %88, label %if.end.i82.i.i.i.if.end6.thread115.i.i_crit_edge, label %if.end7.i.i.i113.i.i.i, !prof !45

if.end.i82.i.i.i.if.end6.thread115.i.i_crit_edge: ; preds = %if.end.i82.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread115.i.i

if.end7.i.i.i113.i.i.i:                           ; preds = %if.end.i82.i.i.i
  %89 = extractvalue { i32, i1 } %87, 0
  %call8.i.i.i112.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %89, i32 noundef 3520) #12
  %tobool2.not.i115.i.i.i = icmp eq ptr %call8.i.i.i112.i.i.i, null
  br i1 %tobool2.not.i115.i.i.i, label %if.end7.i.i.i113.i.i.i.if.end6.thread115.i.i_crit_edge, label %if.end4.i120.i.i.i

if.end7.i.i.i113.i.i.i.if.end6.thread115.i.i_crit_edge: ; preds = %if.end7.i.i.i113.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread115.i.i

if.end4.i120.i.i.i:                               ; preds = %if.end7.i.i.i113.i.i.i
  %90 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %84, align 4
  %call6.i118.i.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0129.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull %call8.i.i.i112.i.i.i, i32 noundef %91) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i118.i.i.i)
  %tobool7.not.i119.i.i.i = icmp eq i32 %call6.i118.i.i.i, 0
  br i1 %tobool7.not.i119.i.i.i, label %for.cond.preheader.i122.i.i.i, label %if.end4.i120.i.i.i.if.end6.thread115.sink.split.i.i_crit_edge

if.end4.i120.i.i.i.if.end6.thread115.sink.split.i.i_crit_edge: ; preds = %if.end4.i120.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread115.sink.split.i.i

for.cond.preheader.i122.i.i.i:                    ; preds = %if.end4.i120.i.i.i
  %92 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp30.i121.i.i.i = icmp sgt i32 %93, 0
  br i1 %cmp30.i121.i.i.i, label %for.body.lr.ph.i124.i.i.i, label %for.cond.preheader.i122.i.i.i.if.end20.sink.split.i.i.i_crit_edge

for.cond.preheader.i122.i.i.i.if.end20.sink.split.i.i.i_crit_edge: ; preds = %for.cond.preheader.i122.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split.i.i.i

for.body.lr.ph.i124.i.i.i:                        ; preds = %for.cond.preheader.i122.i.i.i
  %used_mask.i123.i.i.i = getelementptr inbounds %struct.cti_trig_grp, ptr %84, i32 0, i32 1
  br label %for.body.i131.i.i.i

for.body.i131.i.i.i:                              ; preds = %for.body.i131.i.i.i.for.body.i131.i.i.i_crit_edge, %for.body.lr.ph.i124.i.i.i
  %idx.031.i125.i.i.i = phi i32 [ 0, %for.body.lr.ph.i124.i.i.i ], [ %inc.i129.i.i.i, %for.body.i131.i.i.i.for.body.i131.i.i.i_crit_edge ]
  %arrayidx.i126.i.i.i = getelementptr i32, ptr %call8.i.i.i112.i.i.i, i32 %idx.031.i125.i.i.i
  %94 = ptrtoint ptr %arrayidx.i126.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i126.i.i.i, align 4
  %shl.i127.i.i.i = shl nuw i32 1, %95
  %96 = ptrtoint ptr %used_mask.i123.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %used_mask.i123.i.i.i, align 4
  %or.i128.i.i.i = or i32 %97, %shl.i127.i.i.i
  store i32 %or.i128.i.i.i, ptr %used_mask.i123.i.i.i, align 4
  %inc.i129.i.i.i = add nuw nsw i32 %idx.031.i125.i.i.i, 1
  %exitcond.not.i130.i.i.i = icmp eq i32 %inc.i129.i.i.i, %93
  br i1 %exitcond.not.i130.i.i.i, label %for.body.i131.i.i.i.if.end20.sink.split.i.i.i_crit_edge, label %for.body.i131.i.i.i.for.body.i131.i.i.i_crit_edge

for.body.i131.i.i.i.for.body.i131.i.i.i_crit_edge: ; preds = %for.body.i131.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i131.i.i.i

for.body.i131.i.i.i.if.end20.sink.split.i.i.i_crit_edge: ; preds = %for.body.i131.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split.i.i.i

if.end20.sink.split.i.i.i:                        ; preds = %for.body.i131.i.i.i.if.end20.sink.split.i.i.i_crit_edge, %for.cond.preheader.i122.i.i.i.if.end20.sink.split.i.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i112.i.i.i) #8
  br label %if.end20.i.i.i

if.end20.i.i.i:                                   ; preds = %if.end20.sink.split.i.i.i, %if.end16.i.i.i.if.end20.i.i.i_crit_edge
  %98 = ptrtoint ptr %con_out.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %con_out.i.i42.i, align 4
  %call22.i.i.i = call fastcc i32 @cti_plat_read_trig_types(ptr noundef %99, ptr noundef nonnull %child.0129.i.i, ptr noundef nonnull @.str.16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %call22.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %if.end25.i.i.i, label %if.end20.i.i.i.if.end6.thread115.i.i_crit_edge

if.end20.i.i.i.if.end6.thread115.i.i_crit_edge:   ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread115.i.i

if.end25.i.i.i:                                   ; preds = %if.end20.i.i.i
  %call.i.i.i42.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0129.i.i, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i42.i.i)
  %cmp.i43.i.i = icmp slt i32 %call.i.i.i42.i.i, 1
  br i1 %cmp.i43.i.i, label %if.end25.i.i.i.is_of_node.exit.i36.i.i_crit_edge, label %if.end.i45.i.i

if.end25.i.i.i.is_of_node.exit.i36.i.i_crit_edge: ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_of_node.exit.i36.i.i

if.end.i45.i.i:                                   ; preds = %if.end25.i.i.i
  %100 = ptrtoint ptr %nr_trig_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nr_trig_max.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i42.i.i, i32 %101)
  %cmp1.i.i.i = icmp sgt i32 %call.i.i.i42.i.i, %101
  br i1 %cmp1.i.i.i, label %if.end.i45.i.i.if.end6.thread115.i.i_crit_edge, label %if.end3.i.i.i

if.end.i45.i.i.if.end6.thread115.i.i_crit_edge:   ; preds = %if.end.i45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread115.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i45.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %102 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %102, i32 noundef 3520, i32 noundef 8) #13
  %tobool.not.i46.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i46.i.i, label %if.end3.i.i.i.if.end6.thread115.i.i_crit_edge, label %if.end6.i.i.i

if.end3.i.i.i.if.end6.thread115.i.i_crit_edge:    ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread115.i.i

if.end6.i.i.i:                                    ; preds = %if.end3.i.i.i
  %103 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %call7.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i.i47.i.i = icmp eq i32 %104, 0
  br i1 %tobool.not.i.i47.i.i, label %if.end6.i.i.i.cti_plat_process_filter_sigs.exit.i.i_crit_edge, label %if.end.i.i48.i.i

if.end6.i.i.i.cti_plat_process_filter_sigs.exit.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cti_plat_process_filter_sigs.exit.i.i

if.end.i.i48.i.i:                                 ; preds = %if.end6.i.i.i
  %105 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %104, i32 4) #8
  %106 = extractvalue { i32, i1 } %105, 1
  br i1 %106, label %if.end.i.i48.i.i.if.end6.thread115.sink.split.i.i_crit_edge, label %if.end7.i.i.i.i79.i.i, !prof !45

if.end.i.i48.i.i.if.end6.thread115.sink.split.i.i_crit_edge: ; preds = %if.end.i.i48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread115.sink.split.i.i

if.end7.i.i.i.i79.i.i:                            ; preds = %if.end.i.i48.i.i
  %107 = extractvalue { i32, i1 } %105, 0
  %call8.i.i.i.i78.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %107, i32 noundef 3520) #12
  %tobool2.not.i.i81.i.i = icmp eq ptr %call8.i.i.i.i78.i.i, null
  br i1 %tobool2.not.i.i81.i.i, label %if.end7.i.i.i.i79.i.i.if.end6.thread115.sink.split.i.i_crit_edge, label %if.end4.i.i86.i.i

if.end7.i.i.i.i79.i.i.if.end6.thread115.sink.split.i.i_crit_edge: ; preds = %if.end7.i.i.i.i79.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread115.sink.split.i.i

if.end4.i.i86.i.i:                                ; preds = %if.end7.i.i.i.i79.i.i
  %108 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %call7.i.i.i.i.i, align 8
  %call6.i.i84.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0129.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull %call8.i.i.i.i78.i.i, i32 noundef %109) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i84.i.i)
  %tobool7.not.i.i85.i.i = icmp eq i32 %call6.i.i84.i.i, 0
  br i1 %tobool7.not.i.i85.i.i, label %for.cond.preheader.i.i88.i.i, label %cti_plat_read_trig_group.exit.thread30.i.i.i

cti_plat_read_trig_group.exit.thread30.i.i.i:     ; preds = %if.end4.i.i86.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i78.i.i) #8
  br label %if.end6.thread115.sink.split.i.i

for.cond.preheader.i.i88.i.i:                     ; preds = %if.end4.i.i86.i.i
  %110 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %call7.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp30.i.i87.i.i = icmp sgt i32 %111, 0
  br i1 %cmp30.i.i87.i.i, label %for.body.lr.ph.i.i90.i.i, label %for.cond.preheader.i.i88.i.i.if.then9.sink.split.i.i.i_crit_edge

for.cond.preheader.i.i88.i.i.if.then9.sink.split.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i88.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.sink.split.i.i.i

for.body.lr.ph.i.i90.i.i:                         ; preds = %for.cond.preheader.i.i88.i.i
  %used_mask.i.i89.i.i = getelementptr inbounds %struct.cti_trig_grp, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %112 = ptrtoint ptr %used_mask.i.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %used_mask.i.i89.i.i.promoted = load i32, ptr %used_mask.i.i89.i.i, align 4
  br label %for.body.i.i97.i.i

for.body.i.i97.i.i:                               ; preds = %for.body.i.i97.i.i.for.body.i.i97.i.i_crit_edge, %for.body.lr.ph.i.i90.i.i
  %or.i.i94.i.i56 = phi i32 [ %used_mask.i.i89.i.i.promoted, %for.body.lr.ph.i.i90.i.i ], [ %or.i.i94.i.i, %for.body.i.i97.i.i.for.body.i.i97.i.i_crit_edge ]
  %idx.031.i.i91.i.i = phi i32 [ 0, %for.body.lr.ph.i.i90.i.i ], [ %inc.i.i95.i.i, %for.body.i.i97.i.i.for.body.i.i97.i.i_crit_edge ]
  %arrayidx.i.i92.i.i = getelementptr i32, ptr %call8.i.i.i.i78.i.i, i32 %idx.031.i.i91.i.i
  %113 = ptrtoint ptr %arrayidx.i.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i.i92.i.i, align 4
  %shl.i.i93.i.i = shl nuw i32 1, %114
  %or.i.i94.i.i = or i32 %or.i.i94.i.i56, %shl.i.i93.i.i
  %inc.i.i95.i.i = add nuw nsw i32 %idx.031.i.i91.i.i, 1
  %exitcond.not.i.i96.i.i = icmp eq i32 %inc.i.i95.i.i, %111
  br i1 %exitcond.not.i.i96.i.i, label %if.then9.sink.split.i.i.i.loopexit, label %for.body.i.i97.i.i.for.body.i.i97.i.i_crit_edge

for.body.i.i97.i.i.for.body.i.i97.i.i_crit_edge:  ; preds = %for.body.i.i97.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i97.i.i

if.then9.sink.split.i.i.i.loopexit:               ; preds = %for.body.i.i97.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %used_mask.i.i89.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or.i.i94.i.i, ptr %used_mask.i.i89.i.i, align 4
  br label %if.then9.sink.split.i.i.i

if.then9.sink.split.i.i.i:                        ; preds = %if.then9.sink.split.i.i.i.loopexit, %for.cond.preheader.i.i88.i.i.if.then9.sink.split.i.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i78.i.i) #8
  br label %cti_plat_process_filter_sigs.exit.i.i

cti_plat_process_filter_sigs.exit.i.i:            ; preds = %if.then9.sink.split.i.i.i, %if.end6.i.i.i.cti_plat_process_filter_sigs.exit.i.i_crit_edge
  %used_mask.i.i43.i = getelementptr inbounds %struct.cti_trig_grp, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %used_mask.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %used_mask.i.i43.i, align 4
  %118 = ptrtoint ptr %trig_out_filter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %trig_out_filter.i.i.i, align 4
  %or.i.i.i = or i32 %119, %117
  store i32 %or.i.i.i, ptr %trig_out_filter.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #8
  br label %is_of_node.exit.i36.i.i

is_of_node.exit.i36.i.i:                          ; preds = %cti_plat_process_filter_sigs.exit.i.i, %if.end25.i.i.i.is_of_node.exit.i36.i.i_crit_edge
  %call30.i.i.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %child.0129.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %assoc_name.i.i.i) #8
  %120 = ptrtoint ptr %ops.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops.i.i.i34.i, align 4
  %cmp.i.i35.i.i = icmp ne ptr %121, @of_fwnode_ops
  %cmp.i1315.i.i44.i = icmp eq ptr %add.ptr.i.i37.i, null
  %or.cond.i.i = or i1 %cmp.i1315.i.i44.i, %cmp.i.i35.i.i
  br i1 %or.cond.i.i, label %is_of_node.exit.i36.i.i.if.else.i.i.i_crit_edge, label %if.end.i.i39.i.i

is_of_node.exit.i36.i.i.if.else.i.i.i_crit_edge:  ; preds = %is_of_node.exit.i36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i.i

if.end.i.i39.i.i:                                 ; preds = %is_of_node.exit.i36.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i.i.i27.i) #8
  %122 = call ptr @memset(ptr %args.i.i.i.i27.i, i32 255, i32 72)
  %call.i.i.i38.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %add.ptr.i.i37.i, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i.i.i27.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i38.i.i)
  %tobool.not.i.i14.i.i45.i = icmp eq i32 %call.i.i.i38.i.i, 0
  br i1 %tobool.not.i.i14.i.i45.i, label %of_parse_phandle.exit.i.i.i47.i, label %of_parse_phandle.exit.thread.i.i.i46.i

of_parse_phandle.exit.thread.i.i.i46.i:           ; preds = %if.end.i.i39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i.i27.i) #8
  br label %if.else.i.i.i

of_parse_phandle.exit.i.i.i47.i:                  ; preds = %if.end.i.i39.i.i
  %123 = ptrtoint ptr %args.i.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %args.i.i.i.i27.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i.i27.i) #8
  %tobool.not.i.i40.i.i = icmp eq ptr %124, null
  br i1 %tobool.not.i.i40.i.i, label %of_parse_phandle.exit.i.i.i47.i.if.else.i.i.i_crit_edge, label %cti_plat_get_cpu_at_node.exit.i49.i

of_parse_phandle.exit.i.i.i47.i.if.else.i.i.i_crit_edge: ; preds = %of_parse_phandle.exit.i.i.i47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i.i

cti_plat_get_cpu_at_node.exit.i49.i:              ; preds = %of_parse_phandle.exit.i.i.i47.i
  %call3.i.i.i48.i = call i32 @of_cpu_node_to_id(ptr noundef nonnull %124) #8
  call void @of_node_put(ptr noundef nonnull %124) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i.i.i48.i)
  %cmp32.i.i.i = icmp sgt i32 %call3.i.i.i48.i, -1
  br i1 %cmp32.i.i.i, label %if.then33.i.i.i, label %cti_plat_get_cpu_at_node.exit.i49.i.if.else.i.i.i_crit_edge

cti_plat_get_cpu_at_node.exit.i49.i.if.else.i.i.i_crit_edge: ; preds = %cti_plat_get_cpu_at_node.exit.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i.i

if.then33.i.i.i:                                  ; preds = %cti_plat_get_cpu_at_node.exit.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %call3.i.i.i48.i, ptr %cpu.i.i.i, align 4
  %call34.i.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %cpu_name_str.i.i.i, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %call3.i.i.i48.i) #8
  %126 = ptrtoint ptr %assoc_name.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %cpu_name_str.i.i.i, ptr %assoc_name.i.i.i, align 4
  br label %if.end6.i.i

if.else.i.i.i:                                    ; preds = %cti_plat_get_cpu_at_node.exit.i49.i.if.else.i.i.i_crit_edge, %of_parse_phandle.exit.i.i.i47.i.if.else.i.i.i_crit_edge, %of_parse_phandle.exit.thread.i.i.i46.i, %is_of_node.exit.i36.i.i.if.else.i.i.i_crit_edge
  %call36.i.i.i = call ptr @fwnode_find_reference(ptr noundef nonnull %child.0129.i.i, ptr noundef nonnull @.str.11, i32 noundef 0) #8
  %cmp.i.i23.i.i = icmp ugt ptr %call36.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i23.i.i, label %if.else.i.i.i.if.end6.i.i_crit_edge, label %if.then38.i.i.i

if.else.i.i.i.if.end6.i.i_crit_edge:              ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i

if.then38.i.i.i:                                  ; preds = %if.else.i.i.i
  %call.i.i50.i = call ptr @coresight_find_csdev_by_fwnode(ptr noundef %call36.i.i.i) #8
  %tobool.not.i25.i.i = icmp eq ptr %call.i.i50.i, null
  br i1 %tobool.not.i25.i.i, label %if.else.i28.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then38.i.i.i
  %init_name.i.i.i.i = getelementptr inbounds %struct.coresight_device, ptr %call.i.i50.i, i32 0, i32 5, i32 3
  %127 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i26.i.i = icmp eq ptr %128, null
  br i1 %tobool.not.i.i26.i.i, label %if.end.i.i27.i.i, label %if.then.i.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge

if.then.i.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cti_plat_get_csdev_or_node_name.exit.i.i

if.end.i.i27.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i.i = getelementptr inbounds %struct.coresight_device, ptr %call.i.i50.i, i32 0, i32 5
  br label %if.end.sink.split.i.i.i

if.else.i28.i.i:                                  ; preds = %if.then38.i.i.i
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %call36.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.else.i28.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge, label %is_of_node.exit.i.i.i.i

if.else.i28.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge: ; preds = %if.else.i28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cti_plat_get_csdev_or_node_name.exit.i.i

is_of_node.exit.i.i.i.i:                          ; preds = %if.else.i28.i.i
  %ops.i.i.i.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %call36.i.i.i, i32 0, i32 1
  %129 = ptrtoint ptr %ops.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ops.i.i.i.i.i, align 4
  %cmp.i.i.i29.i.i = icmp eq ptr %130, @of_fwnode_ops
  br i1 %cmp.i.i.i29.i.i, label %is_of_node.exit12.i.i.i.i, label %is_of_node.exit.i.i.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge

is_of_node.exit.i.i.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge: ; preds = %is_of_node.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cti_plat_get_csdev_or_node_name.exit.i.i

is_of_node.exit12.i.i.i.i:                        ; preds = %is_of_node.exit.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call36.i.i.i, i32 -12
  %tobool.not.i13.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i13.i.i.i.i, label %is_of_node.exit12.i.i.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge, label %cond.true.i.i.i.i.i

is_of_node.exit12.i.i.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge: ; preds = %is_of_node.exit12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cti_plat_get_csdev_or_node_name.exit.i.i

cond.true.i.i.i.i.i:                              ; preds = %is_of_node.exit12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %full_name.i.i.i.i.i = getelementptr i8, ptr %call36.i.i.i, i32 -4
  br label %if.end.sink.split.i.i.i

if.end.sink.split.i.i.i:                          ; preds = %cond.true.i.i.i.i.i, %if.end.i.i27.i.i
  %full_name.i.i.sink.i.i.i = phi ptr [ %full_name.i.i.i.i.i, %cond.true.i.i.i.i.i ], [ %dev.i.i.i, %if.end.i.i27.i.i ]
  %131 = ptrtoint ptr %full_name.i.i.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %full_name.i.i.sink.i.i.i, align 4
  br label %cti_plat_get_csdev_or_node_name.exit.i.i

cti_plat_get_csdev_or_node_name.exit.i.i:         ; preds = %if.end.sink.split.i.i.i, %is_of_node.exit12.i.i.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge, %is_of_node.exit.i.i.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge, %if.else.i28.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge, %if.then.i.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge
  %name.0.i.i.i = phi ptr [ %128, %if.then.i.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge ], [ @.str, %is_of_node.exit.i.i.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge ], [ @.str.1, %is_of_node.exit12.i.i.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge ], [ @.str, %if.else.i28.i.i.cti_plat_get_csdev_or_node_name.exit.i.i_crit_edge ], [ %132, %if.end.sink.split.i.i.i ]
  %133 = ptrtoint ptr %assoc_name.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %name.0.i.i.i, ptr %assoc_name.i.i.i, align 4
  call void @fwnode_handle_put(ptr noundef %call36.i.i.i) #8
  br label %if.end6.i.i

if.end6.thread115.sink.split.i.i:                 ; preds = %cti_plat_read_trig_group.exit.thread30.i.i.i, %if.end7.i.i.i.i79.i.i.if.end6.thread115.sink.split.i.i_crit_edge, %if.end.i.i48.i.i.if.end6.thread115.sink.split.i.i_crit_edge, %if.end4.i120.i.i.i.if.end6.thread115.sink.split.i.i_crit_edge, %if.end4.i.i.i.i.if.end6.thread115.sink.split.i.i_crit_edge
  %retval.0.i.i29.i.i.lcssa.sink.i.i = phi ptr [ %call7.i.i.i.i.i, %cti_plat_read_trig_group.exit.thread30.i.i.i ], [ %call8.i.i.i.i.i.i, %if.end4.i.i.i.i.if.end6.thread115.sink.split.i.i_crit_edge ], [ %call8.i.i.i112.i.i.i, %if.end4.i120.i.i.i.if.end6.thread115.sink.split.i.i_crit_edge ], [ %call7.i.i.i.i.i, %if.end.i.i48.i.i.if.end6.thread115.sink.split.i.i_crit_edge ], [ %call7.i.i.i.i.i, %if.end7.i.i.i.i79.i.i.if.end6.thread115.sink.split.i.i_crit_edge ]
  %retval.0.i24.ph.ph.i.i = phi i32 [ %call6.i.i84.i.i, %cti_plat_read_trig_group.exit.thread30.i.i.i ], [ %call6.i.i.i.i, %if.end4.i.i.i.i.if.end6.thread115.sink.split.i.i_crit_edge ], [ %call6.i118.i.i.i, %if.end4.i120.i.i.i.if.end6.thread115.sink.split.i.i_crit_edge ], [ -12, %if.end.i.i48.i.i.if.end6.thread115.sink.split.i.i_crit_edge ], [ -12, %if.end7.i.i.i.i79.i.i.if.end6.thread115.sink.split.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %retval.0.i.i29.i.i.lcssa.sink.i.i) #8
  br label %if.end6.thread115.i.i

if.end6.thread115.i.i:                            ; preds = %if.end6.thread115.sink.split.i.i, %if.end3.i.i.i.if.end6.thread115.i.i_crit_edge, %if.end.i45.i.i.if.end6.thread115.i.i_crit_edge, %if.end20.i.i.i.if.end6.thread115.i.i_crit_edge, %if.end7.i.i.i113.i.i.i.if.end6.thread115.i.i_crit_edge, %if.end.i82.i.i.i.if.end6.thread115.i.i_crit_edge, %if.end11.i.i.i.if.end6.thread115.i.i_crit_edge, %if.end7.i.i.i.i.i.i.if.end6.thread115.i.i_crit_edge, %if.end.i.i.i41.i.if.end6.thread115.i.i_crit_edge, %if.end.i.i39.i.if.end6.thread115.i.i_crit_edge, %if.then4.i.i.if.end6.thread115.i.i_crit_edge
  %retval.0.i24.ph.i.i = phi i32 [ %retval.0.i24.ph.ph.i.i, %if.end6.thread115.sink.split.i.i ], [ -22, %if.then4.i.i.if.end6.thread115.i.i_crit_edge ], [ -12, %if.end.i.i39.i.if.end6.thread115.i.i_crit_edge ], [ -12, %if.end.i.i.i41.i.if.end6.thread115.i.i_crit_edge ], [ -12, %if.end7.i.i.i.i.i.i.if.end6.thread115.i.i_crit_edge ], [ %call13.i.i.i, %if.end11.i.i.i.if.end6.thread115.i.i_crit_edge ], [ -12, %if.end.i82.i.i.i.if.end6.thread115.i.i_crit_edge ], [ -12, %if.end7.i.i.i113.i.i.i.if.end6.thread115.i.i_crit_edge ], [ %call22.i.i.i, %if.end20.i.i.i.if.end6.thread115.i.i_crit_edge ], [ -22, %if.end.i45.i.i.if.end6.thread115.i.i_crit_edge ], [ -12, %if.end3.i.i.i.if.end6.thread115.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cpu_name_str.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %assoc_name.i.i.i) #8
  br label %for.end.i.i

if.end6.i.i:                                      ; preds = %cti_plat_get_csdev_or_node_name.exit.i.i, %if.else.i.i.i.if.end6.i.i_crit_edge, %if.then33.i.i.i
  %csdev.i.0.i.i = phi ptr [ null, %if.then33.i.i.i ], [ null, %if.else.i.i.i.if.end6.i.i_crit_edge ], [ %call.i.i50.i, %cti_plat_get_csdev_or_node_name.exit.i.i ]
  %134 = ptrtoint ptr %assoc_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %assoc_name.i.i.i, align 4
  %call42.i.i.i = call i32 @cti_add_connection_entry(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull %call5.i.i.i, ptr noundef %csdev.i.0.i.i, ptr noundef %135) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cpu_name_str.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %assoc_name.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call42.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end6.i.i.for.inc.i.i_crit_edge, label %if.end6.i.i.for.end.i.i_crit_edge

if.end6.i.i.for.end.i.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.end6.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end6.i.i.for.inc.i.i_crit_edge, %cti_plat_node_name_eq.exit.i.i.for.inc.i.i_crit_edge, %is_of_node.exit.i.i36.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %call9.i.i = call ptr @fwnode_get_next_child_node(ptr noundef %call.i28.i, ptr noundef nonnull %child.0129.i.i) #8
  %tobool.not.i51.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i51.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end6.i.i.for.end.i.i_crit_edge, %if.end6.thread115.i.i, %if.end.i32.i.for.end.i.i_crit_edge
  %child.0125.i.i = phi ptr [ %child.0129.i.i, %if.end6.thread115.i.i ], [ null, %if.end.i32.i.for.end.i.i_crit_edge ], [ null, %for.inc.i.i.for.end.i.i_crit_edge ], [ %child.0129.i.i, %if.end6.i.i.for.end.i.i_crit_edge ]
  %rc.2.i.i = phi i32 [ %retval.0.i24.ph.i.i, %if.end6.thread115.i.i ], [ 0, %if.end.i32.i.for.end.i.i_crit_edge ], [ 0, %for.inc.i.i.for.end.i.i_crit_edge ], [ %call42.i.i.i, %if.end6.i.i.for.end.i.i_crit_edge ]
  call void @fwnode_handle_put(ptr noundef %child.0125.i.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %for.end.i.i, %cti_plat_create_v8_connections.exit.i
  %rc.0.i = phi i32 [ %retval.0.i26.i, %cti_plat_create_v8_connections.exit.i ], [ %rc.2.i.i, %for.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool4.not.i = icmp eq i32 %rc.0.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.error_crit_edge

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end6.i:                                        ; preds = %if.end.i
  %136 = ptrtoint ptr %ctidev.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ctidev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp.i20 = icmp eq i32 %137, 0
  br i1 %cmp.i20, label %cti_plat_get_hw_data.exit, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cti_plat_get_hw_data.exit:                        ; preds = %if.end6.i
  %call8.i = call i32 @cti_add_default_connection(ptr noundef %dev, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool7.not = icmp eq i32 %call8.i, 0
  br i1 %tobool7.not, label %cti_plat_get_hw_data.exit.cleanup_crit_edge, label %cti_plat_get_hw_data.exit.error_crit_edge

cti_plat_get_hw_data.exit.error_crit_edge:        ; preds = %cti_plat_get_hw_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

cti_plat_get_hw_data.exit.cleanup_crit_edge:      ; preds = %cti_plat_get_hw_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error:                                            ; preds = %cti_plat_get_hw_data.exit.error_crit_edge, %if.end.i.error_crit_edge, %if.else.i.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ -2, %entry.error_crit_edge ], [ %call8.i, %cti_plat_get_hw_data.exit.error_crit_edge ], [ -12, %if.end.error_crit_edge ], [ -22, %if.else.i.error_crit_edge ], [ %rc.0.i, %if.end.i.error_crit_edge ]
  %138 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error, %cti_plat_get_hw_data.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %138, %error ], [ %call.i, %cti_plat_get_hw_data.exit.cleanup_crit_edge ], [ %call.i, %if.end6.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cti_add_default_connection(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cti_allocate_trig_con(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cti_add_connection_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_cpu_node_to_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_find_reference(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_find_csdev_by_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cti_plat_read_trig_types(ptr nocapture noundef %tgrp, ptr noundef %fwnode, ptr noundef %type_name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tgrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tgrp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef %fwnode, ptr noundef %type_name, ptr noundef null, i32 noundef 0) #8
  %2 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp = icmp sgt i32 %2, %1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %tobool4.not = icmp slt i32 %call.i.i, 1
  br i1 %tobool4.not, label %if.end3.for.body.preheader_crit_edge, label %if.then5

if.end3.for.body.preheader_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.then5:                                         ; preds = %if.end3
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #8
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.then5.cleanup_crit_edge, label %if.end7.i.i, !prof !45

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.then5
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #12
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end9

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end7.i.i
  %call10 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %fwnode, ptr noundef %type_name, ptr noundef nonnull %call8.i.i, i32 noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.for.body.preheader_crit_edge, label %if.end9.read_trig_types_out_crit_edge

if.end9.read_trig_types_out_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_trig_types_out

if.end9.for.body.preheader_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end9.for.body.preheader_crit_edge, %if.end3.for.body.preheader_crit_edge
  %values.0 = phi ptr [ %call8.i.i, %if.end9.for.body.preheader_crit_edge ], [ null, %if.end3.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.057 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.057, i32 %2)
  %cmp16 = icmp ult i32 %i.057, %2
  br i1 %cmp16, label %if.then17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i32, ptr %values.0, i32 %i.057
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %7)
  %cmp18 = icmp ult i32 %7, 25
  %spec.select = select i1 %cmp18, i32 %7, i32 0
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %for.body.for.inc_crit_edge
  %.sink = phi i32 [ %spec.select, %if.then17 ], [ 0, %for.body.for.inc_crit_edge ]
  %8 = getelementptr %struct.cti_trig_grp, ptr %tgrp, i32 0, i32 2, i32 %i.057
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %8, align 4
  %inc = add nuw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.read_trig_types_out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.read_trig_types_out_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_trig_types_out

read_trig_types_out:                              ; preds = %for.inc.read_trig_types_out_crit_edge, %if.end9.read_trig_types_out_crit_edge
  %err.1 = phi i32 [ %call10, %if.end9.read_trig_types_out_crit_edge ], [ 0, %for.inc.read_trig_types_out_crit_edge ]
  %values.1 = phi ptr [ %call8.i.i, %if.end9.read_trig_types_out_crit_edge ], [ %values.0, %for.inc.read_trig_types_out_crit_edge ]
  tail call void @kfree(ptr noundef %values.1) #8
  br label %cleanup

cleanup:                                          ; preds = %read_trig_types_out, %if.end7.i.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %read_trig_types_out ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-cti-platform.c", i32 85, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/of.h", i32 261, i32 30}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/hwtracing/coresight/coresight-cti-platform.c", i32 444, i32 32}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/coresight/coresight-cti-platform.c", i32 228, i32 13}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/coresight/coresight-cti-platform.c", i32 185, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cti_plat_create_v8_connections._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @cti_plat_create_v8_connections._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwtracing/coresight/coresight-cti-platform.c", i32 204, i32 48}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwtracing/coresight/coresight-cti-platform.c", i32 50, i32 30}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwtracing/coresight/coresight-cti-platform.c", i32 128, i32 49}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwtracing/coresight/coresight-cti-platform.c", i32 426, i32 36}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwtracing/coresight/coresight-cti-platform.c", i32 352, i32 51}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwtracing/coresight/coresight-cti-platform.c", i32 353, i32 52}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwtracing/coresight/coresight-cti-platform.c", i32 370, i32 12}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwtracing/coresight/coresight-cti-platform.c", i32 380, i32 12}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwtracing/coresight/coresight-cti-platform.c", i32 389, i32 38}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwtracing/coresight/coresight-cti-platform.c", i32 321, i32 12}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 1, i32 2000}
