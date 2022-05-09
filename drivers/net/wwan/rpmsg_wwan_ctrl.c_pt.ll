; ModuleID = '/llk/IR_all_yes/drivers/net/wwan/rpmsg_wwan_ctrl.c_pt.bc'
source_filename = "../drivers/net/wwan/rpmsg_wwan_ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.wwan_port_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
%struct.rpmsg_wwan_dev = type { ptr, ptr, ptr }
%struct.rpmsg_channel_info = type { [32 x i8], i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }

@__initcall__kmod_rpmsg_wwan_ctrl__337_162_rpmsg_wwan_ctrl_driver_init6 = internal global ptr @rpmsg_wwan_ctrl_driver_init, section ".initcall6.init", align 4
@rpmsg_wwan_ctrl_driver = internal global { %struct.rpmsg_driver, [36 x i8] } { %struct.rpmsg_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rpmsg_wwan_ctrl_id_table, ptr @rpmsg_wwan_ctrl_probe, ptr @rpmsg_wwan_ctrl_remove, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rpmsg_wwan_ctrl_driver_exit = internal global ptr @rpmsg_wwan_ctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file338 = internal constant [54 x i8] c"rpmsg_wwan_ctrl.file=drivers/net/wwan/rpmsg_wwan_ctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_license339 = internal constant [31 x i8] c"rpmsg_wwan_ctrl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [51 x i8] c"rpmsg_wwan_ctrl.description=RPMSG WWAN CTRL Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author341 = internal constant [61 x i8] c"rpmsg_wwan_ctrl.author=Stephan Gerhold <stephan@gerhold.net>\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rpmsg_wwan_ctrl\00", [16 x i8] zeroinitializer }, align 32
@rpmsg_wwan_ctrl_id_table = internal constant { [3 x %struct.rpmsg_device_id], [52 x i8] } { [3 x %struct.rpmsg_device_id] [%struct.rpmsg_device_id { [32 x i8] c"DATA5_CNTL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.rpmsg_device_id { [32 x i8] c"DATA4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.rpmsg_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@rpmsg_wwan_pops = internal constant { %struct.wwan_port_ops, [44 x i8] } { %struct.wwan_port_ops { ptr @rpmsg_wwan_ctrl_start, ptr @rpmsg_wwan_ctrl_stop, ptr @rpmsg_wwan_ctrl_tx, ptr @rpmsg_wwan_ctrl_tx_blocking, ptr @rpmsg_wwan_ctrl_tx_poll }, [44 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"rpmsg_wwan_ctrl_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 156, i32 28 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 157, i32 14 }
@___asan_gen_.7 = private unnamed_addr constant [25 x i8] c"rpmsg_wwan_ctrl_id_table\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 148, i32 37 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"rpmsg_wwan_pops\00", align 1
@___asan_gen_.11 = private constant [38 x i8] c"../drivers/net/wwan/rpmsg_wwan_ctrl.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 91, i32 35 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file338, ptr @__UNIQUE_ID_license339, ptr @__exitcall_rpmsg_wwan_ctrl_driver_exit, ptr @__initcall__kmod_rpmsg_wwan_ctrl__337_162_rpmsg_wwan_ctrl_driver_init6, ptr @rpmsg_wwan_ctrl_driver_exit, ptr @rpmsg_wwan_ctrl_driver, ptr @.str, ptr @rpmsg_wwan_ctrl_id_table, ptr @rpmsg_wwan_pops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_wwan_ctrl_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_wwan_ctrl_id_table to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_wwan_pops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_wwan_ctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_rpmsg_driver(ptr noundef nonnull @rpmsg_wwan_ctrl_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpmsg_wwan_ctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @unregister_rpmsg_driver(ptr noundef nonnull @rpmsg_wwan_ctrl_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_rpmsg_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_rpmsg_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_wwan_ctrl_probe(ptr noundef %rpdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %dev.pn.i = phi ptr [ %rpdev, %entry ], [ %dev.addr.0.i, %for.body.i.for.cond.i_crit_edge ]
  %dev.addr.0.in.i = getelementptr inbounds %struct.device, ptr %dev.pn.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev.addr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.addr.0.i = load ptr, ptr %dev.addr.0.in.i, align 8
  %tobool.not.i = icmp eq ptr %dev.addr.0.i, null
  br i1 %tobool.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %bus.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 5
  %1 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i, align 8
  %cmp.i = icmp eq ptr %2, @platform_bus_type
  br i1 %cmp.i, label %if.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %rpdev, i32 noundef 12, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rpdev, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i, align 4
  %driver_data = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 8
  %call8 = tail call ptr @wwan_create_port(ptr noundef nonnull %dev.addr.0.i, i32 noundef %6, ptr noundef nonnull @rpmsg_wwan_pops, ptr noundef nonnull %call.i) #5
  %cmp.i26 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %wwan_port = getelementptr inbounds %struct.rpmsg_wwan_dev, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %wwan_port to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %wwan_port, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.end.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then10 ], [ 0, %if.end12 ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpmsg_wwan_ctrl_remove(ptr nocapture noundef readonly %rpdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wwan_port = getelementptr inbounds %struct.rpmsg_wwan_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wwan_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wwan_port, align 4
  tail call void @wwan_remove_port(ptr noundef %3) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wwan_create_port(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_wwan_ctrl_start(ptr noundef %port) #2 align 64 {
entry:
  %chinfo = alloca %struct.rpmsg_channel_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wwan_port_get_drvdata(ptr noundef %port) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %chinfo) #5
  %src = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo, i32 0, i32 1
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %src1 = getelementptr inbounds %struct.rpmsg_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %src1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src1, align 8
  %4 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %src, align 4
  %dst = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo, i32 0, i32 2
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %dst, align 4
  %6 = load ptr, ptr %call, align 4
  %id = getelementptr inbounds %struct.rpmsg_device, ptr %6, i32 0, i32 1
  %call5 = call ptr @strncpy(ptr noundef nonnull %chinfo, ptr noundef %id, i32 noundef 32)
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %9 = ptrtoint ptr %chinfo to i32
  call void @__asan_load4_noabort(i32 %9)
  %.fca.0.load = load i32, ptr %chinfo, align 4
  %.fca.0.insert = insertvalue [10 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 1
  %10 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [10 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 2
  %11 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [10 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 3
  %12 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [10 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 4
  %13 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [10 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 5
  %14 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [10 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 6
  %15 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [10 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 7
  %16 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [10 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  %.fca.8.insert = insertvalue [10 x i32] %.fca.7.insert, i32 %3, 8
  %.fca.9.insert = insertvalue [10 x i32] %.fca.8.insert, i32 -1, 9
  %call7 = call ptr @rpmsg_create_ept(ptr noundef %8, ptr noundef nonnull @rpmsg_wwan_ctrl_callback, ptr noundef %call, [10 x i32] %.fca.9.insert) #5
  %ept = getelementptr inbounds %struct.rpmsg_wwan_dev, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %ept to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7, ptr %ept, align 4
  %tobool.not = icmp eq ptr %call7, null
  %. = select i1 %tobool.not, i32 -121, i32 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %chinfo) #5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpmsg_wwan_ctrl_stop(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wwan_port_get_drvdata(ptr noundef %port) #5
  %ept = getelementptr inbounds %struct.rpmsg_wwan_dev, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 4
  tail call void @rpmsg_destroy_ept(ptr noundef %1) #5
  %2 = ptrtoint ptr %ept to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ept, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_wwan_ctrl_tx(ptr noundef %port, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wwan_port_get_drvdata(ptr noundef %port) #5
  %ept = getelementptr inbounds %struct.rpmsg_wwan_dev, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call1 = tail call i32 @rpmsg_trysend(ptr noundef %1, ptr noundef %3, i32 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @consume_skb(ptr noundef %skb) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_wwan_ctrl_tx_blocking(ptr noundef %port, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wwan_port_get_drvdata(ptr noundef %port) #5
  %ept = getelementptr inbounds %struct.rpmsg_wwan_dev, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call1 = tail call i32 @rpmsg_send(ptr noundef %1, ptr noundef %3, i32 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @consume_skb(ptr noundef %skb) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_wwan_ctrl_tx_poll(ptr noundef %port, ptr noundef %filp, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wwan_port_get_drvdata(ptr noundef %port) #5
  %ept = getelementptr inbounds %struct.rpmsg_wwan_dev, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 4
  %call1 = tail call i32 @rpmsg_poll(ptr noundef %1, ptr noundef %filp, ptr noundef %wait) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wwan_port_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpmsg_create_ept(ptr noundef, ptr noundef, ptr noundef, [10 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_wwan_ctrl_callback(ptr nocapture noundef readnone %rpdev, ptr nocapture noundef readonly %buf, i32 noundef %len, ptr nocapture noundef readonly %priv, i32 noundef %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef %len, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i6 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %len) #5
  %0 = call ptr @memcpy(ptr %call.i6, ptr %buf, i32 %len)
  %wwan_port = getelementptr inbounds %struct.rpmsg_wwan_dev, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %wwan_port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wwan_port, align 4
  tail call void @wwan_port_rx(ptr noundef %2, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wwan_port_rx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpmsg_destroy_ept(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_trysend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wwan_remove_port(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_rpmsg_wwan_ctrl__337_162_rpmsg_wwan_ctrl_driver_init6, !1, !"__initcall__kmod_rpmsg_wwan_ctrl__337_162_rpmsg_wwan_ctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wwan/rpmsg_wwan_ctrl.c", i32 162, i32 1}
!2 = !{ptr @__exitcall_rpmsg_wwan_ctrl_driver_exit, !1, !"__exitcall_rpmsg_wwan_ctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file338, !4, !"__UNIQUE_ID_file338", i1 false, i1 false}
!4 = !{!"../drivers/net/wwan/rpmsg_wwan_ctrl.c", i32 164, i32 1}
!5 = !{ptr @__UNIQUE_ID_license339, !4, !"__UNIQUE_ID_license339", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description340, !7, !"__UNIQUE_ID_description340", i1 false, i1 false}
!7 = !{!"../drivers/net/wwan/rpmsg_wwan_ctrl.c", i32 165, i32 1}
!8 = !{ptr @__UNIQUE_ID_author341, !9, !"__UNIQUE_ID_author341", i1 false, i1 false}
!9 = !{!"../drivers/net/wwan/rpmsg_wwan_ctrl.c", i32 166, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wwan/rpmsg_wwan_ctrl.c", i32 157, i32 14}
!12 = !{ptr @rpmsg_wwan_ctrl_driver, !13, !"rpmsg_wwan_ctrl_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/wwan/rpmsg_wwan_ctrl.c", i32 156, i32 28}
!14 = !{ptr @rpmsg_wwan_ctrl_id_table, !15, !"rpmsg_wwan_ctrl_id_table", i1 false, i1 false}
!15 = !{!"../drivers/net/wwan/rpmsg_wwan_ctrl.c", i32 148, i32 37}
!16 = !{ptr @rpmsg_wwan_pops, !17, !"rpmsg_wwan_pops", i1 false, i1 false}
!17 = !{!"../drivers/net/wwan/rpmsg_wwan_ctrl.c", i32 91, i32 35}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
