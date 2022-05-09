; ModuleID = '/llk/IR_all_yes/drivers/char/hw_random/ks-sa-rng.c_pt.bc'
source_filename = "../drivers/char/hw_random/ks-sa-rng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.ks_sa_rng = type { ptr, %struct.hwrng, ptr, ptr, ptr, i64, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.trng_regs = type { i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_ks_sa_rng__171_281_ks_sa_rng_driver_init6 = internal global ptr @ks_sa_rng_driver_init, section ".initcall6.init", align 4
@ks_sa_rng_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ks_sa_rng_probe, ptr @ks_sa_rng_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ks_sa_rng_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ks_sa_rng_driver_exit = internal global ptr @ks_sa_rng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [75 x i8] c"ks_sa_rng.description=Keystone NETCP SA H/W Random Number Generator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [51 x i8] c"ks_sa_rng.author=Vitaly Andrianov <vitalya@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [48 x i8] c"ks_sa_rng.file=drivers/char/hw_random/ks-sa-rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [22 x i8] c"ks_sa_rng.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ks-sa-rng\00", [22 x i8] zeroinitializer }, align 32
@ks_sa_rng_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ks_sa_hwrng\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,syscon-sa-cfg\00", [47 x i8] zeroinitializer }, align 32
@ks_sa_rng_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 239, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"syscon_node_to_regmap failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ks_sa_rng_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/char/hw_random/ks-sa-rng.c\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ks_sa_rng_probe._entry_ptr = internal global ptr @ks_sa_rng_probe._entry, section ".printk_index", align 4
@ks_sa_rng_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 246, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable SA power-domain\0A\00", [62 x i8] zeroinitializer }, align 32
@ks_sa_rng_probe._entry_ptr.10 = internal global ptr @ks_sa_rng_probe._entry.8, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"ks_sa_rng_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 272, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 274, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"ks_sa_rng_dt_match\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 264, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 222, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 236, i32 7 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 239, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [38 x i8] c"../drivers/char/hw_random/ks-sa-rng.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 246, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_ks_sa_rng_driver_exit, ptr @__initcall__kmod_ks_sa_rng__171_281_ks_sa_rng_driver_init6, ptr @ks_sa_rng_driver_exit, ptr @ks_sa_rng_probe._entry, ptr @ks_sa_rng_probe._entry.8, ptr @ks_sa_rng_probe._entry_ptr, ptr @ks_sa_rng_probe._entry_ptr.10, ptr @ks_sa_rng_driver, ptr @.str, ptr @ks_sa_rng_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_sa_rng_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_sa_rng_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_sa_rng_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_sa_rng_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_sa_rng_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ks_sa_rng_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ks_sa_rng_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ks_sa_rng_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_sa_rng_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 136, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup25_crit_edge, label %if.end

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup25

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 8
  %rng = getelementptr inbounds %struct.ks_sa_rng, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %rng to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.1, ptr %rng, align 4
  %.compoundliteral.sroa.3.0.rng.sroa_idx = getelementptr inbounds %struct.ks_sa_rng, ptr %call.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0.rng.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ks_sa_rng_init, ptr %.compoundliteral.sroa.3.0.rng.sroa_idx, align 4
  %.compoundliteral.sroa.4.0.rng.sroa_idx = getelementptr inbounds %struct.ks_sa_rng, ptr %call.i, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %.compoundliteral.sroa.4.0.rng.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ks_sa_rng_cleanup, ptr %.compoundliteral.sroa.4.0.rng.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.rng.sroa_idx = getelementptr inbounds %struct.ks_sa_rng, ptr %call.i, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %.compoundliteral.sroa.5.0.rng.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ks_sa_rng_data_present, ptr %.compoundliteral.sroa.5.0.rng.sroa_idx, align 4
  %.compoundliteral.sroa.6.0.rng.sroa_idx = getelementptr inbounds %struct.ks_sa_rng, ptr %call.i, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %.compoundliteral.sroa.6.0.rng.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ks_sa_rng_data_read, ptr %.compoundliteral.sroa.6.0.rng.sroa_idx, align 4
  %.compoundliteral.sroa.7.0.rng.sroa_idx = getelementptr inbounds %struct.ks_sa_rng, ptr %call.i, i32 0, i32 1, i32 5
  %6 = call ptr @memset(ptr %.compoundliteral.sroa.7.0.rng.sroa_idx, i32 0, i32 80)
  %7 = ptrtoint ptr %dev1 to i32
  %priv = getelementptr inbounds %struct.ks_sa_rng, ptr %call.i, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %priv, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %reg_rng = getelementptr inbounds %struct.ks_sa_rng, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %reg_rng to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %reg_rng, align 8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call4 to i32
  br label %cleanup25

if.end10:                                         ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call11 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %12, ptr noundef nonnull @.str.2) #6
  %regmap_cfg = getelementptr inbounds %struct.ks_sa_rng, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %regmap_cfg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11, ptr %regmap_cfg, align 4
  %cmp.i50 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #9
  br label %cleanup25

if.end15:                                         ; preds = %if.end10
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call.i51 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp.i52 = icmp slt i32 %call.i51, 0
  br i1 %cmp.i52, label %if.then.i, label %if.end21

if.then.i:                                        ; preds = %if.end15
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !42
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end20_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end20_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !43
  br label %do.end20

do.end20:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end20_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %cleanup25

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call24 = tail call i32 @devm_hwrng_register(ptr noundef %dev1, ptr noundef %rng) #6
  br label %cleanup25

cleanup25:                                        ; preds = %if.end21, %do.end20, %do.end, %if.then7, %entry.cleanup25_crit_edge
  %retval.0 = phi i32 [ %10, %if.then7 ], [ -22, %do.end ], [ %call.i51, %do.end20 ], [ %call24, %if.end21 ], [ -12, %entry.cleanup25_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_sa_rng_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_sa_rng_init(ptr nocapture noundef readonly %rng) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %2 = inttoptr i32 %1 to ptr
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.ks_sa_rng, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 8
  %call1 = tail call i32 @clk_get_rate(ptr noundef %6) #6
  %regmap_cfg = getelementptr inbounds %struct.ks_sa_rng, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %regmap_cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap_cfg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 8, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %reg_rng = getelementptr inbounds %struct.ks_sa_rng, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_rng, align 8
  %control = getelementptr inbounds %struct.trng_regs, ptr %10, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control, i32 0) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_rng, align 8
  %control7 = getelementptr inbounds %struct.trng_regs, ptr %12, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control7, i32 0) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_rng, align 8
  %config = getelementptr inbounds %struct.trng_regs, ptr %14, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %config, i32 16777216) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_rng, align 8
  %intmask = getelementptr inbounds %struct.trng_regs, ptr %16, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intmask, i32 0) #6, !srcloc !45
  %17 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_rng, align 8
  %control17 = getelementptr inbounds %struct.trng_regs, ptr %18, i32 0, i32 5
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control17) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %20 = or i32 %19, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_rng, align 8
  %control24 = getelementptr inbounds %struct.trng_regs, ptr %22, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control24, i32 %20) #6, !srcloc !45
  %conv1.i.i = zext i32 %call1 to i64
  %sub.i.i = add nuw nsw i64 %conv1.i.i, 16777215999999999
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call1, i64 %sub.i.i) #10
  %asmresult1.i.i.i = extractvalue { i64, i64 } %23, 1
  %extract.t2.i = trunc i64 %asmresult1.i.i.i to i32
  %refill_delay_ns = getelementptr inbounds %struct.ks_sa_rng, ptr %4, i32 0, i32 6
  %24 = ptrtoint ptr %refill_delay_ns to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %extract.t2.i, ptr %refill_delay_ns, align 8
  %call.i41 = tail call i64 @ktime_get() #6
  %conv = and i64 %asmresult1.i.i.i, 4294967295
  %add = add i64 %call.i41, %conv
  %ready_ts = getelementptr inbounds %struct.ks_sa_rng, ptr %4, i32 0, i32 5
  %25 = ptrtoint ptr %ready_ts to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add, ptr %ready_ts, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks_sa_rng_cleanup(ptr nocapture noundef readonly %rng) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %2 = inttoptr i32 %1 to ptr
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %reg_rng = getelementptr inbounds %struct.ks_sa_rng, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_rng, align 8
  %control = getelementptr inbounds %struct.trng_regs, ptr %6, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control, i32 0) #6, !srcloc !45
  %regmap_cfg = getelementptr inbounds %struct.ks_sa_rng, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %regmap_cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap_cfg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 8, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_sa_rng_data_present(ptr nocapture noundef readonly %rng, i32 noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %2 = inttoptr i32 %1 to ptr
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ready_ts = getelementptr inbounds %struct.ks_sa_rng, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %ready_ts to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ready_ts, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %call.i)
  %cmp = icmp ugt i64 %6, %call.i
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i64 %6, %call.i
  %conv = trunc i64 %sub to i32
  %sub3 = add i32 %conv, 999
  %div = udiv i32 %sub3, 1000
  %add4 = add nuw nsw i32 %div, 5
  tail call void @usleep_range_state(i32 noundef %div, i32 noundef %add4, i32 noundef 2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %reg_rng = getelementptr inbounds %struct.ks_sa_rng, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_rng, align 8
  %status = getelementptr inbounds %struct.trng_regs, ptr %8, i32 0, i32 2
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp ne i32 %10, 0
  %brmerge = or i1 %tobool.not, %tobool9.not
  br i1 %brmerge, label %if.end.for.end.split.loop.exit_crit_edge, label %if.end12

if.end.for.end.split.loop.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.split.loop.exit

if.end12:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 1073740) #6
  %12 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_rng, align 8
  %status.1 = getelementptr inbounds %struct.trng_regs, ptr %13, i32 0, i32 2
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.1) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not.1.not = icmp eq i32 %15, 0
  br i1 %tobool9.not.1.not, label %if.end12.1, label %if.end12.for.end.split.loop.exit_crit_edge

if.end12.for.end.split.loop.exit_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.split.loop.exit

if.end12.1:                                       ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 1073740) #6
  %17 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_rng, align 8
  %status.2 = getelementptr inbounds %struct.trng_regs, ptr %18, i32 0, i32 2
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.2) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not.2.not = icmp eq i32 %20, 0
  br i1 %tobool9.not.2.not, label %if.end12.2, label %if.end12.1.for.end.split.loop.exit_crit_edge

if.end12.1.for.end.split.loop.exit_crit_edge:     ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.split.loop.exit

if.end12.2:                                       ; preds = %if.end12.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 1073740) #6
  %22 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_rng, align 8
  %status.3 = getelementptr inbounds %struct.trng_regs, ptr %23, i32 0, i32 2
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.3) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool9.not.3.not = icmp eq i32 %25, 0
  br i1 %tobool9.not.3.not, label %if.end12.3, label %if.end12.2.for.end.split.loop.exit_crit_edge

if.end12.2.for.end.split.loop.exit_crit_edge:     ; preds = %if.end12.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.split.loop.exit

if.end12.3:                                       ; preds = %if.end12.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 1073740) #6
  %27 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_rng, align 8
  %status.4 = getelementptr inbounds %struct.trng_regs, ptr %28, i32 0, i32 2
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.4) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool9.not.4.not = icmp eq i32 %30, 0
  br i1 %tobool9.not.4.not, label %if.end12.4, label %if.end12.3.for.end.split.loop.exit_crit_edge

if.end12.3.for.end.split.loop.exit_crit_edge:     ; preds = %if.end12.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.split.loop.exit

if.end12.4:                                       ; preds = %if.end12.3
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 1073740) #6
  br label %for.end

for.end.split.loop.exit:                          ; preds = %if.end12.3.for.end.split.loop.exit_crit_edge, %if.end12.2.for.end.split.loop.exit_crit_edge, %if.end12.1.for.end.split.loop.exit_crit_edge, %if.end12.for.end.split.loop.exit_crit_edge, %if.end.for.end.split.loop.exit_crit_edge
  %.lcssa = phi i32 [ %10, %if.end.for.end.split.loop.exit_crit_edge ], [ %15, %if.end12.for.end.split.loop.exit_crit_edge ], [ %20, %if.end12.1.for.end.split.loop.exit_crit_edge ], [ %25, %if.end12.2.for.end.split.loop.exit_crit_edge ], [ %30, %if.end12.3.for.end.split.loop.exit_crit_edge ]
  %.lobit.le = lshr exact i32 %.lcssa, 24
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %if.end12.4
  %ready.1 = phi i32 [ %.lobit.le, %for.end.split.loop.exit ], [ 0, %if.end12.4 ]
  ret i32 %ready.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks_sa_rng_data_read(ptr nocapture noundef readonly %rng, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %2 = inttoptr i32 %1 to ptr
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %reg_rng = getelementptr inbounds %struct.ks_sa_rng, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_rng, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !49
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %data, align 4
  %10 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_rng, align 8
  %output_h = getelementptr inbounds %struct.trng_regs, ptr %11, i32 0, i32 1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %output_h) #6, !srcloc !49
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %arrayidx9 = getelementptr i32, ptr %data, i32 1
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %reg_rng to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_rng, align 8
  %intack = getelementptr inbounds %struct.trng_regs, ptr %16, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intack, i32 16777216) #6, !srcloc !45
  %call.i = tail call i64 @ktime_get() #6
  %refill_delay_ns = getelementptr inbounds %struct.ks_sa_rng, ptr %4, i32 0, i32 6
  %17 = ptrtoint ptr %refill_delay_ns to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %refill_delay_ns, align 8
  %conv = zext i32 %18 to i64
  %add = add i64 %call.i, %conv
  %ready_ts = getelementptr inbounds %struct.ks_sa_rng, ptr %4, i32 0, i32 5
  %19 = ptrtoint ptr %ready_ts to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %add, ptr %ready_ts, align 8
  ret i32 8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_ks_sa_rng__171_281_ks_sa_rng_driver_init6, !1, !"__initcall__kmod_ks_sa_rng__171_281_ks_sa_rng_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/hw_random/ks-sa-rng.c", i32 281, i32 1}
!2 = !{ptr @__exitcall_ks_sa_rng_driver_exit, !1, !"__exitcall_ks_sa_rng_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description172, !4, !"__UNIQUE_ID_description172", i1 false, i1 false}
!4 = !{!"../drivers/char/hw_random/ks-sa-rng.c", i32 283, i32 1}
!5 = !{ptr @__UNIQUE_ID_author173, !6, !"__UNIQUE_ID_author173", i1 false, i1 false}
!6 = !{!"../drivers/char/hw_random/ks-sa-rng.c", i32 284, i32 1}
!7 = !{ptr @__UNIQUE_ID_file174, !8, !"__UNIQUE_ID_file174", i1 false, i1 false}
!8 = !{!"../drivers/char/hw_random/ks-sa-rng.c", i32 285, i32 1}
!9 = !{ptr @__UNIQUE_ID_license175, !8, !"__UNIQUE_ID_license175", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/char/hw_random/ks-sa-rng.c", i32 274, i32 11}
!12 = !{ptr @ks_sa_rng_driver, !13, !"ks_sa_rng_driver", i1 false, i1 false}
!13 = !{!"../drivers/char/hw_random/ks-sa-rng.c", i32 272, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/char/hw_random/ks-sa-rng.c", i32 222, i32 11}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/char/hw_random/ks-sa-rng.c", i32 236, i32 7}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/char/hw_random/ks-sa-rng.c", i32 239, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ks_sa_rng_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ks_sa_rng_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/hw_random/ks-sa-rng.c", i32 246, i32 3}
!28 = !{ptr @ks_sa_rng_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ks_sa_rng_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ks_sa_rng_dt_match, !31, !"ks_sa_rng_dt_match", i1 false, i1 false}
!31 = !{!"../drivers/char/hw_random/ks-sa-rng.c", i32 264, i32 34}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2148498266}
!42 = !{i64 984866, i64 984891, i64 984913, i64 984929, i64 984941, i64 984961, i64 984985, i64 985001, i64 985013}
!43 = !{i64 2148498454}
!44 = !{i64 2152611859}
!45 = !{i64 4043351}
!46 = !{i64 2152612271}
!47 = !{i64 2152612702}
!48 = !{i64 2152613116}
!49 = !{i64 4043769}
!50 = !{i64 2152613826}
!51 = !{i64 2152614137}
!52 = !{i64 2152614552}
!53 = !{i64 2152617092}
!54 = !{i64 2152615352}
!55 = !{i64 2152615886}
!56 = !{i64 2152616216}
