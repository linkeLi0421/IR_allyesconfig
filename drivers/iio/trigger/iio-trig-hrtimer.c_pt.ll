; ModuleID = '/llk/IR_all_yes/drivers/iio/trigger/iio-trig-hrtimer.c_pt.bc'
source_filename = "../drivers/iio/trigger/iio-trig-hrtimer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iio_sw_trigger_type = type { ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.iio_sw_trigger_ops = type { ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iio_hrtimer_info = type { %struct.iio_sw_trigger, %struct.hrtimer, [2 x i32], i64 }
%struct.iio_sw_trigger = type { ptr, ptr, %struct.config_group }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__initcall__kmod_iio_trig_hrtimer__183_195_iio_trig_hrtimer_init6 = internal global ptr @iio_trig_hrtimer_init, section ".initcall6.init", align 4
@iio_trig_hrtimer = internal global { %struct.iio_sw_trigger_type, [40 x i8] } { %struct.iio_sw_trigger_type { ptr @.str, ptr null, ptr @iio_trig_hrtimer_ops, %struct.list_head zeroinitializer, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_iio_trig_hrtimer_exit = internal global ptr @iio_trig_hrtimer_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [70 x i8] c"iio_trig_hrtimer.author=Marten Svanfeldt <marten@intuitiveaerial.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [64 x i8] c"iio_trig_hrtimer.author=Daniel Baluta <daniel.baluta@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [76 x i8] c"iio_trig_hrtimer.description=Periodic hrtimer trigger for the IIO subsystem\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [59 x i8] c"iio_trig_hrtimer.file=drivers/iio/trigger/iio-trig-hrtimer\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [32 x i8] c"iio_trig_hrtimer.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hrtimer\00", [24 x i8] zeroinitializer }, align 32
@iio_trig_hrtimer_ops = internal constant { %struct.iio_sw_trigger_ops, [24 x i8] } { %struct.iio_sw_trigger_ops { ptr @iio_trig_hrtimer_probe, ptr @iio_trig_hrtimer_remove }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@iio_hrtimer_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @iio_trig_hrtimer_set_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@iio_hrtimer_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_hrtimer_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_hrtimer_type = internal constant { %struct.config_item_type, [44 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iio_hrtimer_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @iio_hrtimer_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@iio_hrtimer_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_sampling_frequency, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_sampling_frequency = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_hrtimer_show_sampling_frequency, ptr @iio_hrtimer_store_sampling_frequency }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sampling_frequency\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"iio_trig_hrtimer\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 189, i32 35 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 190, i32 10 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"iio_trig_hrtimer_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 184, i32 40 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 138, i32 51 }
@___asan_gen_.15 = private unnamed_addr constant [24 x i8] c"iio_hrtimer_trigger_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 125, i32 37 }
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"iio_hrtimer_attr_groups\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 93, i32 38 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"iio_hrtimer_type\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 32, i32 38 }
@___asan_gen_.24 = private unnamed_addr constant [23 x i8] c"iio_hrtimer_attr_group\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 89, i32 37 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"iio_hrtimer_attrs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 84, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant [28 x i8] c"dev_attr_sampling_frequency\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [42 x i8] c"../drivers/iio/trigger/iio-trig-hrtimer.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 80, i32 8 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_iio_trig_hrtimer_exit, ptr @__initcall__kmod_iio_trig_hrtimer__183_195_iio_trig_hrtimer_init6, ptr @iio_trig_hrtimer_exit, ptr @iio_trig_hrtimer, ptr @.str, ptr @iio_trig_hrtimer_ops, ptr @.str.1, ptr @iio_hrtimer_trigger_ops, ptr @iio_hrtimer_attr_groups, ptr @iio_hrtimer_type, ptr @iio_hrtimer_attr_group, ptr @iio_hrtimer_attrs, ptr @dev_attr_sampling_frequency, ptr @.str.2], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_trig_hrtimer to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_trig_hrtimer_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_hrtimer_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_hrtimer_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_hrtimer_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_hrtimer_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_hrtimer_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sampling_frequency to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_trig_hrtimer_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iio_register_sw_trigger_type(ptr noundef nonnull @iio_trig_hrtimer) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iio_trig_hrtimer_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iio_unregister_sw_trigger_type(ptr noundef nonnull @iio_trig_hrtimer) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_unregister_sw_trigger_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_register_sw_trigger_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iio_trig_hrtimer_probe(ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 152) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr (ptr, ptr, ...) @iio_trigger_alloc(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef %name) #5
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %call7.i.i, align 8
  %tobool5.not = icmp eq ptr %call2, null
  br i1 %tobool5.not, label %if.end.err_free_trig_info_crit_edge, label %if.end7

if.end.err_free_trig_info_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_trig_info

if.end7:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call2, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call7.i.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @iio_hrtimer_trigger_ops, ptr %4, align 8
  %6 = load ptr, ptr %call7.i.i, align 8
  %groups = getelementptr inbounds %struct.iio_trigger, ptr %6, i32 0, i32 4, i32 34
  %7 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @iio_hrtimer_attr_groups, ptr %groups, align 8
  %timer = getelementptr inbounds %struct.iio_hrtimer_info, ptr %call7.i.i, i32 0, i32 1
  tail call void @hrtimer_init(ptr noundef %timer, i32 noundef 1, i32 noundef 9) #5
  %function = getelementptr inbounds %struct.iio_hrtimer_info, ptr %call7.i.i, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @iio_hrtimer_trig_handler, ptr %function, align 8
  %sampling_frequency = getelementptr inbounds %struct.iio_hrtimer_info, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %sampling_frequency to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %sampling_frequency, align 8
  %period = getelementptr inbounds %struct.iio_hrtimer_info, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %period to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 10000000, ptr %period, align 8
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %call19 = tail call i32 @__iio_trigger_register(ptr noundef %12, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %err_free_trigger

if.end22:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %group.i = getelementptr inbounds %struct.iio_sw_trigger, ptr %call7.i.i, i32 0, i32 2
  tail call void @config_group_init_type_name(ptr noundef %group.i, ptr noundef %name, ptr noundef nonnull @iio_hrtimer_type) #5
  br label %cleanup

err_free_trigger:                                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  tail call void @iio_trigger_free(ptr noundef %14) #5
  %phi.cast = inttoptr i32 %call19 to ptr
  br label %err_free_trig_info

err_free_trig_info:                               ; preds = %err_free_trigger, %if.end.err_free_trig_info_crit_edge
  %ret.0 = phi ptr [ %phi.cast, %err_free_trigger ], [ inttoptr (i32 -12 to ptr), %if.end.err_free_trig_info_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free_trig_info, %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %err_free_trig_info ], [ %call7.i.i, %if.end22 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_trig_hrtimer_remove(ptr nocapture noundef readonly %swt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %swt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %swt, align 4
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @iio_trigger_unregister(ptr noundef %1) #5
  %timer = getelementptr inbounds %struct.iio_hrtimer_info, ptr %3, i32 0, i32 1
  %call2 = tail call i32 @hrtimer_cancel(ptr noundef %timer) #5
  %4 = ptrtoint ptr %swt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %swt, align 4
  tail call void @iio_trigger_free(ptr noundef %5) #5
  tail call void @kfree(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_hrtimer_trig_handler(ptr noundef %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -88
  %period = getelementptr i8, ptr %timer, i32 56
  %0 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %period, align 8
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %5() #5
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i, i64 noundef %1) #5
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  tail call void @iio_trigger_poll(ptr noundef %7) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_trig_hrtimer_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %timer = getelementptr inbounds %struct.iio_hrtimer_info, ptr %1, i32 0, i32 1
  br i1 %state, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %period = getelementptr inbounds %struct.iio_hrtimer_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %period, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %timer, i64 noundef %3, i64 noundef 0, i32 noundef 9) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @hrtimer_cancel(ptr noundef %timer) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_hrtimer_show_sampling_frequency(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sampling_frequency = getelementptr inbounds %struct.iio_hrtimer_info, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @iio_format_value(ptr noundef %buf, i32 noundef 2, i32 noundef 2, ptr noundef %sampling_frequency) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_hrtimer_store_sampling_frequency(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %integer = alloca i32, align 4
  %fract = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %integer) #5
  %2 = ptrtoint ptr %integer to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %integer, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fract) #5
  %3 = ptrtoint ptr %fract to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %fract, align 4, !annotation !42
  %call2 = call i32 @iio_str_to_fixpoint(ptr noundef %buf, i32 noundef 100, ptr noundef nonnull %integer, ptr noundef nonnull %fract) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %integer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %integer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %fract to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fract, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %conv307 = zext i32 %7 to i64
  %conv6308 = zext i32 %5 to i64
  %mul = mul nuw nsw i64 %conv6308, 1000
  %add = add nuw nsw i64 %mul, %conv307
  %8 = add nsw i64 %add, -4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967295, i64 %8)
  %9 = icmp ult i64 %8, -4294967295
  br i1 %9, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %sampling_frequency = getelementptr inbounds %struct.iio_hrtimer_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %sampling_frequency to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %sampling_frequency, align 8
  %mul13 = mul i32 %7, 1000
  %arrayidx15 = getelementptr %struct.iio_hrtimer_info, ptr %1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul13, ptr %arrayidx15, align 4
  %conv16 = trunc i64 %add to i32
  %12 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv16, i64 1000000000000) #9, !srcloc !43
  %asmresult1.i = extractvalue { i64, i64 } %12, 1
  %period205 = getelementptr inbounds %struct.iio_hrtimer_info, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %period205 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %asmresult1.i, ptr %period205, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end12 ], [ %call2, %entry.cleanup_crit_edge ], [ -34, %lor.lhs.false.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fract) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %integer) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_format_value(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_str_to_fixpoint(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_iio_trig_hrtimer__183_195_iio_trig_hrtimer_init6, !1, !"__initcall__kmod_iio_trig_hrtimer__183_195_iio_trig_hrtimer_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 195, i32 1}
!2 = !{ptr @__exitcall_iio_trig_hrtimer_exit, !1, !"__exitcall_iio_trig_hrtimer_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 197, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 198, i32 1}
!7 = !{ptr @__UNIQUE_ID_description186, !8, !"__UNIQUE_ID_description186", i1 false, i1 false}
!8 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 199, i32 1}
!9 = !{ptr @__UNIQUE_ID_file187, !10, !"__UNIQUE_ID_file187", i1 false, i1 false}
!10 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 200, i32 1}
!11 = !{ptr @__UNIQUE_ID_license188, !10, !"__UNIQUE_ID_license188", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 190, i32 10}
!14 = !{ptr @iio_trig_hrtimer, !15, !"iio_trig_hrtimer", i1 false, i1 false}
!15 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 189, i32 35}
!16 = !{ptr @iio_trig_hrtimer_ops, !17, !"iio_trig_hrtimer_ops", i1 false, i1 false}
!17 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 184, i32 40}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 138, i32 51}
!20 = !{ptr @iio_hrtimer_trigger_ops, !21, !"iio_hrtimer_trigger_ops", i1 false, i1 false}
!21 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 125, i32 37}
!22 = !{ptr @iio_hrtimer_attr_groups, !23, !"iio_hrtimer_attr_groups", i1 false, i1 false}
!23 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 93, i32 38}
!24 = !{ptr @iio_hrtimer_attr_group, !25, !"iio_hrtimer_attr_group", i1 false, i1 false}
!25 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 89, i32 37}
!26 = !{ptr @iio_hrtimer_attrs, !27, !"iio_hrtimer_attrs", i1 false, i1 false}
!27 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 84, i32 26}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 80, i32 8}
!30 = !{ptr @dev_attr_sampling_frequency, !29, !"dev_attr_sampling_frequency", i1 false, i1 false}
!31 = !{ptr @iio_hrtimer_type, !32, !"iio_hrtimer_type", i1 false, i1 false}
!32 = !{!"../drivers/iio/trigger/iio-trig-hrtimer.c", i32 32, i32 38}
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
!43 = !{i64 2148603566, i64 2148603846, i64 2148604180, i64 2148604514}
