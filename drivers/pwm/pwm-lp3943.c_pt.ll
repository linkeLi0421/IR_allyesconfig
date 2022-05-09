; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-lp3943.c_pt.bc'
source_filename = "../drivers/pwm/pwm-lp3943.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.lp3943 = type { ptr, ptr, ptr, ptr, i32 }
%struct.lp3943_pwm = type { %struct.pwm_chip, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.lp3943_pwm_map = type { ptr, i32 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.lp3943_reg_cfg = type { i8, i8, i8 }

@__initcall__kmod_pwm_lp3943__292_297_lp3943_pwm_driver_init6 = internal global ptr @lp3943_pwm_driver_init, section ".initcall6.init", align 4
@lp3943_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lp3943_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lp3943_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lp3943_pwm_driver_exit = internal global ptr @lp3943_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [41 x i8] c"pwm_lp3943.description=LP3943 PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [37 x i8] c"pwm_lp3943.alias=platform:lp3943-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [27 x i8] c"pwm_lp3943.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [39 x i8] c"pwm_lp3943.file=drivers/pwm/pwm-lp3943\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [23 x i8] c"pwm_lp3943.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lp3943-pwm\00", [21 x i8] zeroinitializer }, align 32
@lp3943_pwm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp3943-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lp3943_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @lp3943_pwm_request, ptr @lp3943_pwm_free, ptr null, ptr null, ptr null, ptr null, ptr @lp3943_pwm_config, ptr null, ptr @lp3943_pwm_enable, ptr @lp3943_pwm_disable }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,pwm0\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,pwm1\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"lp3943_pwm_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 290, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 293, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"lp3943_pwm_of_match\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 283, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"lp3943_pwm_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 185, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 197, i32 39 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [28 x i8] c"../drivers/pwm/pwm-lp3943.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 197, i32 50 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_lp3943_pwm_driver_exit, ptr @__initcall__kmod_pwm_lp3943__292_297_lp3943_pwm_driver_init6, ptr @lp3943_pwm_driver_exit, ptr @lp3943_pwm_driver, ptr @.str, ptr @lp3943_pwm_of_match, ptr @lp3943_pwm_ops, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3943_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3943_pwm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3943_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3943_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lp3943_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp3943_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @lp3943_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3943_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %proplen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdata = getelementptr inbounds %struct.lp3943, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %pdata3 = getelementptr inbounds %struct.lp3943_pwm, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %pdata3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pdata3, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen.i) #6
  %9 = ptrtoint ptr %proplen.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %proplen.i, align 4, !annotation !35
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then6.lp3943_pwm_parse_dt.exit.thread_crit_edge, label %if.end.i

if.then6.lp3943_pwm_parse_dt.exit.thread_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_parse_dt.exit.thread

if.end.i:                                         ; preds = %if.then6
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool1.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not.i, label %if.end.i.lp3943_pwm_parse_dt.exit.thread_crit_edge, label %for.body.preheader.i

if.end.i.lp3943_pwm_parse_dt.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_parse_dt.exit.thread

for.body.preheader.i:                             ; preds = %if.end.i
  %call4.i = call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef nonnull %proplen.i) #6
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.end7.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.preheader.i
  %10 = ptrtoint ptr %proplen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %proplen.i, align 4
  %div61.i = lshr i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp8.i = icmp ult i32 %11, 4
  br i1 %cmp8.i, label %if.end7.i.for.inc.i_crit_edge, label %devm_kcalloc.exit.i

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

devm_kcalloc.exit.i:                              ; preds = %if.end7.i
  %12 = and i32 %11, -4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %12, i32 noundef 3520) #6
  %tobool12.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool12.not.i, label %devm_kcalloc.exit.i.lp3943_pwm_parse_dt.exit.thread_crit_edge, label %if.end14.i

devm_kcalloc.exit.i.lp3943_pwm_parse_dt.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_parse_dt.exit.thread

if.end14.i:                                       ; preds = %devm_kcalloc.exit.i
  %call.i62.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef nonnull %call5.i.i.i, i32 noundef %div61.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i62.i)
  %tobool17.not.i = icmp sgt i32 %call.i62.i, -1
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end14.i.lp3943_pwm_parse_dt.exit.thread_crit_edge

if.end14.i.lp3943_pwm_parse_dt.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_parse_dt.exit.thread

if.end19.i:                                       ; preds = %if.end14.i
  %call.i63.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool21.not.i = icmp eq ptr %call.i63.i, null
  br i1 %tobool21.not.i, label %if.end19.i.lp3943_pwm_parse_dt.exit.thread_crit_edge, label %if.end23.i

if.end19.i.lp3943_pwm_parse_dt.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_parse_dt.exit.thread

if.end23.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call.i63.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i.i, ptr %call.i63.i, align 4
  %num_outputs25.i = getelementptr inbounds %struct.lp3943_pwm_map, ptr %call.i63.i, i32 0, i32 1
  %14 = ptrtoint ptr %num_outputs25.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div61.i, ptr %num_outputs25.i, align 4
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i63.i, ptr %call.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end23.i, %if.end7.i.for.inc.i_crit_edge, %for.body.preheader.i.for.inc.i_crit_edge
  %cmp28.i = phi i1 [ true, %if.end7.i.for.inc.i_crit_edge ], [ true, %for.body.preheader.i.for.inc.i_crit_edge ], [ false, %if.end23.i ]
  %call4.1.i = call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull %proplen.i) #6
  %tobool5.not.1.i = icmp eq ptr %call4.1.i, null
  br i1 %tobool5.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end7.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end7.1.i:                                      ; preds = %for.inc.i
  %16 = ptrtoint ptr %proplen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %proplen.i, align 4
  %div61.1.i = lshr i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp8.1.i = icmp ult i32 %17, 4
  br i1 %cmp8.1.i, label %if.end7.1.i.for.inc.1.i_crit_edge, label %devm_kcalloc.exit.1.i

if.end7.1.i.for.inc.1.i_crit_edge:                ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

devm_kcalloc.exit.1.i:                            ; preds = %if.end7.1.i
  %18 = and i32 %17, -4
  %call5.i.i.1.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %18, i32 noundef 3520) #6
  %tobool12.not.1.i = icmp eq ptr %call5.i.i.1.i, null
  br i1 %tobool12.not.1.i, label %devm_kcalloc.exit.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge, label %if.end14.1.i

devm_kcalloc.exit.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_parse_dt.exit.thread

if.end14.1.i:                                     ; preds = %devm_kcalloc.exit.1.i
  %call.i62.1.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull %call5.i.i.1.i, i32 noundef %div61.1.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i62.1.i)
  %tobool17.not.1.i = icmp sgt i32 %call.i62.1.i, -1
  br i1 %tobool17.not.1.i, label %if.end19.1.i, label %if.end14.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge

if.end14.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge: ; preds = %if.end14.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_parse_dt.exit.thread

if.end19.1.i:                                     ; preds = %if.end14.1.i
  %call.i63.1.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool21.not.1.i = icmp eq ptr %call.i63.1.i, null
  br i1 %tobool21.not.1.i, label %if.end19.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge, label %for.inc.1.thread.i

if.end19.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge: ; preds = %if.end19.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_parse_dt.exit.thread

for.inc.1.thread.i:                               ; preds = %if.end19.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call.i63.1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i.1.i, ptr %call.i63.1.i, align 4
  %num_outputs25.1.i = getelementptr inbounds %struct.lp3943_pwm_map, ptr %call.i63.1.i, i32 0, i32 1
  %20 = ptrtoint ptr %num_outputs25.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div61.1.i, ptr %num_outputs25.1.i, align 4
  %arrayidx26.1.i = getelementptr [2 x ptr], ptr %call.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i63.1.i, ptr %arrayidx26.1.i, align 4
  br label %lp3943_pwm_parse_dt.exit

for.inc.1.i:                                      ; preds = %if.end7.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  br i1 %cmp28.i, label %for.inc.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge, label %for.inc.1.i.lp3943_pwm_parse_dt.exit_crit_edge

for.inc.1.i.lp3943_pwm_parse_dt.exit_crit_edge:   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_parse_dt.exit

for.inc.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_parse_dt.exit.thread

lp3943_pwm_parse_dt.exit.thread:                  ; preds = %for.inc.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge, %if.end19.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge, %if.end14.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge, %devm_kcalloc.exit.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge, %if.end19.i.lp3943_pwm_parse_dt.exit.thread_crit_edge, %if.end14.i.lp3943_pwm_parse_dt.exit.thread_crit_edge, %devm_kcalloc.exit.i.lp3943_pwm_parse_dt.exit.thread_crit_edge, %if.end.i.lp3943_pwm_parse_dt.exit.thread_crit_edge, %if.then6.lp3943_pwm_parse_dt.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %devm_kcalloc.exit.i.lp3943_pwm_parse_dt.exit.thread_crit_edge ], [ -12, %if.end19.i.lp3943_pwm_parse_dt.exit.thread_crit_edge ], [ -12, %devm_kcalloc.exit.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge ], [ -12, %if.end19.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge ], [ %call.i62.1.i, %if.end14.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge ], [ %call.i62.i, %if.end14.i.lp3943_pwm_parse_dt.exit.thread_crit_edge ], [ -61, %for.inc.1.i.lp3943_pwm_parse_dt.exit.thread_crit_edge ], [ -12, %if.end.i.lp3943_pwm_parse_dt.exit.thread_crit_edge ], [ -22, %if.then6.lp3943_pwm_parse_dt.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen.i) #6
  br label %cleanup

lp3943_pwm_parse_dt.exit:                         ; preds = %for.inc.1.i.lp3943_pwm_parse_dt.exit_crit_edge, %for.inc.1.thread.i
  %22 = ptrtoint ptr %pdata3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %pdata3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen.i) #6
  br label %if.end12

if.end12:                                         ; preds = %lp3943_pwm_parse_dt.exit, %if.end.if.end12_crit_edge
  %lp394313 = getelementptr inbounds %struct.lp3943_pwm, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %lp394313 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %3, ptr %lp394313, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @lp3943_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %npwm, align 4
  %call20 = call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lp3943_pwm_parse_dt.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end12 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %lp3943_pwm_parse_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3943_pwm_request(ptr nocapture noundef readonly %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %pdata1.i = getelementptr inbounds %struct.lp3943_pwm, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1.i, align 4
  %lp39432.i = getelementptr inbounds %struct.lp3943_pwm, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %lp39432.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lp39432.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 8) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr [2 x ptr], ptr %3, i32 0, i32 %1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call7.i.i.i, align 8
  %12 = load ptr, ptr %arrayidx.i, align 4
  %num_outputs.i = getelementptr inbounds %struct.lp3943_pwm_map, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %num_outputs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_outputs.i, align 4
  %num_outputs7.i = getelementptr inbounds %struct.lp3943_pwm_map, ptr %call7.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %num_outputs7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %num_outputs7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp31.i = icmp sgt i32 %14, 0
  br i1 %cmp31.i, label %for.body.lr.ph.i, label %if.end.i.lp3943_pwm_request_map.exit_crit_edge

if.end.i.lp3943_pwm_request_map.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_request_map.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %pin_used.i = getelementptr inbounds %struct.lp3943, ptr %5, i32 0, i32 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %16 = ptrtoint ptr %num_outputs7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_outputs7.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %17
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.lp3943_pwm_request_map.exit_crit_edge

for.cond.i.lp3943_pwm_request_map.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_request_map.exit

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i.i, align 8
  %arrayidx10.i = getelementptr i32, ptr %19, i32 %i.032.i
  %20 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx10.i, align 4
  %call11.i = tail call i32 @_test_and_set_bit(i32 noundef %21, ptr noundef %pin_used.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %for.cond.i, label %if.then13.i

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %if.then

lp3943_pwm_request_map.exit:                      ; preds = %for.cond.i.lp3943_pwm_request_map.exit_crit_edge, %if.end.i.lp3943_pwm_request_map.exit_crit_edge
  %cmp.i9 = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i9, label %lp3943_pwm_request_map.exit.if.then_crit_edge, label %if.end

lp3943_pwm_request_map.exit.if.then_crit_edge:    ; preds = %lp3943_pwm_request_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lp3943_pwm_request_map.exit.if.then_crit_edge, %if.then13.i, %entry.if.then_crit_edge
  %retval.0.i12 = phi ptr [ %call7.i.i.i, %lp3943_pwm_request_map.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.then13.i ]
  %22 = ptrtoint ptr %retval.0.i12 to i32
  br label %cleanup

if.end:                                           ; preds = %lp3943_pwm_request_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @pwm_set_chip_data(ptr noundef %pwm, ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %22, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp3943_pwm_free(ptr nocapture noundef readonly %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %num_outputs.i = getelementptr inbounds %struct.lp3943_pwm_map, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %num_outputs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_outputs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.i = icmp sgt i32 %1, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %entry.lp3943_pwm_free_map.exit_crit_edge

entry.lp3943_pwm_free_map.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_free_map.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %lp39431.i = getelementptr inbounds %struct.lp3943_pwm, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %lp39431.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lp39431.i, align 4
  %pin_used.i = getelementptr inbounds %struct.lp3943, ptr %3, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call1, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %i.07.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  tail call void @_clear_bit(i32 noundef %7, ptr noundef %pin_used.i) #6
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %8 = ptrtoint ptr %num_outputs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_outputs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.lp3943_pwm_free_map.exit_crit_edge

for.body.i.lp3943_pwm_free_map.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_free_map.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

lp3943_pwm_free_map.exit:                         ; preds = %for.body.i.lp3943_pwm_free_map.exit_crit_edge, %entry.lp3943_pwm_free_map.exit_crit_edge
  tail call void @kfree(ptr noundef %call1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3943_pwm_config(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, i32 noundef %duty_ns, i32 noundef %period_ns) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lp39431 = getelementptr inbounds %struct.lp3943_pwm, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %lp39431 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp39431, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %2 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %.29 = select i1 %cmp, i8 2, i8 4
  %4 = tail call i32 @llvm.smax.i32(i32 %period_ns, i32 6250)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 1600000)
  %div30 = udiv i32 %5, 6250
  %6 = trunc i32 %div30 to i8
  %conv = add i8 %6, -1
  %call9 = tail call i32 @lp3943_write_byte(ptr noundef %1, i8 noundef zeroext %.29, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %. = select i1 %cmp, i8 3, i8 5
  %mul = mul i32 %duty_ns, 255
  %div12 = sdiv i32 %mul, %5
  %conv13 = trunc i32 %div12 to i8
  %call14 = tail call i32 @lp3943_write_byte(ptr noundef %1, i8 noundef zeroext %., i8 noundef zeroext %conv13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end11 ], [ %call9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3943_pwm_enable(ptr nocapture noundef readonly %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %lp39431.i = getelementptr inbounds %struct.lp3943_pwm, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %lp39431.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp39431.i, align 4
  %mux_cfg.i = getelementptr inbounds %struct.lp3943, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mux_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux_cfg.i, align 4
  %num_outputs.i = getelementptr inbounds %struct.lp3943_pwm_map, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %num_outputs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_outputs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.i = icmp sgt i32 %5, 0
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %entry.lp3943_pwm_set_mode.exit_crit_edge

entry.lp3943_pwm_set_mode.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_set_mode.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %6 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %conv.i = select i1 %cmp, i32 2, i32 3
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %8 = ptrtoint ptr %num_outputs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_outputs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.lp3943_pwm_set_mode.exit_crit_edge

for.cond.i.lp3943_pwm_set_mode.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_set_mode.exit

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call1, align 4
  %arrayidx.i = getelementptr i32, ptr %11, i32 %i.021.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.lp3943_reg_cfg, ptr %3, i32 %13
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.i, align 1
  %mask.i = getelementptr %struct.lp3943_reg_cfg, ptr %3, i32 %13, i32 1
  %16 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mask.i, align 1
  %shift.i = getelementptr %struct.lp3943_reg_cfg, ptr %3, i32 %13, i32 2
  %18 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %shift.i, align 1
  %conv5.i = zext i8 %19 to i32
  %shl.i = shl i32 %conv.i, %conv5.i
  %conv6.i = trunc i32 %shl.i to i8
  %call.i = tail call i32 @lp3943_update_bits(ptr noundef %1, i8 noundef zeroext %15, i8 noundef zeroext %17, i8 noundef zeroext %conv6.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.lp3943_pwm_set_mode.exit_crit_edge

for.body.i.lp3943_pwm_set_mode.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_set_mode.exit

lp3943_pwm_set_mode.exit:                         ; preds = %for.body.i.lp3943_pwm_set_mode.exit_crit_edge, %for.cond.i.lp3943_pwm_set_mode.exit_crit_edge, %entry.lp3943_pwm_set_mode.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.lp3943_pwm_set_mode.exit_crit_edge ], [ %call.i, %for.body.i.lp3943_pwm_set_mode.exit_crit_edge ], [ 0, %for.cond.i.lp3943_pwm_set_mode.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp3943_pwm_disable(ptr nocapture noundef readonly %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %lp39431.i = getelementptr inbounds %struct.lp3943_pwm, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %lp39431.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp39431.i, align 4
  %mux_cfg.i = getelementptr inbounds %struct.lp3943, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mux_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux_cfg.i, align 4
  %num_outputs.i = getelementptr inbounds %struct.lp3943_pwm_map, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %num_outputs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_outputs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.i = icmp sgt i32 %5, 0
  br i1 %cmp20.i, label %entry.for.body.i_crit_edge, label %entry.lp3943_pwm_set_mode.exit_crit_edge

entry.lp3943_pwm_set_mode.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_set_mode.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %6 = ptrtoint ptr %num_outputs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_outputs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.lp3943_pwm_set_mode.exit_crit_edge

for.cond.i.lp3943_pwm_set_mode.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_set_mode.exit

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call1, align 4
  %arrayidx.i = getelementptr i32, ptr %9, i32 %i.021.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.lp3943_reg_cfg, ptr %3, i32 %11
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.i, align 1
  %mask.i = getelementptr %struct.lp3943_reg_cfg, ptr %3, i32 %11, i32 1
  %14 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mask.i, align 1
  %call.i = tail call i32 @lp3943_update_bits(ptr noundef %1, i8 noundef zeroext %13, i8 noundef zeroext %15, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.lp3943_pwm_set_mode.exit_crit_edge

for.body.i.lp3943_pwm_set_mode.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3943_pwm_set_mode.exit

lp3943_pwm_set_mode.exit:                         ; preds = %for.body.i.lp3943_pwm_set_mode.exit_crit_edge, %for.cond.i.lp3943_pwm_set_mode.exit_crit_edge, %entry.lp3943_pwm_set_mode.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp3943_write_byte(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp3943_update_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_pwm_lp3943__292_297_lp3943_pwm_driver_init6, !1, !"__initcall__kmod_pwm_lp3943__292_297_lp3943_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-lp3943.c", i32 297, i32 1}
!2 = !{ptr @__exitcall_lp3943_pwm_driver_exit, !1, !"__exitcall_lp3943_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-lp3943.c", i32 299, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias294, !6, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-lp3943.c", i32 300, i32 1}
!7 = !{ptr @__UNIQUE_ID_author295, !8, !"__UNIQUE_ID_author295", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-lp3943.c", i32 301, i32 1}
!9 = !{ptr @__UNIQUE_ID_file296, !10, !"__UNIQUE_ID_file296", i1 false, i1 false}
!10 = !{!"../drivers/pwm/pwm-lp3943.c", i32 302, i32 1}
!11 = !{ptr @__UNIQUE_ID_license297, !10, !"__UNIQUE_ID_license297", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-lp3943.c", i32 293, i32 11}
!14 = !{ptr @lp3943_pwm_driver, !15, !"lp3943_pwm_driver", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-lp3943.c", i32 290, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-lp3943.c", i32 197, i32 39}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-lp3943.c", i32 197, i32 50}
!20 = distinct !{null, !21, !"name", i1 false, i1 false}
!21 = !{!"../drivers/pwm/pwm-lp3943.c", i32 197, i32 28}
!22 = !{ptr @lp3943_pwm_ops, !23, !"lp3943_pwm_ops", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-lp3943.c", i32 185, i32 29}
!24 = !{ptr @lp3943_pwm_of_match, !25, !"lp3943_pwm_of_match", i1 false, i1 false}
!25 = !{!"../drivers/pwm/pwm-lp3943.c", i32 283, i32 34}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"auto-init"}
