; ModuleID = '/llk/IR_all_yes/drivers/char/hw_random/hisi-rng.c_pt.bc'
source_filename = "../drivers/char/hw_random/hisi-rng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.hisi_rng = type { ptr, %struct.hwrng }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }

@__param_str_seed_sel = internal constant [18 x i8] c"hisi_rng.seed_sel\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@seed_sel = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_seed_sel = internal constant %struct.kernel_param { ptr @__param_str_seed_sel, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @seed_sel } }, section "__param", align 4
@__UNIQUE_ID_seed_seltype170 = internal constant [31 x i8] c"hisi_rng.parmtype=seed_sel:int\00", section ".modinfo", align 1
@__UNIQUE_ID_seed_sel171 = internal constant [87 x i8] c"hisi_rng.parm=seed_sel:Auto reload seed. 0, use LFSR(default); 1, use ring oscillator.\00", section ".modinfo", align 1
@__initcall__kmod_hisi_rng__172_117_hisi_rng_driver_init6 = internal global ptr @hisi_rng_driver_init, section ".initcall6.init", align 4
@hisi_rng_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hisi_rng_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hisi_rng_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hisi_rng_driver_exit = internal global ptr @hisi_rng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file173 = internal constant [46 x i8] c"hisi_rng.file=drivers/char/hw_random/hisi-rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [21 x i8] c"hisi_rng.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [53 x i8] c"hisi_rng.author=Kefeng Wang <wangkefeng.wang@huawei>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [62 x i8] c"hisi_rng.description=Hisilicon random number generator driver\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hisi-rng\00", [23 x i8] zeroinitializer }, align 32
@hisi_rng_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hip04-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hip05-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@hisi_rng_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to register hwrng\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hisi_rng_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/char/hw_random/hisi-rng.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hisi_rng_probe._entry_ptr = internal global ptr @hisi_rng_probe._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant [9 x i8] c"seed_sel\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 25, i32 12 }
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"hisi_rng_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 109, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 112, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"hisi_rng_dt_ids\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 102, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [37 x i8] c"../drivers/char/hw_random/hisi-rng.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 95, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__UNIQUE_ID_seed_sel171, ptr @__UNIQUE_ID_seed_seltype170, ptr @__exitcall_hisi_rng_driver_exit, ptr @__initcall__kmod_hisi_rng__172_117_hisi_rng_driver_init6, ptr @__param_seed_sel, ptr @hisi_rng_driver_exit, ptr @hisi_rng_probe._entry, ptr @hisi_rng_probe._entry_ptr, ptr @seed_sel, ptr @hisi_rng_driver, ptr @.str, ptr @hisi_rng_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seed_sel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_rng_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_rng_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_rng_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_rng_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hisi_rng_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hisi_rng_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @hisi_rng_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_rng_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup20_crit_edge, label %if.end

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup20

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %rng8 = getelementptr inbounds %struct.hisi_rng, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %rng8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %rng8, align 4
  %init = getelementptr inbounds %struct.hisi_rng, ptr %call.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @hisi_rng_init, ptr %init, align 4
  %cleanup = getelementptr inbounds %struct.hisi_rng, ptr %call.i, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @hisi_rng_cleanup, ptr %cleanup, align 4
  %read = getelementptr inbounds %struct.hisi_rng, ptr %call.i, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @hisi_rng_read, ptr %read, align 4
  %call15 = tail call i32 @devm_hwrng_register(ptr noundef %dev, ptr noundef %rng8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end7.cleanup20_crit_edge, label %do.end

if.end7.cleanup20_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup20

cleanup20:                                        ; preds = %do.end, %if.end7.cleanup20_crit_edge, %if.then4, %entry.cleanup20_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %call15, %do.end ], [ -12, %entry.cleanup20_crit_edge ], [ 0, %if.end7.cleanup20_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_rng_init(ptr nocapture noundef readonly %rng) #2 align 64 {
entry:
  %seed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rng, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seed) #6
  %0 = ptrtoint ptr %seed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %seed, align 4, !annotation !41
  call void @get_random_bytes(ptr noundef nonnull %seed, i32 noundef 4) #6
  %1 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %seed, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #6, !srcloc !42
  %6 = load i32, ptr @seed_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %spec.select = select i1 %cmp, i32 117440512, i32 16777216
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %spec.select) #6, !srcloc !42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seed) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_rng_cleanup(ptr nocapture noundef readonly %rng) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rng, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #6, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_rng_read(ptr nocapture noundef readonly %rng, ptr nocapture noundef writeonly %buf, i32 noundef %max, i1 noundef zeroext %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rng, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !43
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %buf, align 4
  ret i32 4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__param_seed_sel, !1, !"__param_seed_sel", i1 false, i1 false}
!1 = !{!"../drivers/char/hw_random/hisi-rng.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_seed_seltype170, !1, !"__UNIQUE_ID_seed_seltype170", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_seed_sel171, !4, !"__UNIQUE_ID_seed_sel171", i1 false, i1 false}
!4 = !{!"../drivers/char/hw_random/hisi-rng.c", i32 27, i32 1}
!5 = !{ptr @__initcall__kmod_hisi_rng__172_117_hisi_rng_driver_init6, !6, !"__initcall__kmod_hisi_rng__172_117_hisi_rng_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/char/hw_random/hisi-rng.c", i32 117, i32 1}
!7 = !{ptr @__exitcall_hisi_rng_driver_exit, !6, !"__exitcall_hisi_rng_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file173, !9, !"__UNIQUE_ID_file173", i1 false, i1 false}
!9 = !{!"../drivers/char/hw_random/hisi-rng.c", i32 119, i32 1}
!10 = !{ptr @__UNIQUE_ID_license174, !9, !"__UNIQUE_ID_license174", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author175, !12, !"__UNIQUE_ID_author175", i1 false, i1 false}
!12 = !{!"../drivers/char/hw_random/hisi-rng.c", i32 120, i32 1}
!13 = !{ptr @__UNIQUE_ID_description176, !14, !"__UNIQUE_ID_description176", i1 false, i1 false}
!14 = !{!"../drivers/char/hw_random/hisi-rng.c", i32 121, i32 1}
!15 = !{ptr @seed_sel, !16, !"seed_sel", i1 false, i1 false}
!16 = !{!"../drivers/char/hw_random/hisi-rng.c", i32 25, i32 12}
!17 = !{ptr @__param_str_seed_sel, !1, !"__param_str_seed_sel", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/char/hw_random/hisi-rng.c", i32 112, i32 11}
!20 = !{ptr @hisi_rng_driver, !21, !"hisi_rng_driver", i1 false, i1 false}
!21 = !{!"../drivers/char/hw_random/hisi-rng.c", i32 109, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/hw_random/hisi-rng.c", i32 95, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @hisi_rng_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @hisi_rng_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @hisi_rng_dt_ids, !31, !"hisi_rng_dt_ids", i1 false, i1 false}
!31 = !{!"../drivers/char/hw_random/hisi-rng.c", i32 102, i32 34}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{i64 1802247}
!43 = !{i64 1802665}
