; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-rtd119x.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rtd119x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rtd119x_rtc = type { ptr, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_rtd119x__228_239_rtd119x_rtc_driver_init6 = internal global ptr @rtd119x_rtc_driver_init, section ".initcall6.init", align 4
@rtd119x_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rtd119x_rtc_probe, ptr @rtd119x_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rtd119x_rtc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtd1295-rtc\00", [20 x i8] zeroinitializer }, align 32
@rtd119x_rtc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rtd1295-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@rtd119x_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @rtd119x_rtc_read_time, ptr @rtd119x_rtc_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rtd119x_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register rtc device\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtd119x_rtc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-rtd119x.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtd119x_rtc_probe._entry_ptr = internal global ptr @rtd119x_rtc_probe._entry, section ".printk_index", align 4
@rtd119x_rtc_read_time.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 26, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc_rtd119x\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtd119x_rtc_read_time\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: needed %i tries\0A\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"rtd119x_rtc_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 231, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 235, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"rtd119x_rtc_dt_ids\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 161, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 207, i32 54 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"rtd119x_rtc_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 156, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 210, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [29 x i8] c"../drivers/rtc/rtc-rtd119x.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 106, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__initcall__kmod_rtc_rtd119x__228_239_rtd119x_rtc_driver_init6, ptr @rtd119x_rtc_probe._entry, ptr @rtd119x_rtc_probe._entry_ptr, ptr @rtd119x_rtc_driver, ptr @.str, ptr @rtd119x_rtc_dt_ids, ptr @.str.1, ptr @rtd119x_rtc_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtd119x_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtd119x_rtc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtd119x_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtd119x_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd119x_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rtd119x_rtc_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd119x_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %base_year = getelementptr inbounds %struct.rtd119x_rtc, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %base_year to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2014, ptr %base_year, align 4
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call9 = tail call ptr @of_clk_get(ptr noundef %5, i32 noundef 0) #4
  %clk = getelementptr inbounds %struct.rtd119x_rtc, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %clk, align 4
  %cmp.i81 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call.i82 = tail call i32 @clk_prepare(ptr noundef %call9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool.not.i = icmp eq i32 %call.i82, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.if.then19_crit_edge

if.end15.if.then19_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

if.end.i:                                         ; preds = %if.end15
  %call1.i = tail call i32 @clk_enable(ptr noundef %call9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end21, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call9) #4
  br label %if.then19

if.then19:                                        ; preds = %if.then3.i, %if.end15.if.then19_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i82, %if.end15.if.then19_crit_edge ]
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %9) #4
  br label %cleanup

if.end21:                                         ; preds = %if.end.i
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 40
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool24.not = icmp sgt i32 %12, -1
  br i1 %tobool24.not, label %if.then25, label %if.end21.if.end37_crit_edge

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %add.ptr27 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 -2147483648) #4, !srcloc !35
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 48
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !34
  %20 = or i32 %19, 1073741824
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %add.ptr3.i = getelementptr i8, ptr %22, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %20) #4, !srcloc !35
  %23 = and i32 %19, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %16, align 4
  %add.ptr5.i = getelementptr i8, ptr %25, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %23) #4, !srcloc !35
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %add.ptr30 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #4, !srcloc !35
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %add.ptr32 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #4, !srcloc !35
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %add.ptr34 = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 0) #4, !srcloc !35
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %add.ptr36 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #4, !srcloc !35
  br label %if.end37

if.end37:                                         ; preds = %if.then25, %if.end21.if.end37_crit_edge
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %add.ptr.i85 = getelementptr i8, ptr %37, i32 44
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #4, !srcloc !34
  %.mask.i = and i32 %38, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1509949440, i32 %.mask.i)
  %cmp.i86 = icmp eq i32 %.mask.i, 1509949440
  br i1 %cmp.i86, label %if.end37.rtd119x_rtc_set_enabled.exit_crit_edge, label %if.end.i87

if.end37.rtd119x_rtc_set_enabled.exit_crit_edge:  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtd119x_rtc_set_enabled.exit

if.end.i87:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %35, align 4
  %add.ptr4.i = getelementptr i8, ptr %40, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 1509949440) #4, !srcloc !35
  br label %rtd119x_rtc_set_enabled.exit

rtd119x_rtc_set_enabled.exit:                     ; preds = %if.end.i87, %if.end37.rtd119x_rtc_set_enabled.exit_crit_edge
  %call40 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @rtd119x_rtc_ops, ptr noundef null) #4
  %rtcdev = getelementptr inbounds %struct.rtd119x_rtc, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %rtcdev to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call40, ptr %rtcdev, align 4
  %cmp.i88 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %do.end, label %rtd119x_rtc_set_enabled.exit.cleanup_crit_edge

rtd119x_rtc_set_enabled.exit.cleanup_crit_edge:   ; preds = %rtd119x_rtc_set_enabled.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %rtd119x_rtc_set_enabled.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %42 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %43) #4
  tail call void @clk_unprepare(ptr noundef %43) #4
  %44 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %45) #4
  %46 = ptrtoint ptr %rtcdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rtcdev, align 4
  %48 = ptrtoint ptr %47 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %rtd119x_rtc_set_enabled.exit.cleanup_crit_edge, %if.then19, %if.then12, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then4 ], [ %7, %if.then12 ], [ %retval.0.i.ph, %if.then19 ], [ %48, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %rtd119x_rtc_set_enabled.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd119x_rtc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !34
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr6.i = getelementptr i8, ptr %6, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #4, !srcloc !35
  %clk = getelementptr inbounds %struct.rtd119x_rtc, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #4
  tail call void @clk_unprepare(ptr noundef %8) #4
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %10) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd119x_rtc_read_time(ptr noundef %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !34
  %5 = lshr i32 %4, 25
  %and = and i32 %5, 63
  %6 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %tm, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #4, !srcloc !34
  %10 = lshr i32 %9, 24
  %and7 = and i32 %10, 63
  %11 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and7, ptr %tm_min, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr10 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #4, !srcloc !34
  %15 = lshr i32 %14, 24
  %and13 = and i32 %15, 31
  %16 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and13, ptr %tm_hour, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr16 = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #4, !srcloc !34
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr22 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #4, !srcloc !34
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !34
  %26 = lshr i32 %25, 25
  %and31 = and i32 %26, 63
  %27 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and31, i32 %28)
  %cmp = icmp eq i32 %and31, %28
  br i1 %cmp, label %while.end, label %if.end

if.end:                                           ; preds = %entry
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !34
  %32 = lshr i32 %31, 25
  %and.1 = and i32 %32, 63
  %33 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.1, ptr %tm, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %add.ptr4.1 = getelementptr i8, ptr %35, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.1) #4, !srcloc !34
  %37 = lshr i32 %36, 24
  %and7.1 = and i32 %37, 63
  %38 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and7.1, ptr %tm_min, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr10.1 = getelementptr i8, ptr %40, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.1) #4, !srcloc !34
  %42 = lshr i32 %41, 24
  %and13.1 = and i32 %42, 31
  %43 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and13.1, ptr %tm_hour, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %add.ptr16.1 = getelementptr i8, ptr %45, i32 12
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.1) #4, !srcloc !34
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %add.ptr22.1 = getelementptr i8, ptr %48, i32 16
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.1) #4, !srcloc !34
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #4, !srcloc !34
  %53 = lshr i32 %52, 25
  %and31.1 = and i32 %53, 63
  %54 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and31.1, i32 %55)
  %cmp.1 = icmp eq i32 %and31.1, %55
  br i1 %cmp.1, label %if.end.do.body_crit_edge, label %if.end.1

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end.1:                                         ; preds = %if.end
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #4, !srcloc !34
  %59 = lshr i32 %58, 25
  %and.2 = and i32 %59, 63
  %60 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and.2, ptr %tm, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %add.ptr4.2 = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.2) #4, !srcloc !34
  %64 = lshr i32 %63, 24
  %and7.2 = and i32 %64, 63
  %65 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and7.2, ptr %tm_min, align 4
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %add.ptr10.2 = getelementptr i8, ptr %67, i32 8
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.2) #4, !srcloc !34
  %69 = lshr i32 %68, 24
  %and13.2 = and i32 %69, 31
  %70 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and13.2, ptr %tm_hour, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %add.ptr16.2 = getelementptr i8, ptr %72, i32 12
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.2) #4, !srcloc !34
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %add.ptr22.2 = getelementptr i8, ptr %75, i32 16
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.2) #4, !srcloc !34
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #4, !srcloc !34
  %80 = lshr i32 %79, 25
  %and31.2 = and i32 %80, 63
  %81 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and31.2, i32 %82)
  %cmp.2 = icmp eq i32 %and31.2, %82
  br i1 %cmp.2, label %if.end.1.do.body_crit_edge, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.1.do.body_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

while.end:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %83 = lshr i32 %19, 24
  %84 = lshr i32 %22, 16
  %shl.le = and i32 %84, 32512
  %or.le = or i32 %shl.le, %83
  br label %if.end46

do.body:                                          ; preds = %if.end.1.do.body_crit_edge, %if.end.do.body_crit_edge
  %.lcssa134.ph = phi i32 [ %73, %if.end.1.do.body_crit_edge ], [ %46, %if.end.do.body_crit_edge ]
  %.lcssa.ph = phi i32 [ %76, %if.end.1.do.body_crit_edge ], [ %49, %if.end.do.body_crit_edge ]
  %inc.lcssa.ph = phi i32 [ 3, %if.end.1.do.body_crit_edge ], [ 2, %if.end.do.body_crit_edge ]
  %85 = lshr i32 %.lcssa134.ph, 24
  %86 = lshr i32 %.lcssa.ph, 16
  %shl.le140 = and i32 %86, 32512
  %or.le141 = or i32 %shl.le140, %85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtd119x_rtc_read_time.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtd119x_rtc_read_time, %if.end46)) #4
          to label %if.then44 [label %if.end46], !srcloc !37

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtd119x_rtc_read_time.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef %inc.lcssa.ph) #4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.body, %while.end
  %or.le144 = phi i32 [ %or.le141, %do.body ], [ %or.le141, %if.then44 ], [ %or.le, %while.end ]
  %base_year = getelementptr inbounds %struct.rtd119x_rtc, ptr %1, i32 0, i32 3
  %87 = ptrtoint ptr %base_year to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %base_year, align 4
  %rem.i.i116 = and i32 %88, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i116)
  %tobool.not.i.i117 = icmp eq i32 %rem.i.i116, 0
  %rem1.i.i118 = urem i32 %88, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i.i118)
  %tobool2.not.i.i119 = icmp ne i32 %rem1.i.i118, 0
  %or.cond.i.not.i120 = and i1 %tobool.not.i.i117, %tobool2.not.i.i119
  %rem3.i.i121 = urem i32 %88, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i.i121)
  %tobool4.not.i.i122 = icmp eq i32 %rem3.i.i121, 0
  %or.cond.i123 = or i1 %tobool4.not.i.i122, %or.cond.i.not.i120
  %89 = select i1 %or.cond.i123, i32 366, i32 365
  call void @__sanitizer_cov_trace_cmp4(i32 %or.le144, i32 %89)
  %cmp49.not124 = icmp ult i32 %or.le144, %89
  br i1 %cmp49.not124, label %if.end46.while.end53_crit_edge, label %if.end46.while.body50_crit_edge

if.end46.while.body50_crit_edge:                  ; preds = %if.end46
  br label %while.body50

if.end46.while.end53_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end53

while.body50:                                     ; preds = %while.body50.while.body50_crit_edge, %if.end46.while.body50_crit_edge
  %90 = phi i32 [ %91, %while.body50.while.body50_crit_edge ], [ %89, %if.end46.while.body50_crit_edge ]
  %day.0126 = phi i32 [ %sub, %while.body50.while.body50_crit_edge ], [ %or.le144, %if.end46.while.body50_crit_edge ]
  %year.0125 = phi i32 [ %inc52, %while.body50.while.body50_crit_edge ], [ %88, %if.end46.while.body50_crit_edge ]
  %sub = sub i32 %day.0126, %90
  %inc52 = add i32 %year.0125, 1
  %rem.i.i = and i32 %inc52, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  %rem1.i.i = urem i32 %inc52, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i.i)
  %tobool2.not.i.i = icmp ne i32 %rem1.i.i, 0
  %or.cond.i.not.i = and i1 %tobool.not.i.i, %tobool2.not.i.i
  %rem3.i.i = urem i32 %inc52, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem3.i.i, 0
  %or.cond.i = or i1 %tobool4.not.i.i, %or.cond.i.not.i
  %91 = select i1 %or.cond.i, i32 366, i32 365
  %cmp49.not = icmp slt i32 %sub, %91
  br i1 %cmp49.not, label %while.body50.while.end53_crit_edge, label %while.body50.while.body50_crit_edge

while.body50.while.body50_crit_edge:              ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body50

while.body50.while.end53_crit_edge:               ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end53

while.end53:                                      ; preds = %while.body50.while.end53_crit_edge, %if.end46.while.end53_crit_edge
  %year.0.lcssa = phi i32 [ %88, %if.end46.while.end53_crit_edge ], [ %inc52, %while.body50.while.end53_crit_edge ]
  %day.0.lcssa = phi i32 [ %or.le144, %if.end46.while.end53_crit_edge ], [ %sub, %while.body50.while.end53_crit_edge ]
  %sub54 = add i32 %year.0.lcssa, -1900
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %92 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub54, ptr %tm_year, align 4
  %tm_yday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %93 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %day.0.lcssa, ptr %tm_yday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %94 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %tm_mon, align 4
  %call57128 = tail call i32 @rtc_month_days(i32 noundef 0, i32 noundef %year.0.lcssa) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %day.0.lcssa, i32 %call57128)
  %cmp58.not129 = icmp slt i32 %day.0.lcssa, %call57128
  br i1 %cmp58.not129, label %while.end53.while.end65_crit_edge, label %while.end53.while.body59_crit_edge

while.end53.while.body59_crit_edge:               ; preds = %while.end53
  br label %while.body59

while.end53.while.end65_crit_edge:                ; preds = %while.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end65

while.body59:                                     ; preds = %while.body59.while.body59_crit_edge, %while.end53.while.body59_crit_edge
  %day.1130 = phi i32 [ %sub62, %while.body59.while.body59_crit_edge ], [ %day.0.lcssa, %while.end53.while.body59_crit_edge ]
  %95 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tm_mon, align 4
  %call61 = tail call i32 @rtc_month_days(i32 noundef %96, i32 noundef %year.0.lcssa) #4
  %sub62 = sub i32 %day.1130, %call61
  %97 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tm_mon, align 4
  %inc64 = add i32 %98, 1
  store i32 %inc64, ptr %tm_mon, align 4
  %call57 = tail call i32 @rtc_month_days(i32 noundef %inc64, i32 noundef %year.0.lcssa) #4
  %cmp58.not = icmp slt i32 %sub62, %call57
  br i1 %cmp58.not, label %while.body59.while.end65_crit_edge, label %while.body59.while.body59_crit_edge

while.body59.while.body59_crit_edge:              ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body59

while.body59.while.end65_crit_edge:               ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end65

while.end65:                                      ; preds = %while.body59.while.end65_crit_edge, %while.end53.while.end65_crit_edge
  %day.1.lcssa = phi i32 [ %day.0.lcssa, %while.end53.while.end65_crit_edge ], [ %sub62, %while.body59.while.end65_crit_edge ]
  %add = add nsw i32 %day.1.lcssa, 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %99 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add, ptr %tm_mday, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end65, %if.end.1.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end65 ], [ -22, %if.end.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd119x_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %2 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_year, align 4
  %add = add i32 %3, 1900
  %base_year = getelementptr inbounds %struct.rtd119x_rtc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base_year to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_year, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp ult i32 %add, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp446 = icmp slt i32 %5, %add
  br i1 %cmp446, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %5, %for.cond.preheader.for.body_crit_edge ]
  %day.047 = phi i32 [ %add6, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %rem.i.i = and i32 %i.048, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  %rem1.i.i = urem i32 %i.048, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i.i)
  %tobool2.not.i.i = icmp ne i32 %rem1.i.i, 0
  %or.cond.i.not.i = and i1 %tobool.not.i.i, %tobool2.not.i.i
  %rem3.i.i = urem i32 %i.048, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem3.i.i, 0
  %or.cond.i = or i1 %tobool4.not.i.i, %or.cond.i.not.i
  %6 = select i1 %or.cond.i, i32 366, i32 365
  %add6 = add i32 %6, %day.047
  %inc = add nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %day.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add6, %for.body.for.end_crit_edge ]
  %tm_yday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %7 = ptrtoint ptr %tm_yday to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_yday, align 4
  %add7 = add i32 %8, %day.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %add7)
  %cmp8 = icmp ugt i32 %add7, 32767
  br i1 %cmp8, label %for.end.cleanup_crit_edge, label %if.end10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %for.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !34
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr6.i = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #4, !srcloc !35
  %14 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm, align 4
  %shl = shl i32 %15, 25
  %and = and i32 %shl, 2113929216
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %and) #4, !srcloc !35
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %18 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_min, align 4
  %and11 = shl i32 %19, 24
  %20 = and i32 %and11, 1056964608
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr13 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %20) #4, !srcloc !35
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %23 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_hour, align 4
  %and14 = shl i32 %24, 24
  %25 = and i32 %and14, 520093696
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr16 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %25) #4, !srcloc !35
  %and17 = shl i32 %add7, 24
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr19 = getelementptr i8, ptr %29, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %and17) #4, !srcloc !35
  %30 = shl nuw nsw i32 %add7, 16
  %31 = and i32 %30, 2130706432
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr22 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %31) #4, !srcloc !35
  %34 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %add.ptr.i45 = getelementptr i8, ptr %37, i32 44
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #4, !srcloc !34
  %.mask.i = and i32 %38, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1509949440, i32 %.mask.i)
  %cmp.i = icmp eq i32 %.mask.i, 1509949440
  br i1 %cmp.i, label %if.end10.cleanup_crit_edge, label %if.end.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %35, align 4
  %add.ptr4.i = getelementptr i8, ptr %40, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 1509949440) #4, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end10.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_month_days(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_rtc_rtd119x__228_239_rtd119x_rtc_driver_init6, !1, !"__initcall__kmod_rtc_rtd119x__228_239_rtd119x_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-rtd119x.c", i32 239, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-rtd119x.c", i32 235, i32 11}
!4 = !{ptr @rtd119x_rtc_driver, !5, !"rtd119x_rtc_driver", i1 false, i1 false}
!5 = !{!"../drivers/rtc/rtc-rtd119x.c", i32 231, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/rtc/rtc-rtd119x.c", i32 207, i32 54}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-rtd119x.c", i32 210, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rtd119x_rtc_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @rtd119x_rtc_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @rtd119x_rtc_ops, !17, !"rtd119x_rtc_ops", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-rtd119x.c", i32 156, i32 35}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-rtd119x.c", i32 106, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rtd119x_rtc_read_time.__UNIQUE_ID_ddebug227, !19, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!23 = !{ptr @rtd119x_rtc_dt_ids, !24, !"rtd119x_rtc_dt_ids", i1 false, i1 false}
!24 = !{!"../drivers/rtc/rtc-rtd119x.c", i32 161, i32 34}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2033187}
!35 = !{i64 2032769}
!36 = !{i64 2153936449}
!37 = !{i64 2148725679, i64 2148725684, i64 2148725697, i64 2148725741, i64 2148725775, i64 2148725796}
