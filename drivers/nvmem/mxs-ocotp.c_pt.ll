; ModuleID = '/llk/IR_all_yes/drivers/nvmem/mxs-ocotp.c_pt.bc'
source_filename = "../drivers/nvmem/mxs-ocotp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mxs_data = type { i32 }
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
%struct.mxs_ocotp = type { ptr, ptr, ptr }

@__initcall__kmod_nvmem_mxs_ocotp__183_194_mxs_ocotp_driver_init6 = internal global ptr @mxs_ocotp_driver_init, section ".initcall6.init", align 4
@mxs_ocotp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxs_ocotp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxs_ocotp_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxs_ocotp_driver_exit = internal global ptr @mxs_ocotp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [55 x i8] c"nvmem_mxs_ocotp.author=Stefan Wahren <wahrenst@gmx.net\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [62 x i8] c"nvmem_mxs_ocotp.description=driver for OCOTP in i.MX23/i.MX28\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [51 x i8] c"nvmem_mxs_ocotp.file=drivers/nvmem/nvmem-mxs-ocotp\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [31 x i8] c"nvmem_mxs_ocotp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mxs-ocotp\00", [22 x i8] zeroinitializer }, align 32
@mxs_ocotp_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx23_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx28_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mxs_ocotp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to prepare clk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxs_ocotp_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nvmem/mxs-ocotp.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxs_ocotp_probe._entry_ptr = internal global ptr @mxs_ocotp_probe._entry, section ".printk_index", align 4
@ocotp_config = internal global { %struct.nvmem_config, [40 x i8] } { %struct.nvmem_config { ptr null, ptr @.str, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @mxs_ocotp_read, ptr null, ptr null, i32 0, i32 4, i32 16, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@imx23_data = internal constant { %struct.mxs_data, [28 x i8] } { %struct.mxs_data { i32 544 }, [28 x i8] zeroinitializer }, align 32
@imx28_data = internal constant { %struct.mxs_data, [28 x i8] } { %struct.mxs_data { i32 672 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"mxs_ocotp_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 186, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 189, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"mxs_ocotp_match\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 126, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 164, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"ocotp_config\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 107, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"imx23_data\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 118, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"imx28_data\00", align 1
@___asan_gen_.40 = private constant [29 x i8] c"../drivers/nvmem/mxs-ocotp.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 122, i32 30 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_mxs_ocotp_driver_exit, ptr @__initcall__kmod_nvmem_mxs_ocotp__183_194_mxs_ocotp_driver_init6, ptr @mxs_ocotp_driver_exit, ptr @mxs_ocotp_probe._entry, ptr @mxs_ocotp_probe._entry_ptr, ptr @mxs_ocotp_driver, ptr @.str, ptr @mxs_ocotp_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ocotp_config, ptr @imx23_data, ptr @imx28_data], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_ocotp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_ocotp_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_ocotp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocotp_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx23_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx28_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_ocotp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxs_ocotp_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxs_ocotp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxs_ocotp_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_ocotp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_match_table, align 4
  %call = tail call ptr @of_match_device(ptr noundef %3, ptr noundef %dev1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data2 = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.mxs_ocotp, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16, ptr %call.i, align 4
  %cmp.i73 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %call24 = tail call i32 @clk_prepare(ptr noundef %call16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %do.end, label %if.end26

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call24) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %call.i74 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @mxs_ocotp_action, ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i, label %if.end32, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %12 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data2, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  store i32 %15, ptr getelementptr inbounds (%struct.nvmem_config, ptr @ocotp_config, i32 0, i32 18), align 4
  store ptr %call.i, ptr getelementptr inbounds (%struct.nvmem_config, ptr @ocotp_config, i32 0, i32 21), align 4
  store ptr %dev1, ptr @ocotp_config, align 4
  %call34 = tail call ptr @devm_nvmem_register(ptr noundef %dev1, ptr noundef nonnull @ocotp_config) #5
  %nvmem = getelementptr inbounds %struct.mxs_ocotp, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %nvmem to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call34, ptr %nvmem, align 4
  %cmp.i75 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then37, %devm_add_action_or_reset.exit, %do.end, %if.then19, %if.then11, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then11 ], [ %9, %if.then19 ], [ %call24, %do.end ], [ %17, %if.then37 ], [ 0, %if.end40 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i74, %devm_add_action_or_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_ocotp_action(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_unprepare(ptr noundef %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_ocotp_read(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr nocapture noundef writeonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %call = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.mxs_ocotp, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 131072) #5, !srcloc !40
  br label %while.body.i

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %do.body
  %dec20.i = phi i32 [ 9999, %do.body ], [ %dec.i, %do.end.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %and.i = and i32 %7, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body5, label %do.end.i

do.end.i:                                         ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !44
  %dec.i = add nsw i32 %dec20.i, -1
  %tobool.not.i = icmp eq i32 %dec20.i, 0
  br i1 %tobool.not.i, label %mxs_ocotp_wait.exit, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

mxs_ocotp_wait.exit:                              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and9.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %and12.i = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %..i = select i1 %tobool13.not.i, i32 0, i32 -5
  %retval.0.i = select i1 %tobool10.not.i, i32 %..i, i32 -16
  br label %disable_clk

do.body5:                                         ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 1048576) #5, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #5
  br label %while.body.i51

while.body.i51:                                   ; preds = %do.end.i54.while.body.i51_crit_edge, %do.body5
  %dec20.i48 = phi i32 [ 9999, %do.body5 ], [ %dec.i52, %do.end.i54.while.body.i51_crit_edge ]
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !41
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %and.i49 = and i32 %14, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool2.not.i50 = icmp eq i32 %and.i49, 0
  br i1 %tobool2.not.i50, label %while.body.i51.mxs_ocotp_wait.exit61_crit_edge, label %do.end.i54

while.body.i51.mxs_ocotp_wait.exit61_crit_edge:   ; preds = %while.body.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxs_ocotp_wait.exit61

do.end.i54:                                       ; preds = %while.body.i51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !44
  %dec.i52 = add nsw i32 %dec20.i48, -1
  %tobool.not.i53 = icmp eq i32 %dec20.i48, 0
  br i1 %tobool.not.i53, label %do.end.i54.mxs_ocotp_wait.exit61_crit_edge, label %do.end.i54.while.body.i51_crit_edge

do.end.i54.while.body.i51_crit_edge:              ; preds = %do.end.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i51

do.end.i54.mxs_ocotp_wait.exit61_crit_edge:       ; preds = %do.end.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxs_ocotp_wait.exit61

mxs_ocotp_wait.exit61:                            ; preds = %do.end.i54.mxs_ocotp_wait.exit61_crit_edge, %while.body.i51.mxs_ocotp_wait.exit61_crit_edge
  %and9.i55 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i55)
  %tobool10.not.i56 = icmp eq i32 %and9.i55, 0
  %and12.i57 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i57)
  %tobool13.not.i58 = icmp eq i32 %and12.i57, 0
  %..i59 = select i1 %tobool13.not.i58, i32 0, i32 -5
  %retval.0.i60 = select i1 %tobool10.not.i56, i32 %..i59, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %15 = icmp ne i32 %and.i49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool14.not63 = icmp eq i32 %bytes, 0
  %or.cond68 = or i1 %15, %tobool14.not63
  br i1 %or.cond68, label %mxs_ocotp_wait.exit61.do.body23_crit_edge, label %mxs_ocotp_wait.exit61.while.body_crit_edge

mxs_ocotp_wait.exit61.while.body_crit_edge:       ; preds = %mxs_ocotp_wait.exit61
  br label %while.body

mxs_ocotp_wait.exit61.do.body23_crit_edge:        ; preds = %mxs_ocotp_wait.exit61
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %mxs_ocotp_wait.exit61.while.body_crit_edge
  %offset.addr.066 = phi i32 [ %add, %if.end22.while.body_crit_edge ], [ %offset, %mxs_ocotp_wait.exit61.while.body_crit_edge ]
  %bytes.addr.065 = phi i32 [ %sub, %if.end22.while.body_crit_edge ], [ %bytes, %mxs_ocotp_wait.exit61.while.body_crit_edge ]
  %buf.064 = phi ptr [ %buf.1, %if.end22.while.body_crit_edge ], [ %val, %mxs_ocotp_wait.exit61.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %offset.addr.066)
  %cmp = icmp ugt i32 %offset.addr.066, 31
  %rem = and i32 %offset.addr.066, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool15.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %tobool15.not
  br i1 %or.cond, label %if.else, label %while.body.if.end22_crit_edge

while.body.if.end22_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %17, i32 %offset.addr.066
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #5, !srcloc !41
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  br label %if.end22

if.end22:                                         ; preds = %if.else, %while.body.if.end22_crit_edge
  %storemerge = phi i32 [ %19, %if.else ], [ 0, %while.body.if.end22_crit_edge ]
  %buf.1 = getelementptr i32, ptr %buf.064, i32 1
  %20 = ptrtoint ptr %buf.064 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %buf.064, align 4
  %sub = add i32 %bytes.addr.065, -4
  %add = add i32 %offset.addr.066, 4
  %tobool14.not = icmp eq i32 %sub, 0
  br i1 %tobool14.not, label %if.end22.do.body23_crit_edge, label %if.end22.while.body_crit_edge

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end22.do.body23_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23

do.body23:                                        ; preds = %if.end22.do.body23_crit_edge, %mxs_ocotp_wait.exit61.do.body23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 1048576) #5, !srcloc !40
  br label %disable_clk

disable_clk:                                      ; preds = %do.body23, %mxs_ocotp_wait.exit
  %ret.0 = phi i32 [ %retval.0.i, %mxs_ocotp_wait.exit ], [ %retval.0.i60, %do.body23 ]
  %23 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %context, align 4
  tail call void @clk_disable(ptr noundef %24) #5
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %disable_clk ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_nvmem_mxs_ocotp__183_194_mxs_ocotp_driver_init6, !1, !"__initcall__kmod_nvmem_mxs_ocotp__183_194_mxs_ocotp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nvmem/mxs-ocotp.c", i32 194, i32 1}
!2 = !{ptr @__exitcall_mxs_ocotp_driver_exit, !1, !"__exitcall_mxs_ocotp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/nvmem/mxs-ocotp.c", i32 195, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/nvmem/mxs-ocotp.c", i32 196, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/nvmem/mxs-ocotp.c", i32 197, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nvmem/mxs-ocotp.c", i32 189, i32 11}
!12 = !{ptr @mxs_ocotp_driver, !13, !"mxs_ocotp_driver", i1 false, i1 false}
!13 = !{!"../drivers/nvmem/mxs-ocotp.c", i32 186, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nvmem/mxs-ocotp.c", i32 164, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mxs_ocotp_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mxs_ocotp_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ocotp_config, !23, !"ocotp_config", i1 false, i1 false}
!23 = !{!"../drivers/nvmem/mxs-ocotp.c", i32 107, i32 28}
!24 = !{ptr @mxs_ocotp_match, !25, !"mxs_ocotp_match", i1 false, i1 false}
!25 = !{!"../drivers/nvmem/mxs-ocotp.c", i32 126, i32 34}
!26 = !{ptr @imx23_data, !27, !"imx23_data", i1 false, i1 false}
!27 = !{!"../drivers/nvmem/mxs-ocotp.c", i32 118, i32 30}
!28 = !{ptr @imx28_data, !29, !"imx28_data", i1 false, i1 false}
!29 = !{!"../drivers/nvmem/mxs-ocotp.c", i32 122, i32 30}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2152962612}
!40 = !{i64 4812220}
!41 = !{i64 4812638}
!42 = !{i64 2152961682}
!43 = !{i64 2152962121}
!44 = !{i64 2152961963}
!45 = !{i64 2152963182}
!46 = !{i64 2152964461}
!47 = !{i64 2152964786}
