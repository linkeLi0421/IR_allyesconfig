; ModuleID = '/llk/IR_all_yes/drivers/i2c/muxes/i2c-mux-mlxcpld.c_pt.bc'
source_filename = "../drivers/i2c/muxes/i2c-mux-mlxcpld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mlxcpld_mux_plat_data = type { ptr, i32, i32, i8, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.mlxcpld_mux = type { i32, ptr, %struct.mlxcpld_mux_plat_data }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__initcall__kmod_i2c_mux_mlxcpld__288_189_mlxcpld_mux_driver_init6 = internal global ptr @mlxcpld_mux_driver_init, section ".initcall6.init", align 4
@mlxcpld_mux_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mlxcpld_mux_probe, ptr @mlxcpld_mux_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mlxcpld_mux_driver_exit = internal global ptr @mlxcpld_mux_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [61 x i8] c"i2c_mux_mlxcpld.author=Michael Shych (michaels@mellanox.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [57 x i8] c"i2c_mux_mlxcpld.description=Mellanox I2C-CPLD-MUX driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [55 x i8] c"i2c_mux_mlxcpld.file=drivers/i2c/muxes/i2c-mux-mlxcpld\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [37 x i8] c"i2c_mux_mlxcpld.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [47 x i8] c"i2c_mux_mlxcpld.alias=platform:i2c-mux-mlxcpld\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c-mux-mlxcpld\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.3 = private unnamed_addr constant [19 x i8] c"mlxcpld_mux_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 181, i32 31 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [39 x i8] c"../drivers/i2c/muxes/i2c-mux-mlxcpld.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 183, i32 11 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mlxcpld_mux_driver_exit, ptr @__initcall__kmod_i2c_mux_mlxcpld__288_189_mlxcpld_mux_driver_init6, ptr @mlxcpld_mux_driver_exit, ptr @mlxcpld_mux_driver, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxcpld_mux_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxcpld_mux_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mlxcpld_mux_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlxcpld_mux_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @mlxcpld_mux_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxcpld_mux_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_size = getelementptr inbounds %struct.mlxcpld_mux_plat_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %reg_size to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_size, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.end.cleanup_crit_edge [
    i8 1, label %if.end.sw.epilog_crit_edge
    i8 2, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %func.0 = phi i32 [ 1, %sw.bb2 ], [ 1048576, %if.end.sw.epilog_crit_edge ]
  %adapter = getelementptr i8, ptr %3, i32 -8
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %12(ptr noundef %8) #4
  %and.i = and i32 %call.i.i, %func.0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %func.0)
  %cmp.i.not = icmp eq i32 %and.i, %func.0
  br i1 %cmp.i.not, label %if.end6, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %sw.epilog
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %num_adaps = getelementptr inbounds %struct.mlxcpld_mux_plat_data, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %num_adaps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_adaps, align 4
  %call9 = tail call ptr @i2c_mux_alloc(ptr noundef %14, ptr noundef %dev, i32 noundef %16, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @mlxcpld_mux_select_chan, ptr noundef nonnull @mlxcpld_mux_deselect) #4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %call9, i32 0, i32 3
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i, align 4
  %client14 = getelementptr inbounds %struct.mlxcpld_mux, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %client14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %client14, align 4
  %pdata15 = getelementptr inbounds %struct.mlxcpld_mux, ptr %19, i32 0, i32 2
  %21 = call ptr @memcpy(ptr %pdata15, ptr %1, i32 24)
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %19, align 4
  %23 = ptrtoint ptr %num_adaps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_adaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp59 = icmp sgt i32 %24, 0
  br i1 %cmp59, label %if.end12.for.body_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %num.060, 1
  %25 = ptrtoint ptr %num_adaps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_adaps, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end12.for.body_crit_edge
  %num.060 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr i32, ptr %28, i32 %num.060
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %call18 = tail call i32 @i2c_mux_add_adapter(ptr noundef nonnull %call9, i32 noundef 0, i32 noundef %30, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond, label %virt_reg_failed

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end12.for.end_crit_edge
  %completion_notify = getelementptr inbounds %struct.mlxcpld_mux_plat_data, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %completion_notify to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %completion_notify, align 4
  %tobool22.not = icmp eq ptr %32, null
  br i1 %tobool22.not, label %for.end.cleanup_crit_edge, label %if.then23

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %handle = getelementptr inbounds %struct.mlxcpld_mux_plat_data, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handle, align 4
  %35 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call9, align 4
  %adapter26 = getelementptr inbounds %struct.i2c_mux_core, ptr %call9, i32 0, i32 8
  %call27 = tail call i32 %32(ptr noundef %34, ptr noundef %36, ptr noundef %adapter26) #4
  br label %cleanup

virt_reg_failed:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_mux_del_adapters(ptr noundef nonnull %call9) #4
  br label %cleanup

cleanup:                                          ; preds = %virt_reg_failed, %if.then23, %for.end.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %virt_reg_failed ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %sw.epilog.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxcpld_mux_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxcpld_mux_select_chan(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  %data.i = alloca %union.i2c_smbus_data, align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %reg_size = getelementptr inbounds %struct.mlxcpld_mux, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %reg_size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  %add = zext i1 %cmp to i32
  %spec.select = add i32 %add, %chan
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %spec.select)
  %cmp2.not = icmp eq i32 %5, %spec.select
  br i1 %cmp2.not, label %entry.if.end9_crit_edge, label %if.then4

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then4:                                         ; preds = %entry
  %6 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %muxc, align 4
  %client1.i = getelementptr inbounds %struct.mlxcpld_mux, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client1.i, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #4
  %10 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #4
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 262143, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #4
  %13 = ptrtoint ptr %reg_size to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg_size, align 4
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %14, label %mlxcpld_mux_reg_write.exit.thread [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb5.i
  ]

mlxcpld_mux_reg_write.exit.thread:                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #4
  br label %36

sw.bb.i:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %conv2.i = trunc i32 %spec.select to i8
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv2.i, ptr %data.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr.i, align 2
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %9, align 8
  %sel_reg_addr.i = getelementptr inbounds %struct.mlxcpld_mux, ptr %1, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %sel_reg_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sel_reg_addr.i, align 4
  %conv4.i = trunc i32 %22 to i8
  %call.i = call i32 @__i2c_smbus_xfer(ptr noundef %7, i16 noundef zeroext %18, i16 noundef zeroext %20, i8 noundef zeroext 0, i8 noundef zeroext %conv4.i, i32 noundef 2, ptr noundef nonnull %data.i) #4
  br label %mlxcpld_mux_reg_write.exit

sw.bb5.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %23 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %24 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %sel_reg_addr7.i = getelementptr inbounds %struct.mlxcpld_mux, ptr %1, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %sel_reg_addr7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sel_reg_addr7.i, align 4
  %27 = lshr i32 %26, 8
  %conv8.i = trunc i32 %27 to i8
  %28 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv8.i, ptr %buf.i, align 1
  %conv11.i = trunc i32 %26 to i8
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv11.i, ptr %24, align 1
  %conv13.i = trunc i32 %spec.select to i8
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv13.i, ptr %23, align 1
  %addr15.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %31 = ptrtoint ptr %addr15.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr15.i, align 2
  %33 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %msg.i, align 4
  %buf17.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %34 = ptrtoint ptr %buf17.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i, ptr %buf17.i, align 4
  %flags22.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %35 = ptrtoint ptr %flags22.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags22.i, align 2
  %call23.i = call i32 @__i2c_transfer(ptr noundef %7, ptr noundef nonnull %msg.i, i32 noundef 1) #4
  br label %mlxcpld_mux_reg_write.exit

mlxcpld_mux_reg_write.exit:                       ; preds = %sw.bb5.i, %sw.bb.i
  %retval.0.i = phi i32 [ %call23.i, %sw.bb5.i ], [ %call.i, %sw.bb.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp6 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp6, label %mlxcpld_mux_reg_write.exit._crit_edge, label %mlxcpld_mux_reg_write.exit._crit_edge23

mlxcpld_mux_reg_write.exit._crit_edge23:          ; preds = %mlxcpld_mux_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %37

mlxcpld_mux_reg_write.exit._crit_edge:            ; preds = %mlxcpld_mux_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %36

36:                                               ; preds = %mlxcpld_mux_reg_write.exit._crit_edge, %mlxcpld_mux_reg_write.exit.thread
  %retval.0.i22 = phi i32 [ -22, %mlxcpld_mux_reg_write.exit.thread ], [ %retval.0.i, %mlxcpld_mux_reg_write.exit._crit_edge ]
  br label %37

37:                                               ; preds = %36, %mlxcpld_mux_reg_write.exit._crit_edge23
  %retval.0.i21 = phi i32 [ %retval.0.i22, %36 ], [ %retval.0.i, %mlxcpld_mux_reg_write.exit._crit_edge23 ]
  %38 = phi i32 [ -1, %36 ], [ %spec.select, %mlxcpld_mux_reg_write.exit._crit_edge23 ]
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %1, align 4
  br label %if.end9

if.end9:                                          ; preds = %37, %entry.if.end9_crit_edge
  %err.0 = phi i32 [ %retval.0.i21, %37 ], [ 0, %entry.if.end9_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxcpld_mux_deselect(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  %data.i = alloca %union.i2c_smbus_data, align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %muxc, align 4
  %client1.i = getelementptr inbounds %struct.mlxcpld_mux, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client1.i, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #4
  %7 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #4
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 262143, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #4
  %reg_size.i = getelementptr inbounds %struct.mlxcpld_mux, ptr %1, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %reg_size.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg_size.i, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %11, label %entry.mlxcpld_mux_reg_write.exit_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb5.i
  ]

entry.mlxcpld_mux_reg_write.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxcpld_mux_reg_write.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %data.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr.i, align 2
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %6, align 8
  %sel_reg_addr.i = getelementptr inbounds %struct.mlxcpld_mux, ptr %1, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %sel_reg_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sel_reg_addr.i, align 4
  %conv4.i = trunc i32 %19 to i8
  %call.i = call i32 @__i2c_smbus_xfer(ptr noundef %4, i16 noundef zeroext %15, i16 noundef zeroext %17, i8 noundef zeroext 0, i8 noundef zeroext %conv4.i, i32 noundef 2, ptr noundef nonnull %data.i) #4
  br label %mlxcpld_mux_reg_write.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %20 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %21 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %sel_reg_addr7.i = getelementptr inbounds %struct.mlxcpld_mux, ptr %1, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %sel_reg_addr7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sel_reg_addr7.i, align 4
  %24 = lshr i32 %23, 8
  %conv8.i = trunc i32 %24 to i8
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv8.i, ptr %buf.i, align 1
  %conv11.i = trunc i32 %23 to i8
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv11.i, ptr %21, align 1
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %20, align 1
  %addr15.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %28 = ptrtoint ptr %addr15.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr15.i, align 2
  %30 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %msg.i, align 4
  %buf17.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %31 = ptrtoint ptr %buf17.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf.i, ptr %buf17.i, align 4
  %flags22.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %32 = ptrtoint ptr %flags22.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags22.i, align 2
  %call23.i = call i32 @__i2c_transfer(ptr noundef %4, ptr noundef nonnull %msg.i, i32 noundef 1) #4
  br label %mlxcpld_mux_reg_write.exit

mlxcpld_mux_reg_write.exit:                       ; preds = %sw.bb5.i, %sw.bb.i, %entry.mlxcpld_mux_reg_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call23.i, %sw.bb5.i ], [ %call.i, %sw.bb.i ], [ -22, %entry.mlxcpld_mux_reg_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_i2c_mux_mlxcpld__288_189_mlxcpld_mux_driver_init6, !1, !"__initcall__kmod_i2c_mux_mlxcpld__288_189_mlxcpld_mux_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/muxes/i2c-mux-mlxcpld.c", i32 189, i32 1}
!2 = !{ptr @__exitcall_mlxcpld_mux_driver_exit, !1, !"__exitcall_mlxcpld_mux_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/muxes/i2c-mux-mlxcpld.c", i32 191, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/muxes/i2c-mux-mlxcpld.c", i32 192, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/muxes/i2c-mux-mlxcpld.c", i32 193, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/i2c/muxes/i2c-mux-mlxcpld.c", i32 194, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/muxes/i2c-mux-mlxcpld.c", i32 183, i32 11}
!14 = !{ptr @mlxcpld_mux_driver, !15, !"mlxcpld_mux_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/muxes/i2c-mux-mlxcpld.c", i32 181, i32 31}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
