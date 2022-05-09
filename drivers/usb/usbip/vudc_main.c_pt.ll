; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/vudc_main.c_pt.bc'
source_filename = "../drivers/usb/usbip/vudc_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vudc_device = type { ptr, %struct.list_head }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__param_str_num = internal constant [15 x i8] c"usbip_vudc.num\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@vudc_number = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_num = internal constant %struct.kernel_param { ptr @__param_str_num, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @vudc_number } }, section "__param", align 4
@__UNIQUE_ID_numtype241 = internal constant [29 x i8] c"usbip_vudc.parmtype=num:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num242 = internal constant [51 x i8] c"usbip_vudc.parm=num:number of emulated controllers\00", section ".modinfo", align 1
@__initcall__kmod_usbip_vudc__243_89_init6 = internal global ptr @init, section ".initcall6.init", align 4
@vudc_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @vudc_devices, ptr @vudc_devices }, [24 x i8] zeroinitializer }, align 32
@vudc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vudc_probe, ptr @vudc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vudc_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cleanup = internal global ptr @cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description244 = internal constant [53 x i8] c"usbip_vudc.description=USB over IP Device Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author245 = internal constant [67 x i8] c"usbip_vudc.author=Krzysztof Opasiak, Karol Kosik, Igor Kotrasinski\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [45 x i8] c"usbip_vudc.file=drivers/usb/usbip/usbip-vudc\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [23 x i8] c"usbip_vudc.license=GPL\00", section ".modinfo", align 1
@init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013usbip_vudc: %s:%d: Number of emulated UDC must be no less than 1\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/usbip/vudc_main.c\00", [34 x i8] zeroinitializer }, align 32
@init._entry_ptr = internal global ptr @init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbip-vudc\00", [21 x i8] zeroinitializer }, align 32
@vudc_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"vudc_number\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 15, i32 21 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"vudc_devices\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 29, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"vudc_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 20, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 41, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [33 x i8] c"../drivers/usb/usbip/vudc_main.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 24, i32 11 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__UNIQUE_ID_num242, ptr @__UNIQUE_ID_numtype241, ptr @__exitcall_cleanup, ptr @__initcall__kmod_usbip_vudc__243_89_init6, ptr @__param_num, ptr @cleanup, ptr @init._entry, ptr @init._entry_ptr, ptr @vudc_number, ptr @vudc_devices, ptr @vudc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vudc_number to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vudc_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vudc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup41_crit_edge

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup41

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @vudc_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 41) #6
  br label %cleanup41

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vudc_driver, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup41_crit_edge, label %for.cond.preheader

if.end4.cleanup41_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup41

for.cond.preheader:                               ; preds = %if.end4
  %1 = load i32, ptr @vudc_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp965.not = icmp eq i32 %1, 0
  br i1 %cmp965.not, label %for.cond.preheader.cleanup41_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup41_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup41

for.cond:                                         ; preds = %list_add_tail.exit
  %inc = add nuw i32 %i.066, 1
  %2 = load i32, ptr @vudc_number, align 4
  %cmp9 = icmp ult i32 %inc, %2
  br i1 %cmp9, label %for.cond.for.body_crit_edge, label %for.cond.cleanup41_crit_edge

for.cond.cleanup41_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup41

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.066 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call10 = tail call ptr @alloc_vudc_device(i32 noundef %i.066) #3
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %for.body.cleanup_crit_edge, label %if.end13

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %3 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call10, align 4
  %call14 = tail call i32 @platform_device_add(ptr noundef %4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @put_vudc_device(ptr noundef nonnull %call10) #3
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %dev_entry = getelementptr inbounds %struct.vudc_device, ptr %call10, i32 0, i32 1
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @vudc_devices, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dev_entry, ptr noundef %5, ptr noundef nonnull @vudc_devices) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.list_add_tail.exit_crit_edge

if.end17.list_add_tail.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  store ptr %dev_entry, ptr getelementptr inbounds (%struct.list_head, ptr @vudc_devices, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %dev_entry to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vudc_devices, ptr %dev_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.vudc_device, ptr %call10, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %dev_entry, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end17.list_add_tail.exit_crit_edge
  %9 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call10, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %tobool20.not = icmp eq ptr %12, null
  br i1 %tobool20.not, label %list_add_tail.exit.cleanup_crit_edge, label %for.cond

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %if.then16, %for.body.cleanup_crit_edge
  %retval1.1 = phi i32 [ %call14, %if.then16 ], [ -22, %list_add_tail.exit.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  %13 = load ptr, ptr @vudc_devices, align 4
  %cmp30.not67 = icmp eq ptr %13, @vudc_devices
  br i1 %cmp30.not67, label %cleanup.for.end40_crit_edge, label %cleanup.for.body31_crit_edge

cleanup.for.body31_crit_edge:                     ; preds = %cleanup
  br label %for.body31

cleanup.for.end40_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40

for.body31:                                       ; preds = %list_del.exit.for.body31_crit_edge, %cleanup.for.body31_crit_edge
  %.pn.in68 = phi ptr [ %.pn, %list_del.exit.for.body31_crit_edge ], [ %13, %cleanup.for.body31_crit_edge ]
  %udc_dev.0 = getelementptr i8, ptr %.pn.in68, i32 -4
  %14 = ptrtoint ptr %.pn.in68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn.in68, align 4
  %call.i.i60 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in68) #3
  br i1 %call.i.i60, label %if.end.i.i61, label %for.body31.list_del.exit_crit_edge

for.body31.list_del.exit_crit_edge:               ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i61:                                     ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in68, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %.pn.in68 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in68, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i61, %for.body31.list_del.exit_crit_edge
  %21 = ptrtoint ptr %.pn.in68 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in68, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in68, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %23 = ptrtoint ptr %udc_dev.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udc_dev.0, align 4
  tail call void @platform_device_del(ptr noundef %24) #3
  tail call void @put_vudc_device(ptr noundef %udc_dev.0) #3
  %cmp30.not = icmp eq ptr %.pn, @vudc_devices
  br i1 %cmp30.not, label %list_del.exit.for.end40_crit_edge, label %list_del.exit.for.body31_crit_edge

list_del.exit.for.body31_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body31

list_del.exit.for.end40_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40

for.end40:                                        ; preds = %list_del.exit.for.end40_crit_edge, %cleanup.for.end40_crit_edge
  tail call void @platform_driver_unregister(ptr noundef nonnull @vudc_driver) #3
  br label %cleanup41

cleanup41:                                        ; preds = %for.end40, %for.cond.cleanup41_crit_edge, %for.cond.preheader.cleanup41_crit_edge, %if.end4.cleanup41_crit_edge, %do.end, %entry.cleanup41_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -19, %entry.cleanup41_crit_edge ], [ %call5, %if.end4.cleanup41_crit_edge ], [ %retval1.1, %for.end40 ], [ %call5, %for.cond.preheader.cleanup41_crit_edge ], [ %call14, %for.cond.cleanup41_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = load ptr, ptr @vudc_devices, align 4
  %cmp.not17 = icmp eq ptr %0, @vudc_devices
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in18 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %udc_dev.0 = getelementptr i8, ptr %.pn.in18, i32 -4
  %1 = ptrtoint ptr %.pn.in18 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in18, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in18) #3
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in18, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %.pn.in18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.pn.in18, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %.pn.in18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in18, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in18, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = ptrtoint ptr %udc_dev.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udc_dev.0, align 4
  tail call void @platform_device_del(ptr noundef %11) #3
  tail call void @put_vudc_device(ptr noundef %udc_dev.0) #3
  %cmp.not = icmp eq ptr %.pn, @vudc_devices
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @platform_driver_unregister(ptr noundef nonnull @vudc_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_vudc_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_vudc_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vudc_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vudc_remove(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !19, !21, !22, !23, !24, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__param_num, !1, !"__param_num", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/vudc_main.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_numtype241, !1, !"__UNIQUE_ID_numtype241", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_num242, !4, !"__UNIQUE_ID_num242", i1 false, i1 false}
!4 = !{!"../drivers/usb/usbip/vudc_main.c", i32 18, i32 1}
!5 = !{ptr @__initcall__kmod_usbip_vudc__243_89_init6, !6, !"__initcall__kmod_usbip_vudc__243_89_init6", i1 false, i1 false}
!6 = !{!"../drivers/usb/usbip/vudc_main.c", i32 89, i32 1}
!7 = !{ptr @__exitcall_cleanup, !8, !"__exitcall_cleanup", i1 false, i1 false}
!8 = !{!"../drivers/usb/usbip/vudc_main.c", i32 106, i32 1}
!9 = !{ptr @__UNIQUE_ID_description244, !10, !"__UNIQUE_ID_description244", i1 false, i1 false}
!10 = !{!"../drivers/usb/usbip/vudc_main.c", i32 108, i32 1}
!11 = !{ptr @__UNIQUE_ID_author245, !12, !"__UNIQUE_ID_author245", i1 false, i1 false}
!12 = !{!"../drivers/usb/usbip/vudc_main.c", i32 109, i32 1}
!13 = !{ptr @__UNIQUE_ID_file246, !14, !"__UNIQUE_ID_file246", i1 false, i1 false}
!14 = !{!"../drivers/usb/usbip/vudc_main.c", i32 110, i32 1}
!15 = !{ptr @__UNIQUE_ID_license247, !14, !"__UNIQUE_ID_license247", i1 false, i1 false}
!16 = !{ptr @__param_str_num, !1, !"__param_str_num", i1 false, i1 false}
!17 = !{ptr @vudc_number, !18, !"vudc_number", i1 false, i1 false}
!18 = !{!"../drivers/usb/usbip/vudc_main.c", i32 15, i32 21}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/usbip/vudc_main.c", i32 41, i32 3}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @vudc_devices, !26, !"vudc_devices", i1 false, i1 false}
!26 = !{!"../drivers/usb/usbip/vudc_main.c", i32 29, i32 25}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/usbip/vudc_main.c", i32 24, i32 11}
!29 = !{ptr @vudc_driver, !30, !"vudc_driver", i1 false, i1 false}
!30 = !{!"../drivers/usb/usbip/vudc_main.c", i32 20, i32 31}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
