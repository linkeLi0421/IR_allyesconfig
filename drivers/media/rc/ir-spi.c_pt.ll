; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir-spi.c_pt.bc'
source_filename = "../drivers/media/rc/ir-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ir_spi_data = type { i32, i8, [4096 x i16], i16, i16, ptr, ptr, ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_ir_spi__290_169_ir_spi_driver_init6 = internal global ptr @ir_spi_driver_init, section ".initcall6.init", align 4
@ir_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ir_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ir_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ir_spi_driver_exit = internal global ptr @ir_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [44 x i8] c"ir_spi.author=Andi Shyti <andi@etezian.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [30 x i8] c"ir_spi.description=SPI IR LED\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [36 x i8] c"ir_spi.file=drivers/media/rc/ir-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ir_spi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ir-spi\00", [25 x i8] zeroinitializer }, align 32
@ir_spi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ir-spi-led\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"irda_regulator\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IR SPI\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"led-active-low\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"duty-cycle\00", [21 x i8] zeroinitializer }, align 32
@ir_spi_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 76, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to deliver the signal\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ir_spi_tx\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/media/rc/ir-spi.c\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ir_spi_tx._entry_ptr = internal global ptr @ir_spi_tx._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"ir_spi_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 161, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 164, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"ir_spi_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 155, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 122, i32 51 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 133, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 139, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 140, i32 46 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [29 x i8] c"../drivers/media/rc/ir-spi.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 76, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ir_spi_driver_exit, ptr @__initcall__kmod_ir_spi__290_169_ir_spi_driver_init6, ptr @ir_spi_driver_exit, ptr @ir_spi_tx._entry, ptr @ir_spi_tx._entry_ptr, ptr @ir_spi_driver, ptr @.str, ptr @ir_spi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_spi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_spi_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ir_spi_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ir_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ir_spi_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  %dc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dc) #7
  %0 = ptrtoint ptr %dc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %dc, align 1, !annotation !41
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 8216, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #7
  %regulator = getelementptr inbounds %struct.ir_spi_data, ptr %call.i, i32 0, i32 7
  %1 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_rc_allocate_device(ptr noundef %spi, i32 noundef 2) #7
  %rc = getelementptr inbounds %struct.ir_spi_data, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %rc, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %tx_ir = getelementptr inbounds %struct.rc_dev, ptr %call10, i32 0, i32 54
  %4 = ptrtoint ptr %tx_ir to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ir_spi_tx, ptr %tx_ir, align 8
  %5 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rc, align 4
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, ptr %6, i32 0, i32 51
  %7 = ptrtoint ptr %s_tx_carrier to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ir_spi_set_tx_carrier, ptr %s_tx_carrier, align 4
  %8 = load ptr, ptr %rc, align 4
  %s_tx_duty_cycle = getelementptr inbounds %struct.rc_dev, ptr %8, i32 0, i32 52
  %9 = ptrtoint ptr %s_tx_duty_cycle to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ir_spi_set_duty_cycle, ptr %s_tx_duty_cycle, align 8
  %10 = load ptr, ptr %rc, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.2, ptr %device_name, align 8
  %12 = load ptr, ptr %rc, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str, ptr %driver_name, align 8
  %14 = load ptr, ptr %rc, align 4
  %priv = getelementptr inbounds %struct.rc_dev, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %priv, align 4
  %spi21 = getelementptr inbounds %struct.ir_spi_data, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %spi21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spi, ptr %spi21, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call.i60 = tail call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %tobool.i = icmp ne ptr %call.i60, null
  %negated = getelementptr inbounds %struct.ir_spi_data, ptr %call.i, i32 0, i32 1
  %frombool = zext i1 %tobool.i to i8
  %19 = ptrtoint ptr %negated to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %negated, align 4
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef %21, ptr noundef nonnull @.str.4, ptr noundef nonnull %dc, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool27.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool27.not, label %if.end14.if.end29_crit_edge, label %if.then28

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then28:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %dc to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 50, ptr %dc, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end14.if.end29_crit_edge
  %23 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rc, align 4
  %25 = ptrtoint ptr %dc to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dc, align 1
  %conv = zext i8 %26 to i16
  %priv.i = getelementptr inbounds %struct.rc_dev, ptr %24, i32 0, i32 24
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 4
  %mul.i = mul nuw nsw i16 %conv, 15
  %div.i61 = udiv i16 %mul.i, 100
  %div.i.zext = zext i16 %div.i61 to i32
  %sub.i = sub nsw i32 31, %div.i.zext
  %shr.i = lshr i32 -1, %sub.i
  %conv.i = trunc i32 %shr.i to i16
  %pulse.i = getelementptr inbounds %struct.ir_spi_data, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %pulse.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %pulse.i, align 2
  %negated.i = getelementptr inbounds %struct.ir_spi_data, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %negated.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %negated.i, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %if.end29.ir_spi_set_duty_cycle.exit_crit_edge, label %if.then.i

if.end29.ir_spi_set_duty_cycle.exit_crit_edge:    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %ir_spi_set_duty_cycle.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i = xor i16 %conv.i, -1
  %32 = ptrtoint ptr %pulse.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv3.i, ptr %pulse.i, align 2
  br label %ir_spi_set_duty_cycle.exit

ir_spi_set_duty_cycle.exit:                       ; preds = %if.then.i, %if.end29.ir_spi_set_duty_cycle.exit_crit_edge
  %.sink.i = phi i16 [ -1, %if.then.i ], [ 0, %if.end29.ir_spi_set_duty_cycle.exit_crit_edge ]
  %33 = getelementptr inbounds %struct.ir_spi_data, ptr %28, i32 0, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %.sink.i, ptr %33, align 4
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 38000, ptr %call.i, align 4
  %36 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rc, align 4
  %call34 = call i32 @devm_rc_register_device(ptr noundef %spi, ptr noundef %37) #7
  br label %cleanup

cleanup:                                          ; preds = %ir_spi_set_duty_cycle.exit, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %call34, %ir_spi_set_duty_cycle.exit ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dc) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rc_allocate_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_spi_tx(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buffer, i32 noundef %count) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp73.not = icmp eq i32 %count, 0
  br i1 %cmp73.not, label %entry.for.end16_crit_edge, label %for.body.lr.ph

entry.for.end16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end16

for.body.lr.ph:                                   ; preds = %entry
  %space = getelementptr inbounds %struct.ir_spi_data, ptr %1, i32 0, i32 4
  %pulse = getelementptr inbounds %struct.ir_spi_data, ptr %1, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %for.body9.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %len.1.lcssa = phi i32 [ %len.074, %if.end.for.cond_crit_edge ], [ %9, %for.body9.for.cond_crit_edge ]
  %inc15 = add nuw i32 %i.075, 1
  %exitcond77.not = icmp eq i32 %inc15, %count
  br i1 %exitcond77.not, label %for.cond.for.end16_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end16_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end16

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc15, %for.cond.for.body_crit_edge ]
  %len.074 = phi i32 [ 0, %for.body.lr.ph ], [ %len.1.lcssa, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %buffer, i32 %i.075
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %mul = mul i32 %5, %3
  %add = add i32 %mul, 500000
  %div1 = udiv i32 %add, 1000000
  %add2 = add i32 %div1, %len.074
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add2)
  %cmp3 = icmp ugt i32 %add2, 4095
  br i1 %cmp3, label %for.body.cleanup39_crit_edge, label %if.end

for.body.cleanup39_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

if.end:                                           ; preds = %for.body
  %6 = and i32 %i.075, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %cond.in.in = select i1 %tobool.not, ptr %pulse, ptr %space
  %7 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %7)
  %cond.in67 = load i16, ptr %cond.in.in, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %add)
  %8 = icmp ult i32 %add, 1000000
  br i1 %8, label %if.end.for.cond_crit_edge, label %for.body9.preheader

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body9.preheader:                              ; preds = %if.end
  %umax = call i32 @llvm.umax.i32(i32 %div1, i32 1)
  %9 = add i32 %len.074, %umax
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.preheader
  %len.171 = phi i32 [ %inc, %for.body9.for.body9_crit_edge ], [ %len.074, %for.body9.preheader ]
  %inc = add i32 %len.171, 1
  %arrayidx10 = getelementptr %struct.ir_spi_data, ptr %1, i32 0, i32 2, i32 %len.171
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %cond.in67, ptr %arrayidx10, align 2
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.body9.for.cond_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9

for.body9.for.cond_crit_edge:                     ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end16:                                        ; preds = %for.cond.for.end16_crit_edge, %entry.for.end16_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end16_crit_edge ], [ %len.1.lcssa, %for.cond.for.end16_crit_edge ]
  %11 = getelementptr inbounds i8, ptr %xfer, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 92)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %mul18 = shl i32 %14, 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %15 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul18, ptr %speed_hz, align 4
  %mul19 = shl i32 %len.0.lcssa, 1
  %len20 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %16 = ptrtoint ptr %len20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul19, ptr %len20, align 4
  %tx_buf21 = getelementptr inbounds %struct.ir_spi_data, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tx_buf21, ptr %xfer, align 4
  %regulator = getelementptr inbounds %struct.ir_spi_data, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regulator, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %if.end25, label %for.end16.cleanup39_crit_edge

for.end16.cleanup39_crit_edge:                    ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

if.end25:                                         ; preds = %for.end16
  %spi = getelementptr inbounds %struct.ir_spi_data, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #7
  %22 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %23 = call ptr @memset(ptr %22, i32 0, i32 40)
  %24 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %26 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end25.spi_sync_transfer.exit_crit_edge

if.end25.spi_sync_transfer.exit_crit_edge:        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_sync_transfer.exit

if.end.i.i.i.i.i:                                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.i.i, %if.end25.spi_sync_transfer.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %21, ptr noundef nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %spi_sync_transfer.exit.if.end31_crit_edge, label %do.end

spi_sync_transfer.exit.if.end31_crit_edge:        ; preds = %spi_sync_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end:                                           ; preds = %spi_sync_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.5) #10
  br label %if.end31

if.end31:                                         ; preds = %do.end, %spi_sync_transfer.exit.if.end31_crit_edge
  %count.call26 = phi i32 [ %call.i, %do.end ], [ %count, %spi_sync_transfer.exit.if.end31_crit_edge ]
  %34 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regulator, align 4
  %call33 = call i32 @regulator_disable(ptr noundef %35) #7
  br label %cleanup39

cleanup39:                                        ; preds = %if.end31, %for.end16.cleanup39_crit_edge, %for.body.cleanup39_crit_edge
  %retval.2 = phi i32 [ %count.call26, %if.end31 ], [ %call, %for.end16.cleanup39_crit_edge ], [ -22, %for.body.cleanup39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer) #7
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ir_spi_set_tx_carrier(ptr nocapture noundef readonly %dev, i32 noundef %carrier) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %carrier)
  %tobool.not = icmp eq i32 %carrier, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %carrier, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ir_spi_set_duty_cycle(ptr nocapture noundef readonly %dev, i32 noundef %duty_cycle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mul = mul i32 %duty_cycle, 15
  %div = udiv i32 %mul, 100
  %sub = sub nsw i32 31, %div
  %shr = lshr i32 -1, %sub
  %conv = trunc i32 %shr to i16
  %pulse = getelementptr inbounds %struct.ir_spi_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pulse to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %pulse, align 2
  %negated = getelementptr inbounds %struct.ir_spi_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %negated to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %negated, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv3 = xor i16 %conv, -1
  %5 = ptrtoint ptr %pulse to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv3, ptr %pulse, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i16 [ -1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %6 = getelementptr inbounds %struct.ir_spi_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %.sink, ptr %6, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_ir_spi__290_169_ir_spi_driver_init6, !1, !"__initcall__kmod_ir_spi__290_169_ir_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir-spi.c", i32 169, i32 1}
!2 = !{ptr @__exitcall_ir_spi_driver_exit, !1, !"__exitcall_ir_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/ir-spi.c", i32 171, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/ir-spi.c", i32 172, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir-spi.c", i32 173, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/ir-spi.c", i32 164, i32 11}
!12 = !{ptr @ir_spi_driver, !13, !"ir_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/rc/ir-spi.c", i32 161, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/rc/ir-spi.c", i32 122, i32 51}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/rc/ir-spi.c", i32 133, i32 30}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/rc/ir-spi.c", i32 139, i32 8}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/rc/ir-spi.c", i32 140, i32 46}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/rc/ir-spi.c", i32 76, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ir_spi_tx._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ir_spi_tx._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ir_spi_of_match, !31, !"ir_spi_of_match", i1 false, i1 false}
!31 = !{!"../drivers/media/rc/ir-spi.c", i32 155, i32 34}
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
!42 = !{i8 0, i8 2}
