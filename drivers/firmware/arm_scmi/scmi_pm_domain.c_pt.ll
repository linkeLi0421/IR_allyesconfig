; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/scmi_pm_domain.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/scmi_pm_domain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_device_id = type { i8, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
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
%struct.scmi_handle = type { ptr, ptr, ptr, ptr, ptr }
%struct.scmi_power_proto_ops = type { ptr, ptr, ptr, ptr }
%struct.scmi_pm_domain = type { %struct.generic_pm_domain, ptr, ptr, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.genpd_onecell_data = type { ptr, i32, ptr }

@__initcall__kmod_scmi_pm_domain__170_155_scmi_power_domain_driver_init6 = internal global ptr @scmi_power_domain_driver_init, section ".initcall6.init", align 4
@scmi_power_domain_driver = internal global { %struct.scmi_driver, [36 x i8] } { %struct.scmi_driver { ptr @.str.1, ptr @scmi_pm_domain_probe, ptr null, ptr @scmi_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_scmi_power_domain_driver_exit = internal global ptr @scmi_power_domain_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [58 x i8] c"scmi_pm_domain.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [56 x i8] c"scmi_pm_domain.description=ARM SCMI power domain driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [61 x i8] c"scmi_pm_domain.file=drivers/firmware/arm_scmi/scmi_pm_domain\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [30 x i8] c"scmi_pm_domain.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"scmi_pm_domain\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scmi-power-domain\00", [46 x i8] zeroinitializer }, align 32
@scmi_id_table = internal constant { [2 x %struct.scmi_device_id], [16 x i8] } { [2 x %struct.scmi_device_id] [%struct.scmi_device_id { i8 17, ptr @.str.11 }, %struct.scmi_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@power_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@scmi_pm_domain_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 97, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"number of domains not found\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scmi_pm_domain_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/firmware/arm_scmi/scmi_pm_domain.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scmi_pm_domain_probe._entry_ptr = internal global ptr @scmi_pm_domain_probe._entry, section ".printk_index", align 4
@scmi_pm_domain_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 117, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get state for domain %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@scmi_pm_domain_probe._entry_ptr.10 = internal global ptr @scmi_pm_domain_probe._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"genpd\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [25 x i8] c"scmi_power_domain_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 150, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 155, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 151, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"scmi_id_table\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 144, i32 36 }
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"power_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 15, i32 43 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 97, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 117, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [46 x i8] c"../drivers/firmware/arm_scmi/scmi_pm_domain.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 145, i32 25 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_scmi_power_domain_driver_exit, ptr @__initcall__kmod_scmi_pm_domain__170_155_scmi_power_domain_driver_init6, ptr @scmi_pm_domain_probe._entry, ptr @scmi_pm_domain_probe._entry.7, ptr @scmi_pm_domain_probe._entry_ptr, ptr @scmi_pm_domain_probe._entry_ptr.10, ptr @scmi_power_domain_driver_exit, ptr @scmi_power_domain_driver, ptr @.str, ptr @.str.1, ptr @scmi_id_table, ptr @power_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_power_domain_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_pm_domain_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_pm_domain_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_power_domain_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_driver_register(ptr noundef nonnull @scmi_power_domain_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scmi_power_domain_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @scmi_driver_unregister(ptr noundef nonnull @scmi_power_domain_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_pm_domain_probe(ptr noundef %sdev) #2 align 64 {
entry:
  %ph = alloca ptr, align 4
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %handle2 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 4
  %2 = ptrtoint ptr %handle2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ph) #6
  %4 = ptrtoint ptr %ph to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %ph, align 4, !annotation !43
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

if.end:                                           ; preds = %entry
  %devm_protocol_get = getelementptr inbounds %struct.scmi_handle, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %devm_protocol_get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devm_protocol_get, align 4
  %call = call ptr %6(ptr noundef %sdev, i8 noundef zeroext 17, ptr noundef nonnull %ph) #6
  store ptr %call, ptr @power_ops, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call to i32
  br label %cleanup46

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %10 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ph, align 4
  %call7 = call i32 %9(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup46

if.end9:                                          ; preds = %if.end6
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call7, i32 1368) #6
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end9.cleanup46_crit_edge, label %devm_kcalloc.exit, !prof !44

if.end9.cleanup46_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

devm_kcalloc.exit:                                ; preds = %if.end9
  %14 = extractvalue { i32, i1 } %12, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %14, i32 noundef 3520) #6
  %tobool11.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool11.not, label %devm_kcalloc.exit.cleanup46_crit_edge, label %if.end13

devm_kcalloc.exit.cleanup46_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

if.end13:                                         ; preds = %devm_kcalloc.exit
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #6
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end13.cleanup46_crit_edge, label %devm_kcalloc.exit95

if.end13.cleanup46_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

devm_kcalloc.exit95:                              ; preds = %if.end13
  %15 = shl nuw nsw i32 %call7, 2
  %call5.i.i92 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %15, i32 noundef 3520) #6
  %tobool19.not = icmp eq ptr %call5.i.i92, null
  br i1 %tobool19.not, label %devm_kcalloc.exit95.cleanup46_crit_edge, label %for.cond.preheader

devm_kcalloc.exit95.cleanup46_crit_edge:          ; preds = %devm_kcalloc.exit95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

for.cond.preheader:                               ; preds = %devm_kcalloc.exit95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp22100.not = icmp eq i32 %call7, 0
  br i1 %cmp22100.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %scmi_pd.0103 = phi ptr [ %incdec.ptr, %cleanup.for.body_crit_edge ], [ %call5.i.i, %for.cond.preheader.for.body_crit_edge ]
  %i.0101 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #6
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %state, align 4, !annotation !43
  %17 = load ptr, ptr @power_ops, align 4
  %state_get = getelementptr inbounds %struct.scmi_power_proto_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %state_get to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state_get, align 4
  %20 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ph, align 4
  %call23 = call i32 %19(ptr noundef %21, i32 noundef %i.0101, ptr noundef nonnull %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end29, label %do.end28

do.end28:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %i.0101) #9
  br label %cleanup

if.end29:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %domain = getelementptr inbounds %struct.scmi_pm_domain, ptr %scmi_pd.0103, i32 0, i32 3
  %22 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.0101, ptr %domain, align 8
  %23 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ph, align 4
  %ph30 = getelementptr inbounds %struct.scmi_pm_domain, ptr %scmi_pd.0103, i32 0, i32 1
  %25 = ptrtoint ptr %ph30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %ph30, align 8
  %26 = load ptr, ptr @power_ops, align 4
  %name_get = getelementptr inbounds %struct.scmi_power_proto_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %name_get to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name_get, align 4
  %call31 = call ptr %28(ptr noundef %24, i32 noundef %i.0101) #6
  %name = getelementptr inbounds %struct.scmi_pm_domain, ptr %scmi_pd.0103, i32 0, i32 2
  %29 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call31, ptr %name, align 4
  %name33 = getelementptr inbounds %struct.generic_pm_domain, ptr %scmi_pd.0103, i32 0, i32 10
  %30 = ptrtoint ptr %name33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call31, ptr %name33, align 8
  %power_off = getelementptr inbounds %struct.generic_pm_domain, ptr %scmi_pd.0103, i32 0, i32 18
  %31 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @scmi_pd_power_off, ptr %power_off, align 8
  %power_on = getelementptr inbounds %struct.generic_pm_domain, ptr %scmi_pd.0103, i32 0, i32 19
  %32 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @scmi_pd_power_on, ptr %power_on, align 4
  %attach_dev = getelementptr inbounds %struct.generic_pm_domain, ptr %scmi_pd.0103, i32 0, i32 30
  %33 = ptrtoint ptr %attach_dev to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @scmi_pd_attach_dev, ptr %attach_dev, align 4
  %detach_dev = getelementptr inbounds %struct.generic_pm_domain, ptr %scmi_pd.0103, i32 0, i32 31
  %34 = ptrtoint ptr %detach_dev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @scmi_pd_detach_dev, ptr %detach_dev, align 8
  %flags = getelementptr inbounds %struct.generic_pm_domain, ptr %scmi_pd.0103, i32 0, i32 32
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 9, ptr %flags, align 4
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %37)
  %cmp40 = icmp eq i32 %37, 1073741824
  %call41 = call i32 @pm_genpd_init(ptr noundef %scmi_pd.0103, ptr noundef null, i1 noundef zeroext %cmp40) #6
  %arrayidx = getelementptr ptr, ptr %call5.i.i92, i32 %i.0101
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %scmi_pd.0103, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #6
  %inc = add nuw nsw i32 %i.0101, 1
  %incdec.ptr = getelementptr %struct.scmi_pm_domain, ptr %scmi_pd.0103, i32 1
  %exitcond.not = icmp eq i32 %inc, %call7
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call5.i.i92, ptr %call.i, align 4
  %num_domains44 = getelementptr inbounds %struct.genpd_onecell_data, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %num_domains44 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call7, ptr %num_domains44, align 4
  %call45 = call i32 @of_genpd_add_provider_onecell(ptr noundef %1, ptr noundef nonnull %call.i) #6
  br label %cleanup46

cleanup46:                                        ; preds = %for.end, %devm_kcalloc.exit95.cleanup46_crit_edge, %if.end13.cleanup46_crit_edge, %devm_kcalloc.exit.cleanup46_crit_edge, %if.end9.cleanup46_crit_edge, %do.end, %if.then4, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ %7, %if.then4 ], [ %call7, %do.end ], [ %call45, %for.end ], [ -19, %entry.cleanup46_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup46_crit_edge ], [ -12, %if.end13.cleanup46_crit_edge ], [ -12, %devm_kcalloc.exit95.cleanup46_crit_edge ], [ -12, %if.end9.cleanup46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ph) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_pd_power_off(ptr nocapture noundef readonly %domain) #2 align 64 {
entry:
  %ret_state.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret_state.i) #6
  %0 = ptrtoint ptr %ret_state.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret_state.i, align 4, !annotation !43
  %1 = load ptr, ptr @power_ops, align 4
  %state_set.i = getelementptr inbounds %struct.scmi_power_proto_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state_set.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state_set.i, align 4
  %ph.i = getelementptr inbounds %struct.scmi_pm_domain, ptr %domain, i32 0, i32 1
  %4 = ptrtoint ptr %ph.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ph.i, align 8
  %domain1.i = getelementptr inbounds %struct.scmi_pm_domain, ptr %domain, i32 0, i32 3
  %6 = ptrtoint ptr %domain1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %domain1.i, align 8
  %call.i = tail call i32 %3(ptr noundef %5, i32 noundef %7, i32 noundef 1073741824) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end7.i, label %entry.if.end10.i_crit_edge

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end7.i:                                        ; preds = %entry
  %8 = load ptr, ptr @power_ops, align 4
  %state_get.i = getelementptr inbounds %struct.scmi_power_proto_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %state_get.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state_get.i, align 4
  %11 = ptrtoint ptr %ph.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ph.i, align 8
  %13 = ptrtoint ptr %domain1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %domain1.i, align 8
  %call6.i = call i32 %10(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %ret_state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool8.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %if.end7.i.if.end10.i_crit_edge

if.end7.i.if.end10.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %15 = ptrtoint ptr %ret_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ret_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 1073741824
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %land.lhs.true.i.scmi_pd_power.exit_crit_edge

land.lhs.true.i.scmi_pd_power.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scmi_pd_power.exit

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %if.end7.i.if.end10.i_crit_edge, %entry.if.end10.i_crit_edge
  %ret.022.i = phi i32 [ 0, %land.lhs.true.i.if.end10.i_crit_edge ], [ %call6.i, %if.end7.i.if.end10.i_crit_edge ], [ %call.i, %entry.if.end10.i_crit_edge ]
  br label %scmi_pd_power.exit

scmi_pd_power.exit:                               ; preds = %if.end10.i, %land.lhs.true.i.scmi_pd_power.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.022.i, %if.end10.i ], [ -5, %land.lhs.true.i.scmi_pd_power.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret_state.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_pd_power_on(ptr nocapture noundef readonly %domain) #2 align 64 {
entry:
  %ret_state.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret_state.i) #6
  %0 = ptrtoint ptr %ret_state.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret_state.i, align 4, !annotation !43
  %1 = load ptr, ptr @power_ops, align 4
  %state_set.i = getelementptr inbounds %struct.scmi_power_proto_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state_set.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state_set.i, align 4
  %ph.i = getelementptr inbounds %struct.scmi_pm_domain, ptr %domain, i32 0, i32 1
  %4 = ptrtoint ptr %ph.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ph.i, align 8
  %domain1.i = getelementptr inbounds %struct.scmi_pm_domain, ptr %domain, i32 0, i32 3
  %6 = ptrtoint ptr %domain1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %domain1.i, align 8
  %call.i = tail call i32 %3(ptr noundef %5, i32 noundef %7, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end7.i, label %entry.if.end10.i_crit_edge

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end7.i:                                        ; preds = %entry
  %8 = load ptr, ptr @power_ops, align 4
  %state_get.i = getelementptr inbounds %struct.scmi_power_proto_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %state_get.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state_get.i, align 4
  %11 = ptrtoint ptr %ph.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ph.i, align 8
  %13 = ptrtoint ptr %domain1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %domain1.i, align 8
  %call6.i = call i32 %10(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %ret_state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool8.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %if.end7.i.if.end10.i_crit_edge

if.end7.i.if.end10.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %15 = ptrtoint ptr %ret_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ret_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %land.lhs.true.i.scmi_pd_power.exit_crit_edge

land.lhs.true.i.scmi_pd_power.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scmi_pd_power.exit

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %if.end7.i.if.end10.i_crit_edge, %entry.if.end10.i_crit_edge
  %ret.022.i = phi i32 [ 0, %land.lhs.true.i.if.end10.i_crit_edge ], [ %call6.i, %if.end7.i.if.end10.i_crit_edge ], [ %call.i, %entry.if.end10.i_crit_edge ]
  br label %scmi_pd_power.exit

scmi_pd_power.exit:                               ; preds = %if.end10.i, %land.lhs.true.i.scmi_pd_power.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.022.i, %if.end10.i ], [ -5, %land.lhs.true.i.scmi_pd_power.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret_state.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_pd_attach_dev(ptr nocapture noundef readnone %pd, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_clk_create(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @of_pm_clk_add_clks(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pm_clk_destroy(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_pd_detach_dev(ptr nocapture noundef readnone %pd, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pm_clk_destroy(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pm_clk_add_clks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_scmi_pm_domain__170_155_scmi_power_domain_driver_init6, !1, !"__initcall__kmod_scmi_pm_domain__170_155_scmi_power_domain_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/firmware/arm_scmi/scmi_pm_domain.c", i32 155, i32 1}
!2 = !{ptr @__exitcall_scmi_power_domain_driver_exit, !1, !"__exitcall_scmi_power_domain_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/firmware/arm_scmi/scmi_pm_domain.c", i32 157, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/firmware/arm_scmi/scmi_pm_domain.c", i32 158, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/firmware/arm_scmi/scmi_pm_domain.c", i32 159, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/firmware/arm_scmi/scmi_pm_domain.c", i32 151, i32 10}
!13 = !{ptr @scmi_power_domain_driver, !14, !"scmi_power_domain_driver", i1 false, i1 false}
!14 = !{!"../drivers/firmware/arm_scmi/scmi_pm_domain.c", i32 150, i32 27}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/firmware/arm_scmi/scmi_pm_domain.c", i32 97, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @scmi_pm_domain_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @scmi_pm_domain_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/firmware/arm_scmi/scmi_pm_domain.c", i32 117, i32 4}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @scmi_pm_domain_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @scmi_pm_domain_probe._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @power_ops, !29, !"power_ops", i1 false, i1 false}
!29 = !{!"../drivers/firmware/arm_scmi/scmi_pm_domain.c", i32 15, i32 43}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/firmware/arm_scmi/scmi_pm_domain.c", i32 145, i32 25}
!32 = !{ptr @scmi_id_table, !33, !"scmi_id_table", i1 false, i1 false}
!33 = !{!"../drivers/firmware/arm_scmi/scmi_pm_domain.c", i32 144, i32 36}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{!"branch_weights", i32 1, i32 2000}
