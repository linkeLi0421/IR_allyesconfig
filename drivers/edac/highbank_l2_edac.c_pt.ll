; ModuleID = '/llk/IR_all_yes/drivers/edac/highbank_l2_edac.c_pt.bc'
source_filename = "../drivers/edac/highbank_l2_edac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.edac_device_ctl_info = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.completion, [32 x i8], i32, ptr, %struct.edac_device_counter, %struct.kobject }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.edac_device_counter = type { i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hb_l2_drvdata = type { ptr, i32, i32 }

@__initcall__kmod_highbank_l2_edac__236_138_highbank_l2_edac_driver_init6 = internal global ptr @highbank_l2_edac_driver_init, section ".initcall6.init", align 4
@highbank_l2_edac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @highbank_l2_err_probe, ptr @highbank_l2_err_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hb_l2_err_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_highbank_l2_edac_driver_exit = internal global ptr @highbank_l2_edac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [52 x i8] c"highbank_l2_edac.file=drivers/edac/highbank_l2_edac\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [32 x i8] c"highbank_l2_edac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [38 x i8] c"highbank_l2_edac.author=Calxeda, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [71 x i8] c"highbank_l2_edac.description=EDAC Driver for Calxeda Highbank L2 Cache\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hb_l2_edac\00", [21 x i8] zeroinitializer }, align 32
@hb_l2_err_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-sregs-l2-ecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@highbank_l2_err_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 69, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to get mem resource\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"highbank_l2_err_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/edac/highbank_l2_edac.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@highbank_l2_err_probe._entry_ptr = internal global ptr @highbank_l2_err_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@highbank_l2_err_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 76, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error while requesting mem region\0A\00", [61 x i8] zeroinitializer }, align 32
@highbank_l2_err_probe._entry_ptr.10 = internal global ptr @highbank_l2_err_probe._entry.8, section ".printk_index", align 4
@highbank_l2_err_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 83, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to map regs\0A\00", [44 x i8] zeroinitializer }, align 32
@highbank_l2_err_probe._entry_ptr.13 = internal global ptr @highbank_l2_err_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [24 x i8] c"highbank_l2_edac_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 129, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 133, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"hb_l2_err_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 41, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 55, i32 53 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 56, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 69, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 76, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 83, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [35 x i8] c"../drivers/edac/highbank_l2_edac.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 90, i32 40 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_highbank_l2_edac_driver_exit, ptr @__initcall__kmod_highbank_l2_edac__236_138_highbank_l2_edac_driver_init6, ptr @highbank_l2_edac_driver_exit, ptr @highbank_l2_err_probe._entry, ptr @highbank_l2_err_probe._entry.11, ptr @highbank_l2_err_probe._entry.8, ptr @highbank_l2_err_probe._entry_ptr, ptr @highbank_l2_err_probe._entry_ptr.10, ptr @highbank_l2_err_probe._entry_ptr.13, ptr @highbank_l2_edac_driver, ptr @.str, ptr @hb_l2_err_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highbank_l2_edac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hb_l2_err_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highbank_l2_err_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highbank_l2_err_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highbank_l2_err_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @highbank_l2_edac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @highbank_l2_edac_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @highbank_l2_edac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @highbank_l2_edac_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @highbank_l2_err_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @edac_device_alloc_ctl_info(i32 noundef 12, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %dev1 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @devres_open_group(ptr noundef %dev, ptr noundef null, i32 noundef 3264) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %err

if.end11:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call7, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call7, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.dev_name.exit_crit_edge

if.end11.dev_name.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end11.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end11.dev_name.exit_crit_edge ]
  %call16 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %add.i, ptr noundef %retval.0.i) #4
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end21, label %if.end23

do.end21:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #7
  br label %err

if.end23:                                         ; preds = %dev_name.exit
  %12 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call7, align 4
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %sub.i116 = sub i32 1, %13
  %add.i117 = add i32 %sub.i116, %15
  %call27 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %13, i32 noundef %add.i117) #4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call27, ptr %1, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #7
  br label %err

if.end35:                                         ; preds = %if.end23
  %call37 = tail call ptr @of_match_device(ptr noundef nonnull @hb_l2_err_of_match, ptr noundef %dev) #4
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %17 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %mod_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call, i32 0, i32 14
  %21 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %mod_name, align 4
  %tobool39.not = icmp eq ptr %call37, null
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %call37, i32 0, i32 2
  %spec.select = select i1 %tobool39.not, ptr @.str.14, ptr %compatible
  %ctl_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call, i32 0, i32 15
  %22 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spec.select, ptr %ctl_name, align 4
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i119 = icmp eq ptr %24, null
  br i1 %tobool.not.i119, label %if.end.i120, label %if.end35.dev_name.exit122_crit_edge

if.end35.dev_name.exit122_crit_edge:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit122

if.end.i120:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %dev_name.exit122

dev_name.exit122:                                 ; preds = %if.end.i120, %if.end35.dev_name.exit122_crit_edge
  %retval.0.i121 = phi ptr [ %26, %if.end.i120 ], [ %24, %if.end35.dev_name.exit122_crit_edge ]
  %dev_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call, i32 0, i32 16
  %27 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i121, ptr %dev_name, align 4
  %call42 = tail call i32 @edac_device_add_device(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %dev_name.exit122.err_crit_edge

dev_name.exit122.err_crit_edge:                   ; preds = %dev_name.exit122
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end45:                                         ; preds = %dev_name.exit122
  %call46 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #4
  %db_irq = getelementptr inbounds %struct.hb_l2_drvdata, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %db_irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call46, ptr %db_irq, align 4
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i124 = icmp eq ptr %30, null
  br i1 %tobool.not.i124, label %if.end.i125, label %if.end45.dev_name.exit127_crit_edge

if.end45.dev_name.exit127_crit_edge:              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit127

if.end.i125:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  br label %dev_name.exit127

dev_name.exit127:                                 ; preds = %if.end.i125, %if.end45.dev_name.exit127_crit_edge
  %retval.0.i126 = phi ptr [ %32, %if.end.i125 ], [ %30, %if.end45.dev_name.exit127_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call46, ptr noundef nonnull @highbank_l2_err_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i126, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %dev_name.exit127.err2_crit_edge, label %if.end53

dev_name.exit127.err2_crit_edge:                  ; preds = %dev_name.exit127
  call void @__sanitizer_cov_trace_pc() #6
  br label %err2

if.end53:                                         ; preds = %dev_name.exit127
  %call54 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #4
  %sb_irq = getelementptr inbounds %struct.hb_l2_drvdata, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %sb_irq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call54, ptr %sb_irq, align 4
  %34 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i129 = icmp eq ptr %35, null
  br i1 %tobool.not.i129, label %if.end.i130, label %if.end53.dev_name.exit132_crit_edge

if.end53.dev_name.exit132_crit_edge:              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit132

if.end.i130:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  br label %dev_name.exit132

dev_name.exit132:                                 ; preds = %if.end.i130, %if.end53.dev_name.exit132_crit_edge
  %retval.0.i131 = phi ptr [ %37, %if.end.i130 ], [ %35, %if.end53.dev_name.exit132_crit_edge ]
  %call.i133 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call54, ptr noundef nonnull @highbank_l2_err_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i131, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %cmp60 = icmp slt i32 %call.i133, 0
  br i1 %cmp60, label %dev_name.exit132.err2_crit_edge, label %if.end62

dev_name.exit132.err2_crit_edge:                  ; preds = %dev_name.exit132
  call void @__sanitizer_cov_trace_pc() #6
  br label %err2

if.end62:                                         ; preds = %dev_name.exit132
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @devres_close_group(ptr noundef %dev, ptr noundef null) #4
  br label %cleanup

err2:                                             ; preds = %dev_name.exit132.err2_crit_edge, %dev_name.exit127.err2_crit_edge
  %res.0 = phi i32 [ %call.i, %dev_name.exit127.err2_crit_edge ], [ %call.i133, %dev_name.exit132.err2_crit_edge ]
  %call65 = tail call ptr @edac_device_del_device(ptr noundef %dev) #4
  br label %err

err:                                              ; preds = %err2, %dev_name.exit122.err_crit_edge, %do.end33, %do.end21, %do.end
  %res.1 = phi i32 [ 0, %dev_name.exit122.err_crit_edge ], [ %res.0, %err2 ], [ -12, %do.end33 ], [ -16, %do.end21 ], [ -19, %do.end ]
  %call67 = tail call i32 @devres_release_group(ptr noundef %dev, ptr noundef null) #4
  tail call void @edac_device_free_ctl_info(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end62, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.1, %err ], [ 0, %if.end62 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @highbank_l2_err_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @edac_device_del_device(ptr noundef %dev) #4
  tail call void @edac_device_free_ctl_info(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_device_alloc_ctl_info(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_device_add_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @highbank_l2_err_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %dev_id, i32 0, i32 17
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 4
  %sb_irq = getelementptr inbounds %struct.hb_l2_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sb_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %irq)
  %cmp = icmp eq i32 %3, %irq
  br i1 %cmp, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 16777216) #4, !srcloc !48
  %ctl_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %dev_id, i32 0, i32 15
  %6 = ptrtoint ptr %ctl_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl_name, align 4
  tail call void @edac_device_handle_ce_count(ptr noundef %dev_id, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %7) #4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %db_irq = getelementptr inbounds %struct.hb_l2_drvdata, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %db_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %db_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %irq)
  %cmp1 = icmp eq i32 %9, %irq
  br i1 %cmp1, label %do.body3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr7 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 16777216) #4, !srcloc !48
  %ctl_name8 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %dev_id, i32 0, i32 15
  %12 = ptrtoint ptr %ctl_name8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctl_name8, align 4
  tail call void @edac_device_handle_ue_count(ptr noundef %dev_id, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %13) #4
  br label %if.end9

if.end9:                                          ; preds = %do.body3, %if.end.if.end9_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_device_del_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_free_ctl_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_handle_ce_count(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_handle_ue_count(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_highbank_l2_edac__236_138_highbank_l2_edac_driver_init6, !1, !"__initcall__kmod_highbank_l2_edac__236_138_highbank_l2_edac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/edac/highbank_l2_edac.c", i32 138, i32 1}
!2 = !{ptr @__exitcall_highbank_l2_edac_driver_exit, !1, !"__exitcall_highbank_l2_edac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file237, !4, !"__UNIQUE_ID_file237", i1 false, i1 false}
!4 = !{!"../drivers/edac/highbank_l2_edac.c", i32 140, i32 1}
!5 = !{ptr @__UNIQUE_ID_license238, !4, !"__UNIQUE_ID_license238", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author239, !7, !"__UNIQUE_ID_author239", i1 false, i1 false}
!7 = !{!"../drivers/edac/highbank_l2_edac.c", i32 141, i32 1}
!8 = !{ptr @__UNIQUE_ID_description240, !9, !"__UNIQUE_ID_description240", i1 false, i1 false}
!9 = !{!"../drivers/edac/highbank_l2_edac.c", i32 142, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/edac/highbank_l2_edac.c", i32 133, i32 11}
!12 = !{ptr @highbank_l2_edac_driver, !13, !"highbank_l2_edac_driver", i1 false, i1 false}
!13 = !{!"../drivers/edac/highbank_l2_edac.c", i32 129, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/edac/highbank_l2_edac.c", i32 55, i32 53}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/edac/highbank_l2_edac.c", i32 56, i32 6}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/edac/highbank_l2_edac.c", i32 69, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @highbank_l2_err_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @highbank_l2_err_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/edac/highbank_l2_edac.c", i32 76, i32 3}
!28 = !{ptr @highbank_l2_err_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @highbank_l2_err_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/edac/highbank_l2_edac.c", i32 83, i32 3}
!32 = !{ptr @highbank_l2_err_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @highbank_l2_err_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/edac/highbank_l2_edac.c", i32 90, i32 40}
!36 = !{ptr @hb_l2_err_of_match, !37, !"hb_l2_err_of_match", i1 false, i1 false}
!37 = !{!"../drivers/edac/highbank_l2_edac.c", i32 41, i32 34}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2154650627}
!48 = !{i64 5650899}
!49 = !{i64 2154651016}
