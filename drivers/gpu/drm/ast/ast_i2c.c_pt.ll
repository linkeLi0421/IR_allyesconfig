; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/ast/ast_i2c.c_pt.bc'
source_filename = "../drivers/gpu/drm/ast/ast_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.ast_i2c_chan = type { %struct.i2c_adapter, ptr, %struct.i2c_algo_bit_data }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AST i2c bit bus\00", [16 x i8] zeroinitializer }, align 32
@ast_i2c_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[drm] *ERROR* Failed to register bit i2c\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ast_i2c_create\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/ast/ast_i2c.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ast_i2c_create._entry_ptr = internal global ptr @ast_i2c_create._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ast_i2c_release\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 128, i32 4 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 140, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [33 x i8] c"../drivers/gpu/drm/ast/ast_i2c.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 144, i32 8 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @ast_i2c_create._entry, ptr @ast_i2c_create._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_i2c_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ast_i2c_create(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1408) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %call7.i.i, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %class, align 4
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %parent, align 8
  %dev5 = getelementptr inbounds %struct.ast_i2c_chan, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev5, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 12
  %8 = call ptr @memcpy(ptr %name, ptr @.str, i32 16)
  %bit = getelementptr inbounds %struct.ast_i2c_chan, ptr %call7.i.i, i32 0, i32 2
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bit, ptr %algo_data, align 4
  %udelay = getelementptr inbounds %struct.ast_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 7
  %10 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 20, ptr %udelay, align 8
  %timeout = getelementptr inbounds %struct.ast_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 8
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %timeout, align 4
  %12 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %bit, align 4
  %setsda = getelementptr inbounds %struct.ast_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %setsda to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ast_i2c_setsda, ptr %setsda, align 8
  %setscl = getelementptr inbounds %struct.ast_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %setscl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ast_i2c_setscl, ptr %setscl, align 4
  %getsda = getelementptr inbounds %struct.ast_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %getsda to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ast_i2c_getsda, ptr %getsda, align 8
  %getscl = getelementptr inbounds %struct.ast_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %getscl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ast_i2c_getscl, ptr %getscl, align 4
  %call18 = tail call i32 @i2c_bit_add_bus(ptr noundef nonnull %call7.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.1) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call23 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %dev, ptr noundef nonnull @ast_i2c_release, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  %call. = select i1 %tobool24.not, ptr %call7.i.i, ptr null
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ %call., %if.end22 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_i2c_setsda(ptr nocapture noundef readonly %i2c_priv, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ast_i2c_chan, ptr %i2c_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %data.tr = trunc i32 %data to i8
  %2 = shl i8 %data.tr, 2
  %3 = and i8 %2, 4
  %conv = xor i8 %3, 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -73, i8 noundef zeroext -15, i8 noundef zeroext %conv) #4
  %call1 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -73, i8 noundef zeroext 4) #4
  call void @__sanitizer_cov_trace_cmp1(i8 %conv, i8 %call1)
  %cmp4 = icmp eq i8 %conv, %call1
  %inc = add nuw nsw i32 %i.09, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 65536
  %or.cond = select i1 %cmp4, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_i2c_setscl(ptr nocapture noundef readonly %i2c_priv, i32 noundef %clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ast_i2c_chan, ptr %i2c_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %2 = trunc i32 %clock to i8
  %3 = and i8 %2, 1
  %4 = xor i8 %3, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -73, i8 noundef zeroext -12, i8 noundef zeroext %4) #4
  %call1 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -73, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %call1)
  %cmp4 = icmp eq i8 %4, %call1
  %inc = add nuw nsw i32 %i.09, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 65536
  %or.cond = select i1 %cmp4, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_i2c_getsda(ptr nocapture noundef readonly %i2c_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ast_i2c_chan, ptr %i2c_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -73, i8 noundef zeroext 32) #4
  %2 = lshr i8 %call1, 5
  %3 = and i8 %2, 1
  %and = zext i8 %3 to i32
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %val.0 = phi i32 [ %and, %entry ], [ %val.1, %do.cond.do.body_crit_edge ]
  %count.0 = phi i32 [ 0, %entry ], [ %inc13, %do.cond.do.body_crit_edge ]
  %pass.0 = phi i32 [ 0, %entry ], [ %pass.1, %do.cond.do.body_crit_edge ]
  %call2 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -73, i8 noundef zeroext 32) #4
  %4 = lshr i8 %call2, 5
  %5 = and i8 %4, 1
  %and5 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %and5)
  %cmp = icmp eq i32 %val.0, %and5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %inc = add nuw nsw i32 %pass.0, 1
  br label %do.cond

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -73, i8 noundef zeroext 32) #4
  %6 = lshr i8 %call7, 5
  %7 = and i8 %6, 1
  %and10 = zext i8 %7 to i32
  br label %do.cond

do.cond:                                          ; preds = %if.else, %if.then
  %val.1 = phi i32 [ %val.0, %if.then ], [ %and10, %if.else ]
  %pass.1 = phi i32 [ %inc, %if.then ], [ 0, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %pass.1)
  %cmp11 = icmp ult i32 %pass.1, 5
  %inc13 = add nuw nsw i32 %count.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %count.0)
  %cmp14 = icmp ult i32 %count.0, 65536
  %or.cond = select i1 %cmp11, i1 %cmp14, i1 false
  br i1 %or.cond, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  %and16 = and i32 %val.1, 1
  ret i32 %and16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_i2c_getscl(ptr nocapture noundef readonly %i2c_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ast_i2c_chan, ptr %i2c_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -73, i8 noundef zeroext 16) #4
  %2 = lshr i8 %call1, 4
  %3 = and i8 %2, 1
  %and = zext i8 %3 to i32
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %val.0 = phi i32 [ %and, %entry ], [ %val.1, %do.cond.do.body_crit_edge ]
  %count.0 = phi i32 [ 0, %entry ], [ %inc13, %do.cond.do.body_crit_edge ]
  %pass.0 = phi i32 [ 0, %entry ], [ %pass.1, %do.cond.do.body_crit_edge ]
  %call2 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -73, i8 noundef zeroext 16) #4
  %4 = lshr i8 %call2, 4
  %5 = and i8 %4, 1
  %and5 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %and5)
  %cmp = icmp eq i32 %val.0, %and5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %inc = add nuw nsw i32 %pass.0, 1
  br label %do.cond

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -73, i8 noundef zeroext 16) #4
  %6 = lshr i8 %call7, 4
  %7 = and i8 %6, 1
  %and10 = zext i8 %7 to i32
  br label %do.cond

do.cond:                                          ; preds = %if.else, %if.then
  %val.1 = phi i32 [ %val.0, %if.then ], [ %and10, %if.else ]
  %pass.1 = phi i32 [ %inc, %if.then ], [ 0, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %pass.1)
  %cmp11 = icmp ult i32 %pass.1, 5
  %inc13 = add nuw nsw i32 %count.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %count.0)
  %cmp14 = icmp ult i32 %count.0, 65536
  %or.cond = select i1 %cmp11, i1 %cmp14, i1 false
  br i1 %or.cond, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  %and16 = and i32 %val.1, 1
  ret i32 %and16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_i2c_release(ptr nocapture noundef readnone %dev, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @i2c_del_adapter(ptr noundef %res) #4
  tail call void @kfree(ptr noundef %res) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_set_index_reg_mask(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ast_get_index_reg_mask(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/ast/ast_i2c.c", i32 128, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/ast/ast_i2c.c", i32 140, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ast_i2c_create._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ast_i2c_create._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/ast/ast_i2c.c", i32 144, i32 8}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
