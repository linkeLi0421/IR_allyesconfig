; ModuleID = '/llk/IR_all_yes/drivers/mux/adgs1408.c_pt.bc'
source_filename = "../drivers/mux/adgs1408.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mux_control_ops = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mux_chip = type { i32, ptr, %struct.device, i32, ptr }
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
%struct.mux_control = type { %struct.semaphore, ptr, i32, i32, i32, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }

@__initcall__kmod_mux_adgs1408__230_127_adgs1408_driver_init6 = internal global ptr @adgs1408_driver_init, section ".initcall6.init", align 4
@adgs1408_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adgs1408_spi_id, ptr @adgs1408_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adgs1408_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adgs1408_driver_exit = internal global ptr @adgs1408_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [65 x i8] c"mux_adgs1408.author=Mircea Caprioru <mircea.caprioru@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [60 x i8] c"mux_adgs1408.description=Analog Devices ADGS1408 MUX driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [43 x i8] c"mux_adgs1408.file=drivers/mux/mux-adgs1408\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [25 x i8] c"mux_adgs1408.license=GPL\00", section ".modinfo", align 1
@adgs1408_spi_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adgs1408\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"adgs1409\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adgs1408\00", [23 x i8] zeroinitializer }, align 32
@adgs1408_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adgs1408\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adgs1409\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@adgs1408_ops = internal constant { %struct.mux_control_ops, [28 x i8] } { %struct.mux_control_ops { ptr @adgs1408_set }, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"idle-state\00", [21 x i8] zeroinitializer }, align 32
@adgs1408_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 98, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid idle-state %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adgs1408_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mux/adgs1408.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adgs1408_probe._entry_ptr = internal global ptr @adgs1408_probe._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 4294967294, i64 4294967295]
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"adgs1408_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 119, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"adgs1408_spi_id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 105, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 121, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"adgs1408_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 112, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"adgs1408_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 49, i32 37 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 76, i32 38 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [26 x i8] c"../drivers/mux/adgs1408.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 98, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_adgs1408_driver_exit, ptr @__initcall__kmod_mux_adgs1408__230_127_adgs1408_driver_init6, ptr @adgs1408_driver_exit, ptr @adgs1408_probe._entry, ptr @adgs1408_probe._entry_ptr, ptr @adgs1408_driver, ptr @adgs1408_spi_id, ptr @.str, ptr @adgs1408_of_match, ptr @adgs1408_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adgs1408_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adgs1408_spi_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adgs1408_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adgs1408_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adgs1408_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adgs1408_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adgs1408_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adgs1408_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adgs1408_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adgs1408_probe(ptr noundef %spi) #2 align 64 {
entry:
  %tx_buf.i = alloca [2 x i8], align 1
  %idle_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idle_state) #5
  %0 = ptrtoint ptr %idle_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idle_state, align 4, !annotation !39
  %call = tail call ptr @device_get_match_data(ptr noundef %spi) #5
  %1 = ptrtoint ptr %call to i32
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chip_id.0 = phi i32 [ %1, %entry.if.end_crit_edge ], [ %3, %if.then ]
  %call3 = tail call ptr @devm_mux_chip_alloc(ptr noundef %spi, i32 noundef 1, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.mux_chip, ptr %call3, i32 0, i32 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @adgs1408_ops, ptr %ops, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i) #5
  %6 = getelementptr inbounds [2 x i8], ptr %tx_buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %tx_buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %6, align 1
  %call.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %tx_buf.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %call.i49 = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.1, ptr noundef nonnull %idle_state, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp12 = icmp slt i32 %call.i49, 0
  br i1 %cmp12, label %if.then13, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %idle_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %idle_state, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %mux15 = getelementptr inbounds %struct.mux_chip, ptr %call3, i32 0, i32 1
  %10 = ptrtoint ptr %mux15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mux15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %chip_id.0)
  %cmp16 = icmp eq i32 %chip_id.0, 1
  %spec.select = select i1 %cmp16, i32 8, i32 4
  %12 = getelementptr inbounds %struct.mux_control, ptr %11, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %12, align 8
  %14 = ptrtoint ptr %idle_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idle_state, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.end14.do.end_crit_edge [
    i32 -2, label %if.end14.sw.bb20_crit_edge
    i32 -1, label %if.end14.sw.bb20_crit_edge50
    i32 0, label %if.end14.sw.bb20_crit_edge51
    i32 1, label %if.end14.sw.bb20_crit_edge52
    i32 2, label %if.end14.sw.bb20_crit_edge53
    i32 3, label %if.end14.sw.bb20_crit_edge54
    i32 4, label %if.end14.sw.bb20_crit_edge55
    i32 5, label %if.end14.sw.bb20_crit_edge56
    i32 6, label %if.end14.sw.bb20_crit_edge57
    i32 7, label %if.end14.sw.bb20_crit_edge58
  ]

if.end14.sw.bb20_crit_edge58:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end14.sw.bb20_crit_edge57:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end14.sw.bb20_crit_edge56:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end14.sw.bb20_crit_edge55:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end14.sw.bb20_crit_edge54:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end14.sw.bb20_crit_edge53:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end14.sw.bb20_crit_edge52:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end14.sw.bb20_crit_edge51:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end14.sw.bb20_crit_edge50:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end14.sw.bb20_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

sw.bb20:                                          ; preds = %if.end14.sw.bb20_crit_edge, %if.end14.sw.bb20_crit_edge50, %if.end14.sw.bb20_crit_edge51, %if.end14.sw.bb20_crit_edge52, %if.end14.sw.bb20_crit_edge53, %if.end14.sw.bb20_crit_edge54, %if.end14.sw.bb20_crit_edge55, %if.end14.sw.bb20_crit_edge56, %if.end14.sw.bb20_crit_edge57, %if.end14.sw.bb20_crit_edge58
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %12, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %18)
  %cmp22 = icmp ult i32 %15, %18
  br i1 %cmp22, label %if.then23, label %sw.bb20.do.end_crit_edge

sw.bb20.do.end_crit_edge:                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then23:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  %idle_state24 = getelementptr inbounds %struct.mux_control, ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %idle_state24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %idle_state24, align 4
  %call26 = call i32 @devm_mux_chip_register(ptr noundef %spi, ptr noundef %call3) #5
  br label %cleanup

do.end:                                           ; preds = %sw.bb20.do.end_crit_edge, %if.end14.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then23, %if.end7.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ %4, %if.then5 ], [ -22, %do.end ], [ %call26, %if.then23 ], [ %call.i, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idle_state) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mux_chip_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mux_chip_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adgs1408_set(ptr nocapture noundef readonly %mux, i32 noundef %state) #2 align 64 {
entry:
  %tx_buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.mux_control, ptr %mux, i32 0, i32 1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %parent = getelementptr inbounds %struct.mux_chip, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %state)
  %cmp = icmp eq i32 %state, -2
  %state.tr = trunc i32 %state to i8
  %4 = shl i8 %state.tr, 1
  %conv = or i8 %4, 1
  %reg.0 = select i1 %cmp, i8 0, i8 %conv
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i) #5
  %5 = getelementptr inbounds [2 x i8], ptr %tx_buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %tx_buf.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %reg.0, ptr %5, align 1
  %call.i = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %tx_buf.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i) #5
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_mux_adgs1408__230_127_adgs1408_driver_init6, !1, !"__initcall__kmod_mux_adgs1408__230_127_adgs1408_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mux/adgs1408.c", i32 127, i32 1}
!2 = !{ptr @__exitcall_adgs1408_driver_exit, !1, !"__exitcall_adgs1408_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/mux/adgs1408.c", i32 129, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/mux/adgs1408.c", i32 130, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/mux/adgs1408.c", i32 131, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mux/adgs1408.c", i32 121, i32 11}
!12 = !{ptr @adgs1408_driver, !13, !"adgs1408_driver", i1 false, i1 false}
!13 = !{!"../drivers/mux/adgs1408.c", i32 119, i32 26}
!14 = !{ptr @adgs1408_spi_id, !15, !"adgs1408_spi_id", i1 false, i1 false}
!15 = !{!"../drivers/mux/adgs1408.c", i32 105, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mux/adgs1408.c", i32 76, i32 38}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mux/adgs1408.c", i32 98, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @adgs1408_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @adgs1408_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @adgs1408_ops, !27, !"adgs1408_ops", i1 false, i1 false}
!27 = !{!"../drivers/mux/adgs1408.c", i32 49, i32 37}
!28 = !{ptr @adgs1408_of_match, !29, !"adgs1408_of_match", i1 false, i1 false}
!29 = !{!"../drivers/mux/adgs1408.c", i32 112, i32 34}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
