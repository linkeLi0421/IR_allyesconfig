; ModuleID = '/llk/IR_all_yes/drivers/platform/chrome/cros_ec_vbc.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_vbc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }

@__initcall__kmod_cros_ec_vbc__185_142_cros_ec_vbc_driver_init6 = internal global ptr @cros_ec_vbc_driver_init, section ".initcall6.init", align 4
@cros_ec_vbc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_vbc_probe, ptr @cros_ec_vbc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_vbc_driver_exit = internal global ptr @cros_ec_vbc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file186 = internal constant [53 x i8] c"cros_ec_vbc.file=drivers/platform/chrome/cros_ec_vbc\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [24 x i8] c"cros_ec_vbc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [68 x i8] c"cros_ec_vbc.description=Expose the vboot context nvram to userspace\00", section ".modinfo", align 1
@__UNIQUE_ID_alias189 = internal constant [39 x i8] c"cros_ec_vbc.alias=platform:cros-ec-vbc\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cros-ec-vbc\00", [20 x i8] zeroinitializer }, align 32
@cros_ec_vbc_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.6, ptr null, ptr null, ptr null, ptr @cros_ec_vbc_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@cros_ec_vbc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to create %s attributes. err=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros_ec_vbc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/platform/chrome/cros_ec_vbc.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_vbc_probe._entry_ptr = internal global ptr @cros_ec_vbc_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vbc\00", [28 x i8] zeroinitializer }, align 32
@cros_ec_vbc_bin_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bin_attr_vboot_context, ptr null], [24 x i8] zeroinitializer }, align 32
@bin_attr_vboot_context = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 16, ptr null, ptr null, ptr @vboot_context_read, ptr @vboot_context_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vboot_context\00", [18 x i8] zeroinitializer }, align 32
@vboot_context_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 45, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error sending read request: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vboot_context_read\00", [45 x i8] zeroinitializer }, align 32
@vboot_context_read._entry_ptr = internal global ptr @vboot_context_read._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vboot_context_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error sending write request: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vboot_context_write\00", [44 x i8] zeroinitializer }, align 32
@vboot_context_write._entry_ptr = internal global ptr @vboot_context_write._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"cros_ec_vbc_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 134, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 136, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [23 x i8] c"cros_ec_vbc_attr_group\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 104, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 118, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 105, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"cros_ec_vbc_bin_attrs\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 99, i32 30 }
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"bin_attr_vboot_context\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 97, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 45, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [41 x i8] c"../drivers/platform/chrome/cros_ec_vbc.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 88, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_alias189, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_cros_ec_vbc_driver_exit, ptr @__initcall__kmod_cros_ec_vbc__185_142_cros_ec_vbc_driver_init6, ptr @cros_ec_vbc_driver_exit, ptr @cros_ec_vbc_probe._entry, ptr @cros_ec_vbc_probe._entry_ptr, ptr @vboot_context_read._entry, ptr @vboot_context_read._entry_ptr, ptr @vboot_context_write._entry, ptr @vboot_context_write._entry_ptr, ptr @cros_ec_vbc_driver, ptr @.str, ptr @cros_ec_vbc_attr_group, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cros_ec_vbc_bin_attrs, ptr @bin_attr_vboot_context, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_vbc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_vbc_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_vbc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_vbc_bin_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_vboot_context to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vboot_context_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vboot_context_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_vbc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_vbc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_vbc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_vbc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_vbc_probe(ptr noundef %pd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call i32 @sysfs_create_group(ptr noundef %3, ptr noundef nonnull @cros_ec_vbc_attr_group) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, i32 noundef %call3) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_vbc_remove(ptr nocapture noundef readonly %pd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void @sysfs_remove_group(ptr noundef %3, ptr noundef nonnull @cros_ec_vbc_attr_group) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vboot_context_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %att, ptr nocapture noundef writeonly %buf, i64 noundef %pos, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ec_dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 36) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 5
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %data, align 4
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %call7.i, align 8
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 23, ptr %command, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %outsize, align 8
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 3
  %7 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %insize, align 4
  %call3 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %1, ptr noundef nonnull %call7.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %kobj, ptr noundef nonnull @.str.8, i32 noundef %call3) #8
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = call ptr @memcpy(ptr %buf, ptr %data, i32 16)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end5, %do.end
  %retval.0.ph = phi i32 [ 16, %if.end5 ], [ %call3, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vboot_context_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i64 noundef %pos, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ec_dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count)
  %cmp.not = icmp eq i32 %count, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 40) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 5
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %data, align 4
  %block = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 1, i32 1
  %4 = call ptr @memcpy(ptr %block, ptr %buf, i32 16)
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %call7.i, align 8
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 23, ptr %command, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %outsize, align 8
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i, i32 0, i32 3
  %8 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %insize, align 4
  %call5 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %1, ptr noundef nonnull %call7.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end, label %if.end3.cleanup.sink.split_crit_edge

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %kobj, ptr noundef nonnull @.str.10, i32 noundef %call5) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %if.end3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %do.end ], [ 16, %if.end3.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !31, !33, !34, !35, !36, !38, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_cros_ec_vbc__185_142_cros_ec_vbc_driver_init6, !1, !"__initcall__kmod_cros_ec_vbc__185_142_cros_ec_vbc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/chrome/cros_ec_vbc.c", i32 142, i32 1}
!2 = !{ptr @__exitcall_cros_ec_vbc_driver_exit, !1, !"__exitcall_cros_ec_vbc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file186, !4, !"__UNIQUE_ID_file186", i1 false, i1 false}
!4 = !{!"../drivers/platform/chrome/cros_ec_vbc.c", i32 144, i32 1}
!5 = !{ptr @__UNIQUE_ID_license187, !4, !"__UNIQUE_ID_license187", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description188, !7, !"__UNIQUE_ID_description188", i1 false, i1 false}
!7 = !{!"../drivers/platform/chrome/cros_ec_vbc.c", i32 145, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias189, !9, !"__UNIQUE_ID_alias189", i1 false, i1 false}
!9 = !{!"../drivers/platform/chrome/cros_ec_vbc.c", i32 146, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/platform/chrome/cros_ec_vbc.c", i32 136, i32 11}
!12 = !{ptr @cros_ec_vbc_driver, !13, !"cros_ec_vbc_driver", i1 false, i1 false}
!13 = !{!"../drivers/platform/chrome/cros_ec_vbc.c", i32 134, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/platform/chrome/cros_ec_vbc.c", i32 118, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cros_ec_vbc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cros_ec_vbc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/platform/chrome/cros_ec_vbc.c", i32 105, i32 10}
!24 = !{ptr @cros_ec_vbc_attr_group, !25, !"cros_ec_vbc_attr_group", i1 false, i1 false}
!25 = !{!"../drivers/platform/chrome/cros_ec_vbc.c", i32 104, i32 37}
!26 = !{ptr @cros_ec_vbc_bin_attrs, !27, !"cros_ec_vbc_bin_attrs", i1 false, i1 false}
!27 = !{!"../drivers/platform/chrome/cros_ec_vbc.c", i32 99, i32 30}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/platform/chrome/cros_ec_vbc.c", i32 97, i32 8}
!30 = !{ptr @bin_attr_vboot_context, !29, !"bin_attr_vboot_context", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/platform/chrome/cros_ec_vbc.c", i32 45, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vboot_context_read._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @vboot_context_read._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/platform/chrome/cros_ec_vbc.c", i32 88, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @vboot_context_write._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @vboot_context_write._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
