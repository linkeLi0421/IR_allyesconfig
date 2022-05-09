; ModuleID = '/llk/IR_all_yes/drivers/of/kobj.c_pt.bc'
source_filename = "../drivers/of/kobj.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }

@of_node_ktype = dso_local global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @of_node_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security-\00", [22 x i8] zeroinitializer }, align 32
@of_kset = external dso_local local_unnamed_addr global ptr, align 4
@__of_add_property_sysfs.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/of/kobj.c\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error adding attribute %s to node %pOF\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"base\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s#%i\00", [26 x i8] zeroinitializer }, align 32
@safe_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.1, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014Duplicate name in %s, renamed to \22%s\22\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"safe_name\00", [22 x i8] zeroinitializer }, align 32
@safe_name._entry_ptr = internal global ptr @safe_name._entry, section ".printk_index", align 4
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"of_node_ktype\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 27, i32 18 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 68, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 83, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 128, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 137, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 51, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [21 x i8] c"../drivers/of/kobj.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 57, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @safe_name._entry, ptr @safe_name._entry_ptr, ptr @of_node_ktype, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_node_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safe_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @of_node_is_attached(ptr noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %state_in_sysfs = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %state_in_sysfs to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %state_in_sysfs, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %1 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %bf.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__of_add_property_sysfs(ptr noundef %np, ptr noundef %pp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp, align 4
  %call = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_kset to i32))
  %2 = load ptr, ptr @of_kset, align 4
  %tobool.not = icmp eq ptr %2, null
  %tobool.not.i = icmp eq ptr %np, null
  %or.cond = or i1 %tobool.not.i, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %of_node_is_attached.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

of_node_is_attached.exit:                         ; preds = %entry
  %state_in_sysfs.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 9, i32 8
  %3 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %4 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %of_node_is_attached.exit.cleanup_crit_edge, label %do.body

of_node_is_attached.exit.cleanup_crit_edge:       ; preds = %of_node_is_attached.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %of_node_is_attached.exit
  %attr = getelementptr inbounds %struct.property, ptr %pp, i32 0, i32 5
  %key = getelementptr inbounds %struct.property, ptr %pp, i32 0, i32 5, i32 0, i32 3
  %5 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @__of_add_property_sysfs.__key, ptr %key, align 4
  %kobj = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 9
  %call5 = tail call fastcc ptr @safe_name(ptr noundef %kobj, ptr noundef %1)
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %attr, align 4
  %conv = select i1 %cmp, i16 256, i16 292
  %mode = getelementptr inbounds %struct.property, ptr %pp, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %mode, align 4
  br i1 %cmp, label %do.body.cond.end_crit_edge, label %cond.false

do.body.cond.end_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %length = getelementptr inbounds %struct.property, ptr %pp, i32 0, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body.cond.end_crit_edge
  %cond14 = phi i32 [ %9, %cond.false ], [ 0, %do.body.cond.end_crit_edge ]
  %size = getelementptr inbounds %struct.property, ptr %pp, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond14, ptr %size, align 4
  %read = getelementptr inbounds %struct.property, ptr %pp, i32 0, i32 5, i32 4
  %11 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @of_node_property_read, ptr %read, align 4
  %call19 = tail call i32 @sysfs_create_bin_file(ptr noundef %kobj, ptr noundef %attr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cond.end.cleanup_crit_edge, label %do.end32, !prof !29

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end32:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 83, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %13, ptr noundef nonnull %np) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %cond.end.cleanup_crit_edge, %of_node_is_attached.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %of_node_is_attached.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call19, %do.end32 ], [ 0, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @safe_name(ptr nocapture noundef readonly %kobj, ptr noundef %orig_name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 5
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %entry
  %name.021 = phi ptr [ %orig_name, %entry ], [ %call2, %if.end.land.rhs_crit_edge ]
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %if.end.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %call.i.i = tail call ptr @kernfs_find_and_get_ns(ptr noundef %1, ptr noundef %name.021, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs
  tail call void @kernfs_put(ptr noundef nonnull %call.i.i) #5
  %cmp1.not = icmp eq ptr %name.021, %orig_name
  br i1 %cmp1.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef %name.021) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.020, 1
  %call2 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.5, ptr noundef %orig_name, i32 noundef %inc) #5
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %if.end.while.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %name.0.lcssa = phi ptr [ %call2, %if.end.while.end_crit_edge ], [ %name.021, %land.rhs.while.end_crit_edge ]
  %cmp3 = icmp eq ptr %name.0.lcssa, %orig_name
  br i1 %cmp3, label %if.then4, label %do.end

if.then4:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call noalias ptr @kstrdup(ptr noundef %orig_name, i32 noundef 3264) #5
  br label %if.end8

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kobj, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %3, ptr noundef %name.0.lcssa) #8
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then4
  %name.1 = phi ptr [ %call5, %if.then4 ], [ %name.0.lcssa, %do.end ]
  ret ptr %name.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_node_property_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %bin_attr, ptr noundef %buf, i64 noundef %offset, i32 noundef %count) #2 align 64 {
entry:
  %offset.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %offset, ptr %offset.addr, align 8
  %value = getelementptr i8, ptr %bin_attr, i32 -12
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %value, align 4
  %length = getelementptr i8, ptr %bin_attr, i32 -16
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length, align 4
  %call = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %offset.addr, ptr noundef %2, i32 noundef %4) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__of_sysfs_remove_bin_file(ptr noundef %np, ptr noundef %prop) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 9
  %attr = getelementptr inbounds %struct.property, ptr %prop, i32 0, i32 5
  tail call void @sysfs_remove_bin_file(ptr noundef %kobj, ptr noundef %attr) #5
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__of_remove_property_sysfs(ptr noundef %np, ptr noundef %prop) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_kset to i32))
  %0 = load ptr, ptr @of_kset, align 4
  %tobool.not = icmp eq ptr %0, null
  %tobool.not.i = icmp eq ptr %np, null
  %or.cond = or i1 %tobool.not.i, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %of_node_is_attached.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

of_node_is_attached.exit:                         ; preds = %entry
  %state_in_sysfs.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 9, i32 8
  %1 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %2 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %of_node_is_attached.exit.if.end_crit_edge, label %if.then

of_node_is_attached.exit.if.end_crit_edge:        ; preds = %of_node_is_attached.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %of_node_is_attached.exit
  call void @__sanitizer_cov_trace_pc() #7
  %kobj.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 9
  %attr.i = getelementptr inbounds %struct.property, ptr %prop, i32 0, i32 5
  tail call void @sysfs_remove_bin_file(ptr noundef %kobj.i, ptr noundef %attr.i) #5
  %3 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr.i, align 4
  tail call void @kfree(ptr noundef %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %of_node_is_attached.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__of_update_property_sysfs(ptr noundef %np, ptr noundef %newprop, ptr noundef %oldprop) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_kset to i32))
  %0 = load ptr, ptr @of_kset, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %oldprop, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %kobj.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 9
  %attr.i = getelementptr inbounds %struct.property, ptr %oldprop, i32 0, i32 5
  tail call void @sysfs_remove_bin_file(ptr noundef %kobj.i, ptr noundef %attr.i) #5
  %1 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr.i, align 4
  tail call void @kfree(ptr noundef %2) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call = tail call i32 @__of_add_property_sysfs(ptr noundef %np, ptr noundef %newprop)
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__of_attach_node_sysfs(ptr noundef %np) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_kset to i32))
  %0 = load ptr, ptr @of_kset, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 9
  %kset = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 9, i32 3
  %1 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %kset, align 4
  %parent1 = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 6
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %kobj4 = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2
  %call = tail call fastcc ptr @safe_name(ptr noundef %kobj4, ptr noundef nonnull @.str.3)
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %kobj6 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 9
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %4 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %full_name, align 4
  %call.i = tail call ptr @strrchr(ptr noundef %5, i32 noundef 47) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %cond.i = select i1 %tobool.not.i, ptr %5, ptr %add.ptr.i
  %call8 = tail call fastcc ptr @safe_name(ptr noundef %kobj6, ptr noundef %cond.i)
  %6 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent1, align 4
  %kobj10 = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 9
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then3
  %name.0 = phi ptr [ %call8, %if.else ], [ %call, %if.then3 ]
  %parent.0 = phi ptr [ %kobj10, %if.else ], [ null, %if.then3 ]
  %tobool12.not = icmp eq ptr %name.0, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %call16 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj, ptr noundef %parent.0, ptr noundef nonnull @.str.4, ptr noundef nonnull %name.0) #5
  tail call void @kfree(ptr noundef nonnull %name.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %properties = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 4
  %8 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %8)
  %pp.039 = load ptr, ptr %properties, align 4
  %cmp.not40 = icmp eq ptr %pp.039, null
  br i1 %cmp.not40, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end19.for.body_crit_edge
  %pp.041 = phi ptr [ %pp.0, %for.body.for.body_crit_edge ], [ %pp.039, %if.end19.for.body_crit_edge ]
  %call20 = tail call i32 @__of_add_property_sysfs(ptr noundef %np, ptr noundef nonnull %pp.041)
  %next = getelementptr inbounds %struct.property, ptr %pp.041, i32 0, i32 3
  %9 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %9)
  %pp.0 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %pp.0, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end19.for.end_crit_edge
  %call21 = tail call ptr @of_node_get(ptr noundef %np) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__of_detach_node_sysfs(ptr noundef %np) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %np, null
  br i1 %tobool.not.i, label %entry.do.body4_crit_edge, label %of_node_is_initialized.exit

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

of_node_is_initialized.exit:                      ; preds = %entry
  %state_initialized.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %state_initialized.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %state_initialized.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not, label %of_node_is_initialized.exit.do.body4_crit_edge, label %do.end9, !prof !30

of_node_is_initialized.exit.do.body4_crit_edge:   ; preds = %of_node_is_initialized.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

do.body4:                                         ; preds = %of_node_is_initialized.exit.do.body4_crit_edge, %entry.do.body4_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/of/kobj.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 153, 0\0A.popsection", ""() #5, !srcloc !31
  unreachable

do.end9:                                          ; preds = %of_node_is_initialized.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_kset to i32))
  %1 = load ptr, ptr @of_kset, align 4
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %do.end9.cleanup_crit_edge, label %of_node_is_attached.exit

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

of_node_is_attached.exit:                         ; preds = %do.end9
  %2 = ptrtoint ptr %state_initialized.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i25 = load i8, ptr %state_initialized.i, align 4
  %3 = and i8 %bf.load.i25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool14.not = icmp eq i8 %3, 0
  br i1 %tobool14.not, label %of_node_is_attached.exit.if.end16_crit_edge, label %if.then15

of_node_is_attached.exit.if.end16_crit_edge:      ; preds = %of_node_is_attached.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then15:                                        ; preds = %of_node_is_attached.exit
  %properties = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 4
  %4 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %4)
  %pp.030 = load ptr, ptr %properties, align 4
  %cmp.not31 = icmp eq ptr %pp.030, null
  br i1 %cmp.not31, label %if.then15.for.end_crit_edge, label %for.body.lr.ph

if.then15.for.end_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then15
  %kobj.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pp.032 = phi ptr [ %pp.030, %for.body.lr.ph ], [ %pp.0, %for.body.for.body_crit_edge ]
  %attr.i = getelementptr inbounds %struct.property, ptr %pp.032, i32 0, i32 5
  tail call void @sysfs_remove_bin_file(ptr noundef %kobj.i, ptr noundef %attr.i) #5
  %5 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr.i, align 4
  tail call void @kfree(ptr noundef %6) #5
  %next = getelementptr inbounds %struct.property, ptr %pp.032, i32 0, i32 3
  %7 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %7)
  %pp.0 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %pp.0, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then15.for.end_crit_edge
  %kobj = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 9
  tail call void @kobject_del(ptr noundef %kobj) #5
  br label %if.end16

if.end16:                                         ; preds = %for.end, %of_node_is_attached.exit.if.end16_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %np) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end9.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_find_and_get_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @of_node_ktype, !1, !"of_node_ktype", i1 false, i1 false}
!1 = !{!"../drivers/of/kobj.c", i32 27, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/of/kobj.c", i32 68, i32 34}
!4 = !{ptr @__of_add_property_sysfs.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/of/kobj.c", i32 76, i32 2}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/of/kobj.c", i32 83, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/of/kobj.c", i32 128, i32 36}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/of/kobj.c", i32 137, i32 38}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/of/kobj.c", i32 51, i32 32}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/of/kobj.c", i32 57, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @safe_name._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @safe_name._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2152375579, i64 2152376061, i64 2152375616, i64 2152375672, i64 2152375706, i64 2152375730, i64 2152375771, i64 2152375792, i64 2152375820, i64 2152375854}
