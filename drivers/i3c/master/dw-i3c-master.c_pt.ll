; ModuleID = '/llk/IR_all_yes/drivers/i3c/master/dw-i3c-master.c_pt.bc'
source_filename = "../drivers/i3c/master/dw-i3c-master.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i3c_master_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dw_i3c_master = type { %struct.i3c_master_controller, i16, i16, i32, %struct.anon.90, %struct.dw_i3c_master_caps, ptr, ptr, ptr, [5 x i8], [5 x i8], [32 x i8] }
%struct.i3c_master_controller = type { %struct.device, ptr, %struct.i2c_adapter, ptr, i8, %struct.anon.89, %struct.i3c_bus, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.89 = type { %struct.list_head, %struct.list_head }
%struct.i3c_bus = type { ptr, i32, [8 x i32], i32, %struct.anon.84, %struct.anon.85, %struct.rw_semaphore }
%struct.anon.84 = type { i32, i32 }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.90 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.dw_i3c_master_caps = type { i8, i8 }
%struct.dw_i3c_xfer = type { %struct.list_head, %struct.completion, i32, i32, [0 x %struct.dw_i3c_cmd] }
%struct.dw_i3c_cmd = type { i32, i32, i16, ptr, i16, ptr, i8 }
%struct.i3c_device_info = type { i64, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16 }
%struct.i3c_i2c_dev_desc = type { %struct.list_head, ptr, ptr }
%struct.i3c_dev_desc = type { %struct.i3c_i2c_dev_desc, %struct.i3c_device_info, %struct.mutex, ptr, ptr, ptr }
%struct.i3c_ccc_cmd = type { i8, i8, i32, ptr, i32 }
%struct.i3c_ccc_cmd_dest = type { i8, %struct.i3c_ccc_cmd_payload }
%struct.i3c_ccc_cmd_payload = type { i16, ptr }
%struct.i3c_priv_xfer = type { i8, i16, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.i2c_dev_desc = type { %struct.i3c_i2c_dev_desc, ptr, ptr, i16, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_dw_i3c_master__289_1214_dw_i3c_driver_init6 = internal global ptr @dw_i3c_driver_init, section ".initcall6.init", align 4
@dw_i3c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_i3c_probe, ptr @dw_i3c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_i3c_master_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw_i3c_driver_exit = internal global ptr @dw_i3c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [62 x i8] c"dw_i3c_master.author=Vitor Soares <vitor.soares@synopsys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [53 x i8] c"dw_i3c_master.description=DesignWare MIPI I3C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [52 x i8] c"dw_i3c_master.file=drivers/i3c/master/dw-i3c-master\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [29 x i8] c"dw_i3c_master.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dw-i3c-master\00", [18 x i8] zeroinitializer }, align 32
@dw_i3c_master_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-i3c-master-1.00a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"core_rst\00", [23 x i8] zeroinitializer }, align 32
@dw_i3c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&master->xferqueue.lock\00", [40 x i8] zeroinitializer }, align 32
@dw_mipi_i3c_ops = internal constant { %struct.i3c_master_controller_ops, [60 x i8] } { %struct.i3c_master_controller_ops { ptr @dw_i3c_master_bus_init, ptr @dw_i3c_master_bus_cleanup, ptr @dw_i3c_master_attach_i3c_dev, ptr @dw_i3c_master_reattach_i3c_dev, ptr @dw_i3c_master_detach_i3c_dev, ptr @dw_i3c_master_daa, ptr @dw_i3c_master_supports_ccc_cmd, ptr @dw_i3c_master_send_ccc_cmd, ptr @dw_i3c_master_priv_xfers, ptr @dw_i3c_master_attach_i2c_dev, ptr @dw_i3c_master_detach_i2c_dev, ptr @dw_i3c_master_i2c_xfers, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [26 x i64] [i64 24, i64 8, i64 0, i64 1, i64 2, i64 6, i64 7, i64 9, i64 10, i64 32, i64 128, i64 129, i64 130, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 148, i64 149]
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"dw_i3c_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1206, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1210, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [23 x i8] c"dw_i3c_master_of_match\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1200, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1133, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1143, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"dw_mipi_i3c_ops\00", align 1
@___asan_gen_.25 = private constant [38 x i8] c"../drivers/i3c/master/dw-i3c-master.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1100, i32 47 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 87, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_dw_i3c_driver_exit, ptr @__initcall__kmod_dw_i3c_master__289_1214_dw_i3c_driver_init6, ptr @dw_i3c_driver_exit, ptr @dw_i3c_driver, ptr @.str, ptr @dw_i3c_master_of_match, ptr @.str.1, ptr @dw_i3c_probe.__key, ptr @.str.2, ptr @dw_mipi_i3c_ops, ptr @init_completion.__key, ptr @.str.3], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i3c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i3c_master_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i3c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_i3c_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i3c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_i3c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_i3c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_i3c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i3c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2616, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.dw_i3c_master, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %core_clk = getelementptr inbounds %struct.dw_i3c_master, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %core_clk, align 4
  %cmp.i126 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call.i127 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %core_rst = getelementptr inbounds %struct.dw_i3c_master, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %core_rst to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i127, ptr %core_rst, align 8
  %cmp.i128 = icmp ugt ptr %call.i127, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call.i127 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %6 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_clk, align 4
  %call.i129 = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.not.i = icmp eq i32 %call.i129, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.err_disable_core_clk_crit_edge

if.end23.err_disable_core_clk_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_core_clk

if.end.i:                                         ; preds = %if.end23
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end28, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %err_disable_core_clk

if.end28:                                         ; preds = %if.end.i
  %8 = ptrtoint ptr %core_rst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_rst, align 8
  %call30 = tail call i32 @reset_control_deassert(ptr noundef %9) #8
  %xferqueue = getelementptr inbounds %struct.dw_i3c_master, ptr %call.i, i32 0, i32 4
  %lock = getelementptr inbounds %struct.dw_i3c_master, ptr %call.i, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @dw_i3c_probe.__key, i16 noundef signext 3) #8
  %10 = ptrtoint ptr %xferqueue to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %xferqueue, ptr %xferqueue, align 4
  %prev.i = getelementptr inbounds %struct.dw_i3c_master, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %xferqueue, ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !35
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2134835200) #8, !srcloc !36
  %call37 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i130 = icmp eq ptr %15, null
  br i1 %tobool.not.i130, label %if.end.i131, label %if.end28.dev_name.exit_crit_edge

if.end28.dev_name.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i131:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i131, %if.end28.dev_name.exit_crit_edge
  %retval.0.i132 = phi ptr [ %17, %if.end.i131 ], [ %15, %if.end28.dev_name.exit_crit_edge ]
  %call.i133 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call37, ptr noundef nonnull @dw_i3c_master_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i132, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool42.not = icmp eq i32 %call.i133, 0
  br i1 %tobool42.not, label %if.end44, label %dev_name.exit.err_assert_rst_crit_edge

dev_name.exit.err_assert_rst_crit_edge:           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_assert_rst

if.end44:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr46 = getelementptr i8, ptr %20, i32 76
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #8, !srcloc !37
  %22 = lshr i32 %21, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !38
  %conv = trunc i32 %22 to i8
  %caps = getelementptr inbounds %struct.dw_i3c_master, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %caps to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %caps, align 8
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr52 = getelementptr i8, ptr %25, i32 80
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #8, !srcloc !37
  %27 = lshr i32 %26, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !39
  %conv57 = trunc i32 %27 to i8
  %datafifodepth = getelementptr inbounds %struct.dw_i3c_master, ptr %call.i, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %datafifodepth to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv57, ptr %datafifodepth, align 1
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr62 = getelementptr i8, ptr %30, i32 92
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #8, !srcloc !37
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  %conv66 = trunc i32 %32 to i16
  %datstartaddr = getelementptr inbounds %struct.dw_i3c_master, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %datstartaddr to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv66, ptr %datstartaddr, align 2
  %34 = lshr i32 %32, 16
  %conv67 = trunc i32 %34 to i16
  %maxdevs = getelementptr inbounds %struct.dw_i3c_master, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %maxdevs to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv67, ptr %maxdevs, align 8
  %sub70 = sub nsw i32 32, %34
  %shr71 = lshr i32 -1, %sub70
  %free_pos = getelementptr inbounds %struct.dw_i3c_master, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %free_pos to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr71, ptr %free_pos, align 4
  %call74 = tail call i32 @i3c_master_register(ptr noundef nonnull %call.i, ptr noundef %dev, ptr noundef nonnull @dw_mipi_i3c_ops, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end44.cleanup_crit_edge, label %if.end44.err_assert_rst_crit_edge

if.end44.err_assert_rst_crit_edge:                ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_assert_rst

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_assert_rst:                                   ; preds = %if.end44.err_assert_rst_crit_edge, %dev_name.exit.err_assert_rst_crit_edge
  %ret.0 = phi i32 [ %call.i133, %dev_name.exit.err_assert_rst_crit_edge ], [ %call74, %if.end44.err_assert_rst_crit_edge ]
  %37 = ptrtoint ptr %core_rst to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %core_rst, align 8
  %call79 = tail call i32 @reset_control_assert(ptr noundef %38) #8
  br label %err_disable_core_clk

err_disable_core_clk:                             ; preds = %err_assert_rst, %if.then3.i, %if.end23.err_disable_core_clk_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_assert_rst ], [ %call1.i, %if.then3.i ], [ %call.i129, %if.end23.err_disable_core_clk_crit_edge ]
  %39 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %40) #8
  tail call void @clk_unprepare(ptr noundef %40) #8
  br label %cleanup

cleanup:                                          ; preds = %err_disable_core_clk, %if.end44.cleanup_crit_edge, %if.then20, %if.then12, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %3, %if.then12 ], [ %5, %if.then20 ], [ %ret.1, %err_disable_core_clk ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i3c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @i3c_master_unregister(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %core_rst = getelementptr inbounds %struct.dw_i3c_master, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %core_rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_rst, align 8
  %call2 = tail call i32 @reset_control_assert(ptr noundef %3) #8
  %core_clk = getelementptr inbounds %struct.dw_i3c_master, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i3c_master_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dw_i3c_master, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  %6 = and i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 2134835200) #8, !srcloc !36
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.dw_i3c_master, ptr %dev_id, i32 0, i32 4, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %xferqueue.i = getelementptr inbounds %struct.dw_i3c_master, ptr %dev_id, i32 0, i32 4
  %cur.i = getelementptr inbounds %struct.dw_i3c_master, ptr %dev_id, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.dw_i3c_master_end_xfer_locked.exit_crit_edge, label %if.end.i

if.end.dw_i3c_master_end_xfer_locked.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_i3c_master_end_xfer_locked.exit

if.end.i:                                         ; preds = %if.end
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 76
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !37
  %14 = lshr i32 %13, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  %and.i = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp4.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp4.not.i, label %if.end.i.for.end36.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end36.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end36.i

for.body.i:                                       ; preds = %if.end23.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %if.end23.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr5.i = getelementptr i8, ptr %16, i32 16
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !37
  %18 = call i32 @llvm.bswap.i32(i32 %17) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  %and9.i = lshr i32 %18, 24
  %shr10.i = and i32 %and9.i, 15
  %conv.i = trunc i32 %18 to i16
  %rx_len.i = getelementptr %struct.dw_i3c_xfer, ptr %10, i32 0, i32 4, i32 %shr10.i, i32 4
  %19 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %rx_len.i, align 4
  %shr13.i = lshr i32 %18, 28
  %conv14.i = trunc i32 %shr13.i to i8
  %error.i = getelementptr %struct.dw_i3c_xfer, ptr %10, i32 0, i32 4, i32 %shr10.i, i32 6
  %20 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv14.i, ptr %error.i, align 4
  %conv16.i = and i32 %18, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16.i)
  %tobool17.not.i = icmp ne i32 %conv16.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv14.i)
  %tobool19.not.i = icmp eq i8 %conv14.i, 0
  %or.cond.i = select i1 %tobool17.not.i, i1 %tobool19.not.i, i1 false
  br i1 %or.cond.i, label %if.then20.i, label %for.body.i.if.end23.i_crit_edge

for.body.i.if.end23.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then20.i:                                      ; preds = %for.body.i
  %rx_buf.i = getelementptr %struct.dw_i3c_xfer, ptr %10, i32 0, i32 4, i32 %shr10.i, i32 5
  %21 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_buf.i, align 4
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 20
  %div.i123.i = lshr i32 %18, 2
  %div.i1.zext.i = and i32 %div.i123.i, 16383
  call void @__raw_readsl(ptr noundef %add.ptr.i.i, ptr noundef %22, i32 noundef %div.i1.zext.i) #8
  %and.i.i = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then20.i.if.end23.i_crit_edge, label %if.then.i.i

if.then20.i.if.end23.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then.i.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %25 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !46
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %27, i32 20
  call void @__raw_readsl(ptr noundef %add.ptr2.i.i, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #8
  %and3.i.i = and i32 %18, 65532
  %add.ptr4.i.i = getelementptr i8, ptr %22, i32 %and3.i.i
  %28 = call ptr @memcpy(ptr %add.ptr4.i.i, ptr %tmp.i.i, i32 %and.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then.i.i, %if.then20.i.if.end23.i_crit_edge, %for.body.i.if.end23.i_crit_edge
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and.i
  br i1 %exitcond.not.i, label %if.end23.i.for.body27.i_crit_edge, label %if.end23.i.for.body.i_crit_edge

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end23.i.for.body27.i_crit_edge:                ; preds = %if.end23.i
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.inc34.i.for.body27.i_crit_edge, %if.end23.i.for.body27.i_crit_edge
  %i.18.i = phi i32 [ %inc35.i, %for.inc34.i.for.body27.i_crit_edge ], [ 0, %if.end23.i.for.body27.i_crit_edge ]
  %ret.07.i = phi i32 [ %ret.1.i, %for.inc34.i.for.body27.i_crit_edge ], [ 0, %if.end23.i.for.body27.i_crit_edge ]
  %error30.i = getelementptr %struct.dw_i3c_xfer, ptr %10, i32 0, i32 4, i32 %i.18.i, i32 6
  %29 = ptrtoint ptr %error30.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %error30.i, align 4
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i8 %30, label %sw.default.i [
    i8 0, label %for.body27.i.for.inc34.i_crit_edge
    i8 2, label %for.body27.i.sw.bb.i_crit_edge
    i8 4, label %for.body27.i.sw.bb.i_crit_edge31
    i8 8, label %for.body27.i.sw.bb.i_crit_edge32
    i8 1, label %for.body27.i.sw.bb.i_crit_edge33
    i8 3, label %for.body27.i.sw.bb.i_crit_edge34
    i8 6, label %sw.bb32.i
  ]

for.body27.i.sw.bb.i_crit_edge34:                 ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

for.body27.i.sw.bb.i_crit_edge33:                 ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

for.body27.i.sw.bb.i_crit_edge32:                 ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

for.body27.i.sw.bb.i_crit_edge31:                 ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

for.body27.i.sw.bb.i_crit_edge:                   ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

for.body27.i.for.inc34.i_crit_edge:               ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc34.i

sw.bb.i:                                          ; preds = %for.body27.i.sw.bb.i_crit_edge, %for.body27.i.sw.bb.i_crit_edge31, %for.body27.i.sw.bb.i_crit_edge32, %for.body27.i.sw.bb.i_crit_edge33, %for.body27.i.sw.bb.i_crit_edge34
  br label %for.inc34.i

sw.bb32.i:                                        ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc34.i

sw.default.i:                                     ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc34.i

for.inc34.i:                                      ; preds = %sw.default.i, %sw.bb32.i, %sw.bb.i, %for.body27.i.for.inc34.i_crit_edge
  %ret.1.i = phi i32 [ -22, %sw.default.i ], [ -28, %sw.bb32.i ], [ -5, %sw.bb.i ], [ %ret.07.i, %for.body27.i.for.inc34.i_crit_edge ]
  %inc35.i = add nuw nsw i32 %i.18.i, 1
  %exitcond9.not.i = icmp eq i32 %inc35.i, %and.i
  br i1 %exitcond9.not.i, label %for.inc34.i.for.end36.i_crit_edge, label %for.inc34.i.for.body27.i_crit_edge

for.inc34.i.for.body27.i_crit_edge:               ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body27.i

for.inc34.i.for.end36.i_crit_edge:                ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end36.i

for.end36.i:                                      ; preds = %for.inc34.i.for.end36.i_crit_edge, %if.end.i.for.end36.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end36.i_crit_edge ], [ %ret.1.i, %for.inc34.i.for.end36.i_crit_edge ]
  %ret37.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %10, i32 0, i32 2
  %32 = ptrtoint ptr %ret37.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %ret.0.lcssa.i, ptr %ret37.i, align 4
  %comp.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %10, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i)
  %cmp38.i = icmp slt i32 %ret.0.lcssa.i, 0
  br i1 %cmp38.i, label %if.then40.i, label %for.end36.i.if.end50.i_crit_edge

for.end36.i.if.end50.i_crit_edge:                 ; preds = %for.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then40.i:                                      ; preds = %for.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @dw_i3c_master_dequeue_xfer_locked(ptr noundef %dev_id, ptr noundef nonnull %10) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %36 = or i32 %35, 64
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #8, !srcloc !36
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then40.i, %for.end36.i.if.end50.i_crit_edge
  %39 = ptrtoint ptr %xferqueue.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %xferqueue.i, align 4
  %cmp57.not.i = icmp eq ptr %40, %xferqueue.i
  %spec.select.i = select i1 %cmp57.not.i, ptr null, ptr %40
  %tobool61.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool61.not.i, label %if.end50.i.if.end63.i_crit_edge, label %if.then62.i

if.end50.i.if.end63.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i

if.then62.i:                                      ; preds = %if.end50.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then62.i.list_del_init.exit.i_crit_edge

if.then62.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %spec.select.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then62.i.list_del_init.exit.i_crit_edge
  %47 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %spec.select.i, ptr %spec.select.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %spec.select.i, ptr %prev.i3.i.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %list_del_init.exit.i, %if.end50.i.if.end63.i_crit_edge
  %49 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %spec.select.i, ptr %cur.i, align 8
  call fastcc void @dw_i3c_master_start_xfer_locked(ptr noundef %dev_id) #8
  br label %dw_i3c_master_end_xfer_locked.exit

dw_i3c_master_end_xfer_locked.exit:               ; preds = %if.end63.i, %if.end.dw_i3c_master_end_xfer_locked.exit_crit_edge
  %50 = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool12.not = icmp eq i32 %50, 0
  br i1 %tobool12.not, label %dw_i3c_master_end_xfer_locked.exit.if.end19_crit_edge, label %do.body14

dw_i3c_master_end_xfer_locked.exit.if.end19_crit_edge: ; preds = %dw_i3c_master_end_xfer_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.body14:                                        ; preds = %dw_i3c_master_end_xfer_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %52, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 131072) #8, !srcloc !36
  br label %if.end19

if.end19:                                         ; preds = %do.body14, %dw_i3c_master_end_xfer_locked.exit.if.end19_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.body
  %retval.0 = phi i32 [ 1, %if.end19 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_register(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_i3c_master_dequeue_xfer_locked(ptr nocapture noundef %master, ptr noundef %xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.dw_i3c_master, ptr %master, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 8
  %cmp = icmp eq ptr %1, %xfer
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cur, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.dw_i3c_master, ptr %master, i32 0, i32 6
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 503316480) #8, !srcloc !36
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 1000000000
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr543 = getelementptr i8, ptr %6, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr543) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not44 = icmp eq i32 %7, 0
  br i1 %tobool.not44, label %if.then.if.end31_crit_edge, label %if.then.land.lhs.true_crit_edge

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call10 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call10, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call10, %add.i
  br i1 %cmp3.i, label %if.then13, label %cond.false

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %9, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  br label %if.end31

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #8
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %13, i32 52
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %cond.false.if.end31_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

cond.false.if.end31_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.else:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xfer) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %xfer, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xfer, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.else.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %xfer, ptr %xfer, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %xfer, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %xfer, ptr %prev.i3.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %list_del_init.exit, %cond.false.if.end31_crit_edge, %if.then13, %if.then.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_i3c_master_start_xfer_locked(ptr nocapture noundef readonly %master) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.dw_i3c_master, ptr %master, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %ncmds = getelementptr inbounds %struct.dw_i3c_xfer, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ncmds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ncmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp50.not = icmp eq i32 %3, 0
  br i1 %cmp50.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %regs.i = getelementptr inbounds %struct.dw_i3c_master, ptr %master, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %dw_i3c_master_wr_tx_fifo.exit.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dw_i3c_master_wr_tx_fifo.exit.for.body_crit_edge ]
  %tx_buf = getelementptr %struct.dw_i3c_xfer, ptr %1, i32 0, i32 4, i32 %i.051, i32 3
  %4 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_buf, align 4
  %tx_len = getelementptr %struct.dw_i3c_xfer, ptr %1, i32 0, i32 4, i32 %i.051, i32 2
  %6 = ptrtoint ptr %tx_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_len, align 4
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 20
  %div.i474849 = lshr i16 %7, 2
  %div.i47.zext = zext i16 %div.i474849 to i32
  call void @__raw_writesl(ptr noundef %add.ptr.i, ptr noundef %5, i32 noundef %div.i47.zext) #8
  %and.i = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.dw_i3c_master_wr_tx_fifo.exit_crit_edge, label %if.then.i

for.body.dw_i3c_master_wr_tx_fifo.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_i3c_master_wr_tx_fifo.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tmp.i, align 4
  %and1.i = and i32 %conv, 65532
  %add.ptr2.i = getelementptr i8, ptr %5, i32 %and1.i
  %11 = call ptr @memcpy(ptr %tmp.i, ptr %add.ptr2.i, i32 %and.i)
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 20
  call void @__raw_writesl(ptr noundef %add.ptr5.i, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  br label %dw_i3c_master_wr_tx_fifo.exit

dw_i3c_master_wr_tx_fifo.exit:                    ; preds = %if.then.i, %for.body.dw_i3c_master_wr_tx_fifo.exit_crit_edge
  %inc = add nuw i32 %i.051, 1
  %14 = ptrtoint ptr %ncmds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ncmds, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %dw_i3c_master_wr_tx_fifo.exit.for.body_crit_edge, label %dw_i3c_master_wr_tx_fifo.exit.for.end_crit_edge

dw_i3c_master_wr_tx_fifo.exit.for.end_crit_edge:  ; preds = %dw_i3c_master_wr_tx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

dw_i3c_master_wr_tx_fifo.exit.for.body_crit_edge: ; preds = %dw_i3c_master_wr_tx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %dw_i3c_master_wr_tx_fifo.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %regs = getelementptr inbounds %struct.dw_i3c_master, ptr %master, i32 0, i32 6
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 28
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  %19 = and i32 %18, -16711681
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %ncmds to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ncmds, align 4
  %sub = shl i32 %22, 8
  %shl = add i32 %sub, -256
  %or = or i32 %shl, %20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @arm_heavy_mb() #8
  %23 = call i32 @llvm.bswap.i32(i32 %or)
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %25, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %23) #8, !srcloc !36
  %26 = ptrtoint ptr %ncmds to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ncmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp752.not = icmp eq i32 %27, 0
  br i1 %cmp752.not, label %for.end.cleanup_crit_edge, label %for.end.for.body9_crit_edge

for.end.for.body9_crit_edge:                      ; preds = %for.end
  br label %for.body9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.end.for.body9_crit_edge
  %i.153 = phi i32 [ %inc24, %for.body9.for.body9_crit_edge ], [ 0, %for.end.for.body9_crit_edge ]
  %arrayidx12 = getelementptr %struct.dw_i3c_xfer, ptr %1, i32 0, i32 4, i32 %i.153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  call void @arm_heavy_mb() #8
  %cmd_hi = getelementptr %struct.dw_i3c_xfer, ptr %1, i32 0, i32 4, i32 %i.153, i32 1
  %28 = ptrtoint ptr %cmd_hi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cmd_hi, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %32, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %30) #8, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx12, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr22 = getelementptr i8, ptr %37, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %35) #8, !srcloc !36
  %inc24 = add nuw i32 %i.153, 1
  %38 = ptrtoint ptr %ncmds to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ncmds, align 4
  %cmp7 = icmp ult i32 %inc24, %39
  br i1 %cmp7, label %for.body9.for.body9_crit_edge, label %for.body9.cleanup_crit_edge

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

cleanup:                                          ; preds = %for.body9.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i3c_master_bus_init(ptr noundef %m) #2 align 64 {
entry:
  %info = alloca %struct.i3c_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info) #8
  %mode = getelementptr inbounds %struct.i3c_master_controller, ptr %m, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge127
    i32 0, label %entry.sw.bb3_crit_edge
  ]

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb_crit_edge127:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge127
  %core_clk.i = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 8
  %3 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core_clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %dw_i2c_clk_cfg.exit.thread

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dw_i2c_clk_cfg.exit.thread:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %call.i, 999999999
  %div.i = udiv i32 %sub.i, %call.i
  %sub2.i = add i32 %div.i, 499
  %div3.i = udiv i32 %sub2.i, %div.i
  %sub5.i = add i32 %call.i, 999999
  %div6.i = udiv i32 %sub5.i, 1000000
  %conv7.i = and i32 %div3.i, 65535
  %sub8.i = sub i32 %div6.i, %div3.i
  %shl.i = shl i32 %sub8.i, 16
  %and.i = and i32 %shl.i, 16711680
  %or.i = or i32 %and.i, %conv7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %regs.i = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 6
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #8, !srcloc !36
  %sub14.i = add i32 %div.i, 1299
  %div15.i = udiv i32 %sub14.i, %div.i
  %sub18.i = add i32 %call.i, 399999
  %div19.i = udiv i32 %sub18.i, 400000
  %conv20.i = and i32 %div15.i, 65535
  %sub21.i = sub i32 %div19.i, %div15.i
  %shl24.i = shl i32 %sub21.i, 16
  %or28.i = or i32 %shl24.i, %conv20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or28.i) #8
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %10, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %8) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv20.i) #8
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %13, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %11) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %17 = or i32 %16, -2147483648
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !36
  br label %sw.bb3

sw.bb3:                                           ; preds = %dw_i2c_clk_cfg.exit.thread, %entry.sw.bb3_crit_edge
  %core_clk.i109 = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 8
  %20 = ptrtoint ptr %core_clk.i109 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core_clk.i109, align 4
  %call.i110 = tail call i32 @clk_get_rate(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool.not.i111 = icmp eq i32 %call.i110, 0
  br i1 %tobool.not.i111, label %sw.bb3.cleanup_crit_edge, label %if.end.i120

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i120:                                      ; preds = %sw.bb3
  %sub.i112 = add i32 %call.i110, 999999999
  %div.i113 = udiv i32 %sub.i112, %call.i110
  %sub2.i114 = add i32 %div.i113, 40
  %div3.i115 = udiv i32 %sub2.i114, %div.i113
  %22 = trunc i32 %div3.i115 to i8
  %conv.i = add i8 %22, -1
  %23 = tail call i8 @llvm.umax.i8(i8 %conv.i, i8 5) #8
  %sub10.i = add i32 %call.i110, 12499999
  %div11.i = udiv i32 %sub10.i, 12500000
  %conv12.i = zext i8 %23 to i32
  %24 = trunc i32 %div11.i to i8
  %conv14.i = sub i8 %24, %23
  %25 = tail call i8 @llvm.umax.i8(i8 %conv14.i, i8 5) #8
  %shl.i116 = shl nuw nsw i32 %conv12.i, 16
  %conv21.i = zext i8 %25 to i32
  %or.i117 = or i32 %shl.i116, %conv21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i117) #8
  %regs.i118 = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 6
  %27 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i118, align 4
  %add.ptr.i119 = getelementptr i8, ptr %28, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %26) #8, !srcloc !36
  %29 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i118, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %tobool28.not.i = icmp sgt i32 %31, -1
  br i1 %tobool28.not.i, label %do.body30.i, label %if.end.i120.sw.epilog_crit_edge

if.end.i120.sw.epilog_crit_edge:                  ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body30.i:                                      ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %32 = shl nuw i32 %conv21.i, 24
  %33 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i118, align 4
  %add.ptr36.i = getelementptr i8, ptr %34, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %32) #8, !srcloc !36
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body30.i, %if.end.i120.sw.epilog_crit_edge
  %sub39.i = add i32 %div.i113, 199
  %div40.i = udiv i32 %sub39.i, %div.i113
  %conv45.i = and i32 %div40.i, 255
  %or47.i = or i32 %conv45.i, %shl.i116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %or47.i) #8
  %36 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i118, align 4
  %add.ptr52.i = getelementptr i8, ptr %37, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 %35) #8, !srcloc !36
  %sub54.i = add i32 %call.i110, 7999999
  %div55.i = udiv i32 %sub54.i, 8000000
  %38 = trunc i32 %div55.i to i8
  %conv58.i = sub i8 %38, %23
  %conv59.i = zext i8 %conv58.i to i32
  %sub62.i = add i32 %call.i110, 5999999
  %div63.i = udiv i32 %sub62.i, 6000000
  %39 = trunc i32 %div63.i to i8
  %conv66.i = sub i8 %39, %23
  %conv67.i = zext i8 %conv66.i to i32
  %shl68.i = shl nuw nsw i32 %conv67.i, 8
  %or70.i = or i32 %shl68.i, %conv59.i
  %sub72.i = add i32 %call.i110, 3999999
  %div73.i = udiv i32 %sub72.i, 4000000
  %40 = trunc i32 %div73.i to i8
  %conv76.i = sub i8 %40, %23
  %conv77.i = zext i8 %conv76.i to i32
  %shl78.i = shl nuw nsw i32 %conv77.i, 16
  %or80.i = or i32 %or70.i, %shl78.i
  %sub82.i = add i32 %call.i110, 1999999
  %div83.i = udiv i32 %sub82.i, 2000000
  %41 = trunc i32 %div83.i to i8
  %conv86.i = sub i8 %41, %23
  %conv87.i = zext i8 %conv86.i to i32
  %shl88.i = shl nuw i32 %conv87.i, 24
  %or90.i = or i32 %or80.i, %shl88.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @arm_heavy_mb() #8
  %42 = tail call i32 @llvm.bswap.i32(i32 %or90.i) #8
  %43 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i118, align 4
  %add.ptr95.i = getelementptr i8, ptr %44, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95.i, i32 %42) #8, !srcloc !36
  %45 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i118, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 28
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  %48 = and i32 %47, -16711681
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i118, align 4
  %add.ptr11 = getelementptr i8, ptr %50, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %48) #8, !srcloc !36
  %51 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i118, align 4
  %add.ptr15 = getelementptr i8, ptr %52, i32 32
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  %54 = and i32 %53, -983041
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i118, align 4
  %add.ptr24 = getelementptr i8, ptr %56, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %54) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i118, align 4
  %add.ptr29 = getelementptr i8, ptr %58, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 2134835200) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i118, align 4
  %add.ptr34 = getelementptr i8, ptr %60, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 268566528) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i118, align 4
  %add.ptr39 = getelementptr i8, ptr %62, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 268566528) #8, !srcloc !36
  %call40 = tail call i32 @i3c_master_get_free_addr(ptr noundef %m, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp = icmp slt i32 %call40, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %do.body43

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body43:                                        ; preds = %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %shl = shl i32 %call40, 16
  %and46 = and i32 %shl, 8323072
  %or = or i32 %and46, -2147483648
  %63 = tail call i32 @llvm.bswap.i32(i32 %or)
  %64 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i118, align 4
  %add.ptr48 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %63) #8, !srcloc !36
  %66 = call ptr @memset(ptr %info, i32 0, i32 24)
  %conv = trunc i32 %call40 to i8
  %dyn_addr = getelementptr inbounds %struct.i3c_device_info, ptr %info, i32 0, i32 4
  %67 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv, ptr %dyn_addr, align 1
  %call49 = call i32 @i3c_master_set_info(ptr noundef %m, ptr noundef nonnull %info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.body53, label %do.body43.cleanup_crit_edge

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body53:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i118, align 4
  %add.ptr57 = getelementptr i8, ptr %69, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 -1) #8, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i118, align 4
  %add.ptr62 = getelementptr i8, ptr %71, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 -1) #8, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  call void @arm_heavy_mb() #8
  %72 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i118, align 4
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  %75 = or i32 %74, 65536
  %76 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i118, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #8, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i118, align 4
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #8, !srcloc !37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %81 = or i32 %80, 128
  %82 = ptrtoint ptr %regs.i118 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i118, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #8, !srcloc !36
  br label %cleanup

cleanup:                                          ; preds = %do.body53, %do.body43.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body53 ], [ -22, %entry.cleanup_crit_edge ], [ %call40, %sw.epilog.cleanup_crit_edge ], [ %call49, %do.body43.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_i3c_master_bus_cleanup(ptr nocapture noundef readonly %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 6
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %3 = and i32 %2, -129
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #8, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i3c_master_attach_i3c_dev(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %free_pos.i = getelementptr inbounds %struct.dw_i3c_master, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %free_pos.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_pos.i, align 4
  %maxdevs.i = getelementptr inbounds %struct.dw_i3c_master, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %maxdevs.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %maxdevs.i, align 8
  %conv.i = zext i16 %5 to i32
  %sub1.i = sub nsw i32 32, %conv.i
  %shr.i = lshr i32 -1, %sub1.i
  %and2.i = and i32 %shr.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %6 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true) #8, !range !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %iszero.i = icmp eq i32 %3, 0
  %sub4.i = select i1 %iszero.i, i32 -1, i32 %6
  %retval.0.i = select i1 %tobool.not.i, i32 -28, i32 %sub4.i
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %conv = trunc i32 %retval.0.i to i8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %call7.i.i, align 8
  %dyn_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dyn_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %cond.false, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %static_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %static_addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %static_addr, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end5.cond.end_crit_edge
  %cond.in = phi i8 [ %12, %cond.false ], [ %10, %if.end5.cond.end_crit_edge ]
  %arrayidx = getelementptr %struct.dw_i3c_master, ptr %1, i32 0, i32 11, i32 %retval.0.i
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %cond.in, ptr %arrayidx, align 1
  %shl = shl nuw i32 1, %retval.0.i
  %neg = xor i32 %shl, -1
  %14 = ptrtoint ptr %free_pos.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %free_pos.i, align 4
  %and = and i32 %15, %neg
  store i32 %and, ptr %free_pos.i, align 4
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %16 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %master_priv.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %18 to i32
  %19 = shl nuw nsw i32 %conv13, 8
  %regs = getelementptr inbounds %struct.dw_i3c_master, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %datstartaddr = getelementptr inbounds %struct.dw_i3c_master, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %datstartaddr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %datstartaddr, align 2
  %conv16 = zext i16 %23 to i32
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call7.i.i, align 8
  %conv18 = zext i8 %25 to i32
  %shl19 = shl nuw nsw i32 %conv18, 2
  %add = add nuw nsw i32 %shl19, %conv16
  %add.ptr = getelementptr i8, ptr %21, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #8, !srcloc !36
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -28, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i3c_master_reattach_i3c_dev(ptr nocapture noundef readonly %dev, i8 noundef zeroext %old_dyn_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 8
  %free_pos.i = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %free_pos.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %free_pos.i, align 4
  %maxdevs.i = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %maxdevs.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %maxdevs.i, align 8
  %conv.i = zext i16 %7 to i32
  %sub1.i = sub nsw i32 32, %conv.i
  %shr.i = lshr i32 -1, %sub1.i
  %and2.i = and i32 %shr.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %8 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true) #8, !range !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %iszero.i = icmp eq i32 %5, 0
  %sub4.i = select i1 %iszero.i, i32 -1, i32 %8
  %retval.0.i = select i1 %tobool.not.i, i32 -28, i32 %sub4.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv)
  %cmp = icmp slt i32 %retval.0.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp5 = icmp sgt i32 %retval.0.i, 0
  %or.cond = and i1 %cmp, %cmp5
  br i1 %or.cond, label %do.body, label %entry.do.body20_crit_edge

entry.do.body20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %datstartaddr = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %datstartaddr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %datstartaddr, align 2
  %conv7 = zext i16 %14 to i32
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 1
  %conv9 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv9, 2
  %add = add nuw nsw i32 %shl, %conv7
  %add.ptr = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !36
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 1
  %idxprom = zext i8 %18 to i32
  %arrayidx = getelementptr %struct.dw_i3c_master, ptr %3, i32 0, i32 11, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx, align 1
  %20 = load i8, ptr %1, align 1
  %conv12 = zext i8 %20 to i32
  %shl13 = shl nuw i32 1, %conv12
  %21 = ptrtoint ptr %free_pos.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %free_pos.i, align 4
  %or = or i32 %shl13, %22
  store i32 %or, ptr %free_pos.i, align 4
  %conv14 = trunc i32 %retval.0.i to i8
  store i8 %conv14, ptr %1, align 1
  %dyn_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dyn_addr, align 1
  %arrayidx17 = getelementptr %struct.dw_i3c_master, ptr %3, i32 0, i32 11, i32 %retval.0.i
  %25 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx17, align 1
  %shl18 = shl nuw i32 1, %retval.0.i
  %neg = xor i32 %shl18, -1
  %26 = load i32, ptr %free_pos.i, align 4
  %and = and i32 %26, %neg
  store i32 %and, ptr %free_pos.i, align 4
  br label %do.body20

do.body20:                                        ; preds = %do.body, %entry.do.body20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %dyn_addr24 = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %dyn_addr24 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dyn_addr24, align 1
  %conv25 = zext i8 %28 to i32
  %29 = shl nuw nsw i32 %conv25, 8
  %regs28 = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 6
  %30 = ptrtoint ptr %regs28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs28, align 4
  %datstartaddr29 = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %datstartaddr29 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %datstartaddr29, align 2
  %conv30 = zext i16 %33 to i32
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %1, align 1
  %conv32 = zext i8 %35 to i32
  %shl33 = shl nuw nsw i32 %conv32, 2
  %add34 = add nuw nsw i32 %shl33, %conv30
  %add.ptr35 = getelementptr i8, ptr %31, i32 %add34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %29) #8, !srcloc !36
  %36 = ptrtoint ptr %dyn_addr24 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dyn_addr24, align 1
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %1, align 1
  %idxprom40 = zext i8 %39 to i32
  %arrayidx41 = getelementptr %struct.dw_i3c_master, ptr %3, i32 0, i32 11, i32 %idxprom40
  %40 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %37, ptr %arrayidx41, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_i3c_master_detach_i3c_dev(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %datstartaddr = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %datstartaddr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %datstartaddr, align 2
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %conv3 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv3, 2
  %add = add nuw nsw i32 %shl, %conv
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !36
  %10 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %master_priv.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %idxprom = zext i8 %12 to i32
  %arrayidx = getelementptr %struct.dw_i3c_master, ptr %3, i32 0, i32 11, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx, align 1
  %14 = load i8, ptr %1, align 1
  %conv6 = zext i8 %14 to i32
  %shl7 = shl nuw i32 1, %conv6
  %free_pos = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %free_pos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %free_pos, align 4
  %or = or i32 %shl7, %16
  store i32 %or, ptr %free_pos, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i3c_master_daa(ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %free_pos = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 3
  %0 = ptrtoint ptr %free_pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_pos, align 4
  %maxdevs = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %maxdevs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %maxdevs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp130.not = icmp eq i16 %3, 0
  br i1 %cmp130.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regs = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 6
  %datstartaddr = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %last_addr.0131 = phi i8 [ 0, %for.body.lr.ph ], [ %last_addr.1, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %pos.0132
  %4 = and i32 %shl, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.not = icmp eq i32 %4, 0
  br i1 %tobool.not.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %add = add i8 %last_addr.0131, 1
  %call4 = tail call i32 @i3c_master_get_free_addr(ptr noundef %m, i8 noundef zeroext %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv9 = trunc i32 %call4 to i8
  %arrayidx = getelementptr %struct.dw_i3c_master, ptr %m, i32 0, i32 11, i32 %pos.0132
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv9, ptr %arrayidx, align 1
  %6 = lshr i8 %conv9, 4
  %p.masked.i = and i8 %conv9, 15
  %7 = xor i8 %6, %p.masked.i
  %conv5.i = zext i8 %7 to i16
  %shr6.i = lshr i16 -27031, %conv5.i
  %8 = and i16 %shr6.i, 1
  %conv8.i = zext i16 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %9 = shl nuw nsw i32 %conv8.i, 23
  %10 = shl i32 %call4, 16
  %shl15 = or i32 %9, %10
  %and16 = lshr exact i32 %shl15, 8
  %11 = and i32 %and16, 65280
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %14 = ptrtoint ptr %datstartaddr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %datstartaddr, align 2
  %conv17 = zext i16 %15 to i32
  %shl18 = shl i32 %pos.0132, 2
  %add19 = add i32 %shl18, %conv17
  %add.ptr = getelementptr i8, ptr %13, i32 %add19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #8, !srcloc !36
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %for.body.for.inc_crit_edge
  %last_addr.1 = phi i8 [ %last_addr.0131, %for.body.for.inc_crit_edge ], [ %conv9, %if.end8 ]
  %inc = add nuw nsw i32 %pos.0132, 1
  %16 = ptrtoint ptr %maxdevs to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %maxdevs, align 8
  %conv = zext i16 %17 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 100) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.end.cleanup_crit_edge, label %if.end23

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %for.end
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %ncmds2.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %ncmds2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %ncmds2.i, align 4
  %ret.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -110, ptr %ret.i, align 8
  %23 = ptrtoint ptr %free_pos to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %free_pos, align 4
  %25 = ptrtoint ptr %maxdevs to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %maxdevs, align 8
  %conv.i = zext i16 %26 to i32
  %sub1.i = sub nsw i32 32, %conv.i
  %shr.i = lshr i32 -1, %sub1.i
  %and2.i = and i32 %shr.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i122 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i122, label %if.end23.cleanup.sink.split_crit_edge, label %if.end28

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %iszero.i = icmp eq i32 %24, 0
  %27 = tail call i32 @llvm.cttz.i32(i32 %24, i1 true) #8, !range !83
  %sub4.i = select i1 %iszero.i, i32 -1, i32 %27
  %cmds = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i, i32 0, i32 4
  %cmd_hi = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %cmd_hi to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %cmd_hi, align 4
  %sub = sub nsw i32 %conv.i, %sub4.i
  %shl32 = shl i32 %sub, 21
  %and33 = and i32 %shl32, 65011712
  %shl34 = shl nsw i32 %sub4.i, 16
  %and35 = and i32 %shl34, 2031616
  %or36 = or i32 %and35, %and33
  %or40 = or i32 %or36, 1140851587
  %29 = ptrtoint ptr %cmds to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or40, ptr %cmds, align 8
  %comp.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %comp.i, align 8
  %wait.i.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #8
  %lock.i = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 4, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %cur.i = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur.i, align 8
  %tobool.not.i123 = icmp eq ptr %32, null
  br i1 %tobool.not.i123, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end28
  %xferqueue.i = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 4
  %prev.i.i124 = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 4, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i124 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i124, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %34, ptr noundef %xferqueue.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.dw_i3c_master_enqueue_xfer.exit_crit_edge

if.then.i.dw_i3c_master_enqueue_xfer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_i3c_master_enqueue_xfer.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %prev.i.i124 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i.i, ptr %prev.i.i124, align 4
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %xferqueue.i, ptr %call7.i.i.i, align 8
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i.i, ptr %34, align 4
  br label %dw_i3c_master_enqueue_xfer.exit

if.else.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i.i, ptr %cur.i, align 8
  tail call fastcc void @dw_i3c_master_start_xfer_locked(ptr noundef %m) #8
  br label %dw_i3c_master_enqueue_xfer.exit

dw_i3c_master_enqueue_xfer.exit:                  ; preds = %if.else.i, %if.end.i.i.i, %if.then.i.dw_i3c_master_enqueue_xfer.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %call42 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %dw_i3c_master_enqueue_xfer.exit.if.end45_crit_edge

dw_i3c_master_enqueue_xfer.exit.if.end45_crit_edge: ; preds = %dw_i3c_master_enqueue_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then44:                                        ; preds = %dw_i3c_master_enqueue_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i127 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  tail call fastcc void @dw_i3c_master_dequeue_xfer_locked(ptr noundef %m, ptr noundef nonnull %call7.i.i.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i127) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %dw_i3c_master_enqueue_xfer.exit.if.end45_crit_edge
  %40 = ptrtoint ptr %maxdevs to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %maxdevs, align 8
  %conv47 = zext i16 %41 to i32
  %rx_len = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i, i32 1, i32 1, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %rx_len to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rx_len, align 8
  %conv48 = zext i16 %43 to i32
  %44 = sub nsw i32 %conv48, %conv47
  %sub51 = add nsw i32 %44, 32
  %shr = lshr i32 -1, %sub51
  %and55 = and i32 %shr, %1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp59135.not = icmp eq i16 %41, 0
  br i1 %cmp59135.not, label %if.end45.cleanup.sink.split_crit_edge, label %if.end45.for.body61_crit_edge

if.end45.for.body61_crit_edge:                    ; preds = %if.end45
  br label %for.body61

if.end45.cleanup.sink.split_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body61:                                       ; preds = %for.inc70.for.body61_crit_edge, %if.end45.for.body61_crit_edge
  %pos.1136 = phi i32 [ %inc71, %for.inc70.for.body61_crit_edge ], [ 0, %if.end45.for.body61_crit_edge ]
  %shl62 = shl nuw i32 1, %pos.1136
  %and63 = and i32 %and55, %shl62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %for.body61.for.inc70_crit_edge, label %if.then65

for.body61.for.inc70_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc70

if.then65:                                        ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx67 = getelementptr %struct.dw_i3c_master, ptr %m, i32 0, i32 11, i32 %pos.1136
  %45 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx67, align 1
  %call68 = tail call i32 @i3c_master_add_i3c_dev_locked(ptr noundef %m, i8 noundef zeroext %46) #8
  br label %for.inc70

for.inc70:                                        ; preds = %if.then65, %for.body61.for.inc70_crit_edge
  %inc71 = add nuw nsw i32 %pos.1136, 1
  %47 = ptrtoint ptr %maxdevs to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %maxdevs, align 8
  %conv58 = zext i16 %48 to i32
  %cmp59 = icmp ult i32 %inc71, %conv58
  br i1 %cmp59, label %for.inc70.for.body61_crit_edge, label %for.inc70.cleanup.sink.split_crit_edge

for.inc70.cleanup.sink.split_crit_edge:           ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.inc70.for.body61_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body61

cleanup.sink.split:                               ; preds = %for.inc70.cleanup.sink.split_crit_edge, %if.end45.cleanup.sink.split_crit_edge, %if.end23.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -28, %if.end23.cleanup.sink.split_crit_edge ], [ 0, %if.end45.cleanup.sink.split_crit_edge ], [ 0, %for.inc70.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -28, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dw_i3c_master_supports_ccc_cmd(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ndests = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %ndests to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ndests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %3, label %sw.default [
    i8 0, label %if.end.return_crit_edge
    i8 -128, label %if.end.return_crit_edge2
    i8 1, label %if.end.return_crit_edge3
    i8 -127, label %if.end.return_crit_edge4
    i8 2, label %if.end.return_crit_edge5
    i8 -126, label %if.end.return_crit_edge6
    i8 6, label %if.end.return_crit_edge7
    i8 -122, label %if.end.return_crit_edge8
    i8 7, label %if.end.return_crit_edge9
    i8 9, label %if.end.return_crit_edge10
    i8 -119, label %if.end.return_crit_edge11
    i8 10, label %if.end.return_crit_edge12
    i8 -118, label %if.end.return_crit_edge13
    i8 32, label %if.end.return_crit_edge14
    i8 -121, label %if.end.return_crit_edge15
    i8 -120, label %if.end.return_crit_edge16
    i8 -117, label %if.end.return_crit_edge17
    i8 -116, label %if.end.return_crit_edge18
    i8 -115, label %if.end.return_crit_edge19
    i8 -114, label %if.end.return_crit_edge20
    i8 -113, label %if.end.return_crit_edge21
    i8 -112, label %if.end.return_crit_edge22
    i8 -108, label %if.end.return_crit_edge23
    i8 -107, label %if.end.return_crit_edge24
  ]

if.end.return_crit_edge24:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge23:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge22:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge21:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge20:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge19:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge18:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge17:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge16:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge15:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge14:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge13:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge12:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge11:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge10:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge9:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge8:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge7:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge6:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge5:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge4:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge3:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge2:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %if.end.return_crit_edge, %if.end.return_crit_edge2, %if.end.return_crit_edge3, %if.end.return_crit_edge4, %if.end.return_crit_edge5, %if.end.return_crit_edge6, %if.end.return_crit_edge7, %if.end.return_crit_edge8, %if.end.return_crit_edge9, %if.end.return_crit_edge10, %if.end.return_crit_edge11, %if.end.return_crit_edge12, %if.end.return_crit_edge13, %if.end.return_crit_edge14, %if.end.return_crit_edge15, %if.end.return_crit_edge16, %if.end.return_crit_edge17, %if.end.return_crit_edge18, %if.end.return_crit_edge19, %if.end.return_crit_edge20, %if.end.return_crit_edge21, %if.end.return_crit_edge22, %if.end.return_crit_edge23, %if.end.return_crit_edge24, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ false, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ true, %if.end.return_crit_edge2 ], [ true, %if.end.return_crit_edge3 ], [ true, %if.end.return_crit_edge4 ], [ true, %if.end.return_crit_edge5 ], [ true, %if.end.return_crit_edge6 ], [ true, %if.end.return_crit_edge7 ], [ true, %if.end.return_crit_edge8 ], [ true, %if.end.return_crit_edge9 ], [ true, %if.end.return_crit_edge10 ], [ true, %if.end.return_crit_edge11 ], [ true, %if.end.return_crit_edge12 ], [ true, %if.end.return_crit_edge13 ], [ true, %if.end.return_crit_edge14 ], [ true, %if.end.return_crit_edge15 ], [ true, %if.end.return_crit_edge16 ], [ true, %if.end.return_crit_edge17 ], [ true, %if.end.return_crit_edge18 ], [ true, %if.end.return_crit_edge19 ], [ true, %if.end.return_crit_edge20 ], [ true, %if.end.return_crit_edge21 ], [ true, %if.end.return_crit_edge22 ], [ true, %if.end.return_crit_edge23 ], [ true, %if.end.return_crit_edge24 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i3c_master_send_ccc_cmd(ptr noundef %m, ptr nocapture noundef %ccc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %ccc, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp = icmp eq i8 %1, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ccc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ccc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %dests.i = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %ccc, i32 0, i32 3
  %4 = ptrtoint ptr %dests.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dests.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %maxdevs.i.i = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 1
  %8 = ptrtoint ptr %maxdevs.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %maxdevs.i.i, align 8
  %conv.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp10.not.i.i = icmp eq i16 %9, 0
  br i1 %cmp10.not.i.i, label %if.then2.cleanup_crit_edge, label %if.then2.for.body.i.i_crit_edge

if.then2.for.body.i.i_crit_edge:                  ; preds = %if.then2
  br label %for.body.i.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then2.for.body.i.i_crit_edge
  %pos.011.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then2.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.dw_i3c_master, ptr %m, i32 0, i32 11, i32 %pos.011.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %7)
  %cmp4.i.i = icmp eq i8 %11, %7
  br i1 %cmp4.i.i, label %if.end.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %pos.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 100) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %ncmds2.i.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %ncmds2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %ncmds2.i.i, align 4
  %ret.i.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -110, ptr %ret.i.i, align 8
  %cmds.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %dests.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dests.i, align 4
  %data.i = getelementptr inbounds %struct.i3c_ccc_cmd_dest, ptr %18, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i, i32 1, i32 1, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %rx_buf.i, align 4
  %payload8.i = getelementptr inbounds %struct.i3c_ccc_cmd_dest, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %payload8.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %payload8.i, align 4
  %rx_len.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i, i32 1, i32 1, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %rx_len.i, align 8
  %25 = load i16, ptr %payload8.i, align 4
  %conv.i = zext i16 %25 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %shl.i, 1
  %cmd_hi.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %cmd_hi.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %cmd_hi.i, align 4
  %shl13.i = shl i32 %pos.011.i.i, 16
  %and14.i = and i32 %shl13.i, 2031616
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %id, align 1
  %conv16.i = zext i8 %28 to i32
  %shl17.i = shl nuw nsw i32 %conv16.i, 7
  %or15.i = or i32 %shl17.i, %and14.i
  %or21.i = or i32 %or15.i, 1409318912
  %29 = ptrtoint ptr %cmds.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or21.i, ptr %cmds.i, align 8
  %comp.i.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %comp.i.i, align 8
  %wait.i.i.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #8
  %lock.i.i = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 4, i32 2
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  %cur.i.i = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur.i.i, align 8
  %tobool.not.i58.i = icmp eq ptr %32, null
  br i1 %tobool.not.i58.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  %xferqueue.i.i = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 4
  %prev.i.i59.i = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 4, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i59.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %34, ptr noundef %xferqueue.i.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.dw_i3c_master_enqueue_xfer.exit.i_crit_edge

if.then.i.i.dw_i3c_master_enqueue_xfer.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_i3c_master_enqueue_xfer.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %prev.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i.i.i, ptr %prev.i.i59.i, align 4
  %36 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %xferqueue.i.i, ptr %call7.i.i.i.i, align 8
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i.i.i, ptr %34, align 4
  br label %dw_i3c_master_enqueue_xfer.exit.i

if.else.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i.i.i, ptr %cur.i.i, align 8
  tail call fastcc void @dw_i3c_master_start_xfer_locked(ptr noundef %m) #8
  br label %dw_i3c_master_enqueue_xfer.exit.i

dw_i3c_master_enqueue_xfer.exit.i:                ; preds = %if.else.i.i, %if.end.i.i.i.i, %if.then.i.i.dw_i3c_master_enqueue_xfer.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #8
  %call23.i = tail call i32 @wait_for_completion_timeout(ptr noundef %comp.i.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %dw_i3c_master_enqueue_xfer.exit.i.if.end26.i_crit_edge

dw_i3c_master_enqueue_xfer.exit.i.if.end26.i_crit_edge: ; preds = %dw_i3c_master_enqueue_xfer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then25.i:                                      ; preds = %dw_i3c_master_enqueue_xfer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i62.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  tail call fastcc void @dw_i3c_master_dequeue_xfer_locked(ptr noundef %m, ptr noundef nonnull %call7.i.i.i.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i62.i) #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %dw_i3c_master_enqueue_xfer.exit.i.if.end26.i_crit_edge
  %40 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ret.i.i, align 8
  %error.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i, i32 1, i32 1, i32 1, i32 0, i32 3
  %42 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %cmp31.i = icmp eq i8 %43, 4
  br i1 %cmp31.i, label %if.end26.i.cleanup.sink.split.sink.split_crit_edge, label %if.end26.i.cleanup.sink.split_crit_edge

if.end26.i.cleanup.sink.split_crit_edge:          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end26.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not.i = icmp sgt i8 %1, -1
  br i1 %tobool.not.i, label %if.else.if.end3.i25_crit_edge, label %if.then.i

if.else.if.end3.i25_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i25

if.then.i:                                        ; preds = %if.else
  %dests.i12 = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %ccc, i32 0, i32 3
  %44 = ptrtoint ptr %dests.i12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dests.i12, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 4
  %maxdevs.i.i13 = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 1
  %48 = ptrtoint ptr %maxdevs.i.i13 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %maxdevs.i.i13, align 8
  %conv.i.i14 = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp10.not.i.i15 = icmp eq i16 %49, 0
  br i1 %cmp10.not.i.i15, label %if.then.i.cleanup_crit_edge, label %if.then.i.for.body.i.i19_crit_edge

if.then.i.for.body.i.i19_crit_edge:               ; preds = %if.then.i
  br label %for.body.i.i19

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i19:                                   ; preds = %for.inc.i.i22.for.body.i.i19_crit_edge, %if.then.i.for.body.i.i19_crit_edge
  %pos.011.i.i16 = phi i32 [ %inc.i.i20, %for.inc.i.i22.for.body.i.i19_crit_edge ], [ 0, %if.then.i.for.body.i.i19_crit_edge ]
  %arrayidx.i.i17 = getelementptr %struct.dw_i3c_master, ptr %m, i32 0, i32 11, i32 %pos.011.i.i16
  %50 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.i17, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %47)
  %cmp4.i.i18 = icmp eq i8 %51, %47
  br i1 %cmp4.i.i18, label %for.body.i.i19.if.end3.i25_crit_edge, label %for.inc.i.i22

for.body.i.i19.if.end3.i25_crit_edge:             ; preds = %for.body.i.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i25

for.inc.i.i22:                                    ; preds = %for.body.i.i19
  %inc.i.i20 = add nuw nsw i32 %pos.011.i.i16, 1
  %exitcond.not.i.i21 = icmp eq i32 %inc.i.i20, %conv.i.i14
  br i1 %exitcond.not.i.i21, label %for.inc.i.i22.cleanup_crit_edge, label %for.inc.i.i22.for.body.i.i19_crit_edge

for.inc.i.i22.for.body.i.i19_crit_edge:           ; preds = %for.inc.i.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i19

for.inc.i.i22.cleanup_crit_edge:                  ; preds = %for.inc.i.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i25:                                      ; preds = %for.body.i.i19.if.end3.i25_crit_edge, %if.else.if.end3.i25_crit_edge
  %pos.0.i = phi i32 [ 0, %if.else.if.end3.i25_crit_edge ], [ %pos.011.i.i16, %for.body.i.i19.if.end3.i25_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 100) #11
  %tobool.not.i.i24 = icmp eq ptr %call7.i.i.i.i23, null
  br i1 %tobool.not.i.i24, label %if.end3.i25.cleanup_crit_edge, label %if.end7.i

if.end3.i25.cleanup_crit_edge:                    ; preds = %if.end3.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i:                                        ; preds = %if.end3.i25
  %53 = ptrtoint ptr %call7.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %call7.i.i.i.i23, ptr %call7.i.i.i.i23, align 8
  %prev.i.i.i26 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i23, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i.i.i23, ptr %prev.i.i.i26, align 4
  %ncmds2.i.i27 = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i23, i32 0, i32 3
  %55 = ptrtoint ptr %ncmds2.i.i27 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %ncmds2.i.i27, align 4
  %ret.i.i28 = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i23, i32 0, i32 2
  %56 = ptrtoint ptr %ret.i.i28 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -110, ptr %ret.i.i28, align 8
  %cmds.i29 = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i23, i32 0, i32 4
  %dests8.i = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %ccc, i32 0, i32 3
  %57 = ptrtoint ptr %dests8.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dests8.i, align 4
  %data.i30 = getelementptr inbounds %struct.i3c_ccc_cmd_dest, ptr %58, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %data.i30 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i30, align 4
  %tx_buf.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i23, i32 1, i32 1, i32 1
  %61 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %tx_buf.i, align 4
  %payload12.i = getelementptr inbounds %struct.i3c_ccc_cmd_dest, ptr %58, i32 0, i32 1
  %62 = ptrtoint ptr %payload12.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %payload12.i, align 4
  %tx_len.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i23, i32 1, i32 1
  %64 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %tx_len.i, align 8
  %65 = load i16, ptr %payload12.i, align 4
  %conv17.i = zext i16 %65 to i32
  %shl.i31 = shl nuw i32 %conv17.i, 16
  %or.i32 = or i32 %shl.i31, 1
  %cmd_hi.i33 = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i23, i32 1, i32 0, i32 1
  %66 = ptrtoint ptr %cmd_hi.i33 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.i32, ptr %cmd_hi.i33, align 4
  %shl19.i = shl i32 %pos.0.i, 16
  %and20.i = and i32 %shl19.i, 2031616
  %67 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %id, align 1
  %conv23.i = zext i8 %68 to i32
  %shl24.i = shl nuw nsw i32 %conv23.i, 7
  %or21.i34 = or i32 %shl24.i, %and20.i
  %or28.i = or i32 %or21.i34, 1140883456
  %69 = ptrtoint ptr %cmds.i29 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or28.i, ptr %cmds.i29, align 8
  %comp.i.i35 = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i23, i32 0, i32 1
  %70 = ptrtoint ptr %comp.i.i35 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %comp.i.i35, align 8
  %wait.i.i.i36 = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i23, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i36, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #8
  %lock.i.i37 = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 4, i32 2
  %call2.i.i38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i37) #8
  %cur.i.i39 = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %cur.i.i39 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cur.i.i39, align 8
  %tobool.not.i66.i = icmp eq ptr %72, null
  br i1 %tobool.not.i66.i, label %if.else.i.i44, label %if.then.i.i42

if.then.i.i42:                                    ; preds = %if.end7.i
  %xferqueue.i.i40 = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 4
  %prev.i.i67.i = getelementptr inbounds %struct.dw_i3c_master, ptr %m, i32 0, i32 4, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i67.i, align 4
  %call.i.i.i.i41 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i23, ptr noundef %74, ptr noundef %xferqueue.i.i40) #8
  br i1 %call.i.i.i.i41, label %if.end.i.i.i.i43, label %if.then.i.i42.dw_i3c_master_enqueue_xfer.exit.i45_crit_edge

if.then.i.i42.dw_i3c_master_enqueue_xfer.exit.i45_crit_edge: ; preds = %if.then.i.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_i3c_master_enqueue_xfer.exit.i45

if.end.i.i.i.i43:                                 ; preds = %if.then.i.i42
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %prev.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i.i.i.i23, ptr %prev.i.i67.i, align 4
  %76 = ptrtoint ptr %call7.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %xferqueue.i.i40, ptr %call7.i.i.i.i23, align 8
  %77 = ptrtoint ptr %prev.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev.i.i.i26, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %call7.i.i.i.i23, ptr %74, align 4
  br label %dw_i3c_master_enqueue_xfer.exit.i45

if.else.i.i44:                                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %cur.i.i39 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i.i.i23, ptr %cur.i.i39, align 8
  tail call fastcc void @dw_i3c_master_start_xfer_locked(ptr noundef %m) #8
  br label %dw_i3c_master_enqueue_xfer.exit.i45

dw_i3c_master_enqueue_xfer.exit.i45:              ; preds = %if.else.i.i44, %if.end.i.i.i.i43, %if.then.i.i42.dw_i3c_master_enqueue_xfer.exit.i45_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i37, i32 noundef %call2.i.i38) #8
  %call30.i = tail call i32 @wait_for_completion_timeout(ptr noundef %comp.i.i35, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %dw_i3c_master_enqueue_xfer.exit.i45.if.end33.i_crit_edge

dw_i3c_master_enqueue_xfer.exit.i45.if.end33.i_crit_edge: ; preds = %dw_i3c_master_enqueue_xfer.exit.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then32.i:                                      ; preds = %dw_i3c_master_enqueue_xfer.exit.i45
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i70.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i37) #8
  tail call fastcc void @dw_i3c_master_dequeue_xfer_locked(ptr noundef %m, ptr noundef nonnull %call7.i.i.i.i23) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i37, i32 noundef %call2.i70.i) #8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %dw_i3c_master_enqueue_xfer.exit.i45.if.end33.i_crit_edge
  %80 = ptrtoint ptr %ret.i.i28 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ret.i.i28, align 8
  %error.i46 = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call7.i.i.i.i23, i32 1, i32 1, i32 1, i32 0, i32 3
  %82 = ptrtoint ptr %error.i46 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %error.i46, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %83)
  %cmp38.i = icmp eq i8 %83, 4
  br i1 %cmp38.i, label %if.end33.i.cleanup.sink.split.sink.split_crit_edge, label %if.end33.i.cleanup.sink.split_crit_edge

if.end33.i.cleanup.sink.split_crit_edge:          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end33.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end33.i.cleanup.sink.split.sink.split_crit_edge, %if.end26.i.cleanup.sink.split.sink.split_crit_edge
  %call7.i.i.i.i23.sink.ph = phi ptr [ %call7.i.i.i.i, %if.end26.i.cleanup.sink.split.sink.split_crit_edge ], [ %call7.i.i.i.i23, %if.end33.i.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ %41, %if.end26.i.cleanup.sink.split.sink.split_crit_edge ], [ %81, %if.end33.i.cleanup.sink.split.sink.split_crit_edge ]
  %err.i47 = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %ccc, i32 0, i32 4
  %84 = ptrtoint ptr %err.i47 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 3, ptr %err.i47, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end33.i.cleanup.sink.split_crit_edge, %if.end26.i.cleanup.sink.split_crit_edge
  %call7.i.i.i.i23.sink = phi ptr [ %call7.i.i.i.i, %if.end26.i.cleanup.sink.split_crit_edge ], [ %call7.i.i.i.i23, %if.end33.i.cleanup.sink.split_crit_edge ], [ %call7.i.i.i.i23.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %41, %if.end26.i.cleanup.sink.split_crit_edge ], [ %81, %if.end33.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i23.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.i25.cleanup_crit_edge, %for.inc.i.i22.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -22, %if.then.i.cleanup_crit_edge ], [ -12, %if.end3.i25.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -22, %for.inc.i.i22.cleanup_crit_edge ], [ -22, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i3c_master_priv_xfers(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %i3c_xfers, i32 noundef %i3c_nxfers) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i3c_nxfers)
  %tobool.not = icmp eq i32 %i3c_nxfers, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %caps, align 8
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %i3c_nxfers)
  %cmp = icmp slt i32 %conv, %i3c_nxfers
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i3c_nxfers)
  %cmp6160 = icmp sgt i32 %i3c_nxfers, 0
  br i1 %cmp6160, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0163 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ntxwords.0162 = phi i32 [ %ntxwords.1, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %nrxwords.0161 = phi i32 [ %nrxwords.1, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i3c_priv_xfer, ptr %i3c_xfers, i32 %i.0163
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  %len14 = getelementptr %struct.i3c_priv_xfer, ptr %i3c_xfers, i32 %i.0163, i32 1
  %8 = ptrtoint ptr %len14 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len14, align 2
  %conv15 = zext i16 %9 to i32
  %sub17 = add nuw nsw i32 %conv15, 3
  %div18152 = lshr i32 %sub17, 2
  %add12 = select i1 %tobool8.not, i32 0, i32 %div18152
  %nrxwords.1 = add i32 %nrxwords.0161, %add12
  %add19 = select i1 %tobool8.not, i32 %div18152, i32 0
  %ntxwords.1 = add i32 %ntxwords.0162, %add19
  %inc = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc, %i3c_nxfers
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %nrxwords.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %nrxwords.1, %for.body.for.end_crit_edge ]
  %ntxwords.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %ntxwords.1, %for.body.for.end_crit_edge ]
  %datafifodepth = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %datafifodepth to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %datafifodepth, align 1
  %conv22 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ntxwords.0.lcssa, i32 %conv22)
  %cmp23 = icmp ugt i32 %ntxwords.0.lcssa, %conv22
  call void @__sanitizer_cov_trace_cmp4(i32 %nrxwords.0.lcssa, i32 %conv22)
  %cmp28 = icmp ugt i32 %nrxwords.0.lcssa, %conv22
  %or.cond = select i1 %cmp23, i1 true, i1 %cmp28
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end8.i.i.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %for.end
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i3c_nxfers, i32 28) #8
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %14, i32 72) #8
  %retval.0.i.i = select i1 %13, i32 -1, i32 %spec.select.i.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3520) #12
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %dw_i3c_master_alloc_xfer.exit

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dw_i3c_master_alloc_xfer.exit:                    ; preds = %if.end8.i.i.i
  %15 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call9.i.i.i, ptr %call9.i.i.i, align 128
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %ncmds2.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %ncmds2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i3c_nxfers, ptr %ncmds2.i, align 4
  %ret.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -110, ptr %ret.i, align 64
  br i1 %cmp6160, label %for.body39.lr.ph, label %dw_i3c_master_alloc_xfer.exit.for.end85_crit_edge

dw_i3c_master_alloc_xfer.exit.for.end85_crit_edge: ; preds = %dw_i3c_master_alloc_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end85

for.body39.lr.ph:                                 ; preds = %dw_i3c_master_alloc_xfer.exit
  %max_read_ds = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 6
  %max_write_ds = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 7
  %sub76 = add nsw i32 %i3c_nxfers, -1
  br label %for.body39

for.body39:                                       ; preds = %if.end66.for.body39_crit_edge, %for.body39.lr.ph
  %i.1167 = phi i32 [ 0, %for.body39.lr.ph ], [ %inc84, %if.end66.for.body39_crit_edge ]
  %arrayidx40 = getelementptr %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1167
  %arrayidx41 = getelementptr %struct.i3c_priv_xfer, ptr %i3c_xfers, i32 %i.1167
  %len42 = getelementptr %struct.i3c_priv_xfer, ptr %i3c_xfers, i32 %i.1167, i32 1
  %19 = ptrtoint ptr %len42 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len42, align 2
  %conv43 = zext i16 %20 to i32
  %shl = shl nuw i32 %conv43, 16
  %or = or i32 %shl, 1
  %cmd_hi = getelementptr %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1167, i32 1
  %21 = ptrtoint ptr %cmd_hi to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %cmd_hi, align 4
  %22 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx41, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool46.not = icmp eq i8 %23, 0
  %data58 = getelementptr %struct.i3c_priv_xfer, ptr %i3c_xfers, i32 %i.1167, i32 2
  %24 = ptrtoint ptr %data58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data58, align 4
  br i1 %tobool46.not, label %if.else56, label %if.then47

if.then47:                                        ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #10
  %rx_buf = getelementptr %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1167, i32 5
  %26 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %rx_buf, align 4
  %rx_len = getelementptr %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1167, i32 4
  %27 = ptrtoint ptr %rx_len to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %20, ptr %rx_len, align 4
  %28 = ptrtoint ptr %max_read_ds to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %max_read_ds, align 1
  %conv52 = zext i8 %29 to i32
  %shl53 = shl nuw nsw i32 %conv52, 21
  %and54 = and i32 %shl53, 14680064
  %or55 = or i32 %and54, 268435456
  br label %if.end66

if.else56:                                        ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #10
  %tx_buf = getelementptr %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1167, i32 3
  %30 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %25, ptr %tx_buf, align 4
  %tx_len = getelementptr %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1167, i32 2
  %31 = ptrtoint ptr %tx_len to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %20, ptr %tx_len, align 4
  %32 = ptrtoint ptr %max_write_ds to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %max_write_ds, align 2
  %conv62 = zext i8 %33 to i32
  %shl63 = shl nuw nsw i32 %conv62, 21
  %and64 = and i32 %shl63, 14680064
  br label %if.end66

if.end66:                                         ; preds = %if.else56, %if.then47
  %storemerge = phi i32 [ %and64, %if.else56 ], [ %or55, %if.then47 ]
  %34 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge, ptr %arrayidx40, align 4
  %shl67 = shl i32 %i.1167, 3
  %and68 = and i32 %shl67, 120
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %1, align 1
  %conv69 = zext i8 %36 to i32
  %shl70 = shl nuw nsw i32 %conv69, 16
  %and71 = and i32 %shl70, 2031616
  %or72 = or i32 %and68, %storemerge
  %or73 = or i32 %or72, %and71
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1167, i32 %sub76)
  %cmp77 = icmp eq i32 %i.1167, %sub76
  %spec.select.v = select i1 %cmp77, i32 1140850688, i32 67108864
  %spec.select = or i32 %or73, %spec.select.v
  %37 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select, ptr %arrayidx40, align 4
  %inc84 = add nuw nsw i32 %i.1167, 1
  %exitcond169.not = icmp eq i32 %inc84, %i3c_nxfers
  br i1 %exitcond169.not, label %if.end66.for.end85_crit_edge, label %if.end66.for.body39_crit_edge

if.end66.for.body39_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body39

if.end66.for.end85_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end85

for.end85:                                        ; preds = %if.end66.for.end85_crit_edge, %dw_i3c_master_alloc_xfer.exit.for.end85_crit_edge
  %comp.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %comp.i, align 8
  %wait.i.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #8
  %lock.i = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 4, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %cur.i = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 8
  %tobool.not.i154 = icmp eq ptr %40, null
  br i1 %tobool.not.i154, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.end85
  %xferqueue.i = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 4
  %prev.i.i155 = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 4, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i155 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i155, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %42, ptr noundef %xferqueue.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i156, label %if.then.i.dw_i3c_master_enqueue_xfer.exit_crit_edge

if.then.i.dw_i3c_master_enqueue_xfer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_i3c_master_enqueue_xfer.exit

if.end.i.i.i156:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %prev.i.i155 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9.i.i.i, ptr %prev.i.i155, align 4
  %44 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %xferqueue.i, ptr %call9.i.i.i, align 128
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call9.i.i.i, ptr %42, align 4
  br label %dw_i3c_master_enqueue_xfer.exit

if.else.i:                                        ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call9.i.i.i, ptr %cur.i, align 8
  tail call fastcc void @dw_i3c_master_start_xfer_locked(ptr noundef %3) #8
  br label %dw_i3c_master_enqueue_xfer.exit

dw_i3c_master_enqueue_xfer.exit:                  ; preds = %if.else.i, %if.end.i.i.i156, %if.then.i.dw_i3c_master_enqueue_xfer.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %call87 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then89, label %dw_i3c_master_enqueue_xfer.exit.if.end90_crit_edge

dw_i3c_master_enqueue_xfer.exit.if.end90_crit_edge: ; preds = %dw_i3c_master_enqueue_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then89:                                        ; preds = %dw_i3c_master_enqueue_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i159 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  tail call fastcc void @dw_i3c_master_dequeue_xfer_locked(ptr noundef %3, ptr noundef nonnull %call9.i.i.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i159) #8
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %dw_i3c_master_enqueue_xfer.exit.if.end90_crit_edge
  %48 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ret.i, align 64
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.end8.i.i.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %49, %if.end90 ], [ 0, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ], [ -524, %for.end.cleanup_crit_edge ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i3c_master_attach_i2c_dev(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %free_pos.i = getelementptr inbounds %struct.dw_i3c_master, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %free_pos.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_pos.i, align 4
  %maxdevs.i = getelementptr inbounds %struct.dw_i3c_master, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %maxdevs.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %maxdevs.i, align 8
  %conv.i = zext i16 %5 to i32
  %sub1.i = sub nsw i32 32, %conv.i
  %shr.i = lshr i32 -1, %sub1.i
  %and2.i = and i32 %shr.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %6 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true) #8, !range !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %iszero.i = icmp eq i32 %3, 0
  %sub4.i = select i1 %iszero.i, i32 -1, i32 %6
  %retval.0.i = select i1 %tobool.not.i, i32 -28, i32 %sub4.i
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %retval.0.i to i8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %call7.i.i, align 8
  %addr = getelementptr inbounds %struct.i2c_dev_desc, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr, align 4
  %conv6 = trunc i16 %10 to i8
  %arrayidx = getelementptr %struct.dw_i3c_master, ptr %1, i32 0, i32 11, i32 %retval.0.i
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6, ptr %arrayidx, align 1
  %shl = shl nuw i32 1, %retval.0.i
  %neg = xor i32 %shl, -1
  %12 = ptrtoint ptr %free_pos.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %free_pos.i, align 4
  %and = and i32 %13, %neg
  store i32 %and, ptr %free_pos.i, align 4
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %14 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %master_priv.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr, align 4
  %17 = and i16 %16, 127
  %and9 = zext i16 %17 to i32
  %or = or i32 %and9, -2147483648
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr inbounds %struct.dw_i3c_master, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %datstartaddr = getelementptr inbounds %struct.dw_i3c_master, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %datstartaddr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %datstartaddr, align 2
  %conv10 = zext i16 %22 to i32
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %call7.i.i, align 8
  %conv12 = zext i8 %24 to i32
  %shl13 = shl nuw nsw i32 %conv12, 2
  %add = add nuw nsw i32 %shl13, %conv10
  %add.ptr = getelementptr i8, ptr %20, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #8, !srcloc !36
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -28, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_i3c_master_detach_i2c_dev(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %datstartaddr = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %datstartaddr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %datstartaddr, align 2
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %conv3 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv3, 2
  %add = add nuw nsw i32 %shl, %conv
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !36
  %10 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %master_priv.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %idxprom = zext i8 %12 to i32
  %arrayidx = getelementptr %struct.dw_i3c_master, ptr %3, i32 0, i32 11, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx, align 1
  %14 = load i8, ptr %1, align 1
  %conv6 = zext i8 %14 to i32
  %shl7 = shl nuw i32 1, %conv6
  %free_pos = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %free_pos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %free_pos, align 4
  %or = or i32 %shl7, %16
  store i32 %or, ptr %free_pos, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i3c_master_i2c_xfers(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %i2c_xfers, i32 noundef %i2c_nxfers) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i2c_nxfers)
  %tobool.not = icmp eq i32 %i2c_nxfers, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %caps, align 8
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %i2c_nxfers)
  %cmp = icmp slt i32 %conv, %i2c_nxfers
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i2c_nxfers)
  %cmp6150 = icmp sgt i32 %i2c_nxfers, 0
  br i1 %cmp6150, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0153 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ntxwords.0152 = phi i32 [ %ntxwords.1, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %nrxwords.0151 = phi i32 [ %nrxwords.1, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %flags = getelementptr %struct.i2c_msg, ptr %i2c_xfers, i32 %i.0153, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool9.not = icmp eq i16 %8, 0
  %len15 = getelementptr %struct.i2c_msg, ptr %i2c_xfers, i32 %i.0153, i32 2
  %9 = ptrtoint ptr %len15 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %len15, align 4
  %conv16 = zext i16 %10 to i32
  %sub18 = add nuw nsw i32 %conv16, 3
  %div19142 = lshr i32 %sub18, 2
  %add13 = select i1 %tobool9.not, i32 0, i32 %div19142
  %nrxwords.1 = add i32 %nrxwords.0151, %add13
  %add20 = select i1 %tobool9.not, i32 %div19142, i32 0
  %ntxwords.1 = add i32 %ntxwords.0152, %add20
  %inc = add nuw nsw i32 %i.0153, 1
  %exitcond.not = icmp eq i32 %inc, %i2c_nxfers
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %nrxwords.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %nrxwords.1, %for.body.for.end_crit_edge ]
  %ntxwords.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %ntxwords.1, %for.body.for.end_crit_edge ]
  %datafifodepth = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %datafifodepth to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %datafifodepth, align 1
  %conv23 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ntxwords.0.lcssa, i32 %conv23)
  %cmp24 = icmp ugt i32 %ntxwords.0.lcssa, %conv23
  call void @__sanitizer_cov_trace_cmp4(i32 %nrxwords.0.lcssa, i32 %conv23)
  %cmp29 = icmp ugt i32 %nrxwords.0.lcssa, %conv23
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp29
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end8.i.i.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %for.end
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i2c_nxfers, i32 28) #8
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %15, i32 72) #8
  %retval.0.i.i = select i1 %14, i32 -1, i32 %spec.select.i.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3520) #12
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %dw_i3c_master_alloc_xfer.exit

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dw_i3c_master_alloc_xfer.exit:                    ; preds = %if.end8.i.i.i
  %16 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call9.i.i.i, ptr %call9.i.i.i, align 128
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %ncmds2.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %ncmds2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i2c_nxfers, ptr %ncmds2.i, align 4
  %ret.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -110, ptr %ret.i, align 64
  br i1 %cmp6150, label %for.body40.lr.ph, label %dw_i3c_master_alloc_xfer.exit.for.end79_crit_edge

dw_i3c_master_alloc_xfer.exit.for.end79_crit_edge: ; preds = %dw_i3c_master_alloc_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end79

for.body40.lr.ph:                                 ; preds = %dw_i3c_master_alloc_xfer.exit
  %sub70 = add nsw i32 %i2c_nxfers, -1
  br label %for.body40

for.body40:                                       ; preds = %if.end76.for.body40_crit_edge, %for.body40.lr.ph
  %i.1157 = phi i32 [ 0, %for.body40.lr.ph ], [ %inc78, %if.end76.for.body40_crit_edge ]
  %arrayidx41 = getelementptr %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1157
  %len43 = getelementptr %struct.i2c_msg, ptr %i2c_xfers, i32 %i.1157, i32 2
  %20 = ptrtoint ptr %len43 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len43, align 4
  %conv44 = zext i16 %21 to i32
  %shl = shl nuw i32 %conv44, 16
  %or = or i32 %shl, 1
  %cmd_hi = getelementptr %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1157, i32 1
  %22 = ptrtoint ptr %cmd_hi to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %cmd_hi, align 4
  %shl46 = shl i32 %i.1157, 3
  %and47 = and i32 %shl46, 120
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 1
  %conv48 = zext i8 %24 to i32
  %shl49 = shl nuw nsw i32 %conv48, 16
  %and50 = and i32 %shl49, 2031616
  %or51 = or i32 %and50, %and47
  %or52 = or i32 %or51, 67108864
  %25 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or52, ptr %arrayidx41, align 4
  %flags54 = getelementptr %struct.i2c_msg, ptr %i2c_xfers, i32 %i.1157, i32 1
  %26 = ptrtoint ptr %flags54 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags54, align 2
  %28 = and i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool57.not = icmp eq i16 %28, 0
  br i1 %tobool57.not, label %if.else64, label %if.then58

if.then58:                                        ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #10
  %or60 = or i32 %or51, 335544320
  %29 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or60, ptr %arrayidx41, align 4
  %buf = getelementptr %struct.i2c_msg, ptr %i2c_xfers, i32 %i.1157, i32 3
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf, align 4
  %rx_buf = getelementptr %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1157, i32 5
  %32 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %rx_buf, align 4
  %rx_len = getelementptr %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1157, i32 4
  br label %if.end69

if.else64:                                        ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #10
  %buf66 = getelementptr %struct.i2c_msg, ptr %i2c_xfers, i32 %i.1157, i32 3
  %33 = ptrtoint ptr %buf66 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf66, align 4
  %tx_buf = getelementptr %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1157, i32 3
  %35 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %tx_buf, align 4
  %tx_len = getelementptr %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1157, i32 2
  br label %if.end69

if.end69:                                         ; preds = %if.else64, %if.then58
  %tx_len.sink = phi ptr [ %tx_len, %if.else64 ], [ %rx_len, %if.then58 ]
  %36 = ptrtoint ptr %tx_len.sink to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %21, ptr %tx_len.sink, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1157, i32 %sub70)
  %cmp71 = icmp eq i32 %i.1157, %sub70
  br i1 %cmp71, label %if.then73, label %if.end69.if.end76_crit_edge

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx41, align 4
  %or75 = or i32 %38, 1073741824
  store i32 %or75, ptr %arrayidx41, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end69.if.end76_crit_edge
  %inc78 = add nuw nsw i32 %i.1157, 1
  %exitcond159.not = icmp eq i32 %inc78, %i2c_nxfers
  br i1 %exitcond159.not, label %if.end76.for.end79_crit_edge, label %if.end76.for.body40_crit_edge

if.end76.for.body40_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body40

if.end76.for.end79_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end79

for.end79:                                        ; preds = %if.end76.for.end79_crit_edge, %dw_i3c_master_alloc_xfer.exit.for.end79_crit_edge
  %comp.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %comp.i, align 8
  %wait.i.i = getelementptr inbounds %struct.dw_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #8
  %lock.i = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 4, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %cur.i = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur.i, align 8
  %tobool.not.i144 = icmp eq ptr %41, null
  br i1 %tobool.not.i144, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.end79
  %xferqueue.i = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 4
  %prev.i.i145 = getelementptr inbounds %struct.dw_i3c_master, ptr %3, i32 0, i32 4, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i145 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i145, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %43, ptr noundef %xferqueue.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i146, label %if.then.i.dw_i3c_master_enqueue_xfer.exit_crit_edge

if.then.i.dw_i3c_master_enqueue_xfer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dw_i3c_master_enqueue_xfer.exit

if.end.i.i.i146:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %prev.i.i145 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call9.i.i.i, ptr %prev.i.i145, align 4
  %45 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %xferqueue.i, ptr %call9.i.i.i, align 128
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call9.i.i.i, ptr %43, align 4
  br label %dw_i3c_master_enqueue_xfer.exit

if.else.i:                                        ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call9.i.i.i, ptr %cur.i, align 8
  tail call fastcc void @dw_i3c_master_start_xfer_locked(ptr noundef %3) #8
  br label %dw_i3c_master_enqueue_xfer.exit

dw_i3c_master_enqueue_xfer.exit:                  ; preds = %if.else.i, %if.end.i.i.i146, %if.then.i.dw_i3c_master_enqueue_xfer.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %call81 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then83, label %dw_i3c_master_enqueue_xfer.exit.if.end84_crit_edge

dw_i3c_master_enqueue_xfer.exit.if.end84_crit_edge: ; preds = %dw_i3c_master_enqueue_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then83:                                        ; preds = %dw_i3c_master_enqueue_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i149 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  tail call fastcc void @dw_i3c_master_dequeue_xfer_locked(ptr noundef %3, ptr noundef nonnull %call9.i.i.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i149) #8
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %dw_i3c_master_enqueue_xfer.exit.if.end84_crit_edge
  %49 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ret.i, align 64
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.end8.i.i.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %50, %if.end84 ], [ 0, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ], [ -524, %for.end.cleanup_crit_edge ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_get_free_addr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_set_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_add_i3c_dev_locked(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_dw_i3c_master__289_1214_dw_i3c_driver_init6, !1, !"__initcall__kmod_dw_i3c_master__289_1214_dw_i3c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i3c/master/dw-i3c-master.c", i32 1214, i32 1}
!2 = !{ptr @__exitcall_dw_i3c_driver_exit, !1, !"__exitcall_dw_i3c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/i3c/master/dw-i3c-master.c", i32 1216, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/i3c/master/dw-i3c-master.c", i32 1217, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/i3c/master/dw-i3c-master.c", i32 1218, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i3c/master/dw-i3c-master.c", i32 1210, i32 11}
!12 = !{ptr @dw_i3c_driver, !13, !"dw_i3c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i3c/master/dw-i3c-master.c", i32 1206, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i3c/master/dw-i3c-master.c", i32 1133, i32 13}
!16 = !{ptr @dw_i3c_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/i3c/master/dw-i3c-master.c", i32 1143, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dw_mipi_i3c_ops, !20, !"dw_mipi_i3c_ops", i1 false, i1 false}
!20 = !{!"../drivers/i3c/master/dw-i3c-master.c", i32 1100, i32 47}
!21 = !{ptr @init_completion.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../include/linux/completion.h", i32 87, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dw_i3c_master_of_match, !25, !"dw_i3c_master_of_match", i1 false, i1 false}
!25 = !{!"../drivers/i3c/master/dw-i3c-master.c", i32 1200, i32 34}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2155791313}
!36 = !{i64 6910943}
!37 = !{i64 6911361}
!38 = !{i64 2155793165}
!39 = !{i64 2155794350}
!40 = !{i64 2155795535}
!41 = !{i64 2155784211}
!42 = !{i64 2155784710}
!43 = !{i64 2155786799}
!44 = !{i64 2155709581}
!45 = !{i64 2155710784}
!46 = !{!"auto-init"}
!47 = !{i64 2155714005}
!48 = !{i64 2155714966}
!49 = !{i64 2155788561}
!50 = !{i64 2155705190}
!51 = !{i64 2155707616}
!52 = !{i64 2155708110}
!53 = !{i64 2155702149}
!54 = !{i64 2155703088}
!55 = !{i64 2155703510}
!56 = !{i64 2155703937}
!57 = !{i64 2155731566}
!58 = !{i64 2155733558}
!59 = !{i64 2155734971}
!60 = !{i64 2155737112}
!61 = !{i64 2155738071}
!62 = !{i64 2155721165}
!63 = !{i64 2155721857}
!64 = !{i64 2155723154}
!65 = !{i64 2155725931}
!66 = !{i64 2155729493}
!67 = !{i64 2155738648}
!68 = !{i64 2155739558}
!69 = !{i64 2155740252}
!70 = !{i64 2155741162}
!71 = !{i64 2155743446}
!72 = !{i64 2155745298}
!73 = !{i64 2155746148}
!74 = !{i64 2155747853}
!75 = !{i64 2155750234}
!76 = !{i64 2155752451}
!77 = !{i64 2155754550}
!78 = !{i64 2155755509}
!79 = !{i64 2155698929}
!80 = !{i64 2155699890}
!81 = !{i64 2155696846}
!82 = !{i64 2155697811}
!83 = !{i32 0, i32 33}
!84 = !{i64 2155775768}
!85 = !{i64 2155771192}
!86 = !{i64 2155772943}
!87 = !{i64 2155777280}
!88 = !{i64 2155762160}
!89 = !{i64 2155781861}
!90 = !{i64 2155783397}
