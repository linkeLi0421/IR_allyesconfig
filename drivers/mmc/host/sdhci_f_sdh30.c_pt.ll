; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci_f_sdh30.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci_f_sdh30.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [72 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }

@__initcall__kmod_sdhci_f_sdh30__271_231_sdhci_f_sdh30_driver_init6 = internal global ptr @sdhci_f_sdh30_driver_init, section ".initcall6.init", align 4
@sdhci_f_sdh30_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_f_sdh30_probe, ptr @sdhci_f_sdh30_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @f_sdh30_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_f_sdh30_driver_exit = internal global ptr @sdhci_f_sdh30_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description272 = internal constant [60 x i8] c"sdhci_f_sdh30.description=F_SDH30 SD Card Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file273 = internal constant [50 x i8] c"sdhci_f_sdh30.file=drivers/mmc/host/sdhci_f_sdh30\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [29 x i8] c"sdhci_f_sdh30.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author275 = internal constant [48 x i8] c"sdhci_f_sdh30.author=FUJITSU SEMICONDUCTOR LTD.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias276 = internal constant [37 x i8] c"sdhci_f_sdh30.alias=platform:f_sdh30\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"f_sdh30\00", [24 x i8] zeroinitializer }, align 32
@f_sdh30_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fujitsu,mb86s70-sdhci-3.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sdhci_pltfm_pmops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fujitsu,cmd-dat-delay-select\00", [35 x i8] zeroinitializer }, align 32
@sdhci_f_sdh30_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_f_sdh30_get_min_clock, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_f_sdh30_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr @sdhci_f_sdh30_soft_voltage_switch, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@sdhci_f_sdh30_soft_voltage_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 46, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: setting hs200\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sdhci_f_sdh30_soft_voltage_switch\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mmc/host/sdhci_f_sdh30.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_f_sdh30_soft_voltage_switch._entry_ptr = internal global ptr @sdhci_f_sdh30_soft_voltage_switch._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"sdhci_f_sdh30_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 219, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 221, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"f_sdh30_dt_ids\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 204, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 113, i32 7 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"sdhci_f_sdh30_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 79, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 134, i32 46 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 144, i32 40 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [36 x i8] c"../drivers/mmc/host/sdhci_f_sdh30.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 46, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias276, ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @__exitcall_sdhci_f_sdh30_driver_exit, ptr @__initcall__kmod_sdhci_f_sdh30__271_231_sdhci_f_sdh30_driver_init6, ptr @sdhci_f_sdh30_driver_exit, ptr @sdhci_f_sdh30_soft_voltage_switch._entry, ptr @sdhci_f_sdh30_soft_voltage_switch._entry_ptr, ptr @sdhci_f_sdh30_driver, ptr @.str, ptr @f_sdh30_dt_ids, ptr @.str.1, ptr @sdhci_f_sdh30_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_f_sdh30_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_sdh30_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_f_sdh30_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_f_sdh30_soft_voltage_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_f_sdh30_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_f_sdh30_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_f_sdh30_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_f_sdh30_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_f_sdh30_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @sdhci_alloc_host(ptr noundef %dev1, i32 noundef 20) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 81
  %dev8 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 3
  %1 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev8, align 4
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 67174400, ptr %quirks, align 4
  %quirks2 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 2
  %3 = ptrtoint ptr %quirks2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12288, ptr %quirks2, align 8
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %enable_cmd_dat_delay = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 4
  %frombool = zext i1 %call.i to i8
  %4 = ptrtoint ptr %enable_cmd_dat_delay to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %enable_cmd_dat_delay, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 10
  %5 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmc, align 8
  %call10 = tail call i32 @mmc_of_parse(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.end6.err_crit_edge

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end12:                                         ; preds = %if.end6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str, ptr %call2, align 128
  %ops = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 9
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sdhci_f_sdh30_ops, ptr %ops, align 4
  %irq13 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 3
  %10 = ptrtoint ptr %irq13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %irq13, align 4
  %call14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 4
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %ioaddr, align 16
  %cmp.i124 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call14 to i32
  br label %err

if.end20:                                         ; preds = %if.end12
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %if.end20.if.end50_crit_edge, label %dev_of_node.exit

if.end20.if.end50_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

dev_of_node.exit:                                 ; preds = %if.end20
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i, align 8
  %tobool22.not = icmp eq ptr %14, null
  br i1 %tobool22.not, label %dev_of_node.exit.if.end50_crit_edge, label %if.then23

dev_of_node.exit.if.end50_crit_edge:              ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then23:                                        ; preds = %dev_of_node.exit
  tail call void @sdhci_get_property(ptr noundef %pdev) #7
  %call25 = tail call ptr @devm_clk_get(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.2) #7
  %15 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25, ptr %private.i, align 4
  %cmp.i125 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call25 to i32
  br label %err

if.end31:                                         ; preds = %if.then23
  %call33 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.err_crit_edge

if.end31.err_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end36:                                         ; preds = %if.end31
  %call38 = tail call ptr @devm_clk_get(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.3) #7
  %clk = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 1
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call38, ptr %clk, align 4
  %cmp.i126 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call38 to i32
  br label %err_clk

if.end44:                                         ; preds = %if.end36
  %call46 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end44.if.end50_crit_edge, label %if.end44.err_clk_crit_edge

if.end44.err_clk_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end50:                                         ; preds = %if.end44.if.end50_crit_edge, %dev_of_node.exit.if.end50_crit_edge, %if.end20.if.end50_crit_edge
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i127 = icmp eq ptr %22, null
  br i1 %tobool.not.i127, label %if.else.i, label %if.then.i, !prof !43

if.then.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %call.i128 = tail call zeroext i16 %22(ptr noundef %call2, i32 noundef 256) #7
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i = getelementptr i8, ptr %24, i32 256
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !44
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i129 = phi i16 [ %call.i128, %if.then.i ], [ %26, %if.else.i ]
  %27 = and i16 %retval.0.i129, -96
  %28 = or i16 %27, 15
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i131 = icmp eq ptr %32, null
  br i1 %tobool.not.i131, label %do.body.i, label %if.then.i132, !prof !43

if.then.i132:                                     ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %32(ptr noundef %call2, i16 noundef zeroext %28, i32 noundef 256) #7
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %33 = tail call i16 @llvm.bswap.i16(i16 %28) #7
  %34 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i134 = getelementptr i8, ptr %35, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i134, i16 %33) #7, !srcloc !47
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i132
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool.not.i137 = icmp eq ptr %39, null
  br i1 %tobool.not.i137, label %if.else.i142, label %if.then.i139, !prof !43

if.then.i139:                                     ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i138 = tail call i32 %39(ptr noundef %call2, i32 noundef 292) #7
  br label %sdhci_readl.exit

if.else.i142:                                     ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i141 = getelementptr i8, ptr %41, i32 292
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #7, !srcloc !48
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i142, %if.then.i139
  %retval.0.i143 = phi i32 [ %call.i138, %if.then.i139 ], [ %43, %if.else.i142 ]
  %and54 = and i32 %retval.0.i143, -3
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i145 = icmp eq ptr %47, null
  br i1 %tobool.not.i145, label %do.body.i149, label %if.then.i146, !prof !43

if.then.i146:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %47(ptr noundef %call2, i32 noundef %and54, i32 noundef 292) #7
  br label %sdhci_writel.exit

do.body.i149:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %and54) #7
  %49 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i148 = getelementptr i8, ptr %50, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 %48) #7, !srcloc !51
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i149, %if.then.i146
  tail call void @msleep(i32 noundef 20) #7
  %or55 = or i32 %retval.0.i143, 2
  %51 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops, align 4
  %write_l.i152 = getelementptr inbounds %struct.sdhci_ops, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %write_l.i152 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_l.i152, align 4
  %tobool.not.i153 = icmp eq ptr %54, null
  br i1 %tobool.not.i153, label %do.body.i157, label %if.then.i154, !prof !43

if.then.i154:                                     ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %54(ptr noundef %call2, i32 noundef %or55, i32 noundef 292) #7
  br label %sdhci_writel.exit159

do.body.i157:                                     ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %or55) #7
  %56 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i156 = getelementptr i8, ptr %57, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %55) #7, !srcloc !51
  br label %sdhci_writel.exit159

sdhci_writel.exit159:                             ; preds = %do.body.i157, %if.then.i154
  %58 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %tobool.not.i161 = icmp eq ptr %61, null
  br i1 %tobool.not.i161, label %if.else.i166, label %if.then.i163, !prof !43

if.then.i163:                                     ; preds = %sdhci_writel.exit159
  call void @__sanitizer_cov_trace_pc() #9
  %call.i162 = tail call i32 %61(ptr noundef %call2, i32 noundef 64) #7
  br label %sdhci_readl.exit168

if.else.i166:                                     ; preds = %sdhci_writel.exit159
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i165 = getelementptr i8, ptr %63, i32 64
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #7, !srcloc !48
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  br label %sdhci_readl.exit168

sdhci_readl.exit168:                              ; preds = %if.else.i166, %if.then.i163
  %retval.0.i167 = phi i32 [ %call.i162, %if.then.i163 ], [ %65, %if.else.i166 ]
  %and57 = and i32 %retval.0.i167, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %sdhci_readl.exit168.if.end60_crit_edge, label %if.then59

sdhci_readl.exit168.if.end60_crit_edge:           ; preds = %sdhci_readl.exit168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then59:                                        ; preds = %sdhci_readl.exit168
  call void @__sanitizer_cov_trace_pc() #9
  %vendor_hs200 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 2
  %66 = ptrtoint ptr %vendor_hs200 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 16777216, ptr %vendor_hs200, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %sdhci_readl.exit168.if.end60_crit_edge
  %call61 = tail call i32 @sdhci_add_host(ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end60.cleanup_crit_edge, label %err_add_host

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_add_host:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %clk65 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 1
  %67 = ptrtoint ptr %clk65 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk65, align 4
  tail call void @clk_disable(ptr noundef %68) #7
  tail call void @clk_unprepare(ptr noundef %68) #7
  br label %err_clk

err_clk:                                          ; preds = %err_add_host, %if.end44.err_clk_crit_edge, %if.then41
  %ret.0 = phi i32 [ %18, %if.then41 ], [ %call46, %if.end44.err_clk_crit_edge ], [ %call61, %err_add_host ]
  %69 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %private.i, align 4
  tail call void @clk_disable(ptr noundef %70) #7
  tail call void @clk_unprepare(ptr noundef %70) #7
  br label %err

err:                                              ; preds = %err_clk, %if.end31.err_crit_edge, %if.then28, %if.then17, %if.end6.err_crit_edge
  %ret.1 = phi i32 [ %call10, %if.end6.err_crit_edge ], [ %12, %if.then17 ], [ %16, %if.then28 ], [ %call33, %if.end31.err_crit_edge ], [ %ret.0, %err_clk ]
  tail call void @sdhci_free_host(ptr noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end60.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then4 ], [ %ret.1, %err ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_f_sdh30_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  %conv = zext i1 %cmp to i32
  tail call void @sdhci_remove_host(ptr noundef %1, i32 noundef %conv) #7
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  tail call void @clk_disable(ptr noundef %6) #7
  tail call void @clk_unprepare(ptr noundef %6) #7
  %clk = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 1
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  tail call void @sdhci_free_host(ptr noundef %1) #7
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_alloc_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_f_sdh30_get_min_clock(ptr nocapture noundef readnone %host) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 400000
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_f_sdh30_reset(ptr noundef %host, i8 noundef zeroext %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !43

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i16 %3(ptr noundef %host, i32 noundef 44) #7
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 44
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !44
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i)
  %cmp = icmp eq i16 %retval.0.i, 0
  br i1 %cmp, label %if.then, label %sdhci_readw.exit.if.end_crit_edge

sdhci_readw.exit.if.end_crit_edge:                ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sdhci_readw.exit
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i13 = icmp eq ptr %11, null
  br i1 %tobool.not.i13, label %do.body.i, label %if.then.i14, !prof !43

if.then.i14:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %host, i16 noundef zeroext -17407, i32 noundef 44) #7
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %ioaddr.i15 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %12 = ptrtoint ptr %ioaddr.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i15, align 16
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16, i16 444) #7, !srcloc !47
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.i14, %sdhci_readw.exit.if.end_crit_edge
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #7
  %enable_cmd_dat_delay = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 4
  %14 = ptrtoint ptr %enable_cmd_dat_delay to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enable_cmd_dat_delay, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool.not.i18 = icmp eq ptr %19, null
  br i1 %tobool.not.i18, label %if.else.i23, label %if.then.i20, !prof !43

if.then.i20:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i19 = tail call i32 %19(ptr noundef %host, i32 noundef 292) #7
  br label %sdhci_readl.exit

if.else.i23:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i21 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %20 = ptrtoint ptr %ioaddr.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i21, align 16
  %add.ptr.i22 = getelementptr i8, ptr %21, i32 292
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #7, !srcloc !48
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i23, %if.then.i20
  %retval.0.i24 = phi i32 [ %call.i19, %if.then.i20 ], [ %23, %if.else.i23 ]
  %or = or i32 %retval.0.i24, 512
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i26 = icmp eq ptr %27, null
  br i1 %tobool.not.i26, label %do.body.i30, label %if.then.i27, !prof !43

if.then.i27:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %27(ptr noundef %host, i32 noundef %or, i32 noundef 292) #7
  br label %if.end5

do.body.i30:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %ioaddr.i28 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %29 = ptrtoint ptr %ioaddr.i28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr.i28, align 16
  %add.ptr.i29 = getelementptr i8, ptr %30, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %28) #7, !srcloc !51
  br label %if.end5

if.end5:                                          ; preds = %do.body.i30, %if.then.i27, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_f_sdh30_soft_voltage_switch(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usleep_range_state(i32 noundef 2500, i32 noundef 3000, i32 noundef 2) #7
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !43

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %3(ptr noundef %host, i32 noundef 276) #7
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 276
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !48
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %or = or i32 %retval.0.i, 524288
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i28 = icmp eq ptr %11, null
  br i1 %tobool.not.i28, label %do.body.i, label %if.then.i29, !prof !43

if.then.i29:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %host, i32 noundef %or, i32 noundef 276) #7
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %ioaddr.i30 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %13 = ptrtoint ptr %ioaddr.i30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i30, align 16
  %add.ptr.i31 = getelementptr i8, ptr %14, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %12) #7, !srcloc !51
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i29
  %or2 = or i32 %retval.0.i, 786432
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %write_l.i33 = getelementptr inbounds %struct.sdhci_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %write_l.i33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_l.i33, align 4
  %tobool.not.i34 = icmp eq ptr %18, null
  br i1 %tobool.not.i34, label %do.body.i38, label %if.then.i35, !prof !43

if.then.i35:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %18(ptr noundef %host, i32 noundef %or2, i32 noundef 276) #7
  br label %sdhci_writel.exit39

do.body.i38:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %or2) #7
  %ioaddr.i36 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %20 = ptrtoint ptr %ioaddr.i36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i36, align 16
  %add.ptr.i37 = getelementptr i8, ptr %21, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %19) #7, !srcloc !51
  br label %sdhci_writel.exit39

sdhci_writel.exit39:                              ; preds = %do.body.i38, %if.then.i35
  %and = and i32 %or2, -524289
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %write_l.i41 = getelementptr inbounds %struct.sdhci_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %write_l.i41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_l.i41, align 4
  %tobool.not.i42 = icmp eq ptr %25, null
  br i1 %tobool.not.i42, label %do.body.i46, label %if.then.i43, !prof !43

if.then.i43:                                      ; preds = %sdhci_writel.exit39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %25(ptr noundef %host, i32 noundef %and, i32 noundef 276) #7
  br label %sdhci_writel.exit47

do.body.i46:                                      ; preds = %sdhci_writel.exit39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %ioaddr.i44 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %27 = ptrtoint ptr %ioaddr.i44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr.i44, align 16
  %add.ptr.i45 = getelementptr i8, ptr %28, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %26) #7, !srcloc !51
  br label %sdhci_writel.exit47

sdhci_writel.exit47:                              ; preds = %do.body.i46, %if.then.i43
  tail call void @usleep_range_state(i32 noundef 2500, i32 noundef 3000, i32 noundef 2) #7
  %vendor_hs200 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 2
  %29 = ptrtoint ptr %vendor_hs200 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vendor_hs200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %sdhci_writel.exit47.if.end_crit_edge, label %do.end

sdhci_writel.exit47.if.end_crit_edge:             ; preds = %sdhci_writel.exit47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %sdhci_writel.exit47
  %dev = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 3
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool.not.i49 = icmp eq ptr %36, null
  br i1 %tobool.not.i49, label %if.else.i54, label %if.then.i51, !prof !43

if.then.i51:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i50 = tail call i32 %36(ptr noundef %host, i32 noundef 292) #7
  br label %sdhci_readl.exit56

if.else.i54:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i52 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %37 = ptrtoint ptr %ioaddr.i52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr.i52, align 16
  %add.ptr.i53 = getelementptr i8, ptr %38, i32 292
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #7, !srcloc !48
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  br label %sdhci_readl.exit56

sdhci_readl.exit56:                               ; preds = %if.else.i54, %if.then.i51
  %retval.0.i55 = phi i32 [ %call.i50, %if.then.i51 ], [ %40, %if.else.i54 ]
  %41 = ptrtoint ptr %vendor_hs200 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vendor_hs200, align 4
  %or5 = or i32 %42, %retval.0.i55
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %write_l.i58 = getelementptr inbounds %struct.sdhci_ops, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %write_l.i58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_l.i58, align 4
  %tobool.not.i59 = icmp eq ptr %46, null
  br i1 %tobool.not.i59, label %do.body.i63, label %if.then.i60, !prof !43

if.then.i60:                                      ; preds = %sdhci_readl.exit56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %46(ptr noundef %host, i32 noundef %or5, i32 noundef 292) #7
  br label %if.end

do.body.i63:                                      ; preds = %sdhci_readl.exit56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %or5) #7
  %ioaddr.i61 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %48 = ptrtoint ptr %ioaddr.i61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioaddr.i61, align 16
  %add.ptr.i62 = getelementptr i8, ptr %49, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %47) #7, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %do.body.i63, %if.then.i60, %sdhci_writel.exit47.if.end_crit_edge
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %tobool.not.i66 = icmp eq ptr %53, null
  br i1 %tobool.not.i66, label %if.else.i71, label %if.then.i68, !prof !43

if.then.i68:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i67 = tail call i32 %53(ptr noundef %host, i32 noundef 264) #7
  br label %sdhci_readl.exit73

if.else.i71:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i69 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %54 = ptrtoint ptr %ioaddr.i69 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioaddr.i69, align 16
  %add.ptr.i70 = getelementptr i8, ptr %55, i32 264
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #7, !srcloc !48
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  br label %sdhci_readl.exit73

sdhci_readl.exit73:                               ; preds = %if.else.i71, %if.then.i68
  %retval.0.i72 = phi i32 [ %call.i67, %if.then.i68 ], [ %57, %if.else.i71 ]
  %or7 = or i32 %retval.0.i72, 65536
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %write_l.i75 = getelementptr inbounds %struct.sdhci_ops, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %write_l.i75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_l.i75, align 4
  %tobool.not.i76 = icmp eq ptr %61, null
  br i1 %tobool.not.i76, label %do.body.i80, label %if.then.i77, !prof !43

if.then.i77:                                      ; preds = %sdhci_readl.exit73
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %61(ptr noundef %host, i32 noundef %or7, i32 noundef 264) #7
  br label %sdhci_writel.exit81

do.body.i80:                                      ; preds = %sdhci_readl.exit73
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %or7) #7
  %ioaddr.i78 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %63 = ptrtoint ptr %ioaddr.i78 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ioaddr.i78, align 16
  %add.ptr.i79 = getelementptr i8, ptr %64, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %62) #7, !srcloc !51
  br label %sdhci_writel.exit81

sdhci_writel.exit81:                              ; preds = %do.body.i80, %if.then.i77
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_sdhci_f_sdh30__271_231_sdhci_f_sdh30_driver_init6, !1, !"__initcall__kmod_sdhci_f_sdh30__271_231_sdhci_f_sdh30_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci_f_sdh30.c", i32 231, i32 1}
!2 = !{ptr @__exitcall_sdhci_f_sdh30_driver_exit, !1, !"__exitcall_sdhci_f_sdh30_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description272, !4, !"__UNIQUE_ID_description272", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci_f_sdh30.c", i32 233, i32 1}
!5 = !{ptr @__UNIQUE_ID_file273, !6, !"__UNIQUE_ID_file273", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci_f_sdh30.c", i32 234, i32 1}
!7 = !{ptr @__UNIQUE_ID_license274, !6, !"__UNIQUE_ID_license274", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author275, !9, !"__UNIQUE_ID_author275", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/sdhci_f_sdh30.c", i32 235, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias276, !11, !"__UNIQUE_ID_alias276", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci_f_sdh30.c", i32 236, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci_f_sdh30.c", i32 221, i32 11}
!14 = !{ptr @sdhci_f_sdh30_driver, !15, !"sdhci_f_sdh30_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci_f_sdh30.c", i32 219, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci_f_sdh30.c", i32 113, i32 7}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/sdhci_f_sdh30.c", i32 134, i32 46}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/sdhci_f_sdh30.c", i32 144, i32 40}
!22 = !{ptr @sdhci_f_sdh30_ops, !23, !"sdhci_f_sdh30_ops", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/sdhci_f_sdh30.c", i32 79, i32 31}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci_f_sdh30.c", i32 46, i32 3}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sdhci_f_sdh30_soft_voltage_switch._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @sdhci_f_sdh30_soft_voltage_switch._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @f_sdh30_dt_ids, !33, !"f_sdh30_dt_ids", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sdhci_f_sdh30.c", i32 204, i32 34}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 6938730}
!45 = !{i64 2155211160}
!46 = !{i64 2155209092}
!47 = !{i64 6938530}
!48 = !{i64 6939568}
!49 = !{i64 2155210456}
!50 = !{i64 2155208486}
!51 = !{i64 6939150}
!52 = !{i64 2155216824}
!53 = !{i8 0, i8 2}
