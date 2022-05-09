; ModuleID = '/llk/IR_all_yes/drivers/net/wan/slic_ds26522.c_pt.bc'
source_filename = "../drivers/net/wan/slic_ds26522.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__UNIQUE_ID_file230 = internal constant [47 x i8] c"slic_ds26522.file=drivers/net/wan/slic_ds26522\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [25 x i8] c"slic_ds26522.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [53 x i8] c"slic_ds26522.author=Zhao Qiang<B45475@freescale.com>\00", section ".modinfo", align 1
@__initcall__kmod_slic_ds26522__233_245_slic_ds26522_driver_init6 = internal global ptr @slic_ds26522_driver_init, section ".initcall6.init", align 4
@slic_ds26522_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @slic_ds26522_id, ptr @slic_ds26522_probe, ptr @slic_ds26522_remove, ptr null, %struct.device_driver { ptr @.str, ptr @spi_bus_type, ptr null, ptr null, i8 0, i32 0, ptr @slic_ds26522_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_slic_ds26522_driver_exit = internal global ptr @slic_ds26522_driver_exit, section ".exitcall.exit", align 4
@slic_ds26522_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ds26522\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ds26522\00", [24 x i8] zeroinitializer }, align 32
@spi_bus_type = external dso_local global %struct.bus_type, align 4
@slic_ds26522_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,ds26522\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@g_spi = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@slic_ds26522_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016DS26522 cs%d configured\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slic_ds26522_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/wan/slic_ds26522.c\00", [33 x i8] zeroinitializer }, align 32
@slic_ds26522_probe._entry_ptr = internal global ptr @slic_ds26522_probe._entry, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@slic_ds26522_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016DS26522 module uninstalled\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slic_ds26522_remove\00", [44 x i8] zeroinitializer }, align 32
@slic_ds26522_remove._entry_ptr = internal global ptr @slic_ds26522_remove._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"slic_ds26522_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 234, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"slic_ds26522_id\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 220, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 236, i32 14 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"slic_ds26522_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 226, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"g_spi\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 29, i32 27 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 215, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [34 x i8] c"../drivers/net/wan/slic_ds26522.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 199, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_slic_ds26522_driver_exit, ptr @__initcall__kmod_slic_ds26522__233_245_slic_ds26522_driver_init6, ptr @slic_ds26522_driver_exit, ptr @slic_ds26522_probe._entry, ptr @slic_ds26522_probe._entry_ptr, ptr @slic_ds26522_remove._entry, ptr @slic_ds26522_remove._entry_ptr, ptr @slic_ds26522_driver, ptr @slic_ds26522_id, ptr @.str, ptr @slic_ds26522_match, ptr @g_spi, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_ds26522_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_ds26522_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_ds26522_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_spi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_ds26522_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_ds26522_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @slic_ds26522_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @slic_ds26522_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @slic_ds26522_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @slic_ds26522_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slic_ds26522_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i238.i = alloca %struct.spi_message, align 4
  %t.i.i239.i = alloca %struct.spi_transfer, align 4
  %temp.i240.i = alloca [3 x i8], align 1
  %msg.i.i.i297.i.i = alloca %struct.spi_message, align 4
  %t.i.i298.i.i = alloca %struct.spi_transfer, align 4
  %temp.i299.i.i = alloca [3 x i8], align 1
  %msg.i.i.i281.i.i = alloca %struct.spi_message, align 4
  %t.i.i282.i.i = alloca %struct.spi_transfer, align 4
  %temp.i283.i.i = alloca [3 x i8], align 1
  %msg.i.i.i265.i.i = alloca %struct.spi_message, align 4
  %t.i.i266.i.i = alloca %struct.spi_transfer, align 4
  %temp.i267.i.i = alloca [3 x i8], align 1
  %msg.i.i.i249.i.i = alloca %struct.spi_message, align 4
  %t.i.i250.i.i = alloca %struct.spi_transfer, align 4
  %temp.i251.i.i = alloca [3 x i8], align 1
  %msg.i.i.i229.i.i = alloca %struct.spi_message, align 4
  %t.i.i230.i.i = alloca %struct.spi_transfer, align 4
  %temp.i231.i.i = alloca [3 x i8], align 1
  %temp.i219.i.i = alloca [2 x i8], align 1
  %data.i220.i.i = alloca i8, align 1
  %msg.i.i.i199.i.i = alloca %struct.spi_message, align 4
  %t.i.i200.i.i = alloca %struct.spi_transfer, align 4
  %temp.i201.i.i = alloca [3 x i8], align 1
  %temp.i189.i.i = alloca [2 x i8], align 1
  %data.i190.i.i = alloca i8, align 1
  %msg.i.i.i173.i.i = alloca %struct.spi_message, align 4
  %t.i.i174.i.i = alloca %struct.spi_transfer, align 4
  %temp.i175.i.i = alloca [3 x i8], align 1
  %msg.i.i.i157.i.i = alloca %struct.spi_message, align 4
  %t.i.i158.i.i = alloca %struct.spi_transfer, align 4
  %temp.i159.i.i = alloca [3 x i8], align 1
  %msg.i.i.i141.i.i = alloca %struct.spi_message, align 4
  %t.i.i142.i.i = alloca %struct.spi_transfer, align 4
  %temp.i143.i.i = alloca [3 x i8], align 1
  %msg.i.i.i125.i.i = alloca %struct.spi_message, align 4
  %t.i.i126.i.i = alloca %struct.spi_transfer, align 4
  %temp.i127.i.i = alloca [3 x i8], align 1
  %msg.i.i.i109.i.i = alloca %struct.spi_message, align 4
  %t.i.i110.i.i = alloca %struct.spi_transfer, align 4
  %temp.i111.i.i = alloca [3 x i8], align 1
  %msg.i.i.i93.i.i = alloca %struct.spi_message, align 4
  %t.i.i94.i.i = alloca %struct.spi_transfer, align 4
  %temp.i95.i.i = alloca [3 x i8], align 1
  %msg.i.i.i73.i.i = alloca %struct.spi_message, align 4
  %t.i.i74.i.i = alloca %struct.spi_transfer, align 4
  %temp.i75.i.i = alloca [3 x i8], align 1
  %temp.i63.i.i = alloca [2 x i8], align 1
  %data.i64.i.i = alloca i8, align 1
  %msg.i.i.i47.i.i = alloca %struct.spi_message, align 4
  %t.i.i48.i.i = alloca %struct.spi_transfer, align 4
  %temp.i49.i.i = alloca [3 x i8], align 1
  %temp.i46.i.i = alloca [2 x i8], align 1
  %data.i.i.i = alloca i8, align 1
  %msg.i.i.i33.i.i = alloca %struct.spi_message, align 4
  %t.i.i34.i.i = alloca %struct.spi_transfer, align 4
  %temp.i35.i.i = alloca [3 x i8], align 1
  %msg.i.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i = alloca %struct.spi_transfer, align 4
  %temp.i.i.i = alloca [3 x i8], align 1
  %msg.i.i.i201.i = alloca %struct.spi_message, align 4
  %t.i.i202.i = alloca %struct.spi_transfer, align 4
  %temp.i203.i = alloca [3 x i8], align 1
  %msg.i.i.i166.i = alloca %struct.spi_message, align 4
  %t.i.i167.i = alloca %struct.spi_transfer, align 4
  %temp.i168.i = alloca [3 x i8], align 1
  %msg.i.i.i131.i = alloca %struct.spi_message, align 4
  %t.i.i132.i = alloca %struct.spi_transfer, align 4
  %temp.i133.i = alloca [3 x i8], align 1
  %msg.i.i.i118.i = alloca %struct.spi_message, align 4
  %t.i.i119.i = alloca %struct.spi_transfer, align 4
  %temp.i120.i = alloca [3 x i8], align 1
  %msg.i.i.i105.i = alloca %struct.spi_message, align 4
  %t.i.i106.i = alloca %struct.spi_transfer, align 4
  %temp.i107.i = alloca [3 x i8], align 1
  %msg.i.i.i92.i = alloca %struct.spi_message, align 4
  %t.i.i93.i = alloca %struct.spi_transfer, align 4
  %temp.i94.i = alloca [3 x i8], align 1
  %msg.i.i.i79.i = alloca %struct.spi_message, align 4
  %t.i.i80.i = alloca %struct.spi_transfer, align 4
  %temp.i81.i = alloca [3 x i8], align 1
  %msg.i.i.i66.i = alloca %struct.spi_message, align 4
  %t.i.i67.i = alloca %struct.spi_transfer, align 4
  %temp.i68.i = alloca [3 x i8], align 1
  %msg.i.i.i53.i = alloca %struct.spi_message, align 4
  %t.i.i54.i = alloca %struct.spi_transfer, align 4
  %temp.i55.i = alloca [3 x i8], align 1
  %msg.i.i.i40.i = alloca %struct.spi_message, align 4
  %t.i.i41.i = alloca %struct.spi_transfer, align 4
  %temp.i42.i = alloca [3 x i8], align 1
  %msg.i.i.i27.i = alloca %struct.spi_message, align 4
  %t.i.i28.i = alloca %struct.spi_transfer, align 4
  %temp.i29.i = alloca [3 x i8], align 1
  %msg.i.i.i14.i = alloca %struct.spi_message, align 4
  %t.i.i15.i = alloca %struct.spi_transfer, align 4
  %temp.i16.i = alloca [3 x i8], align 1
  %msg.i.i.i1.i = alloca %struct.spi_message, align 4
  %t.i.i2.i = alloca %struct.spi_transfer, align 4
  %temp.i3.i = alloca [3 x i8], align 1
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %temp.i.i11 = alloca [3 x i8], align 1
  %temp.i.i = alloca [2 x i8], align 1
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %spi, ptr @g_spi, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %bits_per_word, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp.i.i) #5
  %1 = getelementptr inbounds [2 x i8], ptr %temp.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #5
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data.i.i, align 1, !annotation !38
  %3 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -113, ptr %temp.i.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %1, align 1
  %call41.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %temp.i.i, i32 noundef 2, ptr noundef nonnull %data.i.i, i32 noundef 1) #5
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data.i.i, align 1
  %idxprom.i.i.i = zext i8 %6 to i32
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp.i.i) #5
  %9 = and i8 %8, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 104, i8 %9)
  %cmp.i = icmp eq i8 %9, 104
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i.i11) #5
  %10 = getelementptr inbounds [3 x i8], ptr %temp.i.i11, i32 0, i32 1
  %11 = getelementptr inbounds [3 x i8], ptr %temp.i.i11, i32 0, i32 2
  %12 = ptrtoint ptr %temp.i.i11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 103, ptr %temp.i.i11, align 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -128, ptr %10, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %15 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 92)
  %17 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %temp.i.i11, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %19 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.slic_write.exit.i_crit_edge

if.end.slic_write.exit.i_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %slic_write.exit.i

slic_write.exit.i:                                ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.slic_write.exit.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i.i11) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i3.i) #5
  %29 = getelementptr inbounds [3 x i8], ptr %temp.i3.i, i32 0, i32 1
  %30 = getelementptr inbounds [3 x i8], ptr %temp.i3.i, i32 0, i32 2
  %31 = ptrtoint ptr %temp.i3.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 39, ptr %temp.i3.i, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -128, ptr %29, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 64, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i2.i) #5
  %34 = getelementptr inbounds i8, ptr %t.i.i2.i, i32 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 92)
  %36 = ptrtoint ptr %t.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %temp.i3.i, ptr %t.i.i2.i, align 4
  %len1.i.i4.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i2.i, i32 0, i32 2
  %37 = ptrtoint ptr %len1.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %len1.i.i4.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i1.i) #5
  %38 = getelementptr inbounds i8, ptr %msg.i.i.i1.i, i32 8
  %39 = call ptr @memset(ptr %38, i32 0, i32 40)
  %40 = ptrtoint ptr %msg.i.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %msg.i.i.i1.i, ptr %msg.i.i.i1.i, align 4
  %prev.i.i.i.i.i.i.i5.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i1.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i.i.i.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i.i1.i, ptr %prev.i.i.i.i.i.i.i5.i, align 4
  %resources.i.i.i.i.i.i6.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i1.i, i32 0, i32 10
  %42 = ptrtoint ptr %resources.i.i.i.i.i.i6.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %resources.i.i.i.i.i.i6.i, ptr %resources.i.i.i.i.i.i6.i, align 4
  %prev.i2.i.i.i.i.i.i7.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i1.i, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %prev.i2.i.i.i.i.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %resources.i.i.i.i.i.i6.i, ptr %prev.i2.i.i.i.i.i.i7.i, align 4
  %transfer_list.i.i.i.i.i8.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i2.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i9.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i8.i, ptr noundef nonnull %msg.i.i.i1.i, ptr noundef nonnull %msg.i.i.i1.i) #5
  br i1 %call.i.i.i.i.i.i.i9.i, label %if.end.i.i.i.i.i.i.i11.i, label %slic_write.exit.i.slic_write.exit13.i_crit_edge

slic_write.exit.i.slic_write.exit13.i_crit_edge:  ; preds = %slic_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit13.i

if.end.i.i.i.i.i.i.i11.i:                         ; preds = %slic_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %prev.i.i.i.i.i.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i.i.i.i.i8.i, ptr %prev.i.i.i.i.i.i.i5.i, align 4
  %45 = ptrtoint ptr %transfer_list.i.i.i.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i.i1.i, ptr %transfer_list.i.i.i.i.i8.i, align 4
  %prev3.i.i.i.i.i.i.i10.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i2.i, i32 0, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i.i.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i1.i, ptr %prev3.i.i.i.i.i.i.i10.i, align 4
  %47 = ptrtoint ptr %msg.i.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i.i.i.i.i8.i, ptr %msg.i.i.i1.i, align 4
  br label %slic_write.exit13.i

slic_write.exit13.i:                              ; preds = %if.end.i.i.i.i.i.i.i11.i, %slic_write.exit.i.slic_write.exit13.i_crit_edge
  %call.i.i.i12.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i1.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i1.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i2.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i3.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i16.i) #5
  %48 = getelementptr inbounds [3 x i8], ptr %temp.i16.i, i32 0, i32 1
  %49 = getelementptr inbounds [3 x i8], ptr %temp.i16.i, i32 0, i32 2
  %50 = ptrtoint ptr %temp.i16.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 71, ptr %temp.i16.i, align 1
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -128, ptr %48, align 1
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %49, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i15.i) #5
  %53 = getelementptr inbounds i8, ptr %t.i.i15.i, i32 4
  %54 = call ptr @memset(ptr %53, i32 0, i32 92)
  %55 = ptrtoint ptr %t.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %temp.i16.i, ptr %t.i.i15.i, align 4
  %len1.i.i17.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i15.i, i32 0, i32 2
  %56 = ptrtoint ptr %len1.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %len1.i.i17.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i14.i) #5
  %57 = getelementptr inbounds i8, ptr %msg.i.i.i14.i, i32 8
  %58 = call ptr @memset(ptr %57, i32 0, i32 40)
  %59 = ptrtoint ptr %msg.i.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %msg.i.i.i14.i, ptr %msg.i.i.i14.i, align 4
  %prev.i.i.i.i.i.i.i18.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i14.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i.i.i.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i.i14.i, ptr %prev.i.i.i.i.i.i.i18.i, align 4
  %resources.i.i.i.i.i.i19.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i14.i, i32 0, i32 10
  %61 = ptrtoint ptr %resources.i.i.i.i.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %resources.i.i.i.i.i.i19.i, ptr %resources.i.i.i.i.i.i19.i, align 4
  %prev.i2.i.i.i.i.i.i20.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i14.i, i32 0, i32 10, i32 1
  %62 = ptrtoint ptr %prev.i2.i.i.i.i.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %resources.i.i.i.i.i.i19.i, ptr %prev.i2.i.i.i.i.i.i20.i, align 4
  %transfer_list.i.i.i.i.i21.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i15.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i22.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i21.i, ptr noundef nonnull %msg.i.i.i14.i, ptr noundef nonnull %msg.i.i.i14.i) #5
  br i1 %call.i.i.i.i.i.i.i22.i, label %if.end.i.i.i.i.i.i.i24.i, label %slic_write.exit13.i.slic_write.exit26.i_crit_edge

slic_write.exit13.i.slic_write.exit26.i_crit_edge: ; preds = %slic_write.exit13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit26.i

if.end.i.i.i.i.i.i.i24.i:                         ; preds = %slic_write.exit13.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %prev.i.i.i.i.i.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %transfer_list.i.i.i.i.i21.i, ptr %prev.i.i.i.i.i.i.i18.i, align 4
  %64 = ptrtoint ptr %transfer_list.i.i.i.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %msg.i.i.i14.i, ptr %transfer_list.i.i.i.i.i21.i, align 4
  %prev3.i.i.i.i.i.i.i23.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i15.i, i32 0, i32 18, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i.i.i.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %msg.i.i.i14.i, ptr %prev3.i.i.i.i.i.i.i23.i, align 4
  %66 = ptrtoint ptr %msg.i.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %transfer_list.i.i.i.i.i21.i, ptr %msg.i.i.i14.i, align 4
  br label %slic_write.exit26.i

slic_write.exit26.i:                              ; preds = %if.end.i.i.i.i.i.i.i24.i, %slic_write.exit13.i.slic_write.exit26.i_crit_edge
  %call.i.i.i25.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i14.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i14.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i15.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i16.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i29.i) #5
  %67 = getelementptr inbounds [3 x i8], ptr %temp.i29.i, i32 0, i32 1
  %68 = getelementptr inbounds [3 x i8], ptr %temp.i29.i, i32 0, i32 2
  %69 = ptrtoint ptr %temp.i29.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 7, ptr %temp.i29.i, align 1
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -128, ptr %67, align 1
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i28.i) #5
  %72 = getelementptr inbounds i8, ptr %t.i.i28.i, i32 4
  %73 = call ptr @memset(ptr %72, i32 0, i32 92)
  %74 = ptrtoint ptr %t.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %temp.i29.i, ptr %t.i.i28.i, align 4
  %len1.i.i30.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i28.i, i32 0, i32 2
  %75 = ptrtoint ptr %len1.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 3, ptr %len1.i.i30.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i27.i) #5
  %76 = getelementptr inbounds i8, ptr %msg.i.i.i27.i, i32 8
  %77 = call ptr @memset(ptr %76, i32 0, i32 40)
  %78 = ptrtoint ptr %msg.i.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %msg.i.i.i27.i, ptr %msg.i.i.i27.i, align 4
  %prev.i.i.i.i.i.i.i31.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i27.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i.i.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %msg.i.i.i27.i, ptr %prev.i.i.i.i.i.i.i31.i, align 4
  %resources.i.i.i.i.i.i32.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i27.i, i32 0, i32 10
  %80 = ptrtoint ptr %resources.i.i.i.i.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %resources.i.i.i.i.i.i32.i, ptr %resources.i.i.i.i.i.i32.i, align 4
  %prev.i2.i.i.i.i.i.i33.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i27.i, i32 0, i32 10, i32 1
  %81 = ptrtoint ptr %prev.i2.i.i.i.i.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %resources.i.i.i.i.i.i32.i, ptr %prev.i2.i.i.i.i.i.i33.i, align 4
  %transfer_list.i.i.i.i.i34.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i28.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i35.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i34.i, ptr noundef nonnull %msg.i.i.i27.i, ptr noundef nonnull %msg.i.i.i27.i) #5
  br i1 %call.i.i.i.i.i.i.i35.i, label %if.end.i.i.i.i.i.i.i37.i, label %slic_write.exit26.i.slic_write.exit39.i_crit_edge

slic_write.exit26.i.slic_write.exit39.i_crit_edge: ; preds = %slic_write.exit26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit39.i

if.end.i.i.i.i.i.i.i37.i:                         ; preds = %slic_write.exit26.i
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %prev.i.i.i.i.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %transfer_list.i.i.i.i.i34.i, ptr %prev.i.i.i.i.i.i.i31.i, align 4
  %83 = ptrtoint ptr %transfer_list.i.i.i.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %msg.i.i.i27.i, ptr %transfer_list.i.i.i.i.i34.i, align 4
  %prev3.i.i.i.i.i.i.i36.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i28.i, i32 0, i32 18, i32 1
  %84 = ptrtoint ptr %prev3.i.i.i.i.i.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %msg.i.i.i27.i, ptr %prev3.i.i.i.i.i.i.i36.i, align 4
  %85 = ptrtoint ptr %msg.i.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %transfer_list.i.i.i.i.i34.i, ptr %msg.i.i.i27.i, align 4
  br label %slic_write.exit39.i

slic_write.exit39.i:                              ; preds = %if.end.i.i.i.i.i.i.i37.i, %slic_write.exit26.i.slic_write.exit39.i_crit_edge
  %call.i.i.i38.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i27.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i27.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i28.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i29.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i42.i) #5
  %86 = getelementptr inbounds [3 x i8], ptr %temp.i42.i, i32 0, i32 1
  %87 = getelementptr inbounds [3 x i8], ptr %temp.i42.i, i32 0, i32 2
  %88 = ptrtoint ptr %temp.i42.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 87, ptr %temp.i42.i, align 1
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -128, ptr %86, align 1
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -128, ptr %87, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i41.i) #5
  %91 = getelementptr inbounds i8, ptr %t.i.i41.i, i32 4
  %92 = call ptr @memset(ptr %91, i32 0, i32 92)
  %93 = ptrtoint ptr %t.i.i41.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %temp.i42.i, ptr %t.i.i41.i, align 4
  %len1.i.i43.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i41.i, i32 0, i32 2
  %94 = ptrtoint ptr %len1.i.i43.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 3, ptr %len1.i.i43.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i40.i) #5
  %95 = getelementptr inbounds i8, ptr %msg.i.i.i40.i, i32 8
  %96 = call ptr @memset(ptr %95, i32 0, i32 40)
  %97 = ptrtoint ptr %msg.i.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %msg.i.i.i40.i, ptr %msg.i.i.i40.i, align 4
  %prev.i.i.i.i.i.i.i44.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i40.i, i32 0, i32 1
  %98 = ptrtoint ptr %prev.i.i.i.i.i.i.i44.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %msg.i.i.i40.i, ptr %prev.i.i.i.i.i.i.i44.i, align 4
  %resources.i.i.i.i.i.i45.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i40.i, i32 0, i32 10
  %99 = ptrtoint ptr %resources.i.i.i.i.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %resources.i.i.i.i.i.i45.i, ptr %resources.i.i.i.i.i.i45.i, align 4
  %prev.i2.i.i.i.i.i.i46.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i40.i, i32 0, i32 10, i32 1
  %100 = ptrtoint ptr %prev.i2.i.i.i.i.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %resources.i.i.i.i.i.i45.i, ptr %prev.i2.i.i.i.i.i.i46.i, align 4
  %transfer_list.i.i.i.i.i47.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i41.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i48.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i47.i, ptr noundef nonnull %msg.i.i.i40.i, ptr noundef nonnull %msg.i.i.i40.i) #5
  br i1 %call.i.i.i.i.i.i.i48.i, label %if.end.i.i.i.i.i.i.i50.i, label %slic_write.exit39.i.slic_write.exit52.i_crit_edge

slic_write.exit39.i.slic_write.exit52.i_crit_edge: ; preds = %slic_write.exit39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit52.i

if.end.i.i.i.i.i.i.i50.i:                         ; preds = %slic_write.exit39.i
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %prev.i.i.i.i.i.i.i44.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %transfer_list.i.i.i.i.i47.i, ptr %prev.i.i.i.i.i.i.i44.i, align 4
  %102 = ptrtoint ptr %transfer_list.i.i.i.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %msg.i.i.i40.i, ptr %transfer_list.i.i.i.i.i47.i, align 4
  %prev3.i.i.i.i.i.i.i49.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i41.i, i32 0, i32 18, i32 1
  %103 = ptrtoint ptr %prev3.i.i.i.i.i.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %msg.i.i.i40.i, ptr %prev3.i.i.i.i.i.i.i49.i, align 4
  %104 = ptrtoint ptr %msg.i.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %transfer_list.i.i.i.i.i47.i, ptr %msg.i.i.i40.i, align 4
  br label %slic_write.exit52.i

slic_write.exit52.i:                              ; preds = %if.end.i.i.i.i.i.i.i50.i, %slic_write.exit39.i.slic_write.exit52.i_crit_edge
  %call.i.i.i51.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i40.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i40.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i41.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i42.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i55.i) #5
  %105 = getelementptr inbounds [3 x i8], ptr %temp.i55.i, i32 0, i32 1
  %106 = getelementptr inbounds [3 x i8], ptr %temp.i55.i, i32 0, i32 2
  %107 = ptrtoint ptr %temp.i55.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 55, ptr %temp.i55.i, align 1
  %108 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -128, ptr %105, align 1
  %109 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -128, ptr %106, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i54.i) #5
  %110 = getelementptr inbounds i8, ptr %t.i.i54.i, i32 4
  %111 = call ptr @memset(ptr %110, i32 0, i32 92)
  %112 = ptrtoint ptr %t.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %temp.i55.i, ptr %t.i.i54.i, align 4
  %len1.i.i56.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i54.i, i32 0, i32 2
  %113 = ptrtoint ptr %len1.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 3, ptr %len1.i.i56.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i53.i) #5
  %114 = getelementptr inbounds i8, ptr %msg.i.i.i53.i, i32 8
  %115 = call ptr @memset(ptr %114, i32 0, i32 40)
  %116 = ptrtoint ptr %msg.i.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %msg.i.i.i53.i, ptr %msg.i.i.i53.i, align 4
  %prev.i.i.i.i.i.i.i57.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i53.i, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i.i.i.i.i.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %msg.i.i.i53.i, ptr %prev.i.i.i.i.i.i.i57.i, align 4
  %resources.i.i.i.i.i.i58.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i53.i, i32 0, i32 10
  %118 = ptrtoint ptr %resources.i.i.i.i.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %resources.i.i.i.i.i.i58.i, ptr %resources.i.i.i.i.i.i58.i, align 4
  %prev.i2.i.i.i.i.i.i59.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i53.i, i32 0, i32 10, i32 1
  %119 = ptrtoint ptr %prev.i2.i.i.i.i.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %resources.i.i.i.i.i.i58.i, ptr %prev.i2.i.i.i.i.i.i59.i, align 4
  %transfer_list.i.i.i.i.i60.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i54.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i61.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i60.i, ptr noundef nonnull %msg.i.i.i53.i, ptr noundef nonnull %msg.i.i.i53.i) #5
  br i1 %call.i.i.i.i.i.i.i61.i, label %if.end.i.i.i.i.i.i.i63.i, label %slic_write.exit52.i.slic_write.exit65.i_crit_edge

slic_write.exit52.i.slic_write.exit65.i_crit_edge: ; preds = %slic_write.exit52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit65.i

if.end.i.i.i.i.i.i.i63.i:                         ; preds = %slic_write.exit52.i
  call void @__sanitizer_cov_trace_pc() #7
  %120 = ptrtoint ptr %prev.i.i.i.i.i.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %transfer_list.i.i.i.i.i60.i, ptr %prev.i.i.i.i.i.i.i57.i, align 4
  %121 = ptrtoint ptr %transfer_list.i.i.i.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %msg.i.i.i53.i, ptr %transfer_list.i.i.i.i.i60.i, align 4
  %prev3.i.i.i.i.i.i.i62.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i54.i, i32 0, i32 18, i32 1
  %122 = ptrtoint ptr %prev3.i.i.i.i.i.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %msg.i.i.i53.i, ptr %prev3.i.i.i.i.i.i.i62.i, align 4
  %123 = ptrtoint ptr %msg.i.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %transfer_list.i.i.i.i.i60.i, ptr %msg.i.i.i53.i, align 4
  br label %slic_write.exit65.i

slic_write.exit65.i:                              ; preds = %if.end.i.i.i.i.i.i.i63.i, %slic_write.exit52.i.slic_write.exit65.i_crit_edge
  %call.i.i.i64.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i53.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i53.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i54.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i55.i) #5
  call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i68.i) #5
  %124 = getelementptr inbounds [3 x i8], ptr %temp.i68.i, i32 0, i32 1
  %125 = getelementptr inbounds [3 x i8], ptr %temp.i68.i, i32 0, i32 2
  %126 = ptrtoint ptr %temp.i68.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 87, ptr %temp.i68.i, align 1
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -128, ptr %124, align 1
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %125, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i67.i) #5
  %129 = getelementptr inbounds i8, ptr %t.i.i67.i, i32 4
  %130 = call ptr @memset(ptr %129, i32 0, i32 92)
  %131 = ptrtoint ptr %t.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %temp.i68.i, ptr %t.i.i67.i, align 4
  %len1.i.i69.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i67.i, i32 0, i32 2
  %132 = ptrtoint ptr %len1.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 3, ptr %len1.i.i69.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i66.i) #5
  %133 = getelementptr inbounds i8, ptr %msg.i.i.i66.i, i32 8
  %134 = call ptr @memset(ptr %133, i32 0, i32 40)
  %135 = ptrtoint ptr %msg.i.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %msg.i.i.i66.i, ptr %msg.i.i.i66.i, align 4
  %prev.i.i.i.i.i.i.i70.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i66.i, i32 0, i32 1
  %136 = ptrtoint ptr %prev.i.i.i.i.i.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %msg.i.i.i66.i, ptr %prev.i.i.i.i.i.i.i70.i, align 4
  %resources.i.i.i.i.i.i71.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i66.i, i32 0, i32 10
  %137 = ptrtoint ptr %resources.i.i.i.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %resources.i.i.i.i.i.i71.i, ptr %resources.i.i.i.i.i.i71.i, align 4
  %prev.i2.i.i.i.i.i.i72.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i66.i, i32 0, i32 10, i32 1
  %138 = ptrtoint ptr %prev.i2.i.i.i.i.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %resources.i.i.i.i.i.i71.i, ptr %prev.i2.i.i.i.i.i.i72.i, align 4
  %transfer_list.i.i.i.i.i73.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i67.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i74.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i73.i, ptr noundef nonnull %msg.i.i.i66.i, ptr noundef nonnull %msg.i.i.i66.i) #5
  br i1 %call.i.i.i.i.i.i.i74.i, label %if.end.i.i.i.i.i.i.i76.i, label %slic_write.exit65.i.slic_write.exit78.i_crit_edge

slic_write.exit65.i.slic_write.exit78.i_crit_edge: ; preds = %slic_write.exit65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit78.i

if.end.i.i.i.i.i.i.i76.i:                         ; preds = %slic_write.exit65.i
  call void @__sanitizer_cov_trace_pc() #7
  %139 = ptrtoint ptr %prev.i.i.i.i.i.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %transfer_list.i.i.i.i.i73.i, ptr %prev.i.i.i.i.i.i.i70.i, align 4
  %140 = ptrtoint ptr %transfer_list.i.i.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %msg.i.i.i66.i, ptr %transfer_list.i.i.i.i.i73.i, align 4
  %prev3.i.i.i.i.i.i.i75.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i67.i, i32 0, i32 18, i32 1
  %141 = ptrtoint ptr %prev3.i.i.i.i.i.i.i75.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %msg.i.i.i66.i, ptr %prev3.i.i.i.i.i.i.i75.i, align 4
  %142 = ptrtoint ptr %msg.i.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %transfer_list.i.i.i.i.i73.i, ptr %msg.i.i.i66.i, align 4
  br label %slic_write.exit78.i

slic_write.exit78.i:                              ; preds = %if.end.i.i.i.i.i.i.i76.i, %slic_write.exit65.i.slic_write.exit78.i_crit_edge
  %call.i.i.i77.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i66.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i66.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i67.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i68.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i81.i) #5
  %143 = getelementptr inbounds [3 x i8], ptr %temp.i81.i, i32 0, i32 1
  %144 = getelementptr inbounds [3 x i8], ptr %temp.i81.i, i32 0, i32 2
  %145 = ptrtoint ptr %temp.i81.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 55, ptr %temp.i81.i, align 1
  %146 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -128, ptr %143, align 1
  %147 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %144, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i80.i) #5
  %148 = getelementptr inbounds i8, ptr %t.i.i80.i, i32 4
  %149 = call ptr @memset(ptr %148, i32 0, i32 92)
  %150 = ptrtoint ptr %t.i.i80.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %temp.i81.i, ptr %t.i.i80.i, align 4
  %len1.i.i82.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i80.i, i32 0, i32 2
  %151 = ptrtoint ptr %len1.i.i82.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 3, ptr %len1.i.i82.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i79.i) #5
  %152 = getelementptr inbounds i8, ptr %msg.i.i.i79.i, i32 8
  %153 = call ptr @memset(ptr %152, i32 0, i32 40)
  %154 = ptrtoint ptr %msg.i.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %msg.i.i.i79.i, ptr %msg.i.i.i79.i, align 4
  %prev.i.i.i.i.i.i.i83.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i79.i, i32 0, i32 1
  %155 = ptrtoint ptr %prev.i.i.i.i.i.i.i83.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %msg.i.i.i79.i, ptr %prev.i.i.i.i.i.i.i83.i, align 4
  %resources.i.i.i.i.i.i84.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i79.i, i32 0, i32 10
  %156 = ptrtoint ptr %resources.i.i.i.i.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %resources.i.i.i.i.i.i84.i, ptr %resources.i.i.i.i.i.i84.i, align 4
  %prev.i2.i.i.i.i.i.i85.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i79.i, i32 0, i32 10, i32 1
  %157 = ptrtoint ptr %prev.i2.i.i.i.i.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %resources.i.i.i.i.i.i84.i, ptr %prev.i2.i.i.i.i.i.i85.i, align 4
  %transfer_list.i.i.i.i.i86.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i80.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i87.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i86.i, ptr noundef nonnull %msg.i.i.i79.i, ptr noundef nonnull %msg.i.i.i79.i) #5
  br i1 %call.i.i.i.i.i.i.i87.i, label %if.end.i.i.i.i.i.i.i89.i, label %slic_write.exit78.i.slic_write.exit91.i_crit_edge

slic_write.exit78.i.slic_write.exit91.i_crit_edge: ; preds = %slic_write.exit78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit91.i

if.end.i.i.i.i.i.i.i89.i:                         ; preds = %slic_write.exit78.i
  call void @__sanitizer_cov_trace_pc() #7
  %158 = ptrtoint ptr %prev.i.i.i.i.i.i.i83.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %transfer_list.i.i.i.i.i86.i, ptr %prev.i.i.i.i.i.i.i83.i, align 4
  %159 = ptrtoint ptr %transfer_list.i.i.i.i.i86.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %msg.i.i.i79.i, ptr %transfer_list.i.i.i.i.i86.i, align 4
  %prev3.i.i.i.i.i.i.i88.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i80.i, i32 0, i32 18, i32 1
  %160 = ptrtoint ptr %prev3.i.i.i.i.i.i.i88.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %msg.i.i.i79.i, ptr %prev3.i.i.i.i.i.i.i88.i, align 4
  %161 = ptrtoint ptr %msg.i.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %transfer_list.i.i.i.i.i86.i, ptr %msg.i.i.i79.i, align 4
  br label %slic_write.exit91.i

slic_write.exit91.i:                              ; preds = %if.end.i.i.i.i.i.i.i89.i, %slic_write.exit78.i.slic_write.exit91.i_crit_edge
  %call.i.i.i90.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i79.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i79.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i80.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i81.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i94.i) #5
  %162 = getelementptr inbounds [3 x i8], ptr %temp.i94.i, i32 0, i32 1
  %163 = getelementptr inbounds [3 x i8], ptr %temp.i94.i, i32 0, i32 2
  %164 = ptrtoint ptr %temp.i94.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %temp.i94.i, align 1
  %165 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 -128, ptr %162, align 1
  %166 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 64, ptr %163, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i93.i) #5
  %167 = getelementptr inbounds i8, ptr %t.i.i93.i, i32 4
  %168 = call ptr @memset(ptr %167, i32 0, i32 92)
  %169 = ptrtoint ptr %t.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %temp.i94.i, ptr %t.i.i93.i, align 4
  %len1.i.i95.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i93.i, i32 0, i32 2
  %170 = ptrtoint ptr %len1.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 3, ptr %len1.i.i95.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i92.i) #5
  %171 = getelementptr inbounds i8, ptr %msg.i.i.i92.i, i32 8
  %172 = call ptr @memset(ptr %171, i32 0, i32 40)
  %173 = ptrtoint ptr %msg.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %msg.i.i.i92.i, ptr %msg.i.i.i92.i, align 4
  %prev.i.i.i.i.i.i.i96.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i92.i, i32 0, i32 1
  %174 = ptrtoint ptr %prev.i.i.i.i.i.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %msg.i.i.i92.i, ptr %prev.i.i.i.i.i.i.i96.i, align 4
  %resources.i.i.i.i.i.i97.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i92.i, i32 0, i32 10
  %175 = ptrtoint ptr %resources.i.i.i.i.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %resources.i.i.i.i.i.i97.i, ptr %resources.i.i.i.i.i.i97.i, align 4
  %prev.i2.i.i.i.i.i.i98.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i92.i, i32 0, i32 10, i32 1
  %176 = ptrtoint ptr %prev.i2.i.i.i.i.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %resources.i.i.i.i.i.i97.i, ptr %prev.i2.i.i.i.i.i.i98.i, align 4
  %transfer_list.i.i.i.i.i99.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i93.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i100.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i99.i, ptr noundef nonnull %msg.i.i.i92.i, ptr noundef nonnull %msg.i.i.i92.i) #5
  br i1 %call.i.i.i.i.i.i.i100.i, label %if.end.i.i.i.i.i.i.i102.i, label %slic_write.exit91.i.slic_write.exit104.i_crit_edge

slic_write.exit91.i.slic_write.exit104.i_crit_edge: ; preds = %slic_write.exit91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit104.i

if.end.i.i.i.i.i.i.i102.i:                        ; preds = %slic_write.exit91.i
  call void @__sanitizer_cov_trace_pc() #7
  %177 = ptrtoint ptr %prev.i.i.i.i.i.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %transfer_list.i.i.i.i.i99.i, ptr %prev.i.i.i.i.i.i.i96.i, align 4
  %178 = ptrtoint ptr %transfer_list.i.i.i.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %msg.i.i.i92.i, ptr %transfer_list.i.i.i.i.i99.i, align 4
  %prev3.i.i.i.i.i.i.i101.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i93.i, i32 0, i32 18, i32 1
  %179 = ptrtoint ptr %prev3.i.i.i.i.i.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %msg.i.i.i92.i, ptr %prev3.i.i.i.i.i.i.i101.i, align 4
  %180 = ptrtoint ptr %msg.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %transfer_list.i.i.i.i.i99.i, ptr %msg.i.i.i92.i, align 4
  br label %slic_write.exit104.i

slic_write.exit104.i:                             ; preds = %if.end.i.i.i.i.i.i.i102.i, %slic_write.exit91.i.slic_write.exit104.i_crit_edge
  %call.i.i.i103.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i92.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i92.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i93.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i94.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i107.i) #5
  %181 = getelementptr inbounds [3 x i8], ptr %temp.i107.i, i32 0, i32 1
  %182 = getelementptr inbounds [3 x i8], ptr %temp.i107.i, i32 0, i32 2
  %183 = ptrtoint ptr %temp.i107.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %temp.i107.i, align 1
  %184 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 -64, ptr %181, align 1
  %185 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 64, ptr %182, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i106.i) #5
  %186 = getelementptr inbounds i8, ptr %t.i.i106.i, i32 4
  %187 = call ptr @memset(ptr %186, i32 0, i32 92)
  %188 = ptrtoint ptr %t.i.i106.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %temp.i107.i, ptr %t.i.i106.i, align 4
  %len1.i.i108.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i106.i, i32 0, i32 2
  %189 = ptrtoint ptr %len1.i.i108.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 3, ptr %len1.i.i108.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i105.i) #5
  %190 = getelementptr inbounds i8, ptr %msg.i.i.i105.i, i32 8
  %191 = call ptr @memset(ptr %190, i32 0, i32 40)
  %192 = ptrtoint ptr %msg.i.i.i105.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %msg.i.i.i105.i, ptr %msg.i.i.i105.i, align 4
  %prev.i.i.i.i.i.i.i109.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i105.i, i32 0, i32 1
  %193 = ptrtoint ptr %prev.i.i.i.i.i.i.i109.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %msg.i.i.i105.i, ptr %prev.i.i.i.i.i.i.i109.i, align 4
  %resources.i.i.i.i.i.i110.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i105.i, i32 0, i32 10
  %194 = ptrtoint ptr %resources.i.i.i.i.i.i110.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile ptr %resources.i.i.i.i.i.i110.i, ptr %resources.i.i.i.i.i.i110.i, align 4
  %prev.i2.i.i.i.i.i.i111.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i105.i, i32 0, i32 10, i32 1
  %195 = ptrtoint ptr %prev.i2.i.i.i.i.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %resources.i.i.i.i.i.i110.i, ptr %prev.i2.i.i.i.i.i.i111.i, align 4
  %transfer_list.i.i.i.i.i112.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i106.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i113.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i112.i, ptr noundef nonnull %msg.i.i.i105.i, ptr noundef nonnull %msg.i.i.i105.i) #5
  br i1 %call.i.i.i.i.i.i.i113.i, label %if.end.i.i.i.i.i.i.i115.i, label %slic_write.exit104.i.slic_write.exit117.i_crit_edge

slic_write.exit104.i.slic_write.exit117.i_crit_edge: ; preds = %slic_write.exit104.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit117.i

if.end.i.i.i.i.i.i.i115.i:                        ; preds = %slic_write.exit104.i
  call void @__sanitizer_cov_trace_pc() #7
  %196 = ptrtoint ptr %prev.i.i.i.i.i.i.i109.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %transfer_list.i.i.i.i.i112.i, ptr %prev.i.i.i.i.i.i.i109.i, align 4
  %197 = ptrtoint ptr %transfer_list.i.i.i.i.i112.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %msg.i.i.i105.i, ptr %transfer_list.i.i.i.i.i112.i, align 4
  %prev3.i.i.i.i.i.i.i114.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i106.i, i32 0, i32 18, i32 1
  %198 = ptrtoint ptr %prev3.i.i.i.i.i.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %msg.i.i.i105.i, ptr %prev3.i.i.i.i.i.i.i114.i, align 4
  %199 = ptrtoint ptr %msg.i.i.i105.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %transfer_list.i.i.i.i.i112.i, ptr %msg.i.i.i105.i, align 4
  br label %slic_write.exit117.i

slic_write.exit117.i:                             ; preds = %if.end.i.i.i.i.i.i.i115.i, %slic_write.exit104.i.slic_write.exit117.i_crit_edge
  %call.i.i.i116.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i105.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i105.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i106.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i107.i) #5
  call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #5
  %200 = getelementptr inbounds [3 x i8], ptr %temp.i120.i, i32 0, i32 1
  %201 = getelementptr inbounds [3 x i8], ptr %temp.i120.i, i32 0, i32 2
  %202 = getelementptr inbounds i8, ptr %t.i.i119.i, i32 4
  %len1.i.i121.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i119.i, i32 0, i32 2
  %203 = getelementptr inbounds i8, ptr %msg.i.i.i118.i, i32 8
  %prev.i.i.i.i.i.i.i122.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i118.i, i32 0, i32 1
  %resources.i.i.i.i.i.i123.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i118.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i124.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i118.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i125.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i119.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i127.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i119.i, i32 0, i32 18, i32 1
  br label %for.body.i

for.cond2.preheader.i:                            ; preds = %slic_write.exit130.i
  %204 = getelementptr inbounds [3 x i8], ptr %temp.i133.i, i32 0, i32 1
  %205 = getelementptr inbounds [3 x i8], ptr %temp.i133.i, i32 0, i32 2
  %206 = getelementptr inbounds i8, ptr %t.i.i132.i, i32 4
  %len1.i.i156.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i132.i, i32 0, i32 2
  %207 = getelementptr inbounds i8, ptr %msg.i.i.i131.i, i32 8
  %prev.i.i.i.i.i.i.i157.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i131.i, i32 0, i32 1
  %resources.i.i.i.i.i.i158.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i131.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i159.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i131.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i160.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i132.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i162.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i132.i, i32 0, i32 18, i32 1
  br label %for.body6.i

for.body.i:                                       ; preds = %slic_write.exit130.i.for.body.i_crit_edge, %slic_write.exit117.i
  %indvars.iv.i = phi i32 [ 0, %slic_write.exit117.i ], [ %indvars.iv.next.i, %slic_write.exit130.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i120.i) #5
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %indvars.iv.i
  %208 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %extract103.i.i = lshr i8 %209, 1
  %conv2.i.i.i = zext i8 %209 to i16
  %shl.i.i.i = shl nuw i16 %conv2.i.i.i, 8
  %210 = lshr i32 %indvars.iv.i, 8
  %conv4.i.i.i = and i32 %210, 255
  %arrayidx.i10.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.i
  %211 = ptrtoint ptr %arrayidx.i10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx.i10.i.i.i, align 1
  %conv6.i.i.i = zext i8 %212 to i16
  %or.i.i.i = or i16 %shl.i.i.i, %conv6.i.i.i
  %extract99.i.i = lshr i16 %or.i.i.i, 1
  %extract.t100.i.i = trunc i16 %extract99.i.i to i8
  %213 = ptrtoint ptr %temp.i120.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %extract103.i.i, ptr %temp.i120.i, align 1
  %conv71.i.i = and i8 %extract.t100.i.i, -2
  %214 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv71.i.i, ptr %200, align 1
  %215 = ptrtoint ptr %201 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %201, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i119.i) #5
  %216 = call ptr @memset(ptr %202, i32 0, i32 92)
  %217 = ptrtoint ptr %t.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %temp.i120.i, ptr %t.i.i119.i, align 4
  %218 = ptrtoint ptr %len1.i.i121.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 3, ptr %len1.i.i121.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i118.i) #5
  %219 = call ptr @memset(ptr %203, i32 0, i32 40)
  %220 = ptrtoint ptr %msg.i.i.i118.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile ptr %msg.i.i.i118.i, ptr %msg.i.i.i118.i, align 4
  %221 = ptrtoint ptr %prev.i.i.i.i.i.i.i122.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %msg.i.i.i118.i, ptr %prev.i.i.i.i.i.i.i122.i, align 4
  %222 = ptrtoint ptr %resources.i.i.i.i.i.i123.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store volatile ptr %resources.i.i.i.i.i.i123.i, ptr %resources.i.i.i.i.i.i123.i, align 4
  %223 = ptrtoint ptr %prev.i2.i.i.i.i.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %resources.i.i.i.i.i.i123.i, ptr %prev.i2.i.i.i.i.i.i124.i, align 4
  %call.i.i.i.i.i.i.i126.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i125.i, ptr noundef nonnull %msg.i.i.i118.i, ptr noundef nonnull %msg.i.i.i118.i) #5
  br i1 %call.i.i.i.i.i.i.i126.i, label %if.end.i.i.i.i.i.i.i128.i, label %for.body.i.slic_write.exit130.i_crit_edge

for.body.i.slic_write.exit130.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit130.i

if.end.i.i.i.i.i.i.i128.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %224 = ptrtoint ptr %prev.i.i.i.i.i.i.i122.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %transfer_list.i.i.i.i.i125.i, ptr %prev.i.i.i.i.i.i.i122.i, align 4
  %225 = ptrtoint ptr %transfer_list.i.i.i.i.i125.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %msg.i.i.i118.i, ptr %transfer_list.i.i.i.i.i125.i, align 4
  %226 = ptrtoint ptr %prev3.i.i.i.i.i.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %msg.i.i.i118.i, ptr %prev3.i.i.i.i.i.i.i127.i, align 4
  %227 = ptrtoint ptr %msg.i.i.i118.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store volatile ptr %transfer_list.i.i.i.i.i125.i, ptr %msg.i.i.i118.i, align 4
  br label %slic_write.exit130.i

slic_write.exit130.i:                             ; preds = %if.end.i.i.i.i.i.i.i128.i, %for.body.i.slic_write.exit130.i_crit_edge
  %call.i.i.i129.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i118.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i118.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i119.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i120.i) #5
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 240
  br i1 %exitcond.not.i, label %for.cond2.preheader.i, label %slic_write.exit130.i.for.body.i_crit_edge

slic_write.exit130.i.for.body.i_crit_edge:        ; preds = %slic_write.exit130.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond10.preheader.i:                           ; preds = %slic_write.exit165.i
  %228 = getelementptr inbounds [3 x i8], ptr %temp.i168.i, i32 0, i32 1
  %229 = getelementptr inbounds [3 x i8], ptr %temp.i168.i, i32 0, i32 2
  %230 = getelementptr inbounds i8, ptr %t.i.i167.i, i32 4
  %len1.i.i191.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i167.i, i32 0, i32 2
  %231 = getelementptr inbounds i8, ptr %msg.i.i.i166.i, i32 8
  %prev.i.i.i.i.i.i.i192.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i166.i, i32 0, i32 1
  %resources.i.i.i.i.i.i193.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i166.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i194.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i166.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i195.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i167.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i197.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i167.i, i32 0, i32 18, i32 1
  br label %for.body14.i

for.body6.i:                                      ; preds = %slic_write.exit165.i.for.body6.i_crit_edge, %for.cond2.preheader.i
  %indvars.iv264.i = phi i32 [ 256, %for.cond2.preheader.i ], [ %indvars.iv.next265.i, %slic_write.exit165.i.for.body6.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i133.i) #5
  %232 = and i32 %indvars.iv264.i, 255
  %arrayidx.i.i.i141.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %232
  %233 = ptrtoint ptr %arrayidx.i.i.i141.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx.i.i.i141.i, align 1
  %extract103.i150.i = lshr i8 %234, 1
  %conv2.i.i142.i = zext i8 %234 to i16
  %shl.i.i143.i = shl nuw i16 %conv2.i.i142.i, 8
  %235 = lshr i32 %indvars.iv264.i, 8
  %conv4.i.i144.i = and i32 %235, 255
  %arrayidx.i10.i.i145.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i144.i
  %236 = ptrtoint ptr %arrayidx.i10.i.i145.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx.i10.i.i145.i, align 1
  %conv6.i.i146.i = zext i8 %237 to i16
  %or.i.i147.i = or i16 %shl.i.i143.i, %conv6.i.i146.i
  %extract99.i148.i = lshr i16 %or.i.i147.i, 1
  %extract.t100.i149.i = trunc i16 %extract99.i148.i to i8
  %238 = ptrtoint ptr %temp.i133.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %extract103.i150.i, ptr %temp.i133.i, align 1
  %conv71.i155.i = and i8 %extract.t100.i149.i, -2
  %239 = ptrtoint ptr %204 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %conv71.i155.i, ptr %204, align 1
  %240 = ptrtoint ptr %205 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 0, ptr %205, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i132.i) #5
  %241 = call ptr @memset(ptr %206, i32 0, i32 92)
  %242 = ptrtoint ptr %t.i.i132.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %temp.i133.i, ptr %t.i.i132.i, align 4
  %243 = ptrtoint ptr %len1.i.i156.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 3, ptr %len1.i.i156.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i131.i) #5
  %244 = call ptr @memset(ptr %207, i32 0, i32 40)
  %245 = ptrtoint ptr %msg.i.i.i131.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store volatile ptr %msg.i.i.i131.i, ptr %msg.i.i.i131.i, align 4
  %246 = ptrtoint ptr %prev.i.i.i.i.i.i.i157.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %msg.i.i.i131.i, ptr %prev.i.i.i.i.i.i.i157.i, align 4
  %247 = ptrtoint ptr %resources.i.i.i.i.i.i158.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store volatile ptr %resources.i.i.i.i.i.i158.i, ptr %resources.i.i.i.i.i.i158.i, align 4
  %248 = ptrtoint ptr %prev.i2.i.i.i.i.i.i159.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %resources.i.i.i.i.i.i158.i, ptr %prev.i2.i.i.i.i.i.i159.i, align 4
  %call.i.i.i.i.i.i.i161.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i160.i, ptr noundef nonnull %msg.i.i.i131.i, ptr noundef nonnull %msg.i.i.i131.i) #5
  br i1 %call.i.i.i.i.i.i.i161.i, label %if.end.i.i.i.i.i.i.i163.i, label %for.body6.i.slic_write.exit165.i_crit_edge

for.body6.i.slic_write.exit165.i_crit_edge:       ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit165.i

if.end.i.i.i.i.i.i.i163.i:                        ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  %249 = ptrtoint ptr %prev.i.i.i.i.i.i.i157.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %transfer_list.i.i.i.i.i160.i, ptr %prev.i.i.i.i.i.i.i157.i, align 4
  %250 = ptrtoint ptr %transfer_list.i.i.i.i.i160.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %msg.i.i.i131.i, ptr %transfer_list.i.i.i.i.i160.i, align 4
  %251 = ptrtoint ptr %prev3.i.i.i.i.i.i.i162.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %msg.i.i.i131.i, ptr %prev3.i.i.i.i.i.i.i162.i, align 4
  %252 = ptrtoint ptr %msg.i.i.i131.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store volatile ptr %transfer_list.i.i.i.i.i160.i, ptr %msg.i.i.i131.i, align 4
  br label %slic_write.exit165.i

slic_write.exit165.i:                             ; preds = %if.end.i.i.i.i.i.i.i163.i, %for.body6.i.slic_write.exit165.i_crit_edge
  %call.i.i.i164.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i131.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i131.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i132.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i133.i) #5
  %indvars.iv.next265.i = add nuw nsw i32 %indvars.iv264.i, 1
  %exitcond266.not.i = icmp eq i32 %indvars.iv.next265.i, 496
  br i1 %exitcond266.not.i, label %for.cond10.preheader.i, label %slic_write.exit165.i.for.body6.i_crit_edge

slic_write.exit165.i.for.body6.i_crit_edge:       ; preds = %slic_write.exit165.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6.i

for.cond18.preheader.i:                           ; preds = %slic_write.exit200.i
  %253 = getelementptr inbounds [3 x i8], ptr %temp.i203.i, i32 0, i32 1
  %254 = getelementptr inbounds [3 x i8], ptr %temp.i203.i, i32 0, i32 2
  %255 = getelementptr inbounds i8, ptr %t.i.i202.i, i32 4
  %len1.i.i226.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i202.i, i32 0, i32 2
  %256 = getelementptr inbounds i8, ptr %msg.i.i.i201.i, i32 8
  %prev.i.i.i.i.i.i.i227.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i201.i, i32 0, i32 1
  %resources.i.i.i.i.i.i228.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i201.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i229.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i201.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i230.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i202.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i232.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i202.i, i32 0, i32 18, i32 1
  br label %for.body22.i

for.body14.i:                                     ; preds = %slic_write.exit200.i.for.body14.i_crit_edge, %for.cond10.preheader.i
  %indvars.iv267.i = phi i32 [ 4096, %for.cond10.preheader.i ], [ %indvars.iv.next268.i, %slic_write.exit200.i.for.body14.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i168.i) #5
  %257 = and i32 %indvars.iv267.i, 255
  %arrayidx.i.i.i176.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %257
  %258 = ptrtoint ptr %arrayidx.i.i.i176.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx.i.i.i176.i, align 1
  %extract103.i185.i = lshr i8 %259, 1
  %conv2.i.i177.i = zext i8 %259 to i16
  %shl.i.i178.i = shl nuw i16 %conv2.i.i177.i, 8
  %260 = lshr i32 %indvars.iv267.i, 8
  %conv4.i.i179.i = and i32 %260, 255
  %arrayidx.i10.i.i180.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i179.i
  %261 = ptrtoint ptr %arrayidx.i10.i.i180.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx.i10.i.i180.i, align 1
  %conv6.i.i181.i = zext i8 %262 to i16
  %or.i.i182.i = or i16 %shl.i.i178.i, %conv6.i.i181.i
  %extract99.i183.i = lshr i16 %or.i.i182.i, 1
  %extract.t100.i184.i = trunc i16 %extract99.i183.i to i8
  %263 = ptrtoint ptr %temp.i168.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %extract103.i185.i, ptr %temp.i168.i, align 1
  %conv71.i190.i = and i8 %extract.t100.i184.i, -2
  %264 = ptrtoint ptr %228 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %conv71.i190.i, ptr %228, align 1
  %265 = ptrtoint ptr %229 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 0, ptr %229, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i167.i) #5
  %266 = call ptr @memset(ptr %230, i32 0, i32 92)
  %267 = ptrtoint ptr %t.i.i167.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %temp.i168.i, ptr %t.i.i167.i, align 4
  %268 = ptrtoint ptr %len1.i.i191.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 3, ptr %len1.i.i191.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i166.i) #5
  %269 = call ptr @memset(ptr %231, i32 0, i32 40)
  %270 = ptrtoint ptr %msg.i.i.i166.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store volatile ptr %msg.i.i.i166.i, ptr %msg.i.i.i166.i, align 4
  %271 = ptrtoint ptr %prev.i.i.i.i.i.i.i192.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %msg.i.i.i166.i, ptr %prev.i.i.i.i.i.i.i192.i, align 4
  %272 = ptrtoint ptr %resources.i.i.i.i.i.i193.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store volatile ptr %resources.i.i.i.i.i.i193.i, ptr %resources.i.i.i.i.i.i193.i, align 4
  %273 = ptrtoint ptr %prev.i2.i.i.i.i.i.i194.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %resources.i.i.i.i.i.i193.i, ptr %prev.i2.i.i.i.i.i.i194.i, align 4
  %call.i.i.i.i.i.i.i196.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i195.i, ptr noundef nonnull %msg.i.i.i166.i, ptr noundef nonnull %msg.i.i.i166.i) #5
  br i1 %call.i.i.i.i.i.i.i196.i, label %if.end.i.i.i.i.i.i.i198.i, label %for.body14.i.slic_write.exit200.i_crit_edge

for.body14.i.slic_write.exit200.i_crit_edge:      ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit200.i

if.end.i.i.i.i.i.i.i198.i:                        ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  %274 = ptrtoint ptr %prev.i.i.i.i.i.i.i192.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %transfer_list.i.i.i.i.i195.i, ptr %prev.i.i.i.i.i.i.i192.i, align 4
  %275 = ptrtoint ptr %transfer_list.i.i.i.i.i195.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %msg.i.i.i166.i, ptr %transfer_list.i.i.i.i.i195.i, align 4
  %276 = ptrtoint ptr %prev3.i.i.i.i.i.i.i197.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %msg.i.i.i166.i, ptr %prev3.i.i.i.i.i.i.i197.i, align 4
  %277 = ptrtoint ptr %msg.i.i.i166.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store volatile ptr %transfer_list.i.i.i.i.i195.i, ptr %msg.i.i.i166.i, align 4
  br label %slic_write.exit200.i

slic_write.exit200.i:                             ; preds = %if.end.i.i.i.i.i.i.i198.i, %for.body14.i.slic_write.exit200.i_crit_edge
  %call.i.i.i199.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i166.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i166.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i167.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i168.i) #5
  %indvars.iv.next268.i = add nuw nsw i32 %indvars.iv267.i, 1
  %exitcond269.not.i = icmp eq i32 %indvars.iv.next268.i, 4128
  br i1 %exitcond269.not.i, label %for.cond18.preheader.i, label %slic_write.exit200.i.for.body14.i_crit_edge

slic_write.exit200.i.for.body14.i_crit_edge:      ; preds = %slic_write.exit200.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14.i

for.body22.i:                                     ; preds = %slic_write.exit235.i.for.body22.i_crit_edge, %for.cond18.preheader.i
  %indvars.iv270.i = phi i32 [ 4352, %for.cond18.preheader.i ], [ %indvars.iv.next271.i, %slic_write.exit235.i.for.body22.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i203.i) #5
  %278 = and i32 %indvars.iv270.i, 255
  %arrayidx.i.i.i211.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %278
  %279 = ptrtoint ptr %arrayidx.i.i.i211.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx.i.i.i211.i, align 1
  %extract103.i220.i = lshr i8 %280, 1
  %conv2.i.i212.i = zext i8 %280 to i16
  %shl.i.i213.i = shl nuw i16 %conv2.i.i212.i, 8
  %281 = lshr i32 %indvars.iv270.i, 8
  %conv4.i.i214.i = and i32 %281, 255
  %arrayidx.i10.i.i215.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i214.i
  %282 = ptrtoint ptr %arrayidx.i10.i.i215.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx.i10.i.i215.i, align 1
  %conv6.i.i216.i = zext i8 %283 to i16
  %or.i.i217.i = or i16 %shl.i.i213.i, %conv6.i.i216.i
  %extract99.i218.i = lshr i16 %or.i.i217.i, 1
  %extract.t100.i219.i = trunc i16 %extract99.i218.i to i8
  %284 = ptrtoint ptr %temp.i203.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %extract103.i220.i, ptr %temp.i203.i, align 1
  %conv71.i225.i = and i8 %extract.t100.i219.i, -2
  %285 = ptrtoint ptr %253 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %conv71.i225.i, ptr %253, align 1
  %286 = ptrtoint ptr %254 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 0, ptr %254, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i202.i) #5
  %287 = call ptr @memset(ptr %255, i32 0, i32 92)
  %288 = ptrtoint ptr %t.i.i202.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %temp.i203.i, ptr %t.i.i202.i, align 4
  %289 = ptrtoint ptr %len1.i.i226.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 3, ptr %len1.i.i226.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i201.i) #5
  %290 = call ptr @memset(ptr %256, i32 0, i32 40)
  %291 = ptrtoint ptr %msg.i.i.i201.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store volatile ptr %msg.i.i.i201.i, ptr %msg.i.i.i201.i, align 4
  %292 = ptrtoint ptr %prev.i.i.i.i.i.i.i227.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %msg.i.i.i201.i, ptr %prev.i.i.i.i.i.i.i227.i, align 4
  %293 = ptrtoint ptr %resources.i.i.i.i.i.i228.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store volatile ptr %resources.i.i.i.i.i.i228.i, ptr %resources.i.i.i.i.i.i228.i, align 4
  %294 = ptrtoint ptr %prev.i2.i.i.i.i.i.i229.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %resources.i.i.i.i.i.i228.i, ptr %prev.i2.i.i.i.i.i.i229.i, align 4
  %call.i.i.i.i.i.i.i231.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i230.i, ptr noundef nonnull %msg.i.i.i201.i, ptr noundef nonnull %msg.i.i.i201.i) #5
  br i1 %call.i.i.i.i.i.i.i231.i, label %if.end.i.i.i.i.i.i.i233.i, label %for.body22.i.slic_write.exit235.i_crit_edge

for.body22.i.slic_write.exit235.i_crit_edge:      ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit235.i

if.end.i.i.i.i.i.i.i233.i:                        ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #7
  %295 = ptrtoint ptr %prev.i.i.i.i.i.i.i227.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %transfer_list.i.i.i.i.i230.i, ptr %prev.i.i.i.i.i.i.i227.i, align 4
  %296 = ptrtoint ptr %transfer_list.i.i.i.i.i230.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %msg.i.i.i201.i, ptr %transfer_list.i.i.i.i.i230.i, align 4
  %297 = ptrtoint ptr %prev3.i.i.i.i.i.i.i232.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %msg.i.i.i201.i, ptr %prev3.i.i.i.i.i.i.i232.i, align 4
  %298 = ptrtoint ptr %msg.i.i.i201.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store volatile ptr %transfer_list.i.i.i.i.i230.i, ptr %msg.i.i.i201.i, align 4
  br label %slic_write.exit235.i

slic_write.exit235.i:                             ; preds = %if.end.i.i.i.i.i.i.i233.i, %for.body22.i.slic_write.exit235.i_crit_edge
  %call.i.i.i234.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i201.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i201.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i202.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i203.i) #5
  %indvars.iv.next271.i = add nuw nsw i32 %indvars.iv270.i, 1
  %exitcond272.not.i = icmp eq i32 %indvars.iv.next271.i, 4368
  br i1 %exitcond272.not.i, label %for.end25.i, label %slic_write.exit235.i.for.body22.i_crit_edge

slic_write.exit235.i.for.body22.i_crit_edge:      ; preds = %slic_write.exit235.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22.i

for.end25.i:                                      ; preds = %slic_write.exit235.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i.i.i) #5
  %299 = getelementptr inbounds [3 x i8], ptr %temp.i.i.i, i32 0, i32 1
  %300 = getelementptr inbounds [3 x i8], ptr %temp.i.i.i, i32 0, i32 2
  %301 = ptrtoint ptr %temp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 0, ptr %temp.i.i.i, align 1
  %302 = ptrtoint ptr %299 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 -128, ptr %299, align 1
  %303 = ptrtoint ptr %300 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 -128, ptr %300, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i) #5
  %304 = getelementptr inbounds i8, ptr %t.i.i.i.i, i32 4
  %305 = call ptr @memset(ptr %304, i32 0, i32 92)
  %306 = ptrtoint ptr %t.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %temp.i.i.i, ptr %t.i.i.i.i, align 4
  %len1.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 2
  %307 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 3, ptr %len1.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #5
  %308 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 8
  %309 = call ptr @memset(ptr %308, i32 0, i32 40)
  %310 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store volatile ptr %msg.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %311 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %msg.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10
  %312 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store volatile ptr %resources.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10, i32 1
  %313 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %resources.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i, label %for.end25.i.slic_write.exit.i.i_crit_edge

for.end25.i.slic_write.exit.i.i_crit_edge:        ; preds = %for.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit.i.i

if.end.i.i.i.i.i.i.i.i.i:                         ; preds = %for.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %314 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %transfer_list.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %315 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %msg.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18, i32 1
  %316 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %msg.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i, align 4
  %317 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  br label %slic_write.exit.i.i

slic_write.exit.i.i:                              ; preds = %if.end.i.i.i.i.i.i.i.i.i, %for.end25.i.slic_write.exit.i.i_crit_edge
  %call.i.i.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i35.i.i) #5
  %318 = getelementptr inbounds [3 x i8], ptr %temp.i35.i.i, i32 0, i32 1
  %319 = getelementptr inbounds [3 x i8], ptr %temp.i35.i.i, i32 0, i32 2
  %320 = ptrtoint ptr %temp.i35.i.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 0, ptr %temp.i35.i.i, align 1
  %321 = ptrtoint ptr %318 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 -64, ptr %318, align 1
  %322 = ptrtoint ptr %319 to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 -128, ptr %319, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i34.i.i) #5
  %323 = getelementptr inbounds i8, ptr %t.i.i34.i.i, i32 4
  %324 = call ptr @memset(ptr %323, i32 0, i32 92)
  %325 = ptrtoint ptr %t.i.i34.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %temp.i35.i.i, ptr %t.i.i34.i.i, align 4
  %len1.i.i36.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i34.i.i, i32 0, i32 2
  %326 = ptrtoint ptr %len1.i.i36.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 3, ptr %len1.i.i36.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i33.i.i) #5
  %327 = getelementptr inbounds i8, ptr %msg.i.i.i33.i.i, i32 8
  %328 = call ptr @memset(ptr %327, i32 0, i32 40)
  %329 = ptrtoint ptr %msg.i.i.i33.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store volatile ptr %msg.i.i.i33.i.i, ptr %msg.i.i.i33.i.i, align 4
  %prev.i.i.i.i.i.i.i37.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i33.i.i, i32 0, i32 1
  %330 = ptrtoint ptr %prev.i.i.i.i.i.i.i37.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr %msg.i.i.i33.i.i, ptr %prev.i.i.i.i.i.i.i37.i.i, align 4
  %resources.i.i.i.i.i.i38.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i33.i.i, i32 0, i32 10
  %331 = ptrtoint ptr %resources.i.i.i.i.i.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store volatile ptr %resources.i.i.i.i.i.i38.i.i, ptr %resources.i.i.i.i.i.i38.i.i, align 4
  %prev.i2.i.i.i.i.i.i39.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i33.i.i, i32 0, i32 10, i32 1
  %332 = ptrtoint ptr %prev.i2.i.i.i.i.i.i39.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %resources.i.i.i.i.i.i38.i.i, ptr %prev.i2.i.i.i.i.i.i39.i.i, align 4
  %transfer_list.i.i.i.i.i40.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i34.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i41.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i40.i.i, ptr noundef nonnull %msg.i.i.i33.i.i, ptr noundef nonnull %msg.i.i.i33.i.i) #5
  br i1 %call.i.i.i.i.i.i.i41.i.i, label %if.end.i.i.i.i.i.i.i43.i.i, label %slic_write.exit.i.i.slic_write.exit45.i.i_crit_edge

slic_write.exit.i.i.slic_write.exit45.i.i_crit_edge: ; preds = %slic_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit45.i.i

if.end.i.i.i.i.i.i.i43.i.i:                       ; preds = %slic_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %333 = ptrtoint ptr %prev.i.i.i.i.i.i.i37.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %transfer_list.i.i.i.i.i40.i.i, ptr %prev.i.i.i.i.i.i.i37.i.i, align 4
  %334 = ptrtoint ptr %transfer_list.i.i.i.i.i40.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %msg.i.i.i33.i.i, ptr %transfer_list.i.i.i.i.i40.i.i, align 4
  %prev3.i.i.i.i.i.i.i42.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i34.i.i, i32 0, i32 18, i32 1
  %335 = ptrtoint ptr %prev3.i.i.i.i.i.i.i42.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %msg.i.i.i33.i.i, ptr %prev3.i.i.i.i.i.i.i42.i.i, align 4
  %336 = ptrtoint ptr %msg.i.i.i33.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store volatile ptr %transfer_list.i.i.i.i.i40.i.i, ptr %msg.i.i.i33.i.i, align 4
  br label %slic_write.exit45.i.i

slic_write.exit45.i.i:                            ; preds = %if.end.i.i.i.i.i.i.i43.i.i, %slic_write.exit.i.i.slic_write.exit45.i.i_crit_edge
  %call.i.i.i44.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i33.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i33.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i34.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i35.i.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp.i46.i.i) #5
  %337 = getelementptr inbounds [2 x i8], ptr %temp.i46.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i.i) #5
  %338 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 -1, ptr %data.i.i.i, align 1, !annotation !38
  %339 = ptrtoint ptr %temp.i46.i.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 -128, ptr %temp.i46.i.i, align 1
  %340 = ptrtoint ptr %337 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 -128, ptr %337, align 1
  %call41.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %temp.i46.i.i, i32 noundef 2, ptr noundef nonnull %data.i.i.i, i32 noundef 1) #5
  %341 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %data.i.i.i, align 1
  %idxprom.i.i.i236.i = zext i8 %342 to i32
  %arrayidx.i.i.i237.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i236.i
  %343 = ptrtoint ptr %arrayidx.i.i.i237.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %arrayidx.i.i.i237.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp.i46.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i49.i.i) #5
  %345 = getelementptr inbounds [3 x i8], ptr %temp.i49.i.i, i32 0, i32 1
  %346 = getelementptr inbounds [3 x i8], ptr %temp.i49.i.i, i32 0, i32 2
  %347 = or i8 %344, -128
  %idxprom.i.i51.i.i = zext i8 %347 to i32
  %arrayidx.i.i52.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i51.i.i
  %348 = ptrtoint ptr %arrayidx.i.i52.i.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %arrayidx.i.i52.i.i, align 1
  %350 = ptrtoint ptr %temp.i49.i.i to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 0, ptr %temp.i49.i.i, align 1
  %351 = ptrtoint ptr %345 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 -128, ptr %345, align 1
  %352 = ptrtoint ptr %346 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %349, ptr %346, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i48.i.i) #5
  %353 = getelementptr inbounds i8, ptr %t.i.i48.i.i, i32 4
  %354 = call ptr @memset(ptr %353, i32 0, i32 92)
  %355 = ptrtoint ptr %t.i.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %temp.i49.i.i, ptr %t.i.i48.i.i, align 4
  %len1.i.i53.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i48.i.i, i32 0, i32 2
  %356 = ptrtoint ptr %len1.i.i53.i.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 3, ptr %len1.i.i53.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i47.i.i) #5
  %357 = getelementptr inbounds i8, ptr %msg.i.i.i47.i.i, i32 8
  %358 = call ptr @memset(ptr %357, i32 0, i32 40)
  %359 = ptrtoint ptr %msg.i.i.i47.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store volatile ptr %msg.i.i.i47.i.i, ptr %msg.i.i.i47.i.i, align 4
  %prev.i.i.i.i.i.i.i54.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i47.i.i, i32 0, i32 1
  %360 = ptrtoint ptr %prev.i.i.i.i.i.i.i54.i.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr %msg.i.i.i47.i.i, ptr %prev.i.i.i.i.i.i.i54.i.i, align 4
  %resources.i.i.i.i.i.i55.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i47.i.i, i32 0, i32 10
  %361 = ptrtoint ptr %resources.i.i.i.i.i.i55.i.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store volatile ptr %resources.i.i.i.i.i.i55.i.i, ptr %resources.i.i.i.i.i.i55.i.i, align 4
  %prev.i2.i.i.i.i.i.i56.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i47.i.i, i32 0, i32 10, i32 1
  %362 = ptrtoint ptr %prev.i2.i.i.i.i.i.i56.i.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr %resources.i.i.i.i.i.i55.i.i, ptr %prev.i2.i.i.i.i.i.i56.i.i, align 4
  %transfer_list.i.i.i.i.i57.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i48.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i58.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i57.i.i, ptr noundef nonnull %msg.i.i.i47.i.i, ptr noundef nonnull %msg.i.i.i47.i.i) #5
  br i1 %call.i.i.i.i.i.i.i58.i.i, label %if.end.i.i.i.i.i.i.i60.i.i, label %slic_write.exit45.i.i.slic_write.exit62.i.i_crit_edge

slic_write.exit45.i.i.slic_write.exit62.i.i_crit_edge: ; preds = %slic_write.exit45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit62.i.i

if.end.i.i.i.i.i.i.i60.i.i:                       ; preds = %slic_write.exit45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %363 = ptrtoint ptr %prev.i.i.i.i.i.i.i54.i.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %transfer_list.i.i.i.i.i57.i.i, ptr %prev.i.i.i.i.i.i.i54.i.i, align 4
  %364 = ptrtoint ptr %transfer_list.i.i.i.i.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr %msg.i.i.i47.i.i, ptr %transfer_list.i.i.i.i.i57.i.i, align 4
  %prev3.i.i.i.i.i.i.i59.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i48.i.i, i32 0, i32 18, i32 1
  %365 = ptrtoint ptr %prev3.i.i.i.i.i.i.i59.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %msg.i.i.i47.i.i, ptr %prev3.i.i.i.i.i.i.i59.i.i, align 4
  %366 = ptrtoint ptr %msg.i.i.i47.i.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store volatile ptr %transfer_list.i.i.i.i.i57.i.i, ptr %msg.i.i.i47.i.i, align 4
  br label %slic_write.exit62.i.i

slic_write.exit62.i.i:                            ; preds = %if.end.i.i.i.i.i.i.i60.i.i, %slic_write.exit45.i.i.slic_write.exit62.i.i_crit_edge
  %call.i.i.i61.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i47.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i47.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i48.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i49.i.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp.i63.i.i) #5
  %367 = getelementptr inbounds [2 x i8], ptr %temp.i63.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i64.i.i) #5
  %368 = ptrtoint ptr %data.i64.i.i to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 -1, ptr %data.i64.i.i, align 1, !annotation !38
  %369 = ptrtoint ptr %temp.i63.i.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 -128, ptr %temp.i63.i.i, align 1
  %370 = ptrtoint ptr %367 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 -64, ptr %367, align 1
  %call41.i65.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %temp.i63.i.i, i32 noundef 2, ptr noundef nonnull %data.i64.i.i, i32 noundef 1) #5
  %371 = ptrtoint ptr %data.i64.i.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %data.i64.i.i, align 1
  %idxprom.i.i68.i.i = zext i8 %372 to i32
  %arrayidx.i.i69.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i68.i.i
  %373 = ptrtoint ptr %arrayidx.i.i69.i.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %arrayidx.i.i69.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i64.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp.i63.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i75.i.i) #5
  %375 = getelementptr inbounds [3 x i8], ptr %temp.i75.i.i, i32 0, i32 1
  %376 = getelementptr inbounds [3 x i8], ptr %temp.i75.i.i, i32 0, i32 2
  %377 = or i8 %374, -128
  %idxprom.i.i78.i.i = zext i8 %377 to i32
  %arrayidx.i.i79.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i78.i.i
  %378 = ptrtoint ptr %arrayidx.i.i79.i.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %arrayidx.i.i79.i.i, align 1
  %380 = ptrtoint ptr %temp.i75.i.i to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 0, ptr %temp.i75.i.i, align 1
  %381 = ptrtoint ptr %375 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 -64, ptr %375, align 1
  %382 = ptrtoint ptr %376 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 %379, ptr %376, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i74.i.i) #5
  %383 = getelementptr inbounds i8, ptr %t.i.i74.i.i, i32 4
  %384 = call ptr @memset(ptr %383, i32 0, i32 92)
  %385 = ptrtoint ptr %t.i.i74.i.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %temp.i75.i.i, ptr %t.i.i74.i.i, align 4
  %len1.i.i82.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i74.i.i, i32 0, i32 2
  %386 = ptrtoint ptr %len1.i.i82.i.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 3, ptr %len1.i.i82.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i73.i.i) #5
  %387 = getelementptr inbounds i8, ptr %msg.i.i.i73.i.i, i32 8
  %388 = call ptr @memset(ptr %387, i32 0, i32 40)
  %389 = ptrtoint ptr %msg.i.i.i73.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store volatile ptr %msg.i.i.i73.i.i, ptr %msg.i.i.i73.i.i, align 4
  %prev.i.i.i.i.i.i.i83.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i73.i.i, i32 0, i32 1
  %390 = ptrtoint ptr %prev.i.i.i.i.i.i.i83.i.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr %msg.i.i.i73.i.i, ptr %prev.i.i.i.i.i.i.i83.i.i, align 4
  %resources.i.i.i.i.i.i84.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i73.i.i, i32 0, i32 10
  %391 = ptrtoint ptr %resources.i.i.i.i.i.i84.i.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store volatile ptr %resources.i.i.i.i.i.i84.i.i, ptr %resources.i.i.i.i.i.i84.i.i, align 4
  %prev.i2.i.i.i.i.i.i85.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i73.i.i, i32 0, i32 10, i32 1
  %392 = ptrtoint ptr %prev.i2.i.i.i.i.i.i85.i.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr %resources.i.i.i.i.i.i84.i.i, ptr %prev.i2.i.i.i.i.i.i85.i.i, align 4
  %transfer_list.i.i.i.i.i86.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i74.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i87.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i86.i.i, ptr noundef nonnull %msg.i.i.i73.i.i, ptr noundef nonnull %msg.i.i.i73.i.i) #5
  br i1 %call.i.i.i.i.i.i.i87.i.i, label %if.end.i.i.i.i.i.i.i90.i.i, label %slic_write.exit62.i.i.slic_write.exit92.i.i_crit_edge

slic_write.exit62.i.i.slic_write.exit92.i.i_crit_edge: ; preds = %slic_write.exit62.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit92.i.i

if.end.i.i.i.i.i.i.i90.i.i:                       ; preds = %slic_write.exit62.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %393 = ptrtoint ptr %prev.i.i.i.i.i.i.i83.i.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr %transfer_list.i.i.i.i.i86.i.i, ptr %prev.i.i.i.i.i.i.i83.i.i, align 4
  %394 = ptrtoint ptr %transfer_list.i.i.i.i.i86.i.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr %msg.i.i.i73.i.i, ptr %transfer_list.i.i.i.i.i86.i.i, align 4
  %prev3.i.i.i.i.i.i.i89.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i74.i.i, i32 0, i32 18, i32 1
  %395 = ptrtoint ptr %prev3.i.i.i.i.i.i.i89.i.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr %msg.i.i.i73.i.i, ptr %prev3.i.i.i.i.i.i.i89.i.i, align 4
  %396 = ptrtoint ptr %msg.i.i.i73.i.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store volatile ptr %transfer_list.i.i.i.i.i86.i.i, ptr %msg.i.i.i73.i.i, align 4
  br label %slic_write.exit92.i.i

slic_write.exit92.i.i:                            ; preds = %if.end.i.i.i.i.i.i.i90.i.i, %slic_write.exit62.i.i.slic_write.exit92.i.i_crit_edge
  %call.i.i.i91.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i73.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i73.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i74.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i75.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i95.i.i) #5
  %397 = getelementptr inbounds [3 x i8], ptr %temp.i95.i.i, i32 0, i32 1
  %398 = getelementptr inbounds [3 x i8], ptr %temp.i95.i.i, i32 0, i32 2
  %399 = ptrtoint ptr %temp.i95.i.i to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 64, ptr %temp.i95.i.i, align 1
  %400 = ptrtoint ptr %397 to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 -128, ptr %397, align 1
  %401 = ptrtoint ptr %398 to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 6, ptr %398, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i94.i.i) #5
  %402 = getelementptr inbounds i8, ptr %t.i.i94.i.i, i32 4
  %403 = call ptr @memset(ptr %402, i32 0, i32 92)
  %404 = ptrtoint ptr %t.i.i94.i.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store ptr %temp.i95.i.i, ptr %t.i.i94.i.i, align 4
  %len1.i.i98.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i94.i.i, i32 0, i32 2
  %405 = ptrtoint ptr %len1.i.i98.i.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 3, ptr %len1.i.i98.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i93.i.i) #5
  %406 = getelementptr inbounds i8, ptr %msg.i.i.i93.i.i, i32 8
  %407 = call ptr @memset(ptr %406, i32 0, i32 40)
  %408 = ptrtoint ptr %msg.i.i.i93.i.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store volatile ptr %msg.i.i.i93.i.i, ptr %msg.i.i.i93.i.i, align 4
  %prev.i.i.i.i.i.i.i99.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i93.i.i, i32 0, i32 1
  %409 = ptrtoint ptr %prev.i.i.i.i.i.i.i99.i.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %msg.i.i.i93.i.i, ptr %prev.i.i.i.i.i.i.i99.i.i, align 4
  %resources.i.i.i.i.i.i100.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i93.i.i, i32 0, i32 10
  %410 = ptrtoint ptr %resources.i.i.i.i.i.i100.i.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store volatile ptr %resources.i.i.i.i.i.i100.i.i, ptr %resources.i.i.i.i.i.i100.i.i, align 4
  %prev.i2.i.i.i.i.i.i101.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i93.i.i, i32 0, i32 10, i32 1
  %411 = ptrtoint ptr %prev.i2.i.i.i.i.i.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr %resources.i.i.i.i.i.i100.i.i, ptr %prev.i2.i.i.i.i.i.i101.i.i, align 4
  %transfer_list.i.i.i.i.i102.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i94.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i103.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i102.i.i, ptr noundef nonnull %msg.i.i.i93.i.i, ptr noundef nonnull %msg.i.i.i93.i.i) #5
  br i1 %call.i.i.i.i.i.i.i103.i.i, label %if.end.i.i.i.i.i.i.i106.i.i, label %slic_write.exit92.i.i.slic_write.exit108.i.i_crit_edge

slic_write.exit92.i.i.slic_write.exit108.i.i_crit_edge: ; preds = %slic_write.exit92.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit108.i.i

if.end.i.i.i.i.i.i.i106.i.i:                      ; preds = %slic_write.exit92.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %412 = ptrtoint ptr %prev.i.i.i.i.i.i.i99.i.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %transfer_list.i.i.i.i.i102.i.i, ptr %prev.i.i.i.i.i.i.i99.i.i, align 4
  %413 = ptrtoint ptr %transfer_list.i.i.i.i.i102.i.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr %msg.i.i.i93.i.i, ptr %transfer_list.i.i.i.i.i102.i.i, align 4
  %prev3.i.i.i.i.i.i.i105.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i94.i.i, i32 0, i32 18, i32 1
  %414 = ptrtoint ptr %prev3.i.i.i.i.i.i.i105.i.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr %msg.i.i.i93.i.i, ptr %prev3.i.i.i.i.i.i.i105.i.i, align 4
  %415 = ptrtoint ptr %msg.i.i.i93.i.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store volatile ptr %transfer_list.i.i.i.i.i102.i.i, ptr %msg.i.i.i93.i.i, align 4
  br label %slic_write.exit108.i.i

slic_write.exit108.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i106.i.i, %slic_write.exit92.i.i.slic_write.exit108.i.i_crit_edge
  %call.i.i.i107.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i93.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i93.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i94.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i95.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i111.i.i) #5
  %416 = getelementptr inbounds [3 x i8], ptr %temp.i111.i.i, i32 0, i32 1
  %417 = getelementptr inbounds [3 x i8], ptr %temp.i111.i.i, i32 0, i32 2
  %418 = ptrtoint ptr %temp.i111.i.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 16, ptr %temp.i111.i.i, align 1
  %419 = ptrtoint ptr %416 to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 -128, ptr %416, align 1
  %420 = ptrtoint ptr %417 to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 8, ptr %417, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i110.i.i) #5
  %421 = getelementptr inbounds i8, ptr %t.i.i110.i.i, i32 4
  %422 = call ptr @memset(ptr %421, i32 0, i32 92)
  %423 = ptrtoint ptr %t.i.i110.i.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store ptr %temp.i111.i.i, ptr %t.i.i110.i.i, align 4
  %len1.i.i114.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i110.i.i, i32 0, i32 2
  %424 = ptrtoint ptr %len1.i.i114.i.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 3, ptr %len1.i.i114.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i109.i.i) #5
  %425 = getelementptr inbounds i8, ptr %msg.i.i.i109.i.i, i32 8
  %426 = call ptr @memset(ptr %425, i32 0, i32 40)
  %427 = ptrtoint ptr %msg.i.i.i109.i.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store volatile ptr %msg.i.i.i109.i.i, ptr %msg.i.i.i109.i.i, align 4
  %prev.i.i.i.i.i.i.i115.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i109.i.i, i32 0, i32 1
  %428 = ptrtoint ptr %prev.i.i.i.i.i.i.i115.i.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store ptr %msg.i.i.i109.i.i, ptr %prev.i.i.i.i.i.i.i115.i.i, align 4
  %resources.i.i.i.i.i.i116.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i109.i.i, i32 0, i32 10
  %429 = ptrtoint ptr %resources.i.i.i.i.i.i116.i.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store volatile ptr %resources.i.i.i.i.i.i116.i.i, ptr %resources.i.i.i.i.i.i116.i.i, align 4
  %prev.i2.i.i.i.i.i.i117.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i109.i.i, i32 0, i32 10, i32 1
  %430 = ptrtoint ptr %prev.i2.i.i.i.i.i.i117.i.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store ptr %resources.i.i.i.i.i.i116.i.i, ptr %prev.i2.i.i.i.i.i.i117.i.i, align 4
  %transfer_list.i.i.i.i.i118.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i110.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i119.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i118.i.i, ptr noundef nonnull %msg.i.i.i109.i.i, ptr noundef nonnull %msg.i.i.i109.i.i) #5
  br i1 %call.i.i.i.i.i.i.i119.i.i, label %if.end.i.i.i.i.i.i.i122.i.i, label %slic_write.exit108.i.i.slic_write.exit124.i.i_crit_edge

slic_write.exit108.i.i.slic_write.exit124.i.i_crit_edge: ; preds = %slic_write.exit108.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit124.i.i

if.end.i.i.i.i.i.i.i122.i.i:                      ; preds = %slic_write.exit108.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %431 = ptrtoint ptr %prev.i.i.i.i.i.i.i115.i.i to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr %transfer_list.i.i.i.i.i118.i.i, ptr %prev.i.i.i.i.i.i.i115.i.i, align 4
  %432 = ptrtoint ptr %transfer_list.i.i.i.i.i118.i.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store ptr %msg.i.i.i109.i.i, ptr %transfer_list.i.i.i.i.i118.i.i, align 4
  %prev3.i.i.i.i.i.i.i121.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i110.i.i, i32 0, i32 18, i32 1
  %433 = ptrtoint ptr %prev3.i.i.i.i.i.i.i121.i.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %msg.i.i.i109.i.i, ptr %prev3.i.i.i.i.i.i.i121.i.i, align 4
  %434 = ptrtoint ptr %msg.i.i.i109.i.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store volatile ptr %transfer_list.i.i.i.i.i118.i.i, ptr %msg.i.i.i109.i.i, align 4
  br label %slic_write.exit124.i.i

slic_write.exit124.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i122.i.i, %slic_write.exit108.i.i.slic_write.exit124.i.i_crit_edge
  %call.i.i.i123.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i109.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i109.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i110.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i111.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i127.i.i) #5
  %435 = getelementptr inbounds [3 x i8], ptr %temp.i127.i.i, i32 0, i32 1
  %436 = getelementptr inbounds [3 x i8], ptr %temp.i127.i.i, i32 0, i32 2
  %437 = ptrtoint ptr %temp.i127.i.i to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 64, ptr %temp.i127.i.i, align 1
  %438 = ptrtoint ptr %435 to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 -64, ptr %435, align 1
  %439 = ptrtoint ptr %436 to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 32, ptr %436, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i126.i.i) #5
  %440 = getelementptr inbounds i8, ptr %t.i.i126.i.i, i32 4
  %441 = call ptr @memset(ptr %440, i32 0, i32 92)
  %442 = ptrtoint ptr %t.i.i126.i.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr %temp.i127.i.i, ptr %t.i.i126.i.i, align 4
  %len1.i.i130.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i126.i.i, i32 0, i32 2
  %443 = ptrtoint ptr %len1.i.i130.i.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 3, ptr %len1.i.i130.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i125.i.i) #5
  %444 = getelementptr inbounds i8, ptr %msg.i.i.i125.i.i, i32 8
  %445 = call ptr @memset(ptr %444, i32 0, i32 40)
  %446 = ptrtoint ptr %msg.i.i.i125.i.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store volatile ptr %msg.i.i.i125.i.i, ptr %msg.i.i.i125.i.i, align 4
  %prev.i.i.i.i.i.i.i131.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i125.i.i, i32 0, i32 1
  %447 = ptrtoint ptr %prev.i.i.i.i.i.i.i131.i.i to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr %msg.i.i.i125.i.i, ptr %prev.i.i.i.i.i.i.i131.i.i, align 4
  %resources.i.i.i.i.i.i132.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i125.i.i, i32 0, i32 10
  %448 = ptrtoint ptr %resources.i.i.i.i.i.i132.i.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store volatile ptr %resources.i.i.i.i.i.i132.i.i, ptr %resources.i.i.i.i.i.i132.i.i, align 4
  %prev.i2.i.i.i.i.i.i133.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i125.i.i, i32 0, i32 10, i32 1
  %449 = ptrtoint ptr %prev.i2.i.i.i.i.i.i133.i.i to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr %resources.i.i.i.i.i.i132.i.i, ptr %prev.i2.i.i.i.i.i.i133.i.i, align 4
  %transfer_list.i.i.i.i.i134.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i126.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i135.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i134.i.i, ptr noundef nonnull %msg.i.i.i125.i.i, ptr noundef nonnull %msg.i.i.i125.i.i) #5
  br i1 %call.i.i.i.i.i.i.i135.i.i, label %if.end.i.i.i.i.i.i.i138.i.i, label %slic_write.exit124.i.i.slic_write.exit140.i.i_crit_edge

slic_write.exit124.i.i.slic_write.exit140.i.i_crit_edge: ; preds = %slic_write.exit124.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit140.i.i

if.end.i.i.i.i.i.i.i138.i.i:                      ; preds = %slic_write.exit124.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %450 = ptrtoint ptr %prev.i.i.i.i.i.i.i131.i.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store ptr %transfer_list.i.i.i.i.i134.i.i, ptr %prev.i.i.i.i.i.i.i131.i.i, align 4
  %451 = ptrtoint ptr %transfer_list.i.i.i.i.i134.i.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %msg.i.i.i125.i.i, ptr %transfer_list.i.i.i.i.i134.i.i, align 4
  %prev3.i.i.i.i.i.i.i137.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i126.i.i, i32 0, i32 18, i32 1
  %452 = ptrtoint ptr %prev3.i.i.i.i.i.i.i137.i.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store ptr %msg.i.i.i125.i.i, ptr %prev3.i.i.i.i.i.i.i137.i.i, align 4
  %453 = ptrtoint ptr %msg.i.i.i125.i.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store volatile ptr %transfer_list.i.i.i.i.i134.i.i, ptr %msg.i.i.i125.i.i, align 4
  br label %slic_write.exit140.i.i

slic_write.exit140.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i138.i.i, %slic_write.exit124.i.i.slic_write.exit140.i.i_crit_edge
  %call.i.i.i139.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i125.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i125.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i126.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i127.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i143.i.i) #5
  %454 = getelementptr inbounds [3 x i8], ptr %temp.i143.i.i, i32 0, i32 1
  %455 = getelementptr inbounds [3 x i8], ptr %temp.i143.i.i, i32 0, i32 2
  %456 = ptrtoint ptr %temp.i143.i.i to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 16, ptr %temp.i143.i.i, align 1
  %457 = ptrtoint ptr %454 to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 -64, ptr %454, align 1
  %458 = ptrtoint ptr %455 to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 40, ptr %455, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i142.i.i) #5
  %459 = getelementptr inbounds i8, ptr %t.i.i142.i.i, i32 4
  %460 = call ptr @memset(ptr %459, i32 0, i32 92)
  %461 = ptrtoint ptr %t.i.i142.i.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store ptr %temp.i143.i.i, ptr %t.i.i142.i.i, align 4
  %len1.i.i146.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i142.i.i, i32 0, i32 2
  %462 = ptrtoint ptr %len1.i.i146.i.i to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 3, ptr %len1.i.i146.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i141.i.i) #5
  %463 = getelementptr inbounds i8, ptr %msg.i.i.i141.i.i, i32 8
  %464 = call ptr @memset(ptr %463, i32 0, i32 40)
  %465 = ptrtoint ptr %msg.i.i.i141.i.i to i32
  call void @__asan_store4_noabort(i32 %465)
  store volatile ptr %msg.i.i.i141.i.i, ptr %msg.i.i.i141.i.i, align 4
  %prev.i.i.i.i.i.i.i147.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i141.i.i, i32 0, i32 1
  %466 = ptrtoint ptr %prev.i.i.i.i.i.i.i147.i.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store ptr %msg.i.i.i141.i.i, ptr %prev.i.i.i.i.i.i.i147.i.i, align 4
  %resources.i.i.i.i.i.i148.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i141.i.i, i32 0, i32 10
  %467 = ptrtoint ptr %resources.i.i.i.i.i.i148.i.i to i32
  call void @__asan_store4_noabort(i32 %467)
  store volatile ptr %resources.i.i.i.i.i.i148.i.i, ptr %resources.i.i.i.i.i.i148.i.i, align 4
  %prev.i2.i.i.i.i.i.i149.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i141.i.i, i32 0, i32 10, i32 1
  %468 = ptrtoint ptr %prev.i2.i.i.i.i.i.i149.i.i to i32
  call void @__asan_store4_noabort(i32 %468)
  store ptr %resources.i.i.i.i.i.i148.i.i, ptr %prev.i2.i.i.i.i.i.i149.i.i, align 4
  %transfer_list.i.i.i.i.i150.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i142.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i151.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i150.i.i, ptr noundef nonnull %msg.i.i.i141.i.i, ptr noundef nonnull %msg.i.i.i141.i.i) #5
  br i1 %call.i.i.i.i.i.i.i151.i.i, label %if.end.i.i.i.i.i.i.i154.i.i, label %slic_write.exit140.i.i.slic_write.exit156.i.i_crit_edge

slic_write.exit140.i.i.slic_write.exit156.i.i_crit_edge: ; preds = %slic_write.exit140.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit156.i.i

if.end.i.i.i.i.i.i.i154.i.i:                      ; preds = %slic_write.exit140.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %469 = ptrtoint ptr %prev.i.i.i.i.i.i.i147.i.i to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr %transfer_list.i.i.i.i.i150.i.i, ptr %prev.i.i.i.i.i.i.i147.i.i, align 4
  %470 = ptrtoint ptr %transfer_list.i.i.i.i.i150.i.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store ptr %msg.i.i.i141.i.i, ptr %transfer_list.i.i.i.i.i150.i.i, align 4
  %prev3.i.i.i.i.i.i.i153.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i142.i.i, i32 0, i32 18, i32 1
  %471 = ptrtoint ptr %prev3.i.i.i.i.i.i.i153.i.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store ptr %msg.i.i.i141.i.i, ptr %prev3.i.i.i.i.i.i.i153.i.i, align 4
  %472 = ptrtoint ptr %msg.i.i.i141.i.i to i32
  call void @__asan_store4_noabort(i32 %472)
  store volatile ptr %transfer_list.i.i.i.i.i150.i.i, ptr %msg.i.i.i141.i.i, align 4
  br label %slic_write.exit156.i.i

slic_write.exit156.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i154.i.i, %slic_write.exit140.i.i.slic_write.exit156.i.i_crit_edge
  %call.i.i.i155.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i141.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i141.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i142.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i143.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i159.i.i) #5
  %473 = getelementptr inbounds [3 x i8], ptr %temp.i159.i.i, i32 0, i32 1
  %474 = getelementptr inbounds [3 x i8], ptr %temp.i159.i.i, i32 0, i32 2
  %475 = ptrtoint ptr %temp.i159.i.i to i32
  call void @__asan_store1_noabort(i32 %475)
  store i8 19, ptr %temp.i159.i.i, align 1
  %476 = ptrtoint ptr %473 to i32
  call void @__asan_store1_noabort(i32 %476)
  store i8 64, ptr %473, align 1
  %477 = ptrtoint ptr %474 to i32
  call void @__asan_store1_noabort(i32 %477)
  store i8 -40, ptr %474, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i158.i.i) #5
  %478 = getelementptr inbounds i8, ptr %t.i.i158.i.i, i32 4
  %479 = call ptr @memset(ptr %478, i32 0, i32 92)
  %480 = ptrtoint ptr %t.i.i158.i.i to i32
  call void @__asan_store4_noabort(i32 %480)
  store ptr %temp.i159.i.i, ptr %t.i.i158.i.i, align 4
  %len1.i.i162.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i158.i.i, i32 0, i32 2
  %481 = ptrtoint ptr %len1.i.i162.i.i to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 3, ptr %len1.i.i162.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i157.i.i) #5
  %482 = getelementptr inbounds i8, ptr %msg.i.i.i157.i.i, i32 8
  %483 = call ptr @memset(ptr %482, i32 0, i32 40)
  %484 = ptrtoint ptr %msg.i.i.i157.i.i to i32
  call void @__asan_store4_noabort(i32 %484)
  store volatile ptr %msg.i.i.i157.i.i, ptr %msg.i.i.i157.i.i, align 4
  %prev.i.i.i.i.i.i.i163.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i157.i.i, i32 0, i32 1
  %485 = ptrtoint ptr %prev.i.i.i.i.i.i.i163.i.i to i32
  call void @__asan_store4_noabort(i32 %485)
  store ptr %msg.i.i.i157.i.i, ptr %prev.i.i.i.i.i.i.i163.i.i, align 4
  %resources.i.i.i.i.i.i164.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i157.i.i, i32 0, i32 10
  %486 = ptrtoint ptr %resources.i.i.i.i.i.i164.i.i to i32
  call void @__asan_store4_noabort(i32 %486)
  store volatile ptr %resources.i.i.i.i.i.i164.i.i, ptr %resources.i.i.i.i.i.i164.i.i, align 4
  %prev.i2.i.i.i.i.i.i165.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i157.i.i, i32 0, i32 10, i32 1
  %487 = ptrtoint ptr %prev.i2.i.i.i.i.i.i165.i.i to i32
  call void @__asan_store4_noabort(i32 %487)
  store ptr %resources.i.i.i.i.i.i164.i.i, ptr %prev.i2.i.i.i.i.i.i165.i.i, align 4
  %transfer_list.i.i.i.i.i166.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i158.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i167.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i166.i.i, ptr noundef nonnull %msg.i.i.i157.i.i, ptr noundef nonnull %msg.i.i.i157.i.i) #5
  br i1 %call.i.i.i.i.i.i.i167.i.i, label %if.end.i.i.i.i.i.i.i170.i.i, label %slic_write.exit156.i.i.slic_write.exit172.i.i_crit_edge

slic_write.exit156.i.i.slic_write.exit172.i.i_crit_edge: ; preds = %slic_write.exit156.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit172.i.i

if.end.i.i.i.i.i.i.i170.i.i:                      ; preds = %slic_write.exit156.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %488 = ptrtoint ptr %prev.i.i.i.i.i.i.i163.i.i to i32
  call void @__asan_store4_noabort(i32 %488)
  store ptr %transfer_list.i.i.i.i.i166.i.i, ptr %prev.i.i.i.i.i.i.i163.i.i, align 4
  %489 = ptrtoint ptr %transfer_list.i.i.i.i.i166.i.i to i32
  call void @__asan_store4_noabort(i32 %489)
  store ptr %msg.i.i.i157.i.i, ptr %transfer_list.i.i.i.i.i166.i.i, align 4
  %prev3.i.i.i.i.i.i.i169.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i158.i.i, i32 0, i32 18, i32 1
  %490 = ptrtoint ptr %prev3.i.i.i.i.i.i.i169.i.i to i32
  call void @__asan_store4_noabort(i32 %490)
  store ptr %msg.i.i.i157.i.i, ptr %prev3.i.i.i.i.i.i.i169.i.i, align 4
  %491 = ptrtoint ptr %msg.i.i.i157.i.i to i32
  call void @__asan_store4_noabort(i32 %491)
  store volatile ptr %transfer_list.i.i.i.i.i166.i.i, ptr %msg.i.i.i157.i.i, align 4
  br label %slic_write.exit172.i.i

slic_write.exit172.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i170.i.i, %slic_write.exit156.i.i.slic_write.exit172.i.i_crit_edge
  %call.i.i.i171.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i157.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i157.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i158.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i159.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i175.i.i) #5
  %492 = getelementptr inbounds [3 x i8], ptr %temp.i175.i.i, i32 0, i32 1
  %493 = getelementptr inbounds [3 x i8], ptr %temp.i175.i.i, i32 0, i32 2
  %494 = ptrtoint ptr %temp.i175.i.i to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 83, ptr %temp.i175.i.i, align 1
  %495 = ptrtoint ptr %492 to i32
  call void @__asan_store1_noabort(i32 %495)
  store i8 64, ptr %492, align 1
  %496 = ptrtoint ptr %493 to i32
  call void @__asan_store1_noabort(i32 %496)
  store i8 2, ptr %493, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i174.i.i) #5
  %497 = getelementptr inbounds i8, ptr %t.i.i174.i.i, i32 4
  %498 = call ptr @memset(ptr %497, i32 0, i32 92)
  %499 = ptrtoint ptr %t.i.i174.i.i to i32
  call void @__asan_store4_noabort(i32 %499)
  store ptr %temp.i175.i.i, ptr %t.i.i174.i.i, align 4
  %len1.i.i178.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i174.i.i, i32 0, i32 2
  %500 = ptrtoint ptr %len1.i.i178.i.i to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 3, ptr %len1.i.i178.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i173.i.i) #5
  %501 = getelementptr inbounds i8, ptr %msg.i.i.i173.i.i, i32 8
  %502 = call ptr @memset(ptr %501, i32 0, i32 40)
  %503 = ptrtoint ptr %msg.i.i.i173.i.i to i32
  call void @__asan_store4_noabort(i32 %503)
  store volatile ptr %msg.i.i.i173.i.i, ptr %msg.i.i.i173.i.i, align 4
  %prev.i.i.i.i.i.i.i179.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i173.i.i, i32 0, i32 1
  %504 = ptrtoint ptr %prev.i.i.i.i.i.i.i179.i.i to i32
  call void @__asan_store4_noabort(i32 %504)
  store ptr %msg.i.i.i173.i.i, ptr %prev.i.i.i.i.i.i.i179.i.i, align 4
  %resources.i.i.i.i.i.i180.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i173.i.i, i32 0, i32 10
  %505 = ptrtoint ptr %resources.i.i.i.i.i.i180.i.i to i32
  call void @__asan_store4_noabort(i32 %505)
  store volatile ptr %resources.i.i.i.i.i.i180.i.i, ptr %resources.i.i.i.i.i.i180.i.i, align 4
  %prev.i2.i.i.i.i.i.i181.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i173.i.i, i32 0, i32 10, i32 1
  %506 = ptrtoint ptr %prev.i2.i.i.i.i.i.i181.i.i to i32
  call void @__asan_store4_noabort(i32 %506)
  store ptr %resources.i.i.i.i.i.i180.i.i, ptr %prev.i2.i.i.i.i.i.i181.i.i, align 4
  %transfer_list.i.i.i.i.i182.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i174.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i183.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i182.i.i, ptr noundef nonnull %msg.i.i.i173.i.i, ptr noundef nonnull %msg.i.i.i173.i.i) #5
  br i1 %call.i.i.i.i.i.i.i183.i.i, label %if.end.i.i.i.i.i.i.i186.i.i, label %slic_write.exit172.i.i.slic_write.exit188.i.i_crit_edge

slic_write.exit172.i.i.slic_write.exit188.i.i_crit_edge: ; preds = %slic_write.exit172.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit188.i.i

if.end.i.i.i.i.i.i.i186.i.i:                      ; preds = %slic_write.exit172.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %507 = ptrtoint ptr %prev.i.i.i.i.i.i.i179.i.i to i32
  call void @__asan_store4_noabort(i32 %507)
  store ptr %transfer_list.i.i.i.i.i182.i.i, ptr %prev.i.i.i.i.i.i.i179.i.i, align 4
  %508 = ptrtoint ptr %transfer_list.i.i.i.i.i182.i.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store ptr %msg.i.i.i173.i.i, ptr %transfer_list.i.i.i.i.i182.i.i, align 4
  %prev3.i.i.i.i.i.i.i185.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i174.i.i, i32 0, i32 18, i32 1
  %509 = ptrtoint ptr %prev3.i.i.i.i.i.i.i185.i.i to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr %msg.i.i.i173.i.i, ptr %prev3.i.i.i.i.i.i.i185.i.i, align 4
  %510 = ptrtoint ptr %msg.i.i.i173.i.i to i32
  call void @__asan_store4_noabort(i32 %510)
  store volatile ptr %transfer_list.i.i.i.i.i182.i.i, ptr %msg.i.i.i173.i.i, align 4
  br label %slic_write.exit188.i.i

slic_write.exit188.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i186.i.i, %slic_write.exit172.i.i.slic_write.exit188.i.i_crit_edge
  %call.i.i.i187.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i173.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i173.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i174.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i175.i.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp.i189.i.i) #5
  %511 = getelementptr inbounds [2 x i8], ptr %temp.i189.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i190.i.i) #5
  %512 = ptrtoint ptr %data.i190.i.i to i32
  call void @__asan_store1_noabort(i32 %512)
  store i8 -1, ptr %data.i190.i.i, align 1, !annotation !38
  %513 = ptrtoint ptr %temp.i189.i.i to i32
  call void @__asan_store1_noabort(i32 %513)
  store i8 -128, ptr %temp.i189.i.i, align 1
  %514 = ptrtoint ptr %511 to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 -128, ptr %511, align 1
  %call41.i191.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %temp.i189.i.i, i32 noundef 2, ptr noundef nonnull %data.i190.i.i, i32 noundef 1) #5
  %515 = ptrtoint ptr %data.i190.i.i to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %data.i190.i.i, align 1
  %idxprom.i.i194.i.i = zext i8 %516 to i32
  %arrayidx.i.i195.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i194.i.i
  %517 = ptrtoint ptr %arrayidx.i.i195.i.i to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %arrayidx.i.i195.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i190.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp.i189.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i201.i.i) #5
  %519 = getelementptr inbounds [3 x i8], ptr %temp.i201.i.i, i32 0, i32 1
  %520 = getelementptr inbounds [3 x i8], ptr %temp.i201.i.i, i32 0, i32 2
  %521 = or i8 %518, 64
  %idxprom.i.i204.i.i = zext i8 %521 to i32
  %arrayidx.i.i205.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i204.i.i
  %522 = ptrtoint ptr %arrayidx.i.i205.i.i to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %arrayidx.i.i205.i.i, align 1
  %524 = ptrtoint ptr %temp.i201.i.i to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 0, ptr %temp.i201.i.i, align 1
  %525 = ptrtoint ptr %519 to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 -128, ptr %519, align 1
  %526 = ptrtoint ptr %520 to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 %523, ptr %520, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i200.i.i) #5
  %527 = getelementptr inbounds i8, ptr %t.i.i200.i.i, i32 4
  %528 = call ptr @memset(ptr %527, i32 0, i32 92)
  %529 = ptrtoint ptr %t.i.i200.i.i to i32
  call void @__asan_store4_noabort(i32 %529)
  store ptr %temp.i201.i.i, ptr %t.i.i200.i.i, align 4
  %len1.i.i208.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i200.i.i, i32 0, i32 2
  %530 = ptrtoint ptr %len1.i.i208.i.i to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 3, ptr %len1.i.i208.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i199.i.i) #5
  %531 = getelementptr inbounds i8, ptr %msg.i.i.i199.i.i, i32 8
  %532 = call ptr @memset(ptr %531, i32 0, i32 40)
  %533 = ptrtoint ptr %msg.i.i.i199.i.i to i32
  call void @__asan_store4_noabort(i32 %533)
  store volatile ptr %msg.i.i.i199.i.i, ptr %msg.i.i.i199.i.i, align 4
  %prev.i.i.i.i.i.i.i209.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i199.i.i, i32 0, i32 1
  %534 = ptrtoint ptr %prev.i.i.i.i.i.i.i209.i.i to i32
  call void @__asan_store4_noabort(i32 %534)
  store ptr %msg.i.i.i199.i.i, ptr %prev.i.i.i.i.i.i.i209.i.i, align 4
  %resources.i.i.i.i.i.i210.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i199.i.i, i32 0, i32 10
  %535 = ptrtoint ptr %resources.i.i.i.i.i.i210.i.i to i32
  call void @__asan_store4_noabort(i32 %535)
  store volatile ptr %resources.i.i.i.i.i.i210.i.i, ptr %resources.i.i.i.i.i.i210.i.i, align 4
  %prev.i2.i.i.i.i.i.i211.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i199.i.i, i32 0, i32 10, i32 1
  %536 = ptrtoint ptr %prev.i2.i.i.i.i.i.i211.i.i to i32
  call void @__asan_store4_noabort(i32 %536)
  store ptr %resources.i.i.i.i.i.i210.i.i, ptr %prev.i2.i.i.i.i.i.i211.i.i, align 4
  %transfer_list.i.i.i.i.i212.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i200.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i213.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i212.i.i, ptr noundef nonnull %msg.i.i.i199.i.i, ptr noundef nonnull %msg.i.i.i199.i.i) #5
  br i1 %call.i.i.i.i.i.i.i213.i.i, label %if.end.i.i.i.i.i.i.i216.i.i, label %slic_write.exit188.i.i.slic_write.exit218.i.i_crit_edge

slic_write.exit188.i.i.slic_write.exit218.i.i_crit_edge: ; preds = %slic_write.exit188.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit218.i.i

if.end.i.i.i.i.i.i.i216.i.i:                      ; preds = %slic_write.exit188.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %537 = ptrtoint ptr %prev.i.i.i.i.i.i.i209.i.i to i32
  call void @__asan_store4_noabort(i32 %537)
  store ptr %transfer_list.i.i.i.i.i212.i.i, ptr %prev.i.i.i.i.i.i.i209.i.i, align 4
  %538 = ptrtoint ptr %transfer_list.i.i.i.i.i212.i.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store ptr %msg.i.i.i199.i.i, ptr %transfer_list.i.i.i.i.i212.i.i, align 4
  %prev3.i.i.i.i.i.i.i215.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i200.i.i, i32 0, i32 18, i32 1
  %539 = ptrtoint ptr %prev3.i.i.i.i.i.i.i215.i.i to i32
  call void @__asan_store4_noabort(i32 %539)
  store ptr %msg.i.i.i199.i.i, ptr %prev3.i.i.i.i.i.i.i215.i.i, align 4
  %540 = ptrtoint ptr %msg.i.i.i199.i.i to i32
  call void @__asan_store4_noabort(i32 %540)
  store volatile ptr %transfer_list.i.i.i.i.i212.i.i, ptr %msg.i.i.i199.i.i, align 4
  br label %slic_write.exit218.i.i

slic_write.exit218.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i216.i.i, %slic_write.exit188.i.i.slic_write.exit218.i.i_crit_edge
  %call.i.i.i217.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i199.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i199.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i200.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i201.i.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp.i219.i.i) #5
  %541 = getelementptr inbounds [2 x i8], ptr %temp.i219.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i220.i.i) #5
  %542 = ptrtoint ptr %data.i220.i.i to i32
  call void @__asan_store1_noabort(i32 %542)
  store i8 -1, ptr %data.i220.i.i, align 1, !annotation !38
  %543 = ptrtoint ptr %temp.i219.i.i to i32
  call void @__asan_store1_noabort(i32 %543)
  store i8 -128, ptr %temp.i219.i.i, align 1
  %544 = ptrtoint ptr %541 to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 -64, ptr %541, align 1
  %call41.i221.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %temp.i219.i.i, i32 noundef 2, ptr noundef nonnull %data.i220.i.i, i32 noundef 1) #5
  %545 = ptrtoint ptr %data.i220.i.i to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %data.i220.i.i, align 1
  %idxprom.i.i224.i.i = zext i8 %546 to i32
  %arrayidx.i.i225.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i224.i.i
  %547 = ptrtoint ptr %arrayidx.i.i225.i.i to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %arrayidx.i.i225.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i220.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp.i219.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i231.i.i) #5
  %549 = getelementptr inbounds [3 x i8], ptr %temp.i231.i.i, i32 0, i32 1
  %550 = getelementptr inbounds [3 x i8], ptr %temp.i231.i.i, i32 0, i32 2
  %551 = or i8 %548, 64
  %idxprom.i.i234.i.i = zext i8 %551 to i32
  %arrayidx.i.i235.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i234.i.i
  %552 = ptrtoint ptr %arrayidx.i.i235.i.i to i32
  call void @__asan_load1_noabort(i32 %552)
  %553 = load i8, ptr %arrayidx.i.i235.i.i, align 1
  %554 = ptrtoint ptr %temp.i231.i.i to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 0, ptr %temp.i231.i.i, align 1
  %555 = ptrtoint ptr %549 to i32
  call void @__asan_store1_noabort(i32 %555)
  store i8 -64, ptr %549, align 1
  %556 = ptrtoint ptr %550 to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 %553, ptr %550, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i230.i.i) #5
  %557 = getelementptr inbounds i8, ptr %t.i.i230.i.i, i32 4
  %558 = call ptr @memset(ptr %557, i32 0, i32 92)
  %559 = ptrtoint ptr %t.i.i230.i.i to i32
  call void @__asan_store4_noabort(i32 %559)
  store ptr %temp.i231.i.i, ptr %t.i.i230.i.i, align 4
  %len1.i.i238.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i230.i.i, i32 0, i32 2
  %560 = ptrtoint ptr %len1.i.i238.i.i to i32
  call void @__asan_store4_noabort(i32 %560)
  store i32 3, ptr %len1.i.i238.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i229.i.i) #5
  %561 = getelementptr inbounds i8, ptr %msg.i.i.i229.i.i, i32 8
  %562 = call ptr @memset(ptr %561, i32 0, i32 40)
  %563 = ptrtoint ptr %msg.i.i.i229.i.i to i32
  call void @__asan_store4_noabort(i32 %563)
  store volatile ptr %msg.i.i.i229.i.i, ptr %msg.i.i.i229.i.i, align 4
  %prev.i.i.i.i.i.i.i239.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i229.i.i, i32 0, i32 1
  %564 = ptrtoint ptr %prev.i.i.i.i.i.i.i239.i.i to i32
  call void @__asan_store4_noabort(i32 %564)
  store ptr %msg.i.i.i229.i.i, ptr %prev.i.i.i.i.i.i.i239.i.i, align 4
  %resources.i.i.i.i.i.i240.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i229.i.i, i32 0, i32 10
  %565 = ptrtoint ptr %resources.i.i.i.i.i.i240.i.i to i32
  call void @__asan_store4_noabort(i32 %565)
  store volatile ptr %resources.i.i.i.i.i.i240.i.i, ptr %resources.i.i.i.i.i.i240.i.i, align 4
  %prev.i2.i.i.i.i.i.i241.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i229.i.i, i32 0, i32 10, i32 1
  %566 = ptrtoint ptr %prev.i2.i.i.i.i.i.i241.i.i to i32
  call void @__asan_store4_noabort(i32 %566)
  store ptr %resources.i.i.i.i.i.i240.i.i, ptr %prev.i2.i.i.i.i.i.i241.i.i, align 4
  %transfer_list.i.i.i.i.i242.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i230.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i243.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i242.i.i, ptr noundef nonnull %msg.i.i.i229.i.i, ptr noundef nonnull %msg.i.i.i229.i.i) #5
  br i1 %call.i.i.i.i.i.i.i243.i.i, label %if.end.i.i.i.i.i.i.i246.i.i, label %slic_write.exit218.i.i.slic_write.exit248.i.i_crit_edge

slic_write.exit218.i.i.slic_write.exit248.i.i_crit_edge: ; preds = %slic_write.exit218.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit248.i.i

if.end.i.i.i.i.i.i.i246.i.i:                      ; preds = %slic_write.exit218.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %567 = ptrtoint ptr %prev.i.i.i.i.i.i.i239.i.i to i32
  call void @__asan_store4_noabort(i32 %567)
  store ptr %transfer_list.i.i.i.i.i242.i.i, ptr %prev.i.i.i.i.i.i.i239.i.i, align 4
  %568 = ptrtoint ptr %transfer_list.i.i.i.i.i242.i.i to i32
  call void @__asan_store4_noabort(i32 %568)
  store ptr %msg.i.i.i229.i.i, ptr %transfer_list.i.i.i.i.i242.i.i, align 4
  %prev3.i.i.i.i.i.i.i245.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i230.i.i, i32 0, i32 18, i32 1
  %569 = ptrtoint ptr %prev3.i.i.i.i.i.i.i245.i.i to i32
  call void @__asan_store4_noabort(i32 %569)
  store ptr %msg.i.i.i229.i.i, ptr %prev3.i.i.i.i.i.i.i245.i.i, align 4
  %570 = ptrtoint ptr %msg.i.i.i229.i.i to i32
  call void @__asan_store4_noabort(i32 %570)
  store volatile ptr %transfer_list.i.i.i.i.i242.i.i, ptr %msg.i.i.i229.i.i, align 4
  br label %slic_write.exit248.i.i

slic_write.exit248.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i246.i.i, %slic_write.exit218.i.i.slic_write.exit248.i.i_crit_edge
  %call.i.i.i247.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i229.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i229.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i230.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i231.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i251.i.i) #5
  %571 = getelementptr inbounds [3 x i8], ptr %temp.i251.i.i, i32 0, i32 1
  %572 = getelementptr inbounds [3 x i8], ptr %temp.i251.i.i, i32 0, i32 2
  %573 = ptrtoint ptr %temp.i251.i.i to i32
  call void @__asan_store1_noabort(i32 %573)
  store i8 0, ptr %temp.i251.i.i, align 1
  %574 = ptrtoint ptr %571 to i32
  call void @__asan_store1_noabort(i32 %574)
  store i8 4, ptr %571, align 1
  %575 = ptrtoint ptr %572 to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 0, ptr %572, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i250.i.i) #5
  %576 = getelementptr inbounds i8, ptr %t.i.i250.i.i, i32 4
  %577 = call ptr @memset(ptr %576, i32 0, i32 92)
  %578 = ptrtoint ptr %t.i.i250.i.i to i32
  call void @__asan_store4_noabort(i32 %578)
  store ptr %temp.i251.i.i, ptr %t.i.i250.i.i, align 4
  %len1.i.i254.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i250.i.i, i32 0, i32 2
  %579 = ptrtoint ptr %len1.i.i254.i.i to i32
  call void @__asan_store4_noabort(i32 %579)
  store i32 3, ptr %len1.i.i254.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i249.i.i) #5
  %580 = getelementptr inbounds i8, ptr %msg.i.i.i249.i.i, i32 8
  %581 = call ptr @memset(ptr %580, i32 0, i32 40)
  %582 = ptrtoint ptr %msg.i.i.i249.i.i to i32
  call void @__asan_store4_noabort(i32 %582)
  store volatile ptr %msg.i.i.i249.i.i, ptr %msg.i.i.i249.i.i, align 4
  %prev.i.i.i.i.i.i.i255.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i249.i.i, i32 0, i32 1
  %583 = ptrtoint ptr %prev.i.i.i.i.i.i.i255.i.i to i32
  call void @__asan_store4_noabort(i32 %583)
  store ptr %msg.i.i.i249.i.i, ptr %prev.i.i.i.i.i.i.i255.i.i, align 4
  %resources.i.i.i.i.i.i256.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i249.i.i, i32 0, i32 10
  %584 = ptrtoint ptr %resources.i.i.i.i.i.i256.i.i to i32
  call void @__asan_store4_noabort(i32 %584)
  store volatile ptr %resources.i.i.i.i.i.i256.i.i, ptr %resources.i.i.i.i.i.i256.i.i, align 4
  %prev.i2.i.i.i.i.i.i257.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i249.i.i, i32 0, i32 10, i32 1
  %585 = ptrtoint ptr %prev.i2.i.i.i.i.i.i257.i.i to i32
  call void @__asan_store4_noabort(i32 %585)
  store ptr %resources.i.i.i.i.i.i256.i.i, ptr %prev.i2.i.i.i.i.i.i257.i.i, align 4
  %transfer_list.i.i.i.i.i258.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i250.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i259.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i258.i.i, ptr noundef nonnull %msg.i.i.i249.i.i, ptr noundef nonnull %msg.i.i.i249.i.i) #5
  br i1 %call.i.i.i.i.i.i.i259.i.i, label %if.end.i.i.i.i.i.i.i262.i.i, label %slic_write.exit248.i.i.slic_write.exit264.i.i_crit_edge

slic_write.exit248.i.i.slic_write.exit264.i.i_crit_edge: ; preds = %slic_write.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit264.i.i

if.end.i.i.i.i.i.i.i262.i.i:                      ; preds = %slic_write.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %586 = ptrtoint ptr %prev.i.i.i.i.i.i.i255.i.i to i32
  call void @__asan_store4_noabort(i32 %586)
  store ptr %transfer_list.i.i.i.i.i258.i.i, ptr %prev.i.i.i.i.i.i.i255.i.i, align 4
  %587 = ptrtoint ptr %transfer_list.i.i.i.i.i258.i.i to i32
  call void @__asan_store4_noabort(i32 %587)
  store ptr %msg.i.i.i249.i.i, ptr %transfer_list.i.i.i.i.i258.i.i, align 4
  %prev3.i.i.i.i.i.i.i261.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i250.i.i, i32 0, i32 18, i32 1
  %588 = ptrtoint ptr %prev3.i.i.i.i.i.i.i261.i.i to i32
  call void @__asan_store4_noabort(i32 %588)
  store ptr %msg.i.i.i249.i.i, ptr %prev3.i.i.i.i.i.i.i261.i.i, align 4
  %589 = ptrtoint ptr %msg.i.i.i249.i.i to i32
  call void @__asan_store4_noabort(i32 %589)
  store volatile ptr %transfer_list.i.i.i.i.i258.i.i, ptr %msg.i.i.i249.i.i, align 4
  br label %slic_write.exit264.i.i

slic_write.exit264.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i262.i.i, %slic_write.exit248.i.i.slic_write.exit264.i.i_crit_edge
  %call.i.i.i263.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i249.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i249.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i250.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i251.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i267.i.i) #5
  %590 = getelementptr inbounds [3 x i8], ptr %temp.i267.i.i, i32 0, i32 1
  %591 = getelementptr inbounds [3 x i8], ptr %temp.i267.i.i, i32 0, i32 2
  %592 = ptrtoint ptr %temp.i267.i.i to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 64, ptr %temp.i267.i.i, align 1
  %593 = ptrtoint ptr %590 to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 4, ptr %590, align 1
  %594 = ptrtoint ptr %591 to i32
  call void @__asan_store1_noabort(i32 %594)
  store i8 0, ptr %591, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i266.i.i) #5
  %595 = getelementptr inbounds i8, ptr %t.i.i266.i.i, i32 4
  %596 = call ptr @memset(ptr %595, i32 0, i32 92)
  %597 = ptrtoint ptr %t.i.i266.i.i to i32
  call void @__asan_store4_noabort(i32 %597)
  store ptr %temp.i267.i.i, ptr %t.i.i266.i.i, align 4
  %len1.i.i270.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i266.i.i, i32 0, i32 2
  %598 = ptrtoint ptr %len1.i.i270.i.i to i32
  call void @__asan_store4_noabort(i32 %598)
  store i32 3, ptr %len1.i.i270.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i265.i.i) #5
  %599 = getelementptr inbounds i8, ptr %msg.i.i.i265.i.i, i32 8
  %600 = call ptr @memset(ptr %599, i32 0, i32 40)
  %601 = ptrtoint ptr %msg.i.i.i265.i.i to i32
  call void @__asan_store4_noabort(i32 %601)
  store volatile ptr %msg.i.i.i265.i.i, ptr %msg.i.i.i265.i.i, align 4
  %prev.i.i.i.i.i.i.i271.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i265.i.i, i32 0, i32 1
  %602 = ptrtoint ptr %prev.i.i.i.i.i.i.i271.i.i to i32
  call void @__asan_store4_noabort(i32 %602)
  store ptr %msg.i.i.i265.i.i, ptr %prev.i.i.i.i.i.i.i271.i.i, align 4
  %resources.i.i.i.i.i.i272.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i265.i.i, i32 0, i32 10
  %603 = ptrtoint ptr %resources.i.i.i.i.i.i272.i.i to i32
  call void @__asan_store4_noabort(i32 %603)
  store volatile ptr %resources.i.i.i.i.i.i272.i.i, ptr %resources.i.i.i.i.i.i272.i.i, align 4
  %prev.i2.i.i.i.i.i.i273.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i265.i.i, i32 0, i32 10, i32 1
  %604 = ptrtoint ptr %prev.i2.i.i.i.i.i.i273.i.i to i32
  call void @__asan_store4_noabort(i32 %604)
  store ptr %resources.i.i.i.i.i.i272.i.i, ptr %prev.i2.i.i.i.i.i.i273.i.i, align 4
  %transfer_list.i.i.i.i.i274.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i266.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i275.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i274.i.i, ptr noundef nonnull %msg.i.i.i265.i.i, ptr noundef nonnull %msg.i.i.i265.i.i) #5
  br i1 %call.i.i.i.i.i.i.i275.i.i, label %if.end.i.i.i.i.i.i.i278.i.i, label %slic_write.exit264.i.i.slic_write.exit280.i.i_crit_edge

slic_write.exit264.i.i.slic_write.exit280.i.i_crit_edge: ; preds = %slic_write.exit264.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit280.i.i

if.end.i.i.i.i.i.i.i278.i.i:                      ; preds = %slic_write.exit264.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %605 = ptrtoint ptr %prev.i.i.i.i.i.i.i271.i.i to i32
  call void @__asan_store4_noabort(i32 %605)
  store ptr %transfer_list.i.i.i.i.i274.i.i, ptr %prev.i.i.i.i.i.i.i271.i.i, align 4
  %606 = ptrtoint ptr %transfer_list.i.i.i.i.i274.i.i to i32
  call void @__asan_store4_noabort(i32 %606)
  store ptr %msg.i.i.i265.i.i, ptr %transfer_list.i.i.i.i.i274.i.i, align 4
  %prev3.i.i.i.i.i.i.i277.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i266.i.i, i32 0, i32 18, i32 1
  %607 = ptrtoint ptr %prev3.i.i.i.i.i.i.i277.i.i to i32
  call void @__asan_store4_noabort(i32 %607)
  store ptr %msg.i.i.i265.i.i, ptr %prev3.i.i.i.i.i.i.i277.i.i, align 4
  %608 = ptrtoint ptr %msg.i.i.i265.i.i to i32
  call void @__asan_store4_noabort(i32 %608)
  store volatile ptr %transfer_list.i.i.i.i.i274.i.i, ptr %msg.i.i.i265.i.i, align 4
  br label %slic_write.exit280.i.i

slic_write.exit280.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i278.i.i, %slic_write.exit264.i.i.slic_write.exit280.i.i_crit_edge
  %call.i.i.i279.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i265.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i265.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i266.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i267.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i283.i.i) #5
  %609 = getelementptr inbounds [3 x i8], ptr %temp.i283.i.i, i32 0, i32 1
  %610 = getelementptr inbounds [3 x i8], ptr %temp.i283.i.i, i32 0, i32 2
  %611 = ptrtoint ptr %temp.i283.i.i to i32
  call void @__asan_store1_noabort(i32 %611)
  store i8 112, ptr %temp.i283.i.i, align 1
  %612 = ptrtoint ptr %609 to i32
  call void @__asan_store1_noabort(i32 %612)
  store i8 4, ptr %609, align 1
  %613 = ptrtoint ptr %610 to i32
  call void @__asan_store1_noabort(i32 %613)
  store i8 -64, ptr %610, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i282.i.i) #5
  %614 = getelementptr inbounds i8, ptr %t.i.i282.i.i, i32 4
  %615 = call ptr @memset(ptr %614, i32 0, i32 92)
  %616 = ptrtoint ptr %t.i.i282.i.i to i32
  call void @__asan_store4_noabort(i32 %616)
  store ptr %temp.i283.i.i, ptr %t.i.i282.i.i, align 4
  %len1.i.i286.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i282.i.i, i32 0, i32 2
  %617 = ptrtoint ptr %len1.i.i286.i.i to i32
  call void @__asan_store4_noabort(i32 %617)
  store i32 3, ptr %len1.i.i286.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i281.i.i) #5
  %618 = getelementptr inbounds i8, ptr %msg.i.i.i281.i.i, i32 8
  %619 = call ptr @memset(ptr %618, i32 0, i32 40)
  %620 = ptrtoint ptr %msg.i.i.i281.i.i to i32
  call void @__asan_store4_noabort(i32 %620)
  store volatile ptr %msg.i.i.i281.i.i, ptr %msg.i.i.i281.i.i, align 4
  %prev.i.i.i.i.i.i.i287.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i281.i.i, i32 0, i32 1
  %621 = ptrtoint ptr %prev.i.i.i.i.i.i.i287.i.i to i32
  call void @__asan_store4_noabort(i32 %621)
  store ptr %msg.i.i.i281.i.i, ptr %prev.i.i.i.i.i.i.i287.i.i, align 4
  %resources.i.i.i.i.i.i288.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i281.i.i, i32 0, i32 10
  %622 = ptrtoint ptr %resources.i.i.i.i.i.i288.i.i to i32
  call void @__asan_store4_noabort(i32 %622)
  store volatile ptr %resources.i.i.i.i.i.i288.i.i, ptr %resources.i.i.i.i.i.i288.i.i, align 4
  %prev.i2.i.i.i.i.i.i289.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i281.i.i, i32 0, i32 10, i32 1
  %623 = ptrtoint ptr %prev.i2.i.i.i.i.i.i289.i.i to i32
  call void @__asan_store4_noabort(i32 %623)
  store ptr %resources.i.i.i.i.i.i288.i.i, ptr %prev.i2.i.i.i.i.i.i289.i.i, align 4
  %transfer_list.i.i.i.i.i290.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i282.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i291.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i290.i.i, ptr noundef nonnull %msg.i.i.i281.i.i, ptr noundef nonnull %msg.i.i.i281.i.i) #5
  br i1 %call.i.i.i.i.i.i.i291.i.i, label %if.end.i.i.i.i.i.i.i294.i.i, label %slic_write.exit280.i.i.slic_write.exit296.i.i_crit_edge

slic_write.exit280.i.i.slic_write.exit296.i.i_crit_edge: ; preds = %slic_write.exit280.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_write.exit296.i.i

if.end.i.i.i.i.i.i.i294.i.i:                      ; preds = %slic_write.exit280.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %624 = ptrtoint ptr %prev.i.i.i.i.i.i.i287.i.i to i32
  call void @__asan_store4_noabort(i32 %624)
  store ptr %transfer_list.i.i.i.i.i290.i.i, ptr %prev.i.i.i.i.i.i.i287.i.i, align 4
  %625 = ptrtoint ptr %transfer_list.i.i.i.i.i290.i.i to i32
  call void @__asan_store4_noabort(i32 %625)
  store ptr %msg.i.i.i281.i.i, ptr %transfer_list.i.i.i.i.i290.i.i, align 4
  %prev3.i.i.i.i.i.i.i293.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i282.i.i, i32 0, i32 18, i32 1
  %626 = ptrtoint ptr %prev3.i.i.i.i.i.i.i293.i.i to i32
  call void @__asan_store4_noabort(i32 %626)
  store ptr %msg.i.i.i281.i.i, ptr %prev3.i.i.i.i.i.i.i293.i.i, align 4
  %627 = ptrtoint ptr %msg.i.i.i281.i.i to i32
  call void @__asan_store4_noabort(i32 %627)
  store volatile ptr %transfer_list.i.i.i.i.i290.i.i, ptr %msg.i.i.i281.i.i, align 4
  br label %slic_write.exit296.i.i

slic_write.exit296.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i294.i.i, %slic_write.exit280.i.i.slic_write.exit296.i.i_crit_edge
  %call.i.i.i295.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i281.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i281.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i282.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i283.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i299.i.i) #5
  %628 = getelementptr inbounds [3 x i8], ptr %temp.i299.i.i, i32 0, i32 1
  %629 = getelementptr inbounds [3 x i8], ptr %temp.i299.i.i, i32 0, i32 2
  %630 = ptrtoint ptr %temp.i299.i.i to i32
  call void @__asan_store1_noabort(i32 %630)
  store i8 32, ptr %temp.i299.i.i, align 1
  %631 = ptrtoint ptr %628 to i32
  call void @__asan_store1_noabort(i32 %631)
  store i8 4, ptr %628, align 1
  %632 = ptrtoint ptr %629 to i32
  call void @__asan_store1_noabort(i32 %632)
  store i8 -128, ptr %629, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i298.i.i) #5
  %633 = getelementptr inbounds i8, ptr %t.i.i298.i.i, i32 4
  %634 = call ptr @memset(ptr %633, i32 0, i32 92)
  %635 = ptrtoint ptr %t.i.i298.i.i to i32
  call void @__asan_store4_noabort(i32 %635)
  store ptr %temp.i299.i.i, ptr %t.i.i298.i.i, align 4
  %len1.i.i302.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i298.i.i, i32 0, i32 2
  %636 = ptrtoint ptr %len1.i.i302.i.i to i32
  call void @__asan_store4_noabort(i32 %636)
  store i32 3, ptr %len1.i.i302.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i297.i.i) #5
  %637 = getelementptr inbounds i8, ptr %msg.i.i.i297.i.i, i32 8
  %638 = call ptr @memset(ptr %637, i32 0, i32 40)
  %639 = ptrtoint ptr %msg.i.i.i297.i.i to i32
  call void @__asan_store4_noabort(i32 %639)
  store volatile ptr %msg.i.i.i297.i.i, ptr %msg.i.i.i297.i.i, align 4
  %prev.i.i.i.i.i.i.i303.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i297.i.i, i32 0, i32 1
  %640 = ptrtoint ptr %prev.i.i.i.i.i.i.i303.i.i to i32
  call void @__asan_store4_noabort(i32 %640)
  store ptr %msg.i.i.i297.i.i, ptr %prev.i.i.i.i.i.i.i303.i.i, align 4
  %resources.i.i.i.i.i.i304.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i297.i.i, i32 0, i32 10
  %641 = ptrtoint ptr %resources.i.i.i.i.i.i304.i.i to i32
  call void @__asan_store4_noabort(i32 %641)
  store volatile ptr %resources.i.i.i.i.i.i304.i.i, ptr %resources.i.i.i.i.i.i304.i.i, align 4
  %prev.i2.i.i.i.i.i.i305.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i297.i.i, i32 0, i32 10, i32 1
  %642 = ptrtoint ptr %prev.i2.i.i.i.i.i.i305.i.i to i32
  call void @__asan_store4_noabort(i32 %642)
  store ptr %resources.i.i.i.i.i.i304.i.i, ptr %prev.i2.i.i.i.i.i.i305.i.i, align 4
  %transfer_list.i.i.i.i.i306.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i298.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i307.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i306.i.i, ptr noundef nonnull %msg.i.i.i297.i.i, ptr noundef nonnull %msg.i.i.i297.i.i) #5
  br i1 %call.i.i.i.i.i.i.i307.i.i, label %if.end.i.i.i.i.i.i.i310.i.i, label %slic_write.exit296.i.i.ds26522_e1_spec_config.exit.i_crit_edge

slic_write.exit296.i.i.ds26522_e1_spec_config.exit.i_crit_edge: ; preds = %slic_write.exit296.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds26522_e1_spec_config.exit.i

if.end.i.i.i.i.i.i.i310.i.i:                      ; preds = %slic_write.exit296.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %643 = ptrtoint ptr %prev.i.i.i.i.i.i.i303.i.i to i32
  call void @__asan_store4_noabort(i32 %643)
  store ptr %transfer_list.i.i.i.i.i306.i.i, ptr %prev.i.i.i.i.i.i.i303.i.i, align 4
  %644 = ptrtoint ptr %transfer_list.i.i.i.i.i306.i.i to i32
  call void @__asan_store4_noabort(i32 %644)
  store ptr %msg.i.i.i297.i.i, ptr %transfer_list.i.i.i.i.i306.i.i, align 4
  %prev3.i.i.i.i.i.i.i309.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i298.i.i, i32 0, i32 18, i32 1
  %645 = ptrtoint ptr %prev3.i.i.i.i.i.i.i309.i.i to i32
  call void @__asan_store4_noabort(i32 %645)
  store ptr %msg.i.i.i297.i.i, ptr %prev3.i.i.i.i.i.i.i309.i.i, align 4
  %646 = ptrtoint ptr %msg.i.i.i297.i.i to i32
  call void @__asan_store4_noabort(i32 %646)
  store volatile ptr %transfer_list.i.i.i.i.i306.i.i, ptr %msg.i.i.i297.i.i, align 4
  br label %ds26522_e1_spec_config.exit.i

ds26522_e1_spec_config.exit.i:                    ; preds = %if.end.i.i.i.i.i.i.i310.i.i, %slic_write.exit296.i.i.ds26522_e1_spec_config.exit.i_crit_edge
  %call.i.i.i311.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i297.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i297.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i298.i.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i299.i.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %temp.i240.i) #5
  %647 = getelementptr inbounds [3 x i8], ptr %temp.i240.i, i32 0, i32 1
  %648 = getelementptr inbounds [3 x i8], ptr %temp.i240.i, i32 0, i32 2
  %649 = ptrtoint ptr %temp.i240.i to i32
  call void @__asan_store1_noabort(i32 %649)
  store i8 7, ptr %temp.i240.i, align 1
  %650 = ptrtoint ptr %647 to i32
  call void @__asan_store1_noabort(i32 %650)
  store i8 -128, ptr %647, align 1
  %651 = ptrtoint ptr %648 to i32
  call void @__asan_store1_noabort(i32 %651)
  store i8 0, ptr %648, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i239.i) #5
  %652 = getelementptr inbounds i8, ptr %t.i.i239.i, i32 4
  %653 = call ptr @memset(ptr %652, i32 0, i32 92)
  %654 = ptrtoint ptr %t.i.i239.i to i32
  call void @__asan_store4_noabort(i32 %654)
  store ptr %temp.i240.i, ptr %t.i.i239.i, align 4
  %len1.i.i246.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i239.i, i32 0, i32 2
  %655 = ptrtoint ptr %len1.i.i246.i to i32
  call void @__asan_store4_noabort(i32 %655)
  store i32 3, ptr %len1.i.i246.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i238.i) #5
  %656 = getelementptr inbounds i8, ptr %msg.i.i.i238.i, i32 8
  %657 = call ptr @memset(ptr %656, i32 0, i32 40)
  %658 = ptrtoint ptr %msg.i.i.i238.i to i32
  call void @__asan_store4_noabort(i32 %658)
  store volatile ptr %msg.i.i.i238.i, ptr %msg.i.i.i238.i, align 4
  %prev.i.i.i.i.i.i.i247.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i238.i, i32 0, i32 1
  %659 = ptrtoint ptr %prev.i.i.i.i.i.i.i247.i to i32
  call void @__asan_store4_noabort(i32 %659)
  store ptr %msg.i.i.i238.i, ptr %prev.i.i.i.i.i.i.i247.i, align 4
  %resources.i.i.i.i.i.i248.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i238.i, i32 0, i32 10
  %660 = ptrtoint ptr %resources.i.i.i.i.i.i248.i to i32
  call void @__asan_store4_noabort(i32 %660)
  store volatile ptr %resources.i.i.i.i.i.i248.i, ptr %resources.i.i.i.i.i.i248.i, align 4
  %prev.i2.i.i.i.i.i.i249.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i238.i, i32 0, i32 10, i32 1
  %661 = ptrtoint ptr %prev.i2.i.i.i.i.i.i249.i to i32
  call void @__asan_store4_noabort(i32 %661)
  store ptr %resources.i.i.i.i.i.i248.i, ptr %prev.i2.i.i.i.i.i.i249.i, align 4
  %transfer_list.i.i.i.i.i250.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i239.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i251.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i250.i, ptr noundef nonnull %msg.i.i.i238.i, ptr noundef nonnull %msg.i.i.i238.i) #5
  br i1 %call.i.i.i.i.i.i.i251.i, label %if.end.i.i.i.i.i.i.i253.i, label %ds26522_e1_spec_config.exit.i.slic_ds26522_init_configure.exit_crit_edge

ds26522_e1_spec_config.exit.i.slic_ds26522_init_configure.exit_crit_edge: ; preds = %ds26522_e1_spec_config.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %slic_ds26522_init_configure.exit

if.end.i.i.i.i.i.i.i253.i:                        ; preds = %ds26522_e1_spec_config.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %662 = ptrtoint ptr %prev.i.i.i.i.i.i.i247.i to i32
  call void @__asan_store4_noabort(i32 %662)
  store ptr %transfer_list.i.i.i.i.i250.i, ptr %prev.i.i.i.i.i.i.i247.i, align 4
  %663 = ptrtoint ptr %transfer_list.i.i.i.i.i250.i to i32
  call void @__asan_store4_noabort(i32 %663)
  store ptr %msg.i.i.i238.i, ptr %transfer_list.i.i.i.i.i250.i, align 4
  %prev3.i.i.i.i.i.i.i252.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i239.i, i32 0, i32 18, i32 1
  %664 = ptrtoint ptr %prev3.i.i.i.i.i.i.i252.i to i32
  call void @__asan_store4_noabort(i32 %664)
  store ptr %msg.i.i.i238.i, ptr %prev3.i.i.i.i.i.i.i252.i, align 4
  %665 = ptrtoint ptr %msg.i.i.i238.i to i32
  call void @__asan_store4_noabort(i32 %665)
  store volatile ptr %transfer_list.i.i.i.i.i250.i, ptr %msg.i.i.i238.i, align 4
  br label %slic_ds26522_init_configure.exit

slic_ds26522_init_configure.exit:                 ; preds = %if.end.i.i.i.i.i.i.i253.i, %ds26522_e1_spec_config.exit.i.slic_ds26522_init_configure.exit_crit_edge
  %call.i.i.i254.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i238.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i238.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i239.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %temp.i240.i) #5
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %666 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %666)
  %667 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %667 to i32
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %slic_ds26522_init_configure.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slic_ds26522_remove(ptr nocapture noundef readnone %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !25, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__UNIQUE_ID_file230, !1, !"__UNIQUE_ID_file230", i1 false, i1 false}
!1 = !{!"../drivers/net/wan/slic_ds26522.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_license231, !1, !"__UNIQUE_ID_license231", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author232, !4, !"__UNIQUE_ID_author232", i1 false, i1 false}
!4 = !{!"../drivers/net/wan/slic_ds26522.c", i32 32, i32 1}
!5 = !{ptr @__initcall__kmod_slic_ds26522__233_245_slic_ds26522_driver_init6, !6, !"__initcall__kmod_slic_ds26522__233_245_slic_ds26522_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/net/wan/slic_ds26522.c", i32 245, i32 1}
!7 = !{ptr @__exitcall_slic_ds26522_driver_exit, !6, !"__exitcall_slic_ds26522_driver_exit", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wan/slic_ds26522.c", i32 236, i32 14}
!10 = !{ptr @slic_ds26522_driver, !11, !"slic_ds26522_driver", i1 false, i1 false}
!11 = !{!"../drivers/net/wan/slic_ds26522.c", i32 234, i32 26}
!12 = !{ptr @slic_ds26522_id, !13, !"slic_ds26522_id", i1 false, i1 false}
!13 = !{!"../drivers/net/wan/slic_ds26522.c", i32 220, i32 35}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wan/slic_ds26522.c", i32 215, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @slic_ds26522_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @slic_ds26522_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @g_spi, !21, !"g_spi", i1 false, i1 false}
!21 = !{!"../drivers/net/wan/slic_ds26522.c", i32 29, i32 27}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wan/slic_ds26522.c", i32 199, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @slic_ds26522_remove._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @slic_ds26522_remove._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @slic_ds26522_match, !28, !"slic_ds26522_match", i1 false, i1 false}
!28 = !{!"../drivers/net/wan/slic_ds26522.c", i32 226, i32 34}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
