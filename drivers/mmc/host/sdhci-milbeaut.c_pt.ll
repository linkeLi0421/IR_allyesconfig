; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-milbeaut.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-milbeaut.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }

@__initcall__kmod_sdhci_milbeaut__281_343_sdhci_milbeaut_driver_init6 = internal global ptr @sdhci_milbeaut_driver_init, section ".initcall6.init", align 4
@sdhci_milbeaut_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_milbeaut_probe, ptr @sdhci_milbeaut_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @mlb_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_milbeaut_driver_exit = internal global ptr @sdhci_milbeaut_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description282 = internal constant [62 x i8] c"sdhci_milbeaut.description=MILBEAUT SD Card Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author283 = internal constant [62 x i8] c"sdhci_milbeaut.author=Takao Orito <orito.takao@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file284 = internal constant [52 x i8] c"sdhci_milbeaut.file=drivers/mmc/host/sdhci-milbeaut\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [30 x i8] c"sdhci_milbeaut.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias286 = internal constant [45 x i8] c"sdhci_milbeaut.alias=platform:sdhci-milbeaut\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdhci-milbeaut\00", [17 x i8] zeroinitializer }, align 32
@mlb_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,milbeaut-m10v-sdhci-3.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fujitsu,cmd-dat-delay-select\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"f_sdh30\00", [24 x i8] zeroinitializer }, align 32
@sdhci_milbeaut_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr @sdhci_set_power_and_bus_voltage, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_milbeaut_get_min_clock, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_milbeaut_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr @sdhci_milbeaut_soft_voltage_switch, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@sdhci_milbeaut_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Internal clock never stabilised.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdhci_milbeaut_reset\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mmc/host/sdhci-milbeaut.c\00", [62 x i8] zeroinitializer }, align 32
@sdhci_milbeaut_reset._entry_ptr = internal global ptr @sdhci_milbeaut_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.8 = private unnamed_addr constant [22 x i8] c"sdhci_milbeaut_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 333, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 335, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"mlb_dt_ids\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 202, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 257, i32 7 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 265, i32 18 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"sdhci_milbeaut_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 124, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 278, i32 46 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 288, i32 40 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [37 x i8] c"../drivers/mmc/host/sdhci-milbeaut.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 109, i32 4 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias286, ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__exitcall_sdhci_milbeaut_driver_exit, ptr @__initcall__kmod_sdhci_milbeaut__281_343_sdhci_milbeaut_driver_init6, ptr @sdhci_milbeaut_driver_exit, ptr @sdhci_milbeaut_reset._entry, ptr @sdhci_milbeaut_reset._entry_ptr, ptr @sdhci_milbeaut_driver, ptr @.str, ptr @mlb_dt_ids, ptr @.str.1, ptr @.str.2, ptr @sdhci_milbeaut_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_milbeaut_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlb_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_milbeaut_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_milbeaut_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_milbeaut_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_milbeaut_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_milbeaut_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_milbeaut_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_milbeaut_probe(ptr noundef %pdev) #2 align 64 {
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
  %call2 = tail call ptr @sdhci_alloc_host(ptr noundef %dev1, i32 noundef 16) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 81
  %dev8 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 2
  %1 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev8, align 4
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 75563009, ptr %quirks, align 4
  %quirks2 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 2
  %3 = ptrtoint ptr %quirks2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12296, ptr %quirks2, align 8
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %enable_cmd_dat_delay = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 3
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
  store ptr @.str.2, ptr %call2, align 128
  %ops = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 9
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sdhci_milbeaut_ops, ptr %ops, align 4
  %irq13 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 3
  %10 = ptrtoint ptr %irq13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %irq13, align 4
  %call14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 4
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %ioaddr, align 16
  %cmp.i102 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102, label %if.then17, label %if.end20

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
  %call25 = tail call ptr @devm_clk_get(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.3) #7
  %15 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25, ptr %private.i, align 4
  %cmp.i103 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then28, label %if.end31

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
  %call38 = tail call ptr @devm_clk_get(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.4) #7
  %clk = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 1
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call38, ptr %clk, align 4
  %cmp.i104 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then41, label %if.end44

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
  %clk.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 1
  %19 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk.i, align 4
  %call1.i = tail call i32 @clk_get_rate(ptr noundef %20) #7
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %write_l.i3.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %write_l.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_l.i3.i.i, align 4
  %tobool.not.i4.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i4.i.i, label %do.body.i8.i.i, label %if.then.i5.i.i, !prof !43

if.then.i5.i.i:                                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %24(ptr noundef %call2, i32 noundef 1, i32 noundef 512) #7
  br label %sdhci_milbeaut_bridge_reset.exit.i

do.body.i8.i.i:                                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i7.i.i = getelementptr i8, ptr %26, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 16777216) #7, !srcloc !45
  br label %sdhci_milbeaut_bridge_reset.exit.i

sdhci_milbeaut_bridge_reset.exit.i:               ; preds = %do.body.i8.i.i, %if.then.i5.i.i
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 4
  %read_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %read_w.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_w.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !43

if.then.i.i:                                      ; preds = %sdhci_milbeaut_bridge_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call zeroext i16 %30(ptr noundef %call2, i32 noundef 44) #7
  br label %sdhci_readw.exit.i

if.else.i.i:                                      ; preds = %sdhci_milbeaut_bridge_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 44
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #7, !srcloc !46
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  br label %sdhci_readw.exit.i

sdhci_readw.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i16 [ %call.i.i, %if.then.i.i ], [ %34, %if.else.i.i ]
  %35 = and i16 %retval.0.i.i, -6
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops, align 4
  %write_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %write_w.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_w.i.i, align 4
  %tobool.not.i13.i = icmp eq ptr %39, null
  br i1 %tobool.not.i13.i, label %do.body.i.i, label %if.then.i14.i, !prof !43

if.then.i14.i:                                    ; preds = %sdhci_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %39(ptr noundef %call2, i16 noundef zeroext %35, i32 noundef 44) #7
  br label %sdhci_writew.exit.i

do.body.i.i:                                      ; preds = %sdhci_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %40 = tail call i16 @llvm.bswap.i16(i16 %35) #7
  %41 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i16.i = getelementptr i8, ptr %42, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16.i, i16 %40) #7, !srcloc !49
  br label %sdhci_writew.exit.i

sdhci_writew.exit.i:                              ; preds = %do.body.i.i, %if.then.i14.i
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops, align 4
  %write_l.i3.i18.i = getelementptr inbounds %struct.sdhci_ops, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %write_l.i3.i18.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_l.i3.i18.i, align 4
  %tobool.not.i4.i19.i = icmp eq ptr %46, null
  br i1 %tobool.not.i4.i19.i, label %do.body.i.i.i, label %if.then.i.i.i, !prof !43

if.then.i.i.i:                                    ; preds = %sdhci_writew.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %46(ptr noundef %call2, i32 noundef 0, i32 noundef 512) #7
  br label %sdhci_milbeaut_bridge_reset.exit21.i

do.body.i.i.i:                                    ; preds = %sdhci_writew.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %48, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #7, !srcloc !45
  br label %sdhci_milbeaut_bridge_reset.exit21.i

sdhci_milbeaut_bridge_reset.exit21.i:             ; preds = %do.body.i.i.i, %if.then.i.i.i
  %49 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %tobool.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i22.i, !prof !43

if.then.i.i22.i:                                  ; preds = %sdhci_milbeaut_bridge_reset.exit21.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call i32 %52(ptr noundef %call2, i32 noundef 544) #7
  br label %sdhci_readl.exit.i.i

if.else.i.i.i:                                    ; preds = %sdhci_milbeaut_bridge_reset.exit21.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i.i24.i = getelementptr i8, ptr %54, i32 544
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24.i) #7, !srcloc !50
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  br label %sdhci_readl.exit.i.i

sdhci_readl.exit.i.i:                             ; preds = %if.else.i.i.i, %if.then.i.i22.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i22.i ], [ %56, %if.else.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15999999, i32 %call1.i)
  %cmp.i.i = icmp sgt i32 %call1.i, 15999999
  br i1 %cmp.i.i, label %if.then.i25.i, label %if.else.i26.i

if.then.i25.i:                                    ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div187.i.i = udiv i32 %call1.i, 16000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023999999, i32 %call1.i)
  %cmp2.i.i = icmp ugt i32 %call1.i, 1023999999
  %phi.bo.i.i = shl nuw nsw i32 %div187.i.i, 16
  %phi.bo65.i.i = or i32 %phi.bo.i.i, 16777216
  %cond.i.i = select i1 %cmp2.i.i, i32 20905984, i32 %phi.bo65.i.i
  br label %if.end.i.i

if.else.i26.i:                                    ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div5.i.i = sdiv i32 %call1.i, 16000
  %57 = tail call i32 @llvm.umin.i32(i32 %div5.i.i, i32 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp13.i.i = icmp eq i32 %57, 0
  %.op.i.i = shl nuw nsw i32 %57, 16
  %shl18.i.i = select i1 %cmp13.i.i, i32 65536, i32 %.op.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i26.i, %if.then.i25.i
  %or.pn.i.i = phi i32 [ %cond.i.i, %if.then.i25.i ], [ %shl18.i.i, %if.else.i26.i ]
  %div21.i.i = sdiv i32 %call1.i, 4000000
  %58 = tail call i32 @llvm.umin.i32(i32 %div21.i.i, i32 255) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp29.i.i = icmp eq i32 %58, 0
  %and.i.i = and i32 %retval.0.i.i.i, -20971505
  %.op88.i.i = shl nuw nsw i32 %58, 8
  %shl34.i.i = select i1 %cmp29.i.i, i32 256, i32 %.op88.i.i
  %or.pn.masked.i.i = and i32 %or.pn.i.i, -241
  %val.0.masked.i.i = or i32 %and.i.i, %shl34.i.i
  %and36.i.i = or i32 %val.0.masked.i.i, %or.pn.masked.i.i
  %59 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops, align 4
  %write_l.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %write_l.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_l.i.i.i, align 4
  %tobool.not.i67.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i67.i.i, label %do.body.i.i27.i, label %if.then.i68.i.i, !prof !43

if.then.i68.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %62(ptr noundef %call2, i32 noundef %and36.i.i, i32 noundef 544) #7
  br label %sdhci_writel.exit.i.i

do.body.i.i27.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %63 = tail call i32 @llvm.bswap.i32(i32 %and36.i.i) #7
  %64 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i70.i.i = getelementptr i8, ptr %65, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i.i, i32 %63) #7, !srcloc !45
  br label %sdhci_writel.exit.i.i

sdhci_writel.exit.i.i:                            ; preds = %do.body.i.i27.i, %if.then.i68.i.i
  %66 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops, align 4
  %write_l.i72.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %write_l.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_l.i72.i.i, align 4
  %tobool.not.i73.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i73.i.i, label %do.body.i77.i.i, label %if.then.i74.i.i, !prof !43

if.then.i74.i.i:                                  ; preds = %sdhci_writel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %69(ptr noundef %call2, i32 noundef 3, i32 noundef 560) #7
  br label %sdhci_writel.exit78.i.i

do.body.i77.i.i:                                  ; preds = %sdhci_writel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i76.i.i = getelementptr i8, ptr %71, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i.i, i32 50331648) #7, !srcloc !45
  br label %sdhci_writel.exit78.i.i

sdhci_writel.exit78.i.i:                          ; preds = %do.body.i77.i.i, %if.then.i74.i.i
  %72 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops, align 4
  %write_l.i80.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %write_l.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write_l.i80.i.i, align 4
  %tobool.not.i81.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i81.i.i, label %do.body.i85.i.i, label %if.then.i82.i.i, !prof !43

if.then.i82.i.i:                                  ; preds = %sdhci_writel.exit78.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %75(ptr noundef %call2, i32 noundef 4, i32 noundef 528) #7
  br label %sdhci_milbeaut_bridge_init.exit.i

do.body.i85.i.i:                                  ; preds = %sdhci_writel.exit78.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %76 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i84.i.i = getelementptr i8, ptr %77, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84.i.i, i32 67108864) #7, !srcloc !45
  br label %sdhci_milbeaut_bridge_init.exit.i

sdhci_milbeaut_bridge_init.exit.i:                ; preds = %do.body.i85.i.i, %if.then.i82.i.i
  %78 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops, align 4
  %write_l.i3.i29.i = getelementptr inbounds %struct.sdhci_ops, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %write_l.i3.i29.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write_l.i3.i29.i, align 4
  %tobool.not.i4.i30.i = icmp eq ptr %81, null
  br i1 %tobool.not.i4.i30.i, label %do.body.i8.i35.i, label %if.then.i5.i32.i, !prof !43

if.then.i5.i32.i:                                 ; preds = %sdhci_milbeaut_bridge_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %81(ptr noundef %call2, i32 noundef 1, i32 noundef 512) #7
  br label %sdhci_milbeaut_bridge_reset.exit37.i

do.body.i8.i35.i:                                 ; preds = %sdhci_milbeaut_bridge_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %82 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i7.i34.i = getelementptr i8, ptr %83, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i34.i, i32 16777216) #7, !srcloc !45
  br label %sdhci_milbeaut_bridge_reset.exit37.i

sdhci_milbeaut_bridge_reset.exit37.i:             ; preds = %do.body.i8.i35.i, %if.then.i5.i32.i
  %84 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %tobool.not.i.i39.i = icmp eq ptr %87, null
  br i1 %tobool.not.i.i39.i, label %if.else.i.i44.i, label %if.then.i.i41.i, !prof !43

if.then.i.i41.i:                                  ; preds = %sdhci_milbeaut_bridge_reset.exit37.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i40.i = tail call i32 %87(ptr noundef %call2, i32 noundef 276) #7
  br label %sdhci_readl.exit.i47.i

if.else.i.i44.i:                                  ; preds = %sdhci_milbeaut_bridge_reset.exit37.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i.i43.i = getelementptr i8, ptr %89, i32 276
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #7, !srcloc !50
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  br label %sdhci_readl.exit.i47.i

sdhci_readl.exit.i47.i:                           ; preds = %if.else.i.i44.i, %if.then.i.i41.i
  %retval.0.i.i45.i = phi i32 [ %call.i.i40.i, %if.then.i.i41.i ], [ %91, %if.else.i.i44.i ]
  %or.i.i = or i32 %retval.0.i.i45.i, 524288
  %92 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops, align 4
  %write_l.i.i46.i = getelementptr inbounds %struct.sdhci_ops, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %write_l.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write_l.i.i46.i, align 4
  %tobool.not.i28.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i28.i.i, label %do.body.i.i48.i, label %if.then.i29.i.i, !prof !43

if.then.i29.i.i:                                  ; preds = %sdhci_readl.exit.i47.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %95(ptr noundef %call2, i32 noundef %or.i.i, i32 noundef 276) #7
  br label %sdhci_writel.exit.i50.i

do.body.i.i48.i:                                  ; preds = %sdhci_readl.exit.i47.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %96 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %97 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i31.i.i = getelementptr i8, ptr %98, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i.i, i32 %96) #7, !srcloc !45
  br label %sdhci_writel.exit.i50.i

sdhci_writel.exit.i50.i:                          ; preds = %do.body.i.i48.i, %if.then.i29.i.i
  %and.i49.i = and i32 %or.i.i, -262145
  %99 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops, align 4
  %write_l.i33.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %write_l.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_l.i33.i.i, align 4
  %tobool.not.i34.i.i = icmp eq ptr %102, null
  br i1 %tobool.not.i34.i.i, label %do.body.i38.i.i, label %if.then.i35.i.i, !prof !43

if.then.i35.i.i:                                  ; preds = %sdhci_writel.exit.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %102(ptr noundef %call2, i32 noundef %and.i49.i, i32 noundef 276) #7
  br label %sdhci_writel.exit39.i.i

do.body.i38.i.i:                                  ; preds = %sdhci_writel.exit.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %103 = tail call i32 @llvm.bswap.i32(i32 %and.i49.i) #7
  %104 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i37.i.i = getelementptr i8, ptr %105, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i.i, i32 %103) #7, !srcloc !45
  br label %sdhci_writel.exit39.i.i

sdhci_writel.exit39.i.i:                          ; preds = %do.body.i38.i.i, %if.then.i35.i.i
  %and2.i.i = and i32 %retval.0.i.i45.i, -786433
  %106 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops, align 4
  %write_l.i41.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %write_l.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write_l.i41.i.i, align 4
  %tobool.not.i42.i.i = icmp eq ptr %109, null
  br i1 %tobool.not.i42.i.i, label %do.body.i46.i.i, label %if.then.i43.i.i, !prof !43

if.then.i43.i.i:                                  ; preds = %sdhci_writel.exit39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %109(ptr noundef %call2, i32 noundef %and2.i.i, i32 noundef 276) #7
  br label %sdhci_writel.exit47.i.i

do.body.i46.i.i:                                  ; preds = %sdhci_writel.exit39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %110 = tail call i32 @llvm.bswap.i32(i32 %and2.i.i) #7
  %111 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i45.i.i = getelementptr i8, ptr %112, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i.i, i32 %110) #7, !srcloc !45
  br label %sdhci_writel.exit47.i.i

sdhci_writel.exit47.i.i:                          ; preds = %do.body.i46.i.i, %if.then.i43.i.i
  %113 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ops, align 4
  %read_w.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %read_w.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %read_w.i.i.i, align 4
  %tobool.not.i49.i.i = icmp eq ptr %116, null
  br i1 %tobool.not.i49.i.i, label %if.else.i54.i.i, label %if.then.i51.i.i, !prof !43

if.then.i51.i.i:                                  ; preds = %sdhci_writel.exit47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i50.i.i = tail call zeroext i16 %116(ptr noundef %call2, i32 noundef 256) #7
  br label %sdhci_readw.exit.i.i

if.else.i54.i.i:                                  ; preds = %sdhci_writel.exit47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i53.i.i = getelementptr i8, ptr %118, i32 256
  %119 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i53.i.i) #7, !srcloc !46
  %120 = tail call i16 @llvm.bswap.i16(i16 %119) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  br label %sdhci_readw.exit.i.i

sdhci_readw.exit.i.i:                             ; preds = %if.else.i54.i.i, %if.then.i51.i.i
  %retval.0.i55.i.i = phi i16 [ %call.i50.i.i, %if.then.i51.i.i ], [ %120, %if.else.i54.i.i ]
  %121 = and i16 %retval.0.i55.i.i, -96
  %122 = or i16 %121, 15
  %123 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ops, align 4
  %write_w.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %write_w.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write_w.i.i.i, align 4
  %tobool.not.i57.i.i = icmp eq ptr %126, null
  br i1 %tobool.not.i57.i.i, label %do.body.i61.i.i, label %if.then.i58.i.i, !prof !43

if.then.i58.i.i:                                  ; preds = %sdhci_readw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %126(ptr noundef %call2, i16 noundef zeroext %122, i32 noundef 256) #7
  br label %sdhci_writew.exit.i.i

do.body.i61.i.i:                                  ; preds = %sdhci_readw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %127 = tail call i16 @llvm.bswap.i16(i16 %122) #7
  %128 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i60.i.i = getelementptr i8, ptr %129, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i60.i.i, i16 %127) #7, !srcloc !49
  br label %sdhci_writew.exit.i.i

sdhci_writew.exit.i.i:                            ; preds = %do.body.i61.i.i, %if.then.i58.i.i
  %130 = ptrtoint ptr %enable_cmd_dat_delay to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %enable_cmd_dat_delay, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i51.i = icmp eq i8 %131, 0
  br i1 %tobool.not.i51.i, label %sdhci_writew.exit.i.i.sdhci_milbeaut_init.exit_crit_edge, label %if.then.i52.i

sdhci_writew.exit.i.i.sdhci_milbeaut_init.exit_crit_edge: ; preds = %sdhci_writew.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sdhci_milbeaut_init.exit

if.then.i52.i:                                    ; preds = %sdhci_writew.exit.i.i
  %132 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ops, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %tobool.not.i63.i.i = icmp eq ptr %135, null
  br i1 %tobool.not.i63.i.i, label %if.else.i68.i.i, label %if.then.i65.i.i, !prof !43

if.then.i65.i.i:                                  ; preds = %if.then.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i64.i.i = tail call i32 %135(ptr noundef %call2, i32 noundef 292) #7
  br label %sdhci_readl.exit70.i.i

if.else.i68.i.i:                                  ; preds = %if.then.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i67.i.i = getelementptr i8, ptr %137, i32 292
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i.i) #7, !srcloc !50
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  br label %sdhci_readl.exit70.i.i

sdhci_readl.exit70.i.i:                           ; preds = %if.else.i68.i.i, %if.then.i65.i.i
  %retval.0.i69.i.i = phi i32 [ %call.i64.i.i, %if.then.i65.i.i ], [ %139, %if.else.i68.i.i ]
  %or8.i.i = or i32 %retval.0.i69.i.i, 512
  %140 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ops, align 4
  %write_l.i72.i53.i = getelementptr inbounds %struct.sdhci_ops, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %write_l.i72.i53.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write_l.i72.i53.i, align 4
  %tobool.not.i73.i54.i = icmp eq ptr %143, null
  br i1 %tobool.not.i73.i54.i, label %do.body.i77.i58.i, label %if.then.i74.i55.i, !prof !43

if.then.i74.i55.i:                                ; preds = %sdhci_readl.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %143(ptr noundef %call2, i32 noundef %or8.i.i, i32 noundef 292) #7
  br label %sdhci_milbeaut_init.exit

do.body.i77.i58.i:                                ; preds = %sdhci_readl.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %144 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #7
  %145 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i76.i57.i = getelementptr i8, ptr %146, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i57.i, i32 %144) #7, !srcloc !45
  br label %sdhci_milbeaut_init.exit

sdhci_milbeaut_init.exit:                         ; preds = %do.body.i77.i58.i, %if.then.i74.i55.i, %sdhci_writew.exit.i.i.sdhci_milbeaut_init.exit_crit_edge
  %call51 = tail call i32 @sdhci_add_host(ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %sdhci_milbeaut_init.exit.cleanup_crit_edge, label %err_add_host

sdhci_milbeaut_init.exit.cleanup_crit_edge:       ; preds = %sdhci_milbeaut_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_add_host:                                     ; preds = %sdhci_milbeaut_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %148) #7
  tail call void @clk_unprepare(ptr noundef %148) #7
  br label %err_clk

err_clk:                                          ; preds = %err_add_host, %if.end44.err_clk_crit_edge, %if.then41
  %ret.0 = phi i32 [ %18, %if.then41 ], [ %call46, %if.end44.err_clk_crit_edge ], [ %call51, %err_add_host ]
  %149 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %private.i, align 4
  tail call void @clk_disable(ptr noundef %150) #7
  tail call void @clk_unprepare(ptr noundef %150) #7
  br label %err

err:                                              ; preds = %err_clk, %if.end31.err_crit_edge, %if.then28, %if.then17, %if.end6.err_crit_edge
  %ret.1 = phi i32 [ %call10, %if.end6.err_crit_edge ], [ %12, %if.then17 ], [ %16, %if.then28 ], [ %call33, %if.end31.err_crit_edge ], [ %ret.0, %err_clk ]
  tail call void @sdhci_free_host(ptr noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %sdhci_milbeaut_init.exit.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then4 ], [ %ret.1, %err ], [ %call, %entry.cleanup_crit_edge ], [ 0, %sdhci_milbeaut_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_milbeaut_remove(ptr nocapture noundef %pdev) #2 align 64 {
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
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
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_power_and_bus_voltage(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_milbeaut_get_min_clock(ptr nocapture noundef readnone %host) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 400000
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_milbeaut_reset(ptr noundef %host, i8 noundef zeroext %mask) #2 align 64 {
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
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !46
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %8 = and i16 %retval.0.i, -6
  %9 = or i16 %8, 1
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i44 = icmp eq ptr %13, null
  br i1 %tobool.not.i44, label %do.body.i, label %if.then.i45, !prof !43

if.then.i45:                                      ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %13(ptr noundef %host, i16 noundef zeroext %9, i32 noundef 44) #7
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %14 = tail call i16 @llvm.bswap.i16(i16 %9) #7
  %ioaddr.i46 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %15 = ptrtoint ptr %ioaddr.i46 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i46, align 16
  %add.ptr.i47 = getelementptr i8, ptr %16, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i47, i16 %14) #7, !srcloc !49
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i45
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #7
  %17 = or i16 %retval.0.i, 5
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %write_w.i49 = getelementptr inbounds %struct.sdhci_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %write_w.i49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_w.i49, align 4
  %tobool.not.i50 = icmp eq ptr %21, null
  br i1 %tobool.not.i50, label %do.body.i54, label %if.then.i51, !prof !43

if.then.i51:                                      ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %21(ptr noundef %host, i16 noundef zeroext %17, i32 noundef 44) #7
  br label %sdhci_writew.exit55

do.body.i54:                                      ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %22 = tail call i16 @llvm.bswap.i16(i16 %17) #7
  %ioaddr.i52 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %23 = ptrtoint ptr %ioaddr.i52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i52, align 16
  %add.ptr.i53 = getelementptr i8, ptr %24, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53, i16 %22) #7, !srcloc !49
  br label %sdhci_writew.exit55

sdhci_writew.exit55:                              ; preds = %do.body.i54, %if.then.i51
  %call6 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call6, 10000000
  %ioaddr.i61 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %sdhci_writew.exit55
  %call8 = tail call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call8, %add.i
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %read_w.i57 = getelementptr inbounds %struct.sdhci_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %read_w.i57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_w.i57, align 4
  %tobool.not.i58 = icmp eq ptr %28, null
  br i1 %tobool.not.i58, label %if.else.i63, label %if.then.i60, !prof !43

if.then.i60:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %call.i59 = tail call zeroext i16 %28(ptr noundef %host, i32 noundef 44) #7
  br label %sdhci_readw.exit65

if.else.i63:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %ioaddr.i61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr.i61, align 16
  %add.ptr.i62 = getelementptr i8, ptr %30, i32 44
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i62) #7, !srcloc !46
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  br label %sdhci_readw.exit65

sdhci_readw.exit65:                               ; preds = %if.else.i63, %if.then.i60
  %retval.0.i64 = phi i16 [ %call.i59, %if.then.i60 ], [ %32, %if.else.i63 ]
  %33 = and i16 %retval.0.i64, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not = icmp eq i16 %33, 0
  br i1 %tobool.not, label %if.end, label %while.end

if.end:                                           ; preds = %sdhci_readw.exit65
  br i1 %cmp3.i.i, label %do.end, label %cleanup

do.end:                                           ; preds = %if.end
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %34 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %35, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i66 = icmp eq ptr %37, null
  br i1 %tobool.not.i66, label %if.end.i, label %do.end.cleanup.thread_crit_edge

do.end.cleanup.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %class_dev, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.i, %do.end.cleanup.thread_crit_edge
  %retval.0.i67 = phi ptr [ %39, %if.end.i ], [ %37, %do.end.cleanup.thread_crit_edge ]
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %retval.0.i67) #10
  tail call void @sdhci_dumpregs(ptr noundef %host) #7
  br label %cleanup23

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 2147480) #7
  br label %while.cond

while.end:                                        ; preds = %sdhci_readw.exit65
  %enable_cmd_dat_delay = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 3
  %41 = ptrtoint ptr %enable_cmd_dat_delay to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enable_cmd_dat_delay, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool18.not = icmp eq i8 %42, 0
  br i1 %tobool18.not, label %while.end.cleanup23_crit_edge, label %if.then19

while.end.cleanup23_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup23

if.then19:                                        ; preds = %while.end
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool.not.i69 = icmp eq ptr %46, null
  br i1 %tobool.not.i69, label %if.else.i74, label %if.then.i71, !prof !43

if.then.i71:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %call.i70 = tail call i32 %46(ptr noundef %host, i32 noundef 292) #7
  br label %sdhci_readl.exit

if.else.i74:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %ioaddr.i61 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr.i61, align 16
  %add.ptr.i73 = getelementptr i8, ptr %48, i32 292
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #7, !srcloc !50
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i74, %if.then.i71
  %retval.0.i75 = phi i32 [ %call.i70, %if.then.i71 ], [ %50, %if.else.i74 ]
  %or21 = or i32 %retval.0.i75, 512
  %51 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i77 = icmp eq ptr %54, null
  br i1 %tobool.not.i77, label %do.body.i81, label %if.then.i78, !prof !43

if.then.i78:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %54(ptr noundef %host, i32 noundef %or21, i32 noundef 292) #7
  br label %cleanup23

do.body.i81:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %or21) #7
  %56 = ptrtoint ptr %ioaddr.i61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ioaddr.i61, align 16
  %add.ptr.i80 = getelementptr i8, ptr %57, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %55) #7, !srcloc !45
  br label %cleanup23

cleanup23:                                        ; preds = %do.body.i81, %if.then.i78, %while.end.cleanup23_crit_edge, %cleanup.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_milbeaut_soft_voltage_switch(ptr noundef %host) #2 align 64 {
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
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !50
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
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
  %tobool.not.i17 = icmp eq ptr %11, null
  br i1 %tobool.not.i17, label %do.body.i, label %if.then.i18, !prof !43

if.then.i18:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %host, i32 noundef %or, i32 noundef 276) #7
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %ioaddr.i19 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %13 = ptrtoint ptr %ioaddr.i19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i19, align 16
  %add.ptr.i20 = getelementptr i8, ptr %14, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %12) #7, !srcloc !45
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i18
  %or1 = or i32 %retval.0.i, 786432
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %write_l.i22 = getelementptr inbounds %struct.sdhci_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %write_l.i22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_l.i22, align 4
  %tobool.not.i23 = icmp eq ptr %18, null
  br i1 %tobool.not.i23, label %do.body.i27, label %if.then.i24, !prof !43

if.then.i24:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %18(ptr noundef %host, i32 noundef %or1, i32 noundef 276) #7
  br label %sdhci_writel.exit28

do.body.i27:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %or1) #7
  %ioaddr.i25 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %20 = ptrtoint ptr %ioaddr.i25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i25, align 16
  %add.ptr.i26 = getelementptr i8, ptr %21, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %19) #7, !srcloc !45
  br label %sdhci_writel.exit28

sdhci_writel.exit28:                              ; preds = %do.body.i27, %if.then.i24
  %and = and i32 %or1, -524289
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %write_l.i30 = getelementptr inbounds %struct.sdhci_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %write_l.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_l.i30, align 4
  %tobool.not.i31 = icmp eq ptr %25, null
  br i1 %tobool.not.i31, label %do.body.i35, label %if.then.i32, !prof !43

if.then.i32:                                      ; preds = %sdhci_writel.exit28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %25(ptr noundef %host, i32 noundef %and, i32 noundef 276) #7
  br label %sdhci_writel.exit36

do.body.i35:                                      ; preds = %sdhci_writel.exit28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %ioaddr.i33 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %27 = ptrtoint ptr %ioaddr.i33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr.i33, align 16
  %add.ptr.i34 = getelementptr i8, ptr %28, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %26) #7, !srcloc !45
  br label %sdhci_writel.exit36

sdhci_writel.exit36:                              ; preds = %do.body.i35, %if.then.i32
  tail call void @usleep_range_state(i32 noundef 2500, i32 noundef 3000, i32 noundef 2) #7
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool.not.i38 = icmp eq ptr %32, null
  br i1 %tobool.not.i38, label %if.else.i43, label %if.then.i40, !prof !43

if.then.i40:                                      ; preds = %sdhci_writel.exit36
  call void @__sanitizer_cov_trace_pc() #9
  %call.i39 = tail call i32 %32(ptr noundef %host, i32 noundef 264) #7
  br label %sdhci_readl.exit45

if.else.i43:                                      ; preds = %sdhci_writel.exit36
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i41 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %33 = ptrtoint ptr %ioaddr.i41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr.i41, align 16
  %add.ptr.i42 = getelementptr i8, ptr %34, i32 264
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #7, !srcloc !50
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  br label %sdhci_readl.exit45

sdhci_readl.exit45:                               ; preds = %if.else.i43, %if.then.i40
  %retval.0.i44 = phi i32 [ %call.i39, %if.then.i40 ], [ %36, %if.else.i43 ]
  %or3 = or i32 %retval.0.i44, 65536
  %37 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i, align 4
  %write_l.i47 = getelementptr inbounds %struct.sdhci_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %write_l.i47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_l.i47, align 4
  %tobool.not.i48 = icmp eq ptr %40, null
  br i1 %tobool.not.i48, label %do.body.i52, label %if.then.i49, !prof !43

if.then.i49:                                      ; preds = %sdhci_readl.exit45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %40(ptr noundef %host, i32 noundef %or3, i32 noundef 264) #7
  br label %sdhci_writel.exit53

do.body.i52:                                      ; preds = %sdhci_readl.exit45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %41 = tail call i32 @llvm.bswap.i32(i32 %or3) #7
  %ioaddr.i50 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %42 = ptrtoint ptr %ioaddr.i50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr.i50, align 16
  %add.ptr.i51 = getelementptr i8, ptr %43, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %41) #7, !srcloc !45
  br label %sdhci_writel.exit53

sdhci_writel.exit53:                              ; preds = %do.body.i52, %if.then.i49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_dumpregs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_sdhci_milbeaut__281_343_sdhci_milbeaut_driver_init6, !1, !"__initcall__kmod_sdhci_milbeaut__281_343_sdhci_milbeaut_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-milbeaut.c", i32 343, i32 1}
!2 = !{ptr @__exitcall_sdhci_milbeaut_driver_exit, !1, !"__exitcall_sdhci_milbeaut_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description282, !4, !"__UNIQUE_ID_description282", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-milbeaut.c", i32 345, i32 1}
!5 = !{ptr @__UNIQUE_ID_author283, !6, !"__UNIQUE_ID_author283", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-milbeaut.c", i32 346, i32 1}
!7 = !{ptr @__UNIQUE_ID_file284, !8, !"__UNIQUE_ID_file284", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-milbeaut.c", i32 347, i32 1}
!9 = !{ptr @__UNIQUE_ID_license285, !8, !"__UNIQUE_ID_license285", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias286, !11, !"__UNIQUE_ID_alias286", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-milbeaut.c", i32 348, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-milbeaut.c", i32 335, i32 11}
!14 = !{ptr @sdhci_milbeaut_driver, !15, !"sdhci_milbeaut_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-milbeaut.c", i32 333, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-milbeaut.c", i32 257, i32 7}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/sdhci-milbeaut.c", i32 265, i32 18}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/sdhci-milbeaut.c", i32 278, i32 46}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/sdhci-milbeaut.c", i32 288, i32 40}
!24 = !{ptr @sdhci_milbeaut_ops, !25, !"sdhci_milbeaut_ops", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci-milbeaut.c", i32 124, i32 31}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/sdhci-milbeaut.c", i32 109, i32 4}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sdhci_milbeaut_reset._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @sdhci_milbeaut_reset._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mlb_dt_ids, !33, !"mlb_dt_ids", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sdhci-milbeaut.c", i32 202, i32 34}
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
!44 = !{i64 2154737371}
!45 = !{i64 6423348}
!46 = !{i64 6422928}
!47 = !{i64 2154740045}
!48 = !{i64 2154737977}
!49 = !{i64 6422728}
!50 = !{i64 6423766}
!51 = !{i64 2154739341}
!52 = !{i8 0, i8 2}
!53 = !{i64 2154754883}
