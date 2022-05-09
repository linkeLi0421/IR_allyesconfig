; ModuleID = '/llk/IR_all_yes/drivers/staging/iio/meter/ade7854-spi.c_pt.bc'
source_filename = "../drivers/staging/iio/meter/ade7854-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ade7854_state = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, [16 x i8], [7 x i8], [7 x i8], [114 x i8] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_ade7854_spi__230_156_ade7854_driver_init6 = internal global ptr @ade7854_driver_init, section ".initcall6.init", align 4
@ade7854_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ade7854_id, ptr @ade7854_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ade7854_driver_exit = internal global ptr @ade7854_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [50 x i8] c"ade7854_spi.author=Barry Song <21cnbao@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [67 x i8] c"ade7854_spi.description=Analog Devices ADE7854/58/68/78 SPI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [55 x i8] c"ade7854_spi.file=drivers/staging/iio/meter/ade7854-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [27 x i8] c"ade7854_spi.license=GPL v2\00", section ".modinfo", align 1
@ade7854_id = internal constant { [5 x %struct.spi_device_id], [44 x i8] } { [5 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ade7854\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ade7858\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ade7868\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ade7878\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ade7854\00", [24 x i8] zeroinitializer }, align 32
@ade7854_spi_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 98, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"problem when reading register 0x%02X\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ade7854_spi_read_reg\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/staging/iio/meter/ade7854-spi.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ade7854_spi_read_reg._entry_ptr = internal global ptr @ade7854_spi_read_reg._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"ade7854_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 149, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"ade7854_id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 140, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 151, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [43 x i8] c"../drivers/staging/iio/meter/ade7854-spi.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 97, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_ade7854_driver_exit, ptr @__initcall__kmod_ade7854_spi__230_156_ade7854_driver_init6, ptr @ade7854_driver_exit, ptr @ade7854_spi_read_reg._entry, ptr @ade7854_spi_read_reg._entry_ptr, ptr @ade7854_driver, ptr @ade7854_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ade7854_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ade7854_id to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ade7854_spi_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ade7854_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ade7854_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ade7854_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ade7854_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ade7854_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %read_reg = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ade7854_spi_read_reg, ptr %read_reg, align 8
  %write_reg = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ade7854_spi_write_reg, ptr %write_reg, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %irq2 = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %irq2, align 16
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spi, ptr %1, align 128
  %call5 = tail call i32 @ade7854_probe(ptr noundef nonnull %call, ptr noundef %spi) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ade7854_spi_read_reg(ptr nocapture noundef readonly %dev, i16 noundef zeroext %reg_address, ptr nocapture noundef writeonly %val, i32 noundef %bits) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfers = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfers) #6
  %2 = getelementptr inbounds i8, ptr %xfers, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %tx = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %xfers to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx, ptr %xfers, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %len, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 8
  %6 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %bits_per_word, align 1
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 1
  %rx = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rx, ptr %rx_buf, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 2
  %8 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bits, ptr %len4, align 4
  %bits_per_word9 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 8
  %9 = ptrtoint ptr %bits_per_word9 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %bits_per_word9, align 1
  %buf_lock = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #6
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %tx, align 128
  %11 = lshr i16 %reg_address, 8
  %conv11 = trunc i16 %11 to i8
  %arrayidx13 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv11, ptr %arrayidx13, align 1
  %conv16 = trunc i16 %reg_address to i8
  %arrayidx18 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv16, ptr %arrayidx18, align 2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 18
  %26 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %27, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i.i.i.1, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i.i.i.1, ptr %27, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %15, ptr noundef nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %reg_address to i32
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.1, i32 noundef %conv) #9
  br label %unlock

if.end:                                           ; preds = %spi_message_add_tail.exit.i.i.1
  %34 = add i32 %bits, -8
  %35 = call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 29)
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %35, label %if.end.unlock_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
    i32 2, label %sw.bb33
    i32 3, label %sw.bb45
  ]

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rx, align 1
  %conv27 = zext i8 %38 to i32
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv27, ptr %val, align 4
  br label %unlock

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %rx to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %rx, align 2
  %conv32 = zext i16 %41 to i32
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv32, ptr %val, align 4
  br label %unlock

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rx, align 1
  %conv36 = zext i8 %44 to i32
  %shl = shl nuw nsw i32 %conv36, 16
  %arrayidx38 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 8, i32 1
  %45 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %46 to i32
  %shl40 = shl nuw nsw i32 %conv39, 8
  %or = or i32 %shl40, %shl
  %arrayidx42 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 8, i32 2
  %47 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %48 to i32
  %or44 = or i32 %or, %conv43
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or44, ptr %val, align 4
  br label %unlock

sw.bb45:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx, align 4
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %val, align 4
  br label %unlock

unlock:                                           ; preds = %sw.bb45, %sw.bb33, %sw.bb28, %sw.bb, %if.end.unlock_crit_edge, %do.end
  call void @mutex_unlock(ptr noundef %buf_lock) #6
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfers) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ade7854_spi_write_reg(ptr nocapture noundef readonly %dev, i16 noundef zeroext %reg_address, i32 noundef %val, i32 noundef %bits) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer) #6
  %2 = getelementptr inbounds i8, ptr %xfer, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 92)
  %tx = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx, ptr %xfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %len, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %6 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %bits_per_word, align 1
  %buf_lock = getelementptr inbounds %struct.ade7854_state, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #6
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %tx, align 128
  %8 = lshr i16 %reg_address, 8
  %conv3 = trunc i16 %8 to i8
  %arrayidx5 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %arrayidx5, align 1
  %conv8 = trunc i16 %reg_address to i8
  %arrayidx10 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv8, ptr %arrayidx10, align 2
  %11 = add i32 %bits, -8
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 29)
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %12, label %entry.unlock_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb26
    i32 3, label %sw.bb42
  ]

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv12 = trunc i32 %val to i8
  %arrayidx14 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv12, ptr %arrayidx14, align 1
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %len, align 4
  %shr17 = lshr i32 %val, 8
  %conv19 = trunc i32 %shr17 to i8
  %arrayidx21 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv19, ptr %arrayidx21, align 1
  %conv23 = trunc i32 %val to i8
  %arrayidx25 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 4
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv23, ptr %arrayidx25, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 6, ptr %len, align 4
  %shr28 = lshr i32 %val, 16
  %conv30 = trunc i32 %shr28 to i8
  %arrayidx32 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 3
  %19 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv30, ptr %arrayidx32, align 1
  %shr33 = lshr i32 %val, 8
  %conv35 = trunc i32 %shr33 to i8
  %arrayidx37 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 4
  %20 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv35, ptr %arrayidx37, align 4
  %conv39 = trunc i32 %val to i8
  %arrayidx41 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 5
  %21 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv39, ptr %arrayidx41, align 1
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 7, ptr %len, align 4
  %shr44 = lshr i32 %val, 24
  %conv46 = trunc i32 %shr44 to i8
  %arrayidx48 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv46, ptr %arrayidx48, align 1
  %shr49 = lshr i32 %val, 16
  %conv51 = trunc i32 %shr49 to i8
  %arrayidx53 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 4
  %24 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv51, ptr %arrayidx53, align 4
  %shr54 = lshr i32 %val, 8
  %conv56 = trunc i32 %shr54 to i8
  %arrayidx58 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 5
  %25 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv56, ptr %arrayidx58, align 1
  %conv60 = trunc i32 %val to i8
  %arrayidx62 = getelementptr %struct.ade7854_state, ptr %1, i32 0, i32 7, i32 6
  %26 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv60, ptr %arrayidx62, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb42, %sw.bb26, %sw.bb15, %sw.bb
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
  %29 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %30 = call ptr @memset(ptr %29, i32 0, i32 40)
  %31 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %33 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %sw.epilog.spi_message_add_tail.exit.i.i_crit_edge

sw.epilog.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %sw.epilog.spi_message_add_tail.exit.i.i_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %28, ptr noundef nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  br label %unlock

unlock:                                           ; preds = %spi_message_add_tail.exit.i.i, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ %call.i, %spi_message_add_tail.exit.i.i ], [ -22, %entry.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %buf_lock) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ade7854_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_ade7854_spi__230_156_ade7854_driver_init6, !1, !"__initcall__kmod_ade7854_spi__230_156_ade7854_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/iio/meter/ade7854-spi.c", i32 156, i32 1}
!2 = !{ptr @__exitcall_ade7854_driver_exit, !1, !"__exitcall_ade7854_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/staging/iio/meter/ade7854-spi.c", i32 158, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/staging/iio/meter/ade7854-spi.c", i32 159, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/staging/iio/meter/ade7854-spi.c", i32 160, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/iio/meter/ade7854-spi.c", i32 151, i32 11}
!12 = !{ptr @ade7854_driver, !13, !"ade7854_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/iio/meter/ade7854-spi.c", i32 149, i32 26}
!14 = !{ptr @ade7854_id, !15, !"ade7854_id", i1 false, i1 false}
!15 = !{!"../drivers/staging/iio/meter/ade7854-spi.c", i32 140, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/iio/meter/ade7854-spi.c", i32 97, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ade7854_spi_read_reg._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ade7854_spi_read_reg._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
