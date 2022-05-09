; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/intel_th/sth.c_pt.bc'
source_filename = "../drivers/hwtracing/intel_th/sth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.intel_th_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.intel_th_device = type { %struct.device, ptr, ptr, i32, i32, i32, i8, %struct.intel_th_output, [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.intel_th_output = type { i32, i32, i32, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sth_device = type { ptr, ptr, i32, ptr, %struct.stm_data, i32 }
%struct.stm_data = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.intel_th_channel = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32 }

@__initcall__kmod_intel_th_sth__229_257_intel_th_sth_driver_init6 = internal global ptr @intel_th_sth_driver_init, section ".initcall6.init", align 4
@intel_th_sth_driver = internal global { %struct.intel_th_driver, [56 x i8] } { %struct.intel_th_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @intel_th_sth_probe, ptr @intel_th_sth_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__exitcall_intel_th_sth_driver_exit = internal global ptr @intel_th_sth_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file230 = internal constant [58 x i8] c"intel_th_sth.file=drivers/hwtracing/intel_th/intel_th_sth\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [28 x i8] c"intel_th_sth.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [70 x i8] c"intel_th_sth.description=Intel(R) Trace Hub Software Trace Hub driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [70 x i8] c"intel_th_sth.author=Alexander Shishkin <alexander.shishkin@intel.com>\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sth\00", [28 x i8] zeroinitializer }, align 32
@intel_th_sth_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm_register_device failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel_th_sth_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/hwtracing/intel_th/sth.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@intel_th_sth_probe._entry_ptr = internal global ptr @intel_th_sth_probe._entry, section ".printk_index", align 4
@intel_th_sw_init.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intel_th_sth\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intel_th_sw_init\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"sw_start: %x sw_end: %x masters: %x nchannels: %x\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"intel_th_sth_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 246, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 250, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 230, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [36 x i8] c"../drivers/hwtracing/intel_th/sth.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 179, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_intel_th_sth_driver_exit, ptr @__initcall__kmod_intel_th_sth__229_257_intel_th_sth_driver_init6, ptr @intel_th_sth_driver_exit, ptr @intel_th_sth_probe._entry, ptr @intel_th_sth_probe._entry_ptr, ptr @intel_th_sth_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_sth_driver to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_sth_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_sth_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @intel_th_driver_register(ptr noundef nonnull @intel_th_sth_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_sth_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @intel_th_driver_unregister(ptr noundef nonnull @intel_th_sth_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @intel_th_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intel_th_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_sth_probe(ptr noundef %thdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_resources.i = getelementptr inbounds %struct.intel_th_device, ptr %thdev, i32 0, i32 3
  %0 = ptrtoint ptr %num_resources.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_resources.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.not.i = icmp eq i32 %1, 0
  br i1 %cmp3.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %resource.i = getelementptr inbounds %struct.intel_th_device, ptr %thdev, i32 0, i32 2
  %2 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr %struct.resource, ptr %3, i32 %i.05.i, i32 3
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i.i)
  %cmp1.i = icmp eq i32 %and.i.i, 512
  br i1 %cmp1.i, label %intel_th_device_get_resource.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

intel_th_device_get_resource.exit:                ; preds = %for.body.i
  %arrayidx.le.i = getelementptr %struct.resource, ptr %3, i32 %i.05.i
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %intel_th_device_get_resource.exit.cleanup_crit_edge, label %if.end

intel_th_device_get_resource.exit.cleanup_crit_edge: ; preds = %intel_th_device_get_resource.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %intel_th_device_get_resource.exit
  %6 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.le.i, align 4
  %end.i = getelementptr %struct.resource, ptr %3, i32 %i.05.i, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %call3 = tail call ptr @devm_ioremap(ptr noundef %thdev, i32 noundef %7, i32 noundef %add.i) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %num_resources.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_resources.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3.not.i77 = icmp eq i32 %11, 0
  br i1 %cmp3.not.i77, label %if.end6.cleanup_crit_edge, label %for.body.lr.ph.i79

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i79:                               ; preds = %if.end6
  %12 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resource.i, align 4
  br label %for.body.i85

for.body.i85:                                     ; preds = %for.inc.i92.for.body.i85_crit_edge, %for.body.lr.ph.i79
  %i.05.i80 = phi i32 [ 0, %for.body.lr.ph.i79 ], [ %inc.i90, %for.inc.i92.for.body.i85_crit_edge ]
  %num.addr.04.i81 = phi i32 [ 1, %for.body.lr.ph.i79 ], [ %num.addr.1.i89, %for.inc.i92.for.body.i85_crit_edge ]
  %flags.i.i82 = getelementptr %struct.resource, ptr %13, i32 %i.05.i80, i32 3
  %14 = ptrtoint ptr %flags.i.i82 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i82, align 4
  %and.i.i83 = and i32 %15, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i.i83)
  %cmp1.i84 = icmp eq i32 %and.i.i83, 512
  br i1 %cmp1.i84, label %land.lhs.true.i88, label %for.body.i85.for.inc.i92_crit_edge

for.body.i85.for.inc.i92_crit_edge:               ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i92

land.lhs.true.i88:                                ; preds = %for.body.i85
  %dec.i86 = add i32 %num.addr.04.i81, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.addr.04.i81)
  %tobool.not.i87 = icmp eq i32 %num.addr.04.i81, 0
  br i1 %tobool.not.i87, label %intel_th_device_get_resource.exit96, label %land.lhs.true.i88.for.inc.i92_crit_edge

land.lhs.true.i88.for.inc.i92_crit_edge:          ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i92

for.inc.i92:                                      ; preds = %land.lhs.true.i88.for.inc.i92_crit_edge, %for.body.i85.for.inc.i92_crit_edge
  %num.addr.1.i89 = phi i32 [ %dec.i86, %land.lhs.true.i88.for.inc.i92_crit_edge ], [ %num.addr.04.i81, %for.body.i85.for.inc.i92_crit_edge ]
  %inc.i90 = add nuw i32 %i.05.i80, 1
  %exitcond.not.i91 = icmp eq i32 %inc.i90, %11
  br i1 %exitcond.not.i91, label %for.inc.i92.cleanup_crit_edge, label %for.inc.i92.for.body.i85_crit_edge

for.inc.i92.for.body.i85_crit_edge:               ; preds = %for.inc.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i85

for.inc.i92.cleanup_crit_edge:                    ; preds = %for.inc.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

intel_th_device_get_resource.exit96:              ; preds = %land.lhs.true.i88
  %arrayidx.le.i93 = getelementptr %struct.resource, ptr %13, i32 %i.05.i80
  %tobool8.not = icmp eq ptr %arrayidx.le.i93, null
  br i1 %tobool8.not, label %intel_th_device_get_resource.exit96.cleanup_crit_edge, label %if.end10

intel_th_device_get_resource.exit96.cleanup_crit_edge: ; preds = %intel_th_device_get_resource.exit96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %intel_th_device_get_resource.exit96
  %16 = ptrtoint ptr %arrayidx.le.i93 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.le.i93, align 4
  %end.i97 = getelementptr %struct.resource, ptr %13, i32 %i.05.i80, i32 1
  %18 = ptrtoint ptr %end.i97 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.i97, align 4
  %sub.i98 = sub i32 1, %17
  %add.i99 = add i32 %sub.i98, %19
  %call13 = tail call ptr @devm_ioremap(ptr noundef %thdev, i32 noundef %17, i32 noundef %add.i99) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %thdev, i32 noundef 68, i32 noundef 3520) #6
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %dev21 = getelementptr inbounds %struct.sth_device, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %thdev, ptr %dev21, align 4
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call3, ptr %call.i, align 4
  %channels23 = getelementptr inbounds %struct.sth_device, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %channels23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call13, ptr %channels23, align 4
  %23 = ptrtoint ptr %arrayidx.le.i93 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.le.i93, align 4
  %channels_phys = getelementptr inbounds %struct.sth_device, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %channels_phys to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %channels_phys, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i100 = icmp eq ptr %27, null
  br i1 %tobool.not.i100, label %if.end.i, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %thdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %thdev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end20.dev_name.exit_crit_edge
  %retval.0.i101 = phi ptr [ %29, %if.end.i ], [ %27, %if.end20.dev_name.exit_crit_edge ]
  %stm = getelementptr inbounds %struct.sth_device, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %stm to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %retval.0.i101, ptr %stm, align 4
  %packet = getelementptr inbounds %struct.sth_device, ptr %call.i, i32 0, i32 4, i32 7
  %31 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sth_stm_packet, ptr %packet, align 4
  %mmio_addr = getelementptr inbounds %struct.sth_device, ptr %call.i, i32 0, i32 4, i32 8
  %32 = ptrtoint ptr %mmio_addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sth_stm_mmio_addr, ptr %mmio_addr, align 4
  %sw_mmiosz = getelementptr inbounds %struct.sth_device, ptr %call.i, i32 0, i32 4, i32 5
  %33 = ptrtoint ptr %sw_mmiosz to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 64, ptr %sw_mmiosz, align 4
  %link = getelementptr inbounds %struct.sth_device, ptr %call.i, i32 0, i32 4, i32 9
  %34 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @sth_stm_link, ptr %link, align 4
  %add.ptr.i = getelementptr i8, ptr %call3, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !36
  %36 = lshr i32 %35, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %sw_nchannels.i = getelementptr inbounds %struct.sth_device, ptr %call.i, i32 0, i32 4, i32 4
  %37 = ptrtoint ptr %sw_nchannels.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %sw_nchannels.i, align 4
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !36
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %and4.i = and i32 %41, 65535
  %sw_start.i = getelementptr inbounds %struct.sth_device, ptr %call.i, i32 0, i32 4, i32 2
  %42 = ptrtoint ptr %sw_start.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and4.i, ptr %sw_start.i, align 4
  %shr.i = lshr i32 %41, 16
  %sw_end.i = getelementptr inbounds %struct.sth_device, ptr %call.i, i32 0, i32 4, i32 3
  %43 = ptrtoint ptr %sw_end.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr.i, ptr %sw_end.i, align 4
  %sub.i102 = sub nsw i32 %shr.i, %and4.i
  %sw_nmasters.i = getelementptr inbounds %struct.sth_device, ptr %call.i, i32 0, i32 5
  %44 = ptrtoint ptr %sw_nmasters.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub.i102, ptr %sw_nmasters.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_th_sw_init.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_th_sth_probe, %if.then.i)) #6
          to label %intel_th_sw_init.exit [label %if.then.i], !srcloc !38

if.then.i:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev21, align 4
  %47 = ptrtoint ptr %sw_start.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sw_start.i, align 4
  %49 = ptrtoint ptr %sw_end.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sw_end.i, align 4
  %51 = ptrtoint ptr %sw_nmasters.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sw_nmasters.i, align 4
  %53 = ptrtoint ptr %sw_nchannels.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sw_nchannels.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intel_th_sw_init.__UNIQUE_ID_ddebug228, ptr noundef %46, ptr noundef nonnull @.str.8, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54) #6
  br label %intel_th_sw_init.exit

intel_th_sw_init.exit:                            ; preds = %if.then.i, %dev_name.exit
  %call35 = tail call i32 @stm_register_device(ptr noundef %thdev, ptr noundef %stm, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %do.end

do.end:                                           ; preds = %intel_th_sw_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %thdev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end38:                                         ; preds = %intel_th_sw_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %55 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %intel_th_device_get_resource.exit96.cleanup_crit_edge, %for.inc.i92.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %intel_th_device_get_resource.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %do.end ], [ 0, %if.end38 ], [ -19, %intel_th_device_get_resource.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %intel_th_device_get_resource.exit96.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ], [ -19, %for.inc.i92.cleanup_crit_edge ], [ -19, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_sth_remove(ptr nocapture noundef readonly %thdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %stm = getelementptr inbounds %struct.sth_device, ptr %1, i32 0, i32 4
  tail call void @stm_unregister_device(ptr noundef %stm) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sth_stm_packet(ptr nocapture noundef readonly %stm_data, i32 noundef %master, i32 noundef %channel, i32 noundef %packet, i32 noundef %flags, i32 noundef %size, ptr nocapture noundef readonly %payload) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %stm_data, i32 -16
  %channels.i = getelementptr i8, ptr %stm_data, i32 -12
  %0 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels.i, align 4
  %sw_start.i = getelementptr i8, ptr %stm_data, i32 8
  %2 = ptrtoint ptr %sw_start.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sw_start.i, align 4
  %sub.i = sub i32 %master, %3
  %sw_nchannels.i = getelementptr i8, ptr %stm_data, i32 16
  %4 = ptrtoint ptr %sw_nchannels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sw_nchannels.i, align 4
  %mul.i = mul i32 %sub.i, %5
  %add.i = add i32 %mul.i, %channel
  %6 = tail call i32 @llvm.umin.i32(i32 %size, i32 4)
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 true) #6, !range !39
  %sub.i.i.op.i = xor i32 %7, 31
  %cond11 = shl nuw i32 1, %sub.i.i.op.i
  %8 = zext i32 %packet to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %packet, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 6, label %entry.sw.bb12_crit_edge
    i32 5, label %entry.sw.bb14_crit_edge
    i32 3, label %sw.bb19
    i32 1, label %sw.bb24
    i32 2, label %sw.bb29
    i32 0, label %sw.bb35
  ]

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb, %entry.sw.bb12_crit_edge
  %reg.0 = phi i32 [ 16, %entry.sw.bb12_crit_edge ], [ 20, %sw.bb ]
  br label %sw.bb14

sw.bb14:                                          ; preds = %sw.bb12, %entry.sw.bb14_crit_edge
  %reg.1 = phi i32 [ 8, %entry.sw.bb14_crit_edge ], [ %reg.0, %sw.bb12 ]
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add16 = add nuw nsw i32 %reg.1, 4
  %spec.select = select i1 %tobool.not, i32 %reg.1, i32 %add16
  %9 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %payload, align 1
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %add.ptr18 = getelementptr i8, ptr %12, i32 %spec.select
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 %10) #6, !srcloc !40
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %13 = tail call i32 @llvm.umin.i32(i32 %cond11, i32 4)
  %MERR = getelementptr %struct.intel_th_channel, ptr %1, i32 %add.i, i32 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %13, label %sw.bb19.cleanup_crit_edge [
    i32 4, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 1, label %sw.bb2.i
  ]

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %payload, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MERR, i32 %17) #6, !srcloc !41
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %payload to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %payload, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %MERR, i16 %20) #6, !srcloc !42
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %payload, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MERR, i8 %22) #6, !srcloc !40
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and25 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %FLAG_TS = getelementptr %struct.intel_th_channel, ptr %1, i32 %add.i, i32 7
  %FLAG = getelementptr %struct.intel_th_channel, ptr %1, i32 %add.i, i32 6
  %outp.0 = select i1 %tobool26.not, ptr %FLAG, ptr %FLAG_TS
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %outp.0, i8 0) #6, !srcloc !40
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  %and30 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %USER_TS = getelementptr %struct.intel_th_channel, ptr %1, i32 %add.i, i32 5
  %USER = getelementptr %struct.intel_th_channel, ptr %1, i32 %add.i, i32 4
  %outp.1 = select i1 %tobool31.not, ptr %USER, ptr %USER_TS
  %23 = zext i32 %cond11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %cond11, label %sw.bb29.cleanup_crit_edge [
    i32 4, label %sw.bb.i83
    i32 2, label %sw.bb1.i84
    i32 1, label %sw.bb2.i85
  ]

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i83:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %payload, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outp.1, i32 %26) #6, !srcloc !41
  br label %cleanup

sw.bb1.i84:                                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %payload to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %payload, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %outp.1, i16 %29) #6, !srcloc !42
  br label %cleanup

sw.bb2.i85:                                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %payload, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %outp.1, i8 %31) #6, !srcloc !40
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.intel_th_channel, ptr %1, i32 %add.i
  %and37 = and i32 %flags, 2
  %spec.select82 = getelementptr i64, ptr %arrayidx.i, i32 %and37
  %and42 = and i32 %flags, 1
  %outp.3 = getelementptr i64, ptr %spec.select82, i32 %and42
  %32 = zext i32 %cond11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %cond11, label %sw.bb35.cleanup_crit_edge [
    i32 4, label %sw.bb.i87
    i32 2, label %sw.bb1.i88
    i32 1, label %sw.bb2.i89
  ]

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i87:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %payload, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %outp.3, i32 %35) #6, !srcloc !41
  br label %cleanup

sw.bb1.i88:                                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %payload to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %payload, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %outp.3, i16 %38) #6, !srcloc !42
  br label %cleanup

sw.bb2.i89:                                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %payload, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %outp.3, i8 %40) #6, !srcloc !40
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2.i89, %sw.bb1.i88, %sw.bb.i87, %sw.bb35.cleanup_crit_edge, %sw.bb2.i85, %sw.bb1.i84, %sw.bb.i83, %sw.bb29.cleanup_crit_edge, %sw.bb24, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %sw.bb19.cleanup_crit_edge, %sw.bb14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %sw.bb24 ], [ %cond11, %sw.bb14 ], [ %13, %sw.bb19.cleanup_crit_edge ], [ 4, %sw.bb.i ], [ 2, %sw.bb1.i ], [ 1, %sw.bb2.i ], [ %cond11, %sw.bb29.cleanup_crit_edge ], [ 4, %sw.bb.i83 ], [ 2, %sw.bb1.i84 ], [ 1, %sw.bb2.i85 ], [ %cond11, %sw.bb35.cleanup_crit_edge ], [ 4, %sw.bb.i87 ], [ 2, %sw.bb1.i88 ], [ 1, %sw.bb2.i89 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sth_stm_mmio_addr(ptr nocapture noundef readonly %stm_data, i32 noundef %master, i32 noundef %channel, i32 noundef %nr_chans) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_start = getelementptr inbounds %struct.stm_data, ptr %stm_data, i32 0, i32 2
  %0 = ptrtoint ptr %sw_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_start, align 4
  %sub = sub i32 %master, %1
  %channels_phys = getelementptr i8, ptr %stm_data, i32 -8
  %2 = ptrtoint ptr %channels_phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channels_phys, align 4
  %sw_nchannels = getelementptr inbounds %struct.stm_data, ptr %stm_data, i32 0, i32 4
  %4 = ptrtoint ptr %sw_nchannels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sw_nchannels, align 4
  %mul = mul i32 %5, %sub
  %add = add i32 %mul, %channel
  %mul2 = shl i32 %add, 6
  %add3 = add i32 %mul2, %3
  %and = and i32 %add3, 4095
  %6 = and i32 %nr_chans, 63
  %7 = or i32 %and, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  %retval.0 = select i1 %8, i32 %add3, i32 0
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sth_stm_link(ptr nocapture noundef readonly %stm_data, i32 noundef %master, i32 noundef %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %stm_data, i32 -4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @intel_th_set_output(ptr noundef %1, i32 noundef %master) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intel_th_set_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stm_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_intel_th_sth__229_257_intel_th_sth_driver_init6, !1, !"__initcall__kmod_intel_th_sth__229_257_intel_th_sth_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/intel_th/sth.c", i32 255, i32 1}
!2 = !{ptr @__exitcall_intel_th_sth_driver_exit, !1, !"__exitcall_intel_th_sth_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file230, !4, !"__UNIQUE_ID_file230", i1 false, i1 false}
!4 = !{!"../drivers/hwtracing/intel_th/sth.c", i32 259, i32 1}
!5 = !{ptr @__UNIQUE_ID_license231, !4, !"__UNIQUE_ID_license231", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description232, !7, !"__UNIQUE_ID_description232", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/intel_th/sth.c", i32 260, i32 1}
!8 = !{ptr @__UNIQUE_ID_author233, !9, !"__UNIQUE_ID_author233", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/intel_th/sth.c", i32 261, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwtracing/intel_th/sth.c", i32 250, i32 11}
!12 = !{ptr @intel_th_sth_driver, !13, !"intel_th_sth_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwtracing/intel_th/sth.c", i32 246, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwtracing/intel_th/sth.c", i32 230, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @intel_th_sth_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @intel_th_sth_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwtracing/intel_th/sth.c", i32 179, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @intel_th_sw_init.__UNIQUE_ID_ddebug228, !23, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 4775185}
!37 = !{i64 2152315534}
!38 = !{i64 2148957316, i64 2148957321, i64 2148957334, i64 2148957378, i64 2148957412, i64 2148957433}
!39 = !{i32 0, i32 33}
!40 = !{i64 4774570}
!41 = !{i64 4774767}
!42 = !{i64 4774147}
