; ModuleID = '/llk/IR_all_yes/drivers/edac/ti_edac.c_pt.bc'
source_filename = "../drivers/edac/ti_edac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.edac_mc_layer = type { i32, i32, i8 }
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
%struct.mem_ctl_info = type { %struct.device, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.completion, ptr, %struct.delayed_work, %struct.edac_raw_error_desc, i32, ptr, [3 x i8], i8, i16 }
%struct.edac_raw_error_desc = type { [256 x i8], [296 x i8], i32, i16, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.dimm_info = type { %struct.device, [32 x i8], [3 x i32], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }

@__initcall__kmod_ti_edac__236_334_ti_edac_driver_init6 = internal global ptr @ti_edac_driver_init, section ".initcall6.init", align 4
@ti_edac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_edac_probe, ptr @ti_edac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_edac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_edac_driver_exit = internal global ptr @ti_edac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [38 x i8] c"ti_edac.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [62 x i8] c"ti_edac.description=EDAC Driver for Texas Instruments DDR3 MC\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [34 x i8] c"ti_edac.file=drivers/edac/ti_edac\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [23 x i8] c"ti_edac.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti-emif-edac\00", [19 x i8] zeroinitializer }, align 32
@ti_edac_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,emif-keystone\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,emif-dra7xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emif-edac-irq\00", [18 x i8] zeroinitializer }, align 32
@ti_edac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013EDAC ti-emif-edac: request_irq fail for EMIF EDAC irq\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti_edac_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/edac/ti_edac.c\00", [41 x i8] zeroinitializer }, align 32
@ti_edac_probe._entry_ptr = internal global ptr @ti_edac_probe._entry, section ".printk_index", align 4
@ti_edac_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013EDAC ti-emif-edac: Failed to register mci: %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@ti_edac_probe._entry_ptr.7 = internal global ptr @ti_edac_probe._entry.5, section ".printk_index", align 4
@_emif_get_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016EDAC ti-emif-edac: addr=%x, my_addr=%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_emif_get_id\00", [19 x i8] zeroinitializer }, align 32
@_emif_get_id._entry_ptr = internal global ptr @_emif_get_id._entry, section ".printk_index", align 4
@edac_get_dimm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/edac.h\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1B\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2B\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"WR\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"ti_edac_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 325, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 329, i32 14 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"ti_edac_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 195, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 285, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 287, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 294, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 219, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [24 x i8] c"../include/linux/edac.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 656, i32 6 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 109, i32 25 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 117, i32 25 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [26 x i8] c"../drivers/edac/ti_edac.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 123, i32 25 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_ti_edac_driver_exit, ptr @__initcall__kmod_ti_edac__236_334_ti_edac_driver_init6, ptr @_emif_get_id._entry, ptr @_emif_get_id._entry_ptr, ptr @ti_edac_driver_exit, ptr @ti_edac_probe._entry, ptr @ti_edac_probe._entry.5, ptr @ti_edac_probe._entry_ptr, ptr @ti_edac_probe._entry_ptr.7, ptr @ti_edac_driver, ptr @.str, ptr @ti_edac_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_edac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_edac_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_edac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_edac_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_emif_get_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_edac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_edac_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_edac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_edac_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_edac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %layers = alloca [1 x %struct.edac_mc_layer], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %layers) #6
  %0 = getelementptr inbounds i8, ptr %layers, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %call = tail call ptr @of_match_device(ptr noundef nonnull @ti_edac_of_match, ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call3) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %3 = ptrtoint ptr %layers to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %layers, align 4
  %size = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %size, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call ptr @__of_get_address(ptr noundef %6, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #6
  %call1.i = tail call i64 @of_translate_address(ptr noundef %6, ptr noundef %call.i.i) #6
  %conv.i = trunc i64 %call1.i to i32
  %call.i23.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ti_edac_of_match, ptr noundef null) #6
  %tobool.not26.i = icmp eq ptr %call.i23.i, null
  br i1 %tobool.not26.i, label %if.end8.if.end13_crit_edge, label %if.end8.for.body.i_crit_edge

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %np.028.i = phi ptr [ %call.i25.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i23.i, %if.end8.for.body.i_crit_edge ]
  %my_id.027.i = phi i32 [ %my_id.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %cmp.i83 = icmp eq ptr %np.028.i, %6
  br i1 %cmp.i83, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i24.i = tail call ptr @__of_get_address(ptr noundef nonnull %np.028.i, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #6
  %call5.i = tail call i64 @of_translate_address(ptr noundef nonnull %np.028.i, ptr noundef %call.i24.i) #6
  %conv6.i = trunc i64 %call5.i to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv6.i, i32 noundef %conv.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6.i, i32 %conv.i)
  %cmp8.i = icmp ult i32 %conv6.i, %conv.i
  %inc.i = zext i1 %cmp8.i to i32
  %spec.select.i = add i32 %my_id.027.i, %inc.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %my_id.1.i = phi i32 [ %my_id.027.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.end.i ]
  %call.i25.i = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.028.i, ptr noundef nonnull @ti_edac_of_match, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i25.i, null
  br i1 %tobool.not.i, label %_emif_get_id.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

_emif_get_id.exit:                                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %my_id.1.i)
  %cmp = icmp slt i32 %my_id.1.i, 0
  br i1 %cmp, label %_emif_get_id.exit.cleanup_crit_edge, label %_emif_get_id.exit.if.end13_crit_edge

_emif_get_id.exit.if.end13_crit_edge:             ; preds = %_emif_get_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

_emif_get_id.exit.cleanup_crit_edge:              ; preds = %_emif_get_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %_emif_get_id.exit.if.end13_crit_edge, %if.end8.if.end13_crit_edge
  %my_id.0.lcssa.i92 = phi i32 [ %my_id.1.i, %_emif_get_id.exit.if.end13_crit_edge ], [ 0, %if.end8.if.end13_crit_edge ]
  %call14 = call ptr @edac_mc_alloc(i32 noundef %my_id.0.lcssa.i92, i32 noundef 1, ptr noundef nonnull %layers, i32 noundef 4) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %pdev19 = getelementptr inbounds %struct.mem_ctl_info, ptr %call14, i32 0, i32 22
  %7 = ptrtoint ptr %pdev19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %pdev19, align 8
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %call14, i32 0, i32 26
  %8 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pvt_info, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call4, ptr %9, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %driver_data.i.i, align 4
  %mtype_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call14, i32 0, i32 4
  %12 = ptrtoint ptr %mtype_cap to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 34816, ptr %mtype_cap, align 8
  %edac_ctl_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call14, i32 0, i32 5
  %13 = ptrtoint ptr %edac_ctl_cap to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 34, ptr %edac_ctl_cap, align 4
  %mod_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call14, i32 0, i32 23
  %14 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str, ptr %mod_name, align 4
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 2
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call14, i32 0, i32 24
  %15 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %compatible, ptr %ctl_name, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i84 = icmp eq ptr %17, null
  br i1 %tobool.not.i84, label %if.end.i85, label %if.end17.dev_name.exit_crit_edge

if.end17.dev_name.exit_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i85:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i85, %if.end17.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i85 ], [ %17, %if.end17.dev_name.exit_crit_edge ]
  %dev_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call14, i32 0, i32 25
  %20 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i, ptr %dev_name, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pvt_info, align 8
  %tot_dimms.i.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call14, i32 0, i32 20
  %25 = ptrtoint ptr %tot_dimms.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tot_dimms.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp23.i.i = icmp eq i32 %26, 0
  br i1 %cmp23.i.i, label %dev_name.exit.edac_get_dimm.exit.i_crit_edge, label %if.end25.i.i

dev_name.exit.edac_get_dimm.exit.i_crit_edge:     ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %edac_get_dimm.exit.i

if.end25.i.i:                                     ; preds = %dev_name.exit
  %dimms.i.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call14, i32 0, i32 21
  %27 = ptrtoint ptr %dimms.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dimms.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %idx.i.i = getelementptr inbounds %struct.dimm_info, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp27.not.i.i = icmp eq i32 %32, 0
  br i1 %cmp27.not.i.i, label %if.end25.i.i.edac_get_dimm.exit.i_crit_edge, label %land.rhs.i.i

if.end25.i.i.edac_get_dimm.exit.i_crit_edge:      ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %edac_get_dimm.exit.i

land.rhs.i.i:                                     ; preds = %if.end25.i.i
  %.b1.i.i = load i1, ptr @edac_get_dimm.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.edac_get_dimm.exit.i_crit_edge, label %if.then34.i.i, !prof !51

land.rhs.i.i.edac_get_dimm.exit.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %edac_get_dimm.exit.i

if.then34.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @edac_get_dimm.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 656, i32 noundef 9, ptr noundef null) #6
  br label %edac_get_dimm.exit.i

edac_get_dimm.exit.i:                             ; preds = %if.then34.i.i, %land.rhs.i.i.edac_get_dimm.exit.i_crit_edge, %if.end25.i.i.edac_get_dimm.exit.i_crit_edge, %dev_name.exit.edac_get_dimm.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %dev_name.exit.edac_get_dimm.exit.i_crit_edge ], [ null, %if.then34.i.i ], [ null, %land.rhs.i.i.edac_get_dimm.exit.i_crit_edge ], [ %30, %if.end25.i.i.edac_get_dimm.exit.i_crit_edge ]
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %24, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 8
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !52
  %36 = call i32 @llvm.bswap.i32(i32 %35) #6
  %cmp.i86 = icmp eq ptr %22, null
  br i1 %cmp.i86, label %if.then.i, label %if.else13.i

if.then.i:                                        ; preds = %edac_get_dimm.exit.i
  %and.i = and i32 %36, 7
  %and2.i = lshr i32 %36, 7
  %shr3.i = and i32 %and2.i, 7
  %and6.i = lshr i32 %36, 4
  %shr7.i = and i32 %and6.i, 7
  %add.i = add nuw nsw i32 %and.i, 17
  %add5.i = add nuw nsw i32 %add.i, %shr3.i
  %add8.i = add nuw nsw i32 %add5.i, %shr7.i
  %and9.i = and i32 %36, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i87 = icmp eq i32 %and9.i, 0
  %..i = select i1 %tobool.not.i87, i32 2, i32 1
  %.95.i = select i1 %tobool.not.i87, i32 6, i32 5
  %inc.i88 = add nuw nsw i32 %add8.i, %..i
  %37 = getelementptr inbounds %struct.dimm_info, ptr %retval.0.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.95.i, ptr %37, align 8
  %shl.i = shl nuw i32 1, %inc.i88
  %shr35.i = lshr i32 %shl.i, 12
  %nr_pages.i = getelementptr inbounds %struct.dimm_info, ptr %retval.0.i.i, i32 0, i32 9
  %39 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr35.i, ptr %nr_pages.i, align 4
  %grain.i = getelementptr inbounds %struct.dimm_info, ptr %retval.0.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %grain.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %grain.i, align 4
  %and36.i = and i32 %36, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and36.i)
  %cmp37.i = icmp eq i32 %and36.i, 1073741824
  br i1 %cmp37.i, label %if.then.i.ti_edac_setup_dimm.exit_crit_edge, label %if.then.i.if.else39.i_crit_edge

if.then.i.if.else39.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else39.i

if.then.i.ti_edac_setup_dimm.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_edac_setup_dimm.exit

if.else13.i:                                      ; preds = %edac_get_dimm.exit.i
  %and14.i = and i32 %36, 3
  %add17.i = or i32 %and14.i, 24
  %and18.i = lshr i32 %36, 5
  %shr19.i = and i32 %and18.i, 3
  %add20.i = add nuw nsw i32 %add17.i, %shr19.i
  %and21.i = lshr i32 %36, 3
  %shr22.i = and i32 %and21.i, 1
  %add23.i = add nuw nsw i32 %add20.i, %shr22.i
  %and24.i = lshr i32 %36, 12
  %shr25.i = and i32 %and24.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr25.i)
  %.not = icmp eq i32 %shr25.i, 3
  br i1 %.not, label %if.else13.i.if.end34.thread.i_crit_edge, label %switch.lookup

if.else13.i.if.end34.thread.i_crit_edge:          ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.thread.i

switch.lookup:                                    ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.offset = xor i32 %shr25.i, 3
  %switch.offset94 = xor i32 %shr25.i, 7
  %inc32.i = add nuw nsw i32 %switch.offset, %add23.i
  %dtype33.i = getelementptr inbounds %struct.dimm_info, ptr %retval.0.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %dtype33.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %switch.offset94, ptr %dtype33.i, align 8
  br label %if.end34.thread.i

if.end34.thread.i:                                ; preds = %switch.lookup, %if.else13.i.if.end34.thread.i_crit_edge
  %bits.0.ph.i = phi i32 [ %add23.i, %if.else13.i.if.end34.thread.i_crit_edge ], [ %inc32.i, %switch.lookup ]
  %shl84.i = shl nuw i32 1, %bits.0.ph.i
  %shr3585.i = lshr i32 %shl84.i, 12
  %nr_pages86.i = getelementptr inbounds %struct.dimm_info, ptr %retval.0.i.i, i32 0, i32 9
  %42 = ptrtoint ptr %nr_pages86.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr3585.i, ptr %nr_pages86.i, align 4
  %grain87.i = getelementptr inbounds %struct.dimm_info, ptr %retval.0.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %grain87.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %grain87.i, align 4
  br label %if.else39.i

if.else39.i:                                      ; preds = %if.end34.thread.i, %if.then.i.if.else39.i_crit_edge
  br label %ti_edac_setup_dimm.exit

ti_edac_setup_dimm.exit:                          ; preds = %if.else39.i, %if.then.i.ti_edac_setup_dimm.exit_crit_edge
  %.sink94.i = phi i32 [ 15, %if.else39.i ], [ 11, %if.then.i.ti_edac_setup_dimm.exit_crit_edge ]
  %mtype40.i = getelementptr inbounds %struct.dimm_info, ptr %retval.0.i.i, i32 0, i32 7
  %44 = ptrtoint ptr %mtype40.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink94.i, ptr %mtype40.i, align 4
  %45 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %24, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %46, i32 272
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81.i) #6, !srcloc !52
  %48 = and i32 %47, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool44.not.i = icmp eq i32 %48, 0
  %.sink90.i = select i1 %tobool44.not.i, i32 1, i32 5
  %49 = getelementptr inbounds %struct.dimm_info, ptr %retval.0.i.i, i32 0, i32 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink90.i, ptr %49, align 8
  %call24 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %ti_edac_setup_dimm.exit.err_crit_edge, label %if.end27

ti_edac_setup_dimm.exit.err_crit_edge:            ; preds = %ti_edac_setup_dimm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end27:                                         ; preds = %ti_edac_setup_dimm.exit
  %call.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call24, ptr noundef nonnull @ti_edac_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %call14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %if.end32, label %do.end

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %err

if.end32:                                         ; preds = %if.end27
  %call33 = call i32 @edac_mc_add_mc_with_groups(ptr noundef nonnull %call14, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call33) #9
  br label %err

if.end41:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %9, align 4
  %add.ptr.i = getelementptr i8, ptr %52, i32 308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #6, !srcloc !53
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %9, align 4
  %add.ptr.i89 = getelementptr i8, ptr %54, i32 180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 939524096) #6, !srcloc !53
  br label %cleanup

err:                                              ; preds = %do.end38, %do.end, %ti_edac_setup_dimm.exit.err_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call33, %do.end38 ], [ %call24, %ti_edac_setup_dimm.exit.err_crit_edge ]
  call void @edac_mc_free(ptr noundef nonnull %call14) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end41, %if.end13.cleanup_crit_edge, %_emif_get_id.exit.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %ret.0, %err ], [ 0, %if.end41 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %_emif_get_id.exit.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %layers) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_edac_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @edac_mc_del_mc(ptr noundef %dev) #6
  tail call void @edac_mc_free(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_alloc(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_edac_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %data, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 172
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !52
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i35 = getelementptr i8, ptr %7, i32 316
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #6, !srcloc !52
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i36 = getelementptr i8, ptr %11, i32 304
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #6, !srcloc !52
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i37 = getelementptr i8, ptr %15, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %12) #6, !srcloc !53
  %conv = trunc i32 %13 to i16
  %shr = lshr i32 %9, 12
  %and3 = and i32 %9, 4095
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %data, i32 0, i32 24
  %16 = ptrtoint ptr %ctl_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctl_name, align 8
  tail call void @edac_mc_handle_error(i32 noundef 0, ptr noundef %data, i16 noundef zeroext %conv, i32 noundef %shr, i32 noundef %and3, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %17, ptr noundef nonnull @.str.11) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.i38 = getelementptr i8, ptr %19, i32 320
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #6, !srcloc !52
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  %shr8 = lshr i32 %21, 12
  %and9 = and i32 %21, 4095
  %ctl_name10 = getelementptr inbounds %struct.mem_ctl_info, ptr %data, i32 0, i32 24
  %22 = ptrtoint ptr %ctl_name10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctl_name10, align 8
  tail call void @edac_mc_handle_error(i32 noundef 1, ptr noundef %data, i16 noundef zeroext 1, i32 noundef %shr8, i32 noundef %and9, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %23, ptr noundef nonnull @.str.12) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %and12 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %ctl_name15 = getelementptr inbounds %struct.mem_ctl_info, ptr %data, i32 0, i32 24
  %24 = ptrtoint ptr %ctl_name15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctl_name15, align 8
  tail call void @edac_mc_handle_error(i32 noundef 1, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 0, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %25, ptr noundef nonnull @.str.13) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i39 = getelementptr i8, ptr %27, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %4) #6, !srcloc !53
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_add_mc_with_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_handle_error(i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_del_mc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_ti_edac__236_334_ti_edac_driver_init6, !1, !"__initcall__kmod_ti_edac__236_334_ti_edac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/edac/ti_edac.c", i32 334, i32 1}
!2 = !{ptr @__exitcall_ti_edac_driver_exit, !1, !"__exitcall_ti_edac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/edac/ti_edac.c", i32 336, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/edac/ti_edac.c", i32 337, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/edac/ti_edac.c", i32 338, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/edac/ti_edac.c", i32 329, i32 14}
!12 = !{ptr @ti_edac_driver, !13, !"ti_edac_driver", i1 false, i1 false}
!13 = !{!"../drivers/edac/ti_edac.c", i32 325, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/edac/ti_edac.c", i32 285, i32 11}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/edac/ti_edac.c", i32 287, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ti_edac_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @ti_edac_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/edac/ti_edac.c", i32 294, i32 3}
!24 = !{ptr @ti_edac_probe._entry.5, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ti_edac_probe._entry_ptr.7, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/edac/ti_edac.c", i32 219, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @_emif_get_id._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @_emif_get_id._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/edac.h", i32 656, i32 6}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/edac/ti_edac.c", i32 109, i32 25}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/edac/ti_edac.c", i32 117, i32 25}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/edac/ti_edac.c", i32 123, i32 25}
!40 = !{ptr @ti_edac_of_match, !41, !"ti_edac_of_match", i1 false, i1 false}
!41 = !{!"../drivers/edac/ti_edac.c", i32 195, i32 34}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 5568496}
!53 = !{i64 5568078}
