; ModuleID = '/llk/IR_all_yes/drivers/rpmsg/qcom_glink_rpm.c_pt.bc'
source_filename = "../drivers/rpmsg/qcom_glink_rpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.rpm_toc = type { i32, i32, [0 x %struct.rpm_toc_entry] }
%struct.rpm_toc_entry = type { i32, i32, i32 }
%struct.glink_rpm_pipe = type { %struct.qcom_glink_pipe, ptr, ptr, ptr }
%struct.qcom_glink_pipe = type { i32, ptr, ptr, ptr, ptr }

@__initcall__kmod_qcom_glink_rpm__231_341_glink_rpm_init4 = internal global ptr @glink_rpm_init, section ".initcall4.init", align 4
@glink_rpm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @glink_rpm_probe, ptr @glink_rpm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @glink_rpm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_glink_rpm_exit = internal global ptr @glink_rpm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [67 x i8] c"qcom_glink_rpm.author=Bjorn Andersson <bjorn.andersson@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [53 x i8] c"qcom_glink_rpm.description=Qualcomm GLINK RPM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [49 x i8] c"qcom_glink_rpm.file=drivers/rpmsg/qcom_glink_rpm\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [30 x i8] c"qcom_glink_rpm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_glink_rpm\00", [17 x i8] zeroinitializer }, align 32
@glink_rpm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,glink-rpm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,rpm-msg-ram\00", [47 x i8] zeroinitializer }, align 32
@glink_rpm_parse_toc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RPM TOC has invalid magic\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"glink_rpm_parse_toc\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/rpmsg/qcom_glink_rpm.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@glink_rpm_parse_toc._entry_ptr = internal global ptr @glink_rpm_parse_toc._entry, section ".printk_index", align 4
@glink_rpm_parse_toc._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 212, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid number of toc entries\0A\00", [33 x i8] zeroinitializer }, align 32
@glink_rpm_parse_toc._entry_ptr.9 = internal global ptr @glink_rpm_parse_toc._entry.7, section ".printk_index", align 4
@glink_rpm_parse_toc._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 222, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TOC entry with invalid size\0A\00", [35 x i8] zeroinitializer }, align 32
@glink_rpm_parse_toc._entry_ptr.12 = internal global ptr @glink_rpm_parse_toc._entry.10, section ".printk_index", align 4
@glink_rpm_parse_toc._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 245, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to find rx and tx descriptors\0A\00", [58 x i8] zeroinitializer }, align 32
@glink_rpm_parse_toc._entry_ptr.15 = internal global ptr @glink_rpm_parse_toc._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Glink Header length must be 4 bytes aligned\0A\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1634742898, i64 1915904368]
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"glink_rpm_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 328, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 332, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"glink_rpm_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 322, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 274, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 206, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 212, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 222, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 245, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [34 x i8] c"../drivers/rpmsg/qcom_glink_rpm.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 161, i32 6 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_glink_rpm_exit, ptr @__initcall__kmod_qcom_glink_rpm__231_341_glink_rpm_init4, ptr @glink_rpm_exit, ptr @glink_rpm_parse_toc._entry, ptr @glink_rpm_parse_toc._entry.10, ptr @glink_rpm_parse_toc._entry.13, ptr @glink_rpm_parse_toc._entry.7, ptr @glink_rpm_parse_toc._entry_ptr, ptr @glink_rpm_parse_toc._entry_ptr.12, ptr @glink_rpm_parse_toc._entry_ptr.15, ptr @glink_rpm_parse_toc._entry_ptr.9, ptr @glink_rpm_driver, ptr @.str, ptr @glink_rpm_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glink_rpm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glink_rpm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glink_rpm_parse_toc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glink_rpm_parse_toc._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glink_rpm_parse_toc._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glink_rpm_parse_toc._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @glink_rpm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @glink_rpm_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @glink_rpm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @glink_rpm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @glink_rpm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %r = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #7
  %0 = getelementptr inbounds %struct.resource, ptr %r, i32 0, i32 1
  %1 = call ptr @memset(ptr %r, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #7
  %call.i69 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  %tobool5.not = icmp eq ptr %call.i69, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i70 = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.of_parse_phandle.exit_crit_edge

if.end.of_parse_phandle.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.end.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ null, %if.end.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %call7 = call i32 @of_address_to_resource(ptr noundef %retval.0.i, i32 noundef 0, ptr noundef nonnull %r) #7
  call void @of_node_put(ptr noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %of_parse_phandle.exit.cleanup_crit_edge

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %of_parse_phandle.exit
  %7 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %r, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %8
  %add.i = add i32 %sub.i, %10
  %call12 = call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %8, i32 noundef %add.i) #7
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %13 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r, align 4
  %sub.i72 = add i32 %12, 1
  %add.i73 = sub i32 %sub.i72, %14
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 256) #10
  %tobool.not.i74 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i74, label %if.end16.cleanup_crit_edge, label %if.end.i75

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i75:                                       ; preds = %if.end16
  %add.ptr.i = getelementptr i8, ptr %call12, i32 %add.i73
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -256
  call void @__ioread32_copy(ptr noundef nonnull %call7.i.i.i, ptr noundef %add.ptr1.i, i32 noundef 64) #7
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 812937831, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 812937831
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i75.glink_rpm_parse_toc.exit_crit_edge

if.end.i75.glink_rpm_parse_toc.exit_crit_edge:    ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %glink_rpm_parse_toc.exit

if.end3.i:                                        ; preds = %if.end.i75
  %count.i = getelementptr inbounds %struct.rpm_toc, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count.i, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %20)
  %cmp4.i = icmp ugt i32 %20, 20
  br i1 %cmp4.i, label %if.end3.i.glink_rpm_parse_toc.exit_crit_edge, label %for.cond.preheader.i

if.end3.i.glink_rpm_parse_toc.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %glink_rpm_parse_toc.exit

for.cond.preheader.i:                             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1099.not.i = icmp eq i32 %19, 0
  br i1 %cmp1099.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %tail34.i = getelementptr inbounds %struct.glink_rpm_pipe, ptr %call.i69, i32 0, i32 1
  %head37.i = getelementptr inbounds %struct.glink_rpm_pipe, ptr %call.i69, i32 0, i32 2
  %fifo40.i = getelementptr inbounds %struct.glink_rpm_pipe, ptr %call.i69, i32 0, i32 3
  %tail.i = getelementptr inbounds %struct.glink_rpm_pipe, ptr %call.i, i32 0, i32 1
  %head.i = getelementptr inbounds %struct.glink_rpm_pipe, ptr %call.i, i32 0, i32 2
  %fifo.i = getelementptr inbounds %struct.glink_rpm_pipe, ptr %call.i, i32 0, i32 3
  %smax.i = call i32 @llvm.smax.i32(i32 %20, i32 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0100.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %offset14.i = getelementptr %struct.rpm_toc, ptr %call7.i.i.i, i32 0, i32 2, i32 %i.0100.i, i32 1
  %21 = ptrtoint ptr %offset14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset14.i, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #7
  %size17.i = getelementptr %struct.rpm_toc, ptr %call7.i.i.i, i32 0, i32 2, i32 %i.0100.i, i32 2
  %24 = ptrtoint ptr %size17.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size17.i, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add.i73)
  %cmp18.i = icmp ugt i32 %23, %add.i73
  %add.i76 = add i32 %26, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i76, i32 %add.i73)
  %cmp19.i = icmp ugt i32 %add.i76, %add.i73
  %or.cond.i = select i1 %cmp18.i, i1 true, i1 %cmp19.i
  br i1 %or.cond.i, label %do.end23.i, label %if.end24.i

do.end23.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #11
  br label %for.inc.i

if.end24.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.rpm_toc, ptr %call7.i.i.i, i32 0, i32 2, i32 %i.0100.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28) #7
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %if.end24.i.for.inc.i_crit_edge [
    i32 1915904368, label %sw.bb.i
    i32 1634742898, label %sw.bb30.i
  ]

if.end24.i.for.inc.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %26, ptr %call.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %call12, i32 %23
  %32 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr25.i, ptr %tail.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %add.ptr25.i, i32 4
  %33 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr27.i, ptr %head.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %add.ptr25.i, i32 8
  %34 = ptrtoint ptr %fifo.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr29.i, ptr %fifo.i, align 4
  br label %for.inc.i

sw.bb30.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call.i69 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %26, ptr %call.i69, align 4
  %add.ptr33.i = getelementptr i8, ptr %call12, i32 %23
  %36 = ptrtoint ptr %tail34.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr33.i, ptr %tail34.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %add.ptr33.i, i32 4
  %37 = ptrtoint ptr %head37.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr36.i, ptr %head37.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %add.ptr33.i, i32 8
  %38 = ptrtoint ptr %fifo40.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr39.i, ptr %fifo40.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb30.i, %sw.bb.i, %if.end24.i.for.inc.i_crit_edge, %do.end23.i
  %inc.i = add nuw nsw i32 %i.0100.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %fifo41.i = getelementptr inbounds %struct.glink_rpm_pipe, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %fifo41.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fifo41.i, align 4
  %tobool42.not.i = icmp eq ptr %40, null
  br i1 %tobool42.not.i, label %for.end.i.glink_rpm_parse_toc.exit_crit_edge, label %lor.lhs.false43.i

for.end.i.glink_rpm_parse_toc.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %glink_rpm_parse_toc.exit

lor.lhs.false43.i:                                ; preds = %for.end.i
  %fifo44.i = getelementptr inbounds %struct.glink_rpm_pipe, ptr %call.i69, i32 0, i32 3
  %41 = ptrtoint ptr %fifo44.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fifo44.i, align 4
  %tobool45.not.i = icmp eq ptr %42, null
  br i1 %tobool45.not.i, label %lor.lhs.false43.i.glink_rpm_parse_toc.exit_crit_edge, label %if.end20

lor.lhs.false43.i.glink_rpm_parse_toc.exit_crit_edge: ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %glink_rpm_parse_toc.exit

glink_rpm_parse_toc.exit:                         ; preds = %lor.lhs.false43.i.glink_rpm_parse_toc.exit_crit_edge, %for.end.i.glink_rpm_parse_toc.exit_crit_edge, %if.end3.i.glink_rpm_parse_toc.exit_crit_edge, %if.end.i75.glink_rpm_parse_toc.exit_crit_edge
  %.str.14.sink.i = phi ptr [ @.str.2, %if.end.i75.glink_rpm_parse_toc.exit_crit_edge ], [ @.str.8, %if.end3.i.glink_rpm_parse_toc.exit_crit_edge ], [ @.str.14, %for.end.i.glink_rpm_parse_toc.exit_crit_edge ], [ @.str.14, %lor.lhs.false43.i.glink_rpm_parse_toc.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.14.sink.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false43.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  %avail = getelementptr inbounds %struct.qcom_glink_pipe, ptr %call.i, i32 0, i32 1
  %43 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @glink_rpm_rx_avail, ptr %avail, align 4
  %peak = getelementptr inbounds %struct.qcom_glink_pipe, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %peak to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @glink_rpm_rx_peak, ptr %peak, align 4
  %advance = getelementptr inbounds %struct.qcom_glink_pipe, ptr %call.i, i32 0, i32 3
  %45 = ptrtoint ptr %advance to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @glink_rpm_rx_advance, ptr %advance, align 4
  %avail24 = getelementptr inbounds %struct.qcom_glink_pipe, ptr %call.i69, i32 0, i32 1
  %46 = ptrtoint ptr %avail24 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @glink_rpm_tx_avail, ptr %avail24, align 4
  %write = getelementptr inbounds %struct.qcom_glink_pipe, ptr %call.i69, i32 0, i32 4
  %47 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @glink_rpm_tx_write, ptr %write, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  call void @arm_heavy_mb() #7
  %head = getelementptr inbounds %struct.glink_rpm_pipe, ptr %call.i69, i32 0, i32 2
  %48 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #7, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.glink_rpm_pipe, ptr %call.i, i32 0, i32 1
  %50 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 0) #7, !srcloc !51
  %call32 = call ptr @qcom_glink_native_probe(ptr noundef %dev1, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i69, i1 noundef zeroext true) #7
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call32, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then34, %glink_rpm_parse_toc.exit, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %of_parse_phandle.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %52, %if.then34 ], [ 0, %if.end36 ], [ -12, %entry.cleanup_crit_edge ], [ %call7, %of_parse_phandle.exit.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -22, %glink_rpm_parse_toc.exit ], [ -12, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @glink_rpm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @qcom_glink_native_remove(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @glink_rpm_rx_avail(ptr nocapture noundef readonly %glink_pipe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %head1 = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 2
  %0 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !53
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  %tail6 = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 1
  %4 = ptrtoint ptr %tail6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail6, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !53
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp = icmp ult i32 %3, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %glink_pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %glink_pipe, align 4
  %sub = sub i32 %3, %7
  %add = add i32 %sub, %9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub10 = sub i32 %3, %7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %add, %if.then ], [ %sub10, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @glink_rpm_rx_peak(ptr nocapture noundef readonly %glink_pipe, ptr noundef %data, i32 noundef %offset, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tail1 = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 1
  %0 = ptrtoint ptr %tail1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !53
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %add = add i32 %3, %offset
  %4 = ptrtoint ptr %glink_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %glink_pipe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp.not = icmp ult i32 %add, %5
  %sub = select i1 %cmp.not, i32 0, i32 %5
  %spec.select = sub i32 %add, %sub
  %sub8 = sub i32 %5, %spec.select
  %6 = tail call i32 @llvm.umin.i32(i32 %sub8, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then11

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fifo = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 3
  %7 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fifo, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 %spec.select
  %div40 = lshr i32 %6, 2
  tail call void @__ioread32_copy(ptr noundef %data, ptr noundef %add.ptr12, i32 noundef %div40) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %entry.if.end13_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8, i32 %count)
  %cmp14.not.not = icmp ult i32 %sub8, %count
  br i1 %cmp14.not.not, label %if.then15, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr16 = getelementptr i8, ptr %data, i32 %6
  %fifo17 = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 3
  %9 = ptrtoint ptr %fifo17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fifo17, align 4
  %sub18 = sub i32 %count, %6
  %div1939 = lshr i32 %sub18, 2
  tail call void @__ioread32_copy(ptr noundef %add.ptr16, ptr noundef %10, i32 noundef %div1939) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end13.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @glink_rpm_rx_advance(ptr nocapture noundef readonly %glink_pipe, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tail1 = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 1
  %0 = ptrtoint ptr %tail1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !53
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %add = add i32 %3, %count
  %4 = ptrtoint ptr %glink_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %glink_pipe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp.not = icmp ult i32 %add, %5
  %sub = select i1 %cmp.not, i32 0, i32 %5
  %spec.select = sub i32 %add, %sub
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %7 = ptrtoint ptr %tail1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @glink_rpm_tx_avail(ptr nocapture noundef readonly %glink_pipe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %head1 = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 2
  %0 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !53
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %tail6 = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 1
  %4 = ptrtoint ptr %tail6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail6, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !53
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp.not = icmp ugt i32 %7, %3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %glink_pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %glink_pipe, align 4
  %sub = sub i32 %7, %3
  %add = add i32 %sub, %9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub10 = sub i32 %7, %3
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %add, %if.then ], [ %sub10, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @glink_rpm_tx_write(ptr nocapture noundef readonly %glink_pipe, ptr noundef %hdr, i32 noundef %hlen, ptr noundef %data, i32 noundef %dlen) #2 align 64 {
entry:
  %padding = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %dlen, %hlen
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %padding) #7
  %0 = ptrtoint ptr %padding to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %padding, align 8
  %rem = and i32 %hlen, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !61

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 161, i32 noundef 9, ptr noundef nonnull @.str.16) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %and = and i32 %dlen, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %dlen)
  %cmp.not = icmp eq i32 %and, %dlen
  br i1 %cmp.not, label %if.end23.if.end28_crit_edge, label %if.then25

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr26 = getelementptr i8, ptr %data, i32 %and
  %sub27 = and i32 %dlen, 3
  %1 = call ptr @memcpy(ptr %padding, ptr %add.ptr26, i32 %sub27)
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23.if.end28_crit_edge
  %head29 = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 2
  %2 = ptrtoint ptr %head29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head29, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !53
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %6 = ptrtoint ptr %glink_pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %glink_pipe, align 4
  %sub.i = sub i32 %7, %5
  %8 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %hlen) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end28.if.end.i_crit_edge, label %if.then.i

if.end28.if.end.i_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %fifo.i = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 3
  %9 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fifo.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %5
  %div36.i = lshr i32 %8, 2
  tail call void @__iowrite32_copy(ptr noundef %add.ptr.i, ptr noundef %hdr, i32 noundef %div36.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end28.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %hlen)
  %cmp1.not.not.i = icmp ult i32 %sub.i, %hlen
  br i1 %cmp1.not.not.i, label %if.then2.i, label %if.end.i.glink_rpm_tx_write_one.exit_crit_edge

if.end.i.glink_rpm_tx_write_one.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %glink_rpm_tx_write_one.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fifo3.i = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 3
  %11 = ptrtoint ptr %fifo3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fifo3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %hdr, i32 %8
  %sub5.i = sub i32 %hlen, %8
  %div635.i = lshr i32 %sub5.i, 2
  tail call void @__iowrite32_copy(ptr noundef %12, ptr noundef %add.ptr4.i, i32 noundef %div635.i) #7
  br label %glink_rpm_tx_write_one.exit

glink_rpm_tx_write_one.exit:                      ; preds = %if.then2.i, %if.end.i.glink_rpm_tx_write_one.exit_crit_edge
  %add.i = add i32 %5, %hlen
  %13 = ptrtoint ptr %glink_pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %glink_pipe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %14)
  %cmp10.not.i = icmp ult i32 %add.i, %14
  %sub14.i = select i1 %cmp10.not.i, i32 0, i32 %14
  %spec.select.i = sub i32 %add.i, %sub14.i
  %sub.i73 = sub i32 %14, %spec.select.i
  %15 = tail call i32 @llvm.umin.i32(i32 %sub.i73, i32 %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i74 = icmp eq i32 %15, 0
  br i1 %tobool.not.i74, label %glink_rpm_tx_write_one.exit.if.end.i80_crit_edge, label %if.then.i78

glink_rpm_tx_write_one.exit.if.end.i80_crit_edge: ; preds = %glink_rpm_tx_write_one.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i80

if.then.i78:                                      ; preds = %glink_rpm_tx_write_one.exit
  call void @__sanitizer_cov_trace_pc() #9
  %fifo.i75 = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 3
  %16 = ptrtoint ptr %fifo.i75 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fifo.i75, align 4
  %add.ptr.i76 = getelementptr i8, ptr %17, i32 %spec.select.i
  %div36.i77 = lshr i32 %15, 2
  tail call void @__iowrite32_copy(ptr noundef %add.ptr.i76, ptr noundef %data, i32 noundef %div36.i77) #7
  br label %if.end.i80

if.end.i80:                                       ; preds = %if.then.i78, %glink_rpm_tx_write_one.exit.if.end.i80_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i73, i32 %and)
  %cmp1.not.not.i79 = icmp ult i32 %sub.i73, %and
  br i1 %cmp1.not.not.i79, label %if.then2.i85, label %if.end.i80.glink_rpm_tx_write_one.exit90_crit_edge

if.end.i80.glink_rpm_tx_write_one.exit90_crit_edge: ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %glink_rpm_tx_write_one.exit90

if.then2.i85:                                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  %fifo3.i81 = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 3
  %18 = ptrtoint ptr %fifo3.i81 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fifo3.i81, align 4
  %add.ptr4.i82 = getelementptr i8, ptr %data, i32 %15
  %sub5.i83 = sub i32 %and, %15
  %div635.i84 = lshr i32 %sub5.i83, 2
  tail call void @__iowrite32_copy(ptr noundef %19, ptr noundef %add.ptr4.i82, i32 noundef %div635.i84) #7
  br label %glink_rpm_tx_write_one.exit90

glink_rpm_tx_write_one.exit90:                    ; preds = %if.then2.i85, %if.end.i80.glink_rpm_tx_write_one.exit90_crit_edge
  %add.i86 = add i32 %spec.select.i, %and
  %20 = ptrtoint ptr %glink_pipe to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %glink_pipe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i86, i32 %21)
  %cmp10.not.i87 = icmp ult i32 %add.i86, %21
  %sub14.i88 = select i1 %cmp10.not.i87, i32 0, i32 %21
  %spec.select.i89 = sub i32 %add.i86, %sub14.i88
  %add34 = add i32 %add, 7
  %and35 = and i32 %add34, -8
  %and38 = and i32 %add, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and35, i32 %and38)
  %tobool40.not = icmp eq i32 %and35, %and38
  br i1 %tobool40.not, label %glink_rpm_tx_write_one.exit90.do.body45_crit_edge, label %if.then41

glink_rpm_tx_write_one.exit90.do.body45_crit_edge: ; preds = %glink_rpm_tx_write_one.exit90
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body45

if.then41:                                        ; preds = %glink_rpm_tx_write_one.exit90
  %sub39 = sub i32 %and35, %and38
  %sub.i91 = sub i32 %21, %spec.select.i89
  %22 = tail call i32 @llvm.umin.i32(i32 %sub.i91, i32 %sub39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i92 = icmp eq i32 %22, 0
  br i1 %tobool.not.i92, label %if.then41.if.end.i98_crit_edge, label %if.then.i96

if.then41.if.end.i98_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i98

if.then.i96:                                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %fifo.i93 = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 3
  %23 = ptrtoint ptr %fifo.i93 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fifo.i93, align 4
  %add.ptr.i94 = getelementptr i8, ptr %24, i32 %spec.select.i89
  %div36.i95 = lshr i32 %22, 2
  call void @__iowrite32_copy(ptr noundef %add.ptr.i94, ptr noundef nonnull %padding, i32 noundef %div36.i95) #7
  br label %if.end.i98

if.end.i98:                                       ; preds = %if.then.i96, %if.then41.if.end.i98_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i91, i32 %sub39)
  %cmp1.not.not.i97 = icmp ult i32 %sub.i91, %sub39
  br i1 %cmp1.not.not.i97, label %if.then2.i103, label %if.end.i98.glink_rpm_tx_write_one.exit108_crit_edge

if.end.i98.glink_rpm_tx_write_one.exit108_crit_edge: ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %glink_rpm_tx_write_one.exit108

if.then2.i103:                                    ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #9
  %fifo3.i99 = getelementptr inbounds %struct.glink_rpm_pipe, ptr %glink_pipe, i32 0, i32 3
  %25 = ptrtoint ptr %fifo3.i99 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fifo3.i99, align 4
  %add.ptr4.i100 = getelementptr i8, ptr %padding, i32 %22
  %sub5.i101 = sub i32 %sub39, %22
  %div635.i102 = lshr i32 %sub5.i101, 2
  call void @__iowrite32_copy(ptr noundef %26, ptr noundef %add.ptr4.i100, i32 noundef %div635.i102) #7
  br label %glink_rpm_tx_write_one.exit108

glink_rpm_tx_write_one.exit108:                   ; preds = %if.then2.i103, %if.end.i98.glink_rpm_tx_write_one.exit108_crit_edge
  %add.i104 = add i32 %spec.select.i89, %sub39
  %27 = ptrtoint ptr %glink_pipe to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %glink_pipe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i104, i32 %28)
  %cmp10.not.i105 = icmp ult i32 %add.i104, %28
  %sub14.i106 = select i1 %cmp10.not.i105, i32 0, i32 %28
  %spec.select.i107 = sub i32 %add.i104, %sub14.i106
  br label %do.body45

do.body45:                                        ; preds = %glink_rpm_tx_write_one.exit108, %glink_rpm_tx_write_one.exit90.do.body45_crit_edge
  %head.0 = phi i32 [ %spec.select.i107, %glink_rpm_tx_write_one.exit108 ], [ %spec.select.i89, %glink_rpm_tx_write_one.exit90.do.body45_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @arm_heavy_mb() #7
  %29 = call i32 @llvm.bswap.i32(i32 %head.0)
  %30 = ptrtoint ptr %head29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head29, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %do.body45, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %padding) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_glink_native_probe(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ioread32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_glink_native_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_qcom_glink_rpm__231_341_glink_rpm_init4, !1, !"__initcall__kmod_qcom_glink_rpm__231_341_glink_rpm_init4", i1 false, i1 false}
!1 = !{!"../drivers/rpmsg/qcom_glink_rpm.c", i32 341, i32 1}
!2 = !{ptr @__exitcall_glink_rpm_exit, !3, !"__exitcall_glink_rpm_exit", i1 false, i1 false}
!3 = !{!"../drivers/rpmsg/qcom_glink_rpm.c", i32 347, i32 1}
!4 = !{ptr @__UNIQUE_ID_author232, !5, !"__UNIQUE_ID_author232", i1 false, i1 false}
!5 = !{!"../drivers/rpmsg/qcom_glink_rpm.c", i32 349, i32 1}
!6 = !{ptr @__UNIQUE_ID_description233, !7, !"__UNIQUE_ID_description233", i1 false, i1 false}
!7 = !{!"../drivers/rpmsg/qcom_glink_rpm.c", i32 350, i32 1}
!8 = !{ptr @__UNIQUE_ID_file234, !9, !"__UNIQUE_ID_file234", i1 false, i1 false}
!9 = !{!"../drivers/rpmsg/qcom_glink_rpm.c", i32 351, i32 1}
!10 = !{ptr @__UNIQUE_ID_license235, !9, !"__UNIQUE_ID_license235", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/rpmsg/qcom_glink_rpm.c", i32 332, i32 11}
!13 = !{ptr @glink_rpm_driver, !14, !"glink_rpm_driver", i1 false, i1 false}
!14 = !{!"../drivers/rpmsg/qcom_glink_rpm.c", i32 328, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/rpmsg/qcom_glink_rpm.c", i32 274, i32 38}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rpmsg/qcom_glink_rpm.c", i32 206, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @glink_rpm_parse_toc._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @glink_rpm_parse_toc._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rpmsg/qcom_glink_rpm.c", i32 212, i32 3}
!27 = !{ptr @glink_rpm_parse_toc._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @glink_rpm_parse_toc._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rpmsg/qcom_glink_rpm.c", i32 222, i32 4}
!31 = !{ptr @glink_rpm_parse_toc._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @glink_rpm_parse_toc._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rpmsg/qcom_glink_rpm.c", i32 245, i32 3}
!35 = !{ptr @glink_rpm_parse_toc._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @glink_rpm_parse_toc._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rpmsg/qcom_glink_rpm.c", i32 161, i32 6}
!39 = !{ptr @glink_rpm_of_match, !40, !"glink_rpm_of_match", i1 false, i1 false}
!40 = !{!"../drivers/rpmsg/qcom_glink_rpm.c", i32 322, i32 34}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2153967194}
!51 = !{i64 4391733}
!52 = !{i64 2153967567}
!53 = !{i64 4392151}
!54 = !{i64 2153944892}
!55 = !{i64 2153945350}
!56 = !{i64 2153947141}
!57 = !{i64 2153950877}
!58 = !{i64 2153951085}
!59 = !{i64 2153953047}
!60 = !{i64 2153953505}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2153958091}
!63 = !{i64 2153958789}
