; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/b53/b53_spi.c_pt.bc'
source_filename = "../drivers/net/dsa/b53/b53_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.b53_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.b53_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, ptr, i32, i8, [3 x i8], i8, i8, i8, i32, i8, i16, i32, i16, i32, i8, ptr, i8, ptr, ptr, i8, i32, ptr, i8, i32, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_b53_spi__499_376_b53_spi_driver_init6 = internal global ptr @b53_spi_driver_init, section ".initcall6.init", align 4
@b53_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @b53_spi_ids, ptr @b53_spi_probe, ptr @b53_spi_remove, ptr @b53_spi_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @b53_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_b53_spi_driver_exit = internal global ptr @b53_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author500 = internal constant [47 x i8] c"b53_spi.author=Jonas Gorski <jogo@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description501 = internal constant [42 x i8] c"b53_spi.description=B53 SPI access driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file502 = internal constant [41 x i8] c"b53_spi.file=drivers/net/dsa/b53/b53_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license503 = internal constant [29 x i8] c"b53_spi.license=Dual BSD/GPL\00", section ".modinfo", align 1
@b53_spi_ids = internal constant { [9 x %struct.spi_device_id], [92 x i8] } { [9 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"bcm5325\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bcm5365\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bcm5395\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bcm5397\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bcm5398\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bcm53115\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bcm53125\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bcm53128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [92 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"b53-switch\00", [21 x i8] zeroinitializer }, align 32
@b53_spi_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5325\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5365\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5395\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5397\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5398\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53115\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53125\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@b53_spi_ops = internal constant { %struct.b53_io_ops, [48 x i8] } { %struct.b53_io_ops { ptr @b53_spi_read8, ptr @b53_spi_read16, ptr @b53_spi_read32, ptr @b53_spi_read48, ptr @b53_spi_read64, ptr @b53_spi_write8, ptr @b53_spi_write16, ptr @b53_spi_write32, ptr @b53_spi_write48, ptr @b53_spi_write64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"b53_spi_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 365, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"b53_spi_ids\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 352, i32 35 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 367, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"b53_spi_of_match\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 339, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"b53_spi_ops\00", align 1
@___asan_gen_.14 = private constant [33 x i8] c"../drivers/net/dsa/b53/b53_spi.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 283, i32 32 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author500, ptr @__UNIQUE_ID_description501, ptr @__UNIQUE_ID_file502, ptr @__UNIQUE_ID_license503, ptr @__exitcall_b53_spi_driver_exit, ptr @__initcall__kmod_b53_spi__499_376_b53_spi_driver_init6, ptr @b53_spi_driver_exit, ptr @b53_spi_driver, ptr @b53_spi_ids, ptr @.str, ptr @b53_spi_of_match, ptr @b53_spi_ops], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_spi_ids to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_spi_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_spi_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @b53_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @b53_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @b53_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @b53_switch_alloc(ptr noundef %spi, ptr noundef nonnull @b53_spi_ops, ptr noundef %spi) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pdata = getelementptr inbounds %struct.b53_device, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pdata, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @b53_switch_register(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_spi_remove(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @dsa_unregister_switch(ptr noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b53_spi_shutdown(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @b53_switch_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_switch_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_spi_read8(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @b53_spi_read(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr noundef %val, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_spi_read16(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %value = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #5
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %value, align 2, !annotation !29
  %call = call fastcc i32 @b53_spi_read(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr noundef nonnull %value, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %value, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2)
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %val, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_spi_read32(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !29
  %call = call fastcc i32 @b53_spi_read(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr noundef nonnull %value, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_spi_read48(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #5
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !29
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %val, align 8
  %call = call fastcc i32 @b53_spi_read(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr noundef nonnull %value, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %value, align 8
  %4 = call i64 @llvm.bswap.i64(i64 %3)
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_spi_read64(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #5
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !29
  %call = call fastcc i32 @b53_spi_read(ptr noundef %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr noundef nonnull %value, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %value, align 8
  %3 = call i64 @llvm.bswap.i64(i64 %2)
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_spi_write8(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i8 noundef zeroext %value) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %txbuf.i.i = alloca [3 x i8], align 1
  %txbuf.i.i.i = alloca [2 x i8], align 1
  %rxbuf.i.i = alloca i8, align 1
  %txbuf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %txbuf) #5
  %2 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %txbuf, align 1, !annotation !29
  %3 = getelementptr inbounds [3 x i8], ptr %txbuf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !29
  %5 = getelementptr inbounds [3 x i8], ptr %txbuf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  %7 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %rxbuf.i.i, align 1, !annotation !29
  %8 = getelementptr inbounds [2 x i8], ptr %txbuf.i.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end3.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end3.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i.i.i) #5
  %9 = ptrtoint ptr %txbuf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 96, ptr %txbuf.i.i.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -2, ptr %8, align 1
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %txbuf.i.i.i, i32 noundef 2, ptr noundef nonnull %rxbuf.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge

for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

if.end.i.i:                                       ; preds = %for.body.i.i
  %11 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rxbuf.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool1.not.i.i = icmp sgt i8 %12, -1
  br i1 %tobool1.not.i.i, label %for.end.i.i, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #5
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge, label %if.end3.i.i.for.body.i.i_crit_edge

if.end3.i.i.for.body.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

for.end.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.014.i.i)
  %cmp4.i.i = icmp eq i32 %i.014.i.i, 10
  br i1 %cmp4.i.i, label %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge, label %if.end.i

for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

b53_prepare_reg_access.exit.thread:               ; preds = %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge, %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge, %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge ], [ %call.i.i.i, %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge ], [ -5, %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %for.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %txbuf.i.i) #5
  %14 = getelementptr inbounds [3 x i8], ptr %txbuf.i.i, i32 0, i32 1
  %15 = getelementptr inbounds [3 x i8], ptr %txbuf.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %txbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 97, ptr %txbuf.i.i, align 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %14, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %page, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %19 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 92)
  %21 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %txbuf.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %23 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.i.b53_prepare_reg_access.exit_crit_edge

if.end.i.b53_prepare_reg_access.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %b53_prepare_reg_access.exit

b53_prepare_reg_access.exit:                      ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.i.b53_prepare_reg_access.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %txbuf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %b53_prepare_reg_access.exit.cleanup_crit_edge

b53_prepare_reg_access.exit.cleanup_crit_edge:    ; preds = %b53_prepare_reg_access.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %b53_prepare_reg_access.exit
  %33 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 97, ptr %txbuf, align 1
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %reg, ptr %3, align 1
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %value, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %36 = getelementptr inbounds i8, ptr %t.i, i32 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 92)
  %38 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %txbuf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %39 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %40 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %41 = call ptr @memset(ptr %40, i32 0, i32 40)
  %42 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %44 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_write.exit_crit_edge

if.end.spi_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %b53_prepare_reg_access.exit.cleanup_crit_edge, %b53_prepare_reg_access.exit.thread
  %retval.0 = phi i32 [ %call.i.i, %spi_write.exit ], [ %call.i.i.i.i, %b53_prepare_reg_access.exit.cleanup_crit_edge ], [ %retval.0.i.ph.i, %b53_prepare_reg_access.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %txbuf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_spi_write16(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext %value) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %txbuf.i.i = alloca [3 x i8], align 1
  %txbuf.i.i.i = alloca [2 x i8], align 1
  %rxbuf.i.i = alloca i8, align 1
  %txbuf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txbuf) #5
  %2 = getelementptr inbounds [4 x i8], ptr %txbuf, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %txbuf, i32 0, i32 2
  %4 = ptrtoint ptr %txbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %txbuf, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  %5 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %rxbuf.i.i, align 1, !annotation !29
  %6 = getelementptr inbounds [2 x i8], ptr %txbuf.i.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end3.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end3.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i.i.i) #5
  %7 = ptrtoint ptr %txbuf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 96, ptr %txbuf.i.i.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -2, ptr %6, align 1
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %txbuf.i.i.i, i32 noundef 2, ptr noundef nonnull %rxbuf.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge

for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

if.end.i.i:                                       ; preds = %for.body.i.i
  %9 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rxbuf.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool1.not.i.i = icmp sgt i8 %10, -1
  br i1 %tobool1.not.i.i, label %for.end.i.i, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #5
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge, label %if.end3.i.i.for.body.i.i_crit_edge

if.end3.i.i.for.body.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

for.end.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.014.i.i)
  %cmp4.i.i = icmp eq i32 %i.014.i.i, 10
  br i1 %cmp4.i.i, label %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge, label %if.end.i

for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

b53_prepare_reg_access.exit.thread:               ; preds = %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge, %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge, %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge ], [ %call.i.i.i, %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge ], [ -5, %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %for.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %txbuf.i.i) #5
  %12 = getelementptr inbounds [3 x i8], ptr %txbuf.i.i, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %txbuf.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %txbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 97, ptr %txbuf.i.i, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %page, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %17 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 92)
  %19 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %txbuf.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %21 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.i.b53_prepare_reg_access.exit_crit_edge

if.end.i.b53_prepare_reg_access.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %b53_prepare_reg_access.exit

b53_prepare_reg_access.exit:                      ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.i.b53_prepare_reg_access.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %txbuf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %b53_prepare_reg_access.exit.cleanup_crit_edge

b53_prepare_reg_access.exit.cleanup_crit_edge:    ; preds = %b53_prepare_reg_access.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %b53_prepare_reg_access.exit
  %31 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 97, ptr %txbuf, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %reg, ptr %2, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %value) #5
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %35 = getelementptr inbounds i8, ptr %t.i, i32 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 92)
  %37 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %txbuf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %38 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %39 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %40 = call ptr @memset(ptr %39, i32 0, i32 40)
  %41 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %43 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %44 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_write.exit_crit_edge

if.end.spi_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %48 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %b53_prepare_reg_access.exit.cleanup_crit_edge, %b53_prepare_reg_access.exit.thread
  %retval.0 = phi i32 [ %call.i.i, %spi_write.exit ], [ %call.i.i.i.i, %b53_prepare_reg_access.exit.cleanup_crit_edge ], [ %retval.0.i.ph.i, %b53_prepare_reg_access.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txbuf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_spi_write32(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i32 noundef %value) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %txbuf.i.i = alloca [3 x i8], align 1
  %txbuf.i.i.i = alloca [2 x i8], align 1
  %rxbuf.i.i = alloca i8, align 1
  %txbuf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %txbuf) #5
  %2 = getelementptr inbounds [6 x i8], ptr %txbuf, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %txbuf, i32 0, i32 2
  %4 = call ptr @memset(ptr %txbuf, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  %5 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %rxbuf.i.i, align 1, !annotation !29
  %6 = getelementptr inbounds [2 x i8], ptr %txbuf.i.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end3.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end3.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i.i.i) #5
  %7 = ptrtoint ptr %txbuf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 96, ptr %txbuf.i.i.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -2, ptr %6, align 1
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %txbuf.i.i.i, i32 noundef 2, ptr noundef nonnull %rxbuf.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge

for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

if.end.i.i:                                       ; preds = %for.body.i.i
  %9 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rxbuf.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool1.not.i.i = icmp sgt i8 %10, -1
  br i1 %tobool1.not.i.i, label %for.end.i.i, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #5
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge, label %if.end3.i.i.for.body.i.i_crit_edge

if.end3.i.i.for.body.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

for.end.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.014.i.i)
  %cmp4.i.i = icmp eq i32 %i.014.i.i, 10
  br i1 %cmp4.i.i, label %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge, label %if.end.i

for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

b53_prepare_reg_access.exit.thread:               ; preds = %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge, %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge, %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge ], [ %call.i.i.i, %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge ], [ -5, %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %for.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %txbuf.i.i) #5
  %12 = getelementptr inbounds [3 x i8], ptr %txbuf.i.i, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %txbuf.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %txbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 97, ptr %txbuf.i.i, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %page, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %17 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 92)
  %19 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %txbuf.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %21 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.i.b53_prepare_reg_access.exit_crit_edge

if.end.i.b53_prepare_reg_access.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %b53_prepare_reg_access.exit

b53_prepare_reg_access.exit:                      ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.i.b53_prepare_reg_access.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %txbuf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %b53_prepare_reg_access.exit.cleanup_crit_edge

b53_prepare_reg_access.exit.cleanup_crit_edge:    ; preds = %b53_prepare_reg_access.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %b53_prepare_reg_access.exit
  %31 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 97, ptr %txbuf, align 1
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %reg, ptr %2, align 1
  %33 = call i32 @llvm.bswap.i32(i32 %value) #5
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %35 = getelementptr inbounds i8, ptr %t.i, i32 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 92)
  %37 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %txbuf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %38 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 6, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %39 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %40 = call ptr @memset(ptr %39, i32 0, i32 40)
  %41 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %43 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %44 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_write.exit_crit_edge

if.end.spi_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %48 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %b53_prepare_reg_access.exit.cleanup_crit_edge, %b53_prepare_reg_access.exit.thread
  %retval.0 = phi i32 [ %call.i.i, %spi_write.exit ], [ %call.i.i.i.i, %b53_prepare_reg_access.exit.cleanup_crit_edge ], [ %retval.0.i.ph.i, %b53_prepare_reg_access.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %txbuf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_spi_write48(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i64 noundef %value) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %txbuf.i.i = alloca [3 x i8], align 1
  %txbuf.i.i.i = alloca [2 x i8], align 1
  %rxbuf.i.i = alloca i8, align 1
  %txbuf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %txbuf) #5
  %2 = getelementptr inbounds [10 x i8], ptr %txbuf, i32 0, i32 1
  %3 = getelementptr inbounds [10 x i8], ptr %txbuf, i32 0, i32 2
  %4 = call ptr @memset(ptr %txbuf, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  %5 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %rxbuf.i.i, align 1, !annotation !29
  %6 = getelementptr inbounds [2 x i8], ptr %txbuf.i.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end3.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end3.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i.i.i) #5
  %7 = ptrtoint ptr %txbuf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 96, ptr %txbuf.i.i.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -2, ptr %6, align 1
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %txbuf.i.i.i, i32 noundef 2, ptr noundef nonnull %rxbuf.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge

for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

if.end.i.i:                                       ; preds = %for.body.i.i
  %9 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rxbuf.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool1.not.i.i = icmp sgt i8 %10, -1
  br i1 %tobool1.not.i.i, label %for.end.i.i, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #5
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge, label %if.end3.i.i.for.body.i.i_crit_edge

if.end3.i.i.for.body.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

for.end.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.014.i.i)
  %cmp4.i.i = icmp eq i32 %i.014.i.i, 10
  br i1 %cmp4.i.i, label %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge, label %if.end.i

for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

b53_prepare_reg_access.exit.thread:               ; preds = %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge, %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge, %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge ], [ %call.i.i.i, %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge ], [ -5, %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %for.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %txbuf.i.i) #5
  %12 = getelementptr inbounds [3 x i8], ptr %txbuf.i.i, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %txbuf.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %txbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 97, ptr %txbuf.i.i, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %page, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %17 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 92)
  %19 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %txbuf.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %21 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.i.b53_prepare_reg_access.exit_crit_edge

if.end.i.b53_prepare_reg_access.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %b53_prepare_reg_access.exit

b53_prepare_reg_access.exit:                      ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.i.b53_prepare_reg_access.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %txbuf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %b53_prepare_reg_access.exit.cleanup_crit_edge

b53_prepare_reg_access.exit.cleanup_crit_edge:    ; preds = %b53_prepare_reg_access.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %b53_prepare_reg_access.exit
  %31 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 97, ptr %txbuf, align 1
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %reg, ptr %2, align 1
  %33 = call i64 @llvm.bswap.i64(i64 %value) #5
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %35 = getelementptr inbounds i8, ptr %t.i, i32 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 92)
  %37 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %txbuf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %38 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %39 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %40 = call ptr @memset(ptr %39, i32 0, i32 40)
  %41 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %43 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %44 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_write.exit_crit_edge

if.end.spi_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %48 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %b53_prepare_reg_access.exit.cleanup_crit_edge, %b53_prepare_reg_access.exit.thread
  %retval.0 = phi i32 [ %call.i.i, %spi_write.exit ], [ %call.i.i.i.i, %b53_prepare_reg_access.exit.cleanup_crit_edge ], [ %retval.0.i.ph.i, %b53_prepare_reg_access.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %txbuf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_spi_write64(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i64 noundef %value) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %txbuf.i.i = alloca [3 x i8], align 1
  %txbuf.i.i.i = alloca [2 x i8], align 1
  %rxbuf.i.i = alloca i8, align 1
  %txbuf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %txbuf) #5
  %2 = getelementptr inbounds [10 x i8], ptr %txbuf, i32 0, i32 1
  %3 = getelementptr inbounds [10 x i8], ptr %txbuf, i32 0, i32 2
  %4 = call ptr @memset(ptr %txbuf, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  %5 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %rxbuf.i.i, align 1, !annotation !29
  %6 = getelementptr inbounds [2 x i8], ptr %txbuf.i.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end3.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end3.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i.i.i) #5
  %7 = ptrtoint ptr %txbuf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 96, ptr %txbuf.i.i.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -2, ptr %6, align 1
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %txbuf.i.i.i, i32 noundef 2, ptr noundef nonnull %rxbuf.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge

for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

if.end.i.i:                                       ; preds = %for.body.i.i
  %9 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rxbuf.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool1.not.i.i = icmp sgt i8 %10, -1
  br i1 %tobool1.not.i.i, label %for.end.i.i, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #5
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge, label %if.end3.i.i.for.body.i.i_crit_edge

if.end3.i.i.for.body.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

for.end.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.014.i.i)
  %cmp4.i.i = icmp eq i32 %i.014.i.i, 10
  br i1 %cmp4.i.i, label %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge, label %if.end.i

for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

b53_prepare_reg_access.exit.thread:               ; preds = %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge, %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge, %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge ], [ %call.i.i.i, %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge ], [ -5, %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %for.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %txbuf.i.i) #5
  %12 = getelementptr inbounds [3 x i8], ptr %txbuf.i.i, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %txbuf.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %txbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 97, ptr %txbuf.i.i, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %page, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %17 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 92)
  %19 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %txbuf.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %21 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.i.b53_prepare_reg_access.exit_crit_edge

if.end.i.b53_prepare_reg_access.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %b53_prepare_reg_access.exit

b53_prepare_reg_access.exit:                      ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.i.b53_prepare_reg_access.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %txbuf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %b53_prepare_reg_access.exit.cleanup_crit_edge

b53_prepare_reg_access.exit.cleanup_crit_edge:    ; preds = %b53_prepare_reg_access.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %b53_prepare_reg_access.exit
  %31 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 97, ptr %txbuf, align 1
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %reg, ptr %2, align 1
  %33 = call i64 @llvm.bswap.i64(i64 %value) #5
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %35 = getelementptr inbounds i8, ptr %t.i, i32 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 92)
  %37 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %txbuf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %38 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 10, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %39 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %40 = call ptr @memset(ptr %39, i32 0, i32 40)
  %41 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %43 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %44 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_write.exit_crit_edge

if.end.spi_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %48 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %b53_prepare_reg_access.exit.cleanup_crit_edge, %b53_prepare_reg_access.exit.thread
  %retval.0 = phi i32 [ %call.i.i, %spi_write.exit ], [ %call.i.i.i.i, %b53_prepare_reg_access.exit.cleanup_crit_edge ], [ %retval.0.i.ph.i, %b53_prepare_reg_access.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %txbuf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @b53_spi_read(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr noundef %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %txbuf.i = alloca [2 x i8], align 1
  %txbuf.i20.i = alloca [2 x i8], align 1
  %txbuf.i.i12 = alloca [2 x i8], align 1
  %rxbuf.i = alloca i8, align 1
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %txbuf.i.i = alloca [3 x i8], align 1
  %txbuf.i.i.i = alloca [2 x i8], align 1
  %rxbuf.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  %2 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rxbuf.i.i, align 1, !annotation !29
  %3 = getelementptr inbounds [2 x i8], ptr %txbuf.i.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end3.i.i.for.body.i.i_crit_edge, %entry
  %i.014.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end3.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i.i.i) #5
  %4 = ptrtoint ptr %txbuf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 96, ptr %txbuf.i.i.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -2, ptr %3, align 1
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %txbuf.i.i.i, i32 noundef 2, ptr noundef nonnull %rxbuf.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge

for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

if.end.i.i:                                       ; preds = %for.body.i.i
  %6 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rxbuf.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool1.not.i.i = icmp sgt i8 %7, -1
  br i1 %tobool1.not.i.i, label %for.end.i.i, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #5
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge, label %if.end3.i.i.for.body.i.i_crit_edge

if.end3.i.i.for.body.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

for.end.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.014.i.i)
  %cmp4.i.i = icmp eq i32 %i.014.i.i, 10
  br i1 %cmp4.i.i, label %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge, label %if.end.i

for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit.thread

b53_prepare_reg_access.exit.thread:               ; preds = %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge, %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge, %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %for.end.i.i.b53_prepare_reg_access.exit.thread_crit_edge ], [ %call.i.i.i, %for.body.i.i.b53_prepare_reg_access.exit.thread_crit_edge ], [ -5, %if.end3.i.i.b53_prepare_reg_access.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %for.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %txbuf.i.i) #5
  %9 = getelementptr inbounds [3 x i8], ptr %txbuf.i.i, i32 0, i32 1
  %10 = getelementptr inbounds [3 x i8], ptr %txbuf.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %txbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 97, ptr %txbuf.i.i, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %9, align 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %page, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %14 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 92)
  %16 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %txbuf.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %18 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.i.b53_prepare_reg_access.exit_crit_edge

if.end.i.b53_prepare_reg_access.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_prepare_reg_access.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %b53_prepare_reg_access.exit

b53_prepare_reg_access.exit:                      ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.i.b53_prepare_reg_access.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %txbuf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %b53_prepare_reg_access.exit.cleanup_crit_edge

b53_prepare_reg_access.exit.cleanup_crit_edge:    ; preds = %b53_prepare_reg_access.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %b53_prepare_reg_access.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxbuf.i) #5
  %28 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %rxbuf.i, align 1, !annotation !29
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i.i12) #5
  %29 = getelementptr inbounds [2 x i8], ptr %txbuf.i.i12, i32 0, i32 1
  %30 = ptrtoint ptr %txbuf.i.i12 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 96, ptr %txbuf.i.i12, align 1
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %reg, ptr %29, align 1
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %txbuf.i.i12, i32 noundef 2, ptr noundef nonnull %rxbuf.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i.i12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end.b53_spi_prepare_reg_read.exit.thread_crit_edge

if.end.b53_spi_prepare_reg_read.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_spi_prepare_reg_read.exit.thread

for.cond.preheader.i:                             ; preds = %if.end
  %32 = getelementptr inbounds [2 x i8], ptr %txbuf.i20.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %for.cond.preheader.i
  %retry_count.023.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end7.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i20.i) #5
  %33 = ptrtoint ptr %txbuf.i20.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 96, ptr %txbuf.i20.i, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -2, ptr %32, align 1
  %call.i21.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %txbuf.i20.i, i32 noundef 2, ptr noundef nonnull %rxbuf.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i20.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %tobool2.not.i = icmp eq i32 %call.i21.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %for.body.i.b53_spi_prepare_reg_read.exit.thread_crit_edge

for.body.i.b53_spi_prepare_reg_read.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_spi_prepare_reg_read.exit.thread

if.end4.i:                                        ; preds = %for.body.i
  %35 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rxbuf.i, align 1
  %37 = and i8 %36, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool5.not.i = icmp eq i8 %37, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %for.end.i

if.end7.i:                                        ; preds = %if.end4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #5
  %inc.i = add nuw nsw i32 %retry_count.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end7.i.b53_spi_prepare_reg_read.exit.thread_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end7.i.b53_spi_prepare_reg_read.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_spi_prepare_reg_read.exit.thread

for.end.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retry_count.023.i)
  %cmp8.i = icmp eq i32 %retry_count.023.i, 10
  br i1 %cmp8.i, label %for.end.i.b53_spi_prepare_reg_read.exit.thread_crit_edge, label %if.end4

for.end.i.b53_spi_prepare_reg_read.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b53_spi_prepare_reg_read.exit.thread

b53_spi_prepare_reg_read.exit.thread:             ; preds = %for.end.i.b53_spi_prepare_reg_read.exit.thread_crit_edge, %if.end7.i.b53_spi_prepare_reg_read.exit.thread_crit_edge, %for.body.i.b53_spi_prepare_reg_read.exit.thread_crit_edge, %if.end.b53_spi_prepare_reg_read.exit.thread_crit_edge
  %retval.0.i13.ph = phi i32 [ %call.i.i, %if.end.b53_spi_prepare_reg_read.exit.thread_crit_edge ], [ -5, %for.end.i.b53_spi_prepare_reg_read.exit.thread_crit_edge ], [ -5, %if.end7.i.b53_spi_prepare_reg_read.exit.thread_crit_edge ], [ %call.i21.i, %for.body.i.b53_spi_prepare_reg_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i) #5
  br label %cleanup

if.end4:                                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i) #5
  %39 = getelementptr inbounds [2 x i8], ptr %txbuf.i, i32 0, i32 1
  %40 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 96, ptr %txbuf.i, align 1
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -16, ptr %39, align 1
  %call.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %txbuf.i, i32 noundef 2, ptr noundef %data, i32 noundef %len) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %b53_spi_prepare_reg_read.exit.thread, %b53_prepare_reg_access.exit.cleanup_crit_edge, %b53_prepare_reg_access.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end4 ], [ %call.i.i.i.i, %b53_prepare_reg_access.exit.cleanup_crit_edge ], [ %retval.0.i.ph.i, %b53_prepare_reg_access.exit.thread ], [ %retval.0.i13.ph, %b53_spi_prepare_reg_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_b53_spi__499_376_b53_spi_driver_init6, !1, !"__initcall__kmod_b53_spi__499_376_b53_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/b53/b53_spi.c", i32 376, i32 1}
!2 = !{ptr @__exitcall_b53_spi_driver_exit, !1, !"__exitcall_b53_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author500, !4, !"__UNIQUE_ID_author500", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/b53/b53_spi.c", i32 378, i32 1}
!5 = !{ptr @__UNIQUE_ID_description501, !6, !"__UNIQUE_ID_description501", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/b53/b53_spi.c", i32 379, i32 1}
!7 = !{ptr @__UNIQUE_ID_file502, !8, !"__UNIQUE_ID_file502", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/b53/b53_spi.c", i32 380, i32 1}
!9 = !{ptr @__UNIQUE_ID_license503, !8, !"__UNIQUE_ID_license503", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/b53/b53_spi.c", i32 367, i32 11}
!12 = !{ptr @b53_spi_driver, !13, !"b53_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/b53/b53_spi.c", i32 365, i32 26}
!14 = !{ptr @b53_spi_ids, !15, !"b53_spi_ids", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/b53/b53_spi.c", i32 352, i32 35}
!16 = !{ptr @b53_spi_ops, !17, !"b53_spi_ops", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/b53/b53_spi.c", i32 283, i32 32}
!18 = !{ptr @b53_spi_of_match, !19, !"b53_spi_of_match", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/b53/b53_spi.c", i32 339, i32 34}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
