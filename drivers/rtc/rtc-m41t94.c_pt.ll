; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-m41t94.c_pt.bc'
source_filename = "../drivers/rtc/rtc-m41t94.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_m41t94__236_140_m41t94_driver_init6 = internal global ptr @m41t94_driver_init, section ".initcall6.init", align 4
@m41t94_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @m41t94_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_m41t94_driver_exit = internal global ptr @m41t94_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [56 x i8] c"rtc_m41t94.author=Kim B. Heino <Kim.Heino@bluegiga.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [52 x i8] c"rtc_m41t94.description=Driver for ST M41T94 SPI RTC\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [39 x i8] c"rtc_m41t94.file=drivers/rtc/rtc-m41t94\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [23 x i8] c"rtc_m41t94.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias241 = internal constant [32 x i8] c"rtc_m41t94.alias=spi:rtc-m41t94\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-m41t94\00", [21 x i8] zeroinitializer }, align 32
@m41t94_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"not found.\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"m41t94_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-m41t94.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@m41t94_probe._entry_ptr = internal global ptr @m41t94_probe._entry, section ".printk_index", align 4
@m41t94_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @m41t94_read_time, ptr @m41t94_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@m41t94_read_time.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 24, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_m41t94\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m41t94_read_time\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@m41t94_set_time.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str.3, ptr @.str.8, i8 0, i8 9, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m41t94_set_time\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"m41t94_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 133, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 135, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 119, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"m41t94_rtc_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 102, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 93, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [28 x i8] c"../drivers/rtc/rtc-m41t94.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 34, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_m41t94_driver_exit, ptr @__initcall__kmod_rtc_m41t94__236_140_m41t94_driver_init6, ptr @m41t94_driver_exit, ptr @m41t94_probe._entry, ptr @m41t94_probe._entry_ptr, ptr @m41t94_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @m41t94_rtc_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t94_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t94_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t94_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t94_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @m41t94_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m41t94_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @m41t94_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t94_probe(ptr noundef %spi) #2 align 64 {
entry:
  %cmd.addr.i = alloca i8, align 1
  %result.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %bits_per_word, align 1
  %call = tail call i32 @spi_setup(ptr noundef %spi) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %1 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i) #6
  %2 = ptrtoint ptr %result.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %result.i, align 1, !annotation !45
  %call.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef nonnull %result.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br i1 %cmp.i, label %spi_w8r8.exit.thread, label %spi_w8r8.exit

spi_w8r8.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

spi_w8r8.exit:                                    ; preds = %entry
  %3 = load ptr, ptr getelementptr inbounds (%struct.spi_driver, ptr @m41t94_driver, i32 0, i32 4), align 4
  %call3 = call ptr @devm_rtc_device_register(ptr noundef %spi, ptr noundef %3, ptr noundef nonnull @m41t94_rtc_ops, ptr noundef null) #6
  %cmp.i17 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %if.then5, label %if.end7

if.then5:                                         ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %spi_w8r8.exit.thread
  %retval.0 = phi i32 [ %call.i, %spi_w8r8.exit.thread ], [ %4, %if.then5 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t94_read_time(ptr noundef %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  %cmd.addr.i180 = alloca i8, align 1
  %result.i181 = alloca i8, align 1
  %cmd.addr.i172 = alloca i8, align 1
  %result.i173 = alloca i8, align 1
  %cmd.addr.i164 = alloca i8, align 1
  %result.i165 = alloca i8, align 1
  %cmd.addr.i156 = alloca i8, align 1
  %result.i157 = alloca i8, align 1
  %cmd.addr.i148 = alloca i8, align 1
  %result.i149 = alloca i8, align 1
  %cmd.addr.i140 = alloca i8, align 1
  %result.i141 = alloca i8, align 1
  %cmd.addr.i132 = alloca i8, align 1
  %result.i133 = alloca i8, align 1
  %msg.i.i120 = alloca %struct.spi_message, align 4
  %t.i121 = alloca %struct.spi_transfer, align 4
  %cmd.addr.i112 = alloca i8, align 1
  %result.i113 = alloca i8, align 1
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %cmd.addr.i = alloca i8, align 1
  %result.i = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !45
  %1 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %3 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 12, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i) #6
  %4 = ptrtoint ptr %result.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %result.i, align 1, !annotation !45
  %call.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef nonnull %result.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %spi_w8r8.exit.thread, label %spi_w8r8.exit

spi_w8r8.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %cleanup

spi_w8r8.exit:                                    ; preds = %entry
  %5 = ptrtoint ptr %result.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %result.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  %7 = and i8 %6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %spi_w8r8.exit.if.end6_crit_edge, label %if.then2

spi_w8r8.exit.if.end6_crit_edge:                  ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then2:                                         ; preds = %spi_w8r8.exit
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -116, ptr %buf, align 1
  %conv = and i8 %6, -65
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %10 = getelementptr inbounds i8, ptr %t.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 92)
  %12 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %13 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %14 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then2.spi_write.exit_crit_edge

if.then2.spi_write.exit_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.then2.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  br label %if.end6

if.end6:                                          ; preds = %spi_write.exit, %spi_w8r8.exit.if.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i112)
  %24 = ptrtoint ptr %cmd.addr.i112 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %cmd.addr.i112, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i113) #6
  %25 = ptrtoint ptr %result.i113 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %result.i113, align 1, !annotation !45
  %call.i114 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i112, i32 noundef 1, ptr noundef nonnull %result.i113, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp.i115 = icmp slt i32 %call.i114, 0
  br i1 %cmp.i115, label %spi_w8r8.exit119.thread, label %spi_w8r8.exit119

spi_w8r8.exit119.thread:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i113) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i112)
  br label %cleanup

spi_w8r8.exit119:                                 ; preds = %if.end6
  %26 = ptrtoint ptr %result.i113 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %result.i113, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i113) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i112)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %tobool13.not = icmp sgt i8 %27, -1
  br i1 %tobool13.not, label %spi_w8r8.exit119.if.end21_crit_edge, label %if.then14

spi_w8r8.exit119.if.end21_crit_edge:              ; preds = %spi_w8r8.exit119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then14:                                        ; preds = %spi_w8r8.exit119
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -127, ptr %buf, align 1
  %conv17 = and i8 %27, 127
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv17, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i121) #6
  %30 = getelementptr inbounds i8, ptr %t.i121, i32 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 92)
  %32 = ptrtoint ptr %t.i121 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf, ptr %t.i121, align 4
  %len1.i122 = getelementptr inbounds %struct.spi_transfer, ptr %t.i121, i32 0, i32 2
  %33 = ptrtoint ptr %len1.i122 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %len1.i122, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i120) #6
  %34 = getelementptr inbounds i8, ptr %msg.i.i120, i32 8
  %35 = call ptr @memset(ptr %34, i32 0, i32 40)
  %36 = ptrtoint ptr %msg.i.i120 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %msg.i.i120, ptr %msg.i.i120, align 4
  %prev.i.i.i.i.i.i123 = getelementptr inbounds %struct.list_head, ptr %msg.i.i120, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i120, ptr %prev.i.i.i.i.i.i123, align 4
  %resources.i.i.i.i.i124 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i120, i32 0, i32 10
  %38 = ptrtoint ptr %resources.i.i.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %resources.i.i.i.i.i124, ptr %resources.i.i.i.i.i124, align 4
  %prev.i2.i.i.i.i.i125 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i120, i32 0, i32 10, i32 1
  %39 = ptrtoint ptr %prev.i2.i.i.i.i.i125 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %resources.i.i.i.i.i124, ptr %prev.i2.i.i.i.i.i125, align 4
  %transfer_list.i.i.i.i126 = getelementptr inbounds %struct.spi_transfer, ptr %t.i121, i32 0, i32 18
  %call.i.i.i.i.i.i127 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i126, ptr noundef nonnull %msg.i.i120, ptr noundef nonnull %msg.i.i120) #6
  br i1 %call.i.i.i.i.i.i127, label %if.end.i.i.i.i.i.i129, label %if.then14.spi_write.exit131_crit_edge

if.then14.spi_write.exit131_crit_edge:            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit131

if.end.i.i.i.i.i.i129:                            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %prev.i.i.i.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %transfer_list.i.i.i.i126, ptr %prev.i.i.i.i.i.i123, align 4
  %41 = ptrtoint ptr %transfer_list.i.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i120, ptr %transfer_list.i.i.i.i126, align 4
  %prev3.i.i.i.i.i.i128 = getelementptr inbounds %struct.spi_transfer, ptr %t.i121, i32 0, i32 18, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i120, ptr %prev3.i.i.i.i.i.i128, align 4
  %43 = ptrtoint ptr %msg.i.i120 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %transfer_list.i.i.i.i126, ptr %msg.i.i120, align 4
  br label %spi_write.exit131

spi_write.exit131:                                ; preds = %if.end.i.i.i.i.i.i129, %if.then14.spi_write.exit131_crit_edge
  %call.i.i130 = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i120) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i120) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i121) #6
  br label %if.end21

if.end21:                                         ; preds = %spi_write.exit131, %spi_w8r8.exit119.if.end21_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i132)
  %44 = ptrtoint ptr %cmd.addr.i132 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %cmd.addr.i132, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i133) #6
  %45 = ptrtoint ptr %result.i133 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %result.i133, align 1, !annotation !45
  %call.i134 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i132, i32 noundef 1, ptr noundef nonnull %result.i133, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %cmp.i135 = icmp slt i32 %call.i134, 0
  br i1 %cmp.i135, label %if.end21.spi_w8r8.exit139_crit_edge, label %cond.false.i137

if.end21.spi_w8r8.exit139_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_w8r8.exit139

cond.false.i137:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %result.i133 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %result.i133, align 1
  %conv.i136 = zext i8 %47 to i32
  br label %spi_w8r8.exit139

spi_w8r8.exit139:                                 ; preds = %cond.false.i137, %if.end21.spi_w8r8.exit139_crit_edge
  %cond.i138 = phi i32 [ %conv.i136, %cond.false.i137 ], [ %call.i134, %if.end21.spi_w8r8.exit139_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i133) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i132)
  %conv23 = trunc i32 %cond.i138 to i8
  %call24 = call i32 @_bcd2bin(i8 noundef zeroext %conv23) #10
  %48 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call24, ptr %tm, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i140)
  %49 = ptrtoint ptr %cmd.addr.i140 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %cmd.addr.i140, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i141) #6
  %50 = ptrtoint ptr %result.i141 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %result.i141, align 1, !annotation !45
  %call.i142 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i140, i32 noundef 1, ptr noundef nonnull %result.i141, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp.i143 = icmp slt i32 %call.i142, 0
  br i1 %cmp.i143, label %spi_w8r8.exit139.spi_w8r8.exit147_crit_edge, label %cond.false.i145

spi_w8r8.exit139.spi_w8r8.exit147_crit_edge:      ; preds = %spi_w8r8.exit139
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_w8r8.exit147

cond.false.i145:                                  ; preds = %spi_w8r8.exit139
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %result.i141 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %result.i141, align 1
  %conv.i144 = zext i8 %52 to i32
  br label %spi_w8r8.exit147

spi_w8r8.exit147:                                 ; preds = %cond.false.i145, %spi_w8r8.exit139.spi_w8r8.exit147_crit_edge
  %cond.i146 = phi i32 [ %conv.i144, %cond.false.i145 ], [ %call.i142, %spi_w8r8.exit139.spi_w8r8.exit147_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i141) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i140)
  %conv26 = trunc i32 %cond.i146 to i8
  %call27 = call i32 @_bcd2bin(i8 noundef zeroext %conv26) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %53 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call27, ptr %tm_min, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i148)
  %54 = ptrtoint ptr %cmd.addr.i148 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 3, ptr %cmd.addr.i148, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i149) #6
  %55 = ptrtoint ptr %result.i149 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %result.i149, align 1, !annotation !45
  %call.i150 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i148, i32 noundef 1, ptr noundef nonnull %result.i149, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %cmp.i151 = icmp slt i32 %call.i150, 0
  br i1 %cmp.i151, label %spi_w8r8.exit147.spi_w8r8.exit155_crit_edge, label %cond.false.i153

spi_w8r8.exit147.spi_w8r8.exit155_crit_edge:      ; preds = %spi_w8r8.exit147
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_w8r8.exit155

cond.false.i153:                                  ; preds = %spi_w8r8.exit147
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %result.i149 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %result.i149, align 1
  %conv.i152 = zext i8 %57 to i32
  br label %spi_w8r8.exit155

spi_w8r8.exit155:                                 ; preds = %cond.false.i153, %spi_w8r8.exit147.spi_w8r8.exit155_crit_edge
  %cond.i154 = phi i32 [ %conv.i152, %cond.false.i153 ], [ %call.i150, %spi_w8r8.exit147.spi_w8r8.exit155_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i149) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i148)
  %58 = trunc i32 %cond.i154 to i8
  %conv30 = and i8 %58, 63
  %call36 = call i32 @_bcd2bin(i8 noundef zeroext %conv30) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %59 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call36, ptr %tm_hour, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i156)
  %60 = ptrtoint ptr %cmd.addr.i156 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 4, ptr %cmd.addr.i156, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i157) #6
  %61 = ptrtoint ptr %result.i157 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %result.i157, align 1, !annotation !45
  %call.i158 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i156, i32 noundef 1, ptr noundef nonnull %result.i157, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %cmp.i159 = icmp slt i32 %call.i158, 0
  br i1 %cmp.i159, label %spi_w8r8.exit155.spi_w8r8.exit163_crit_edge, label %cond.false.i161

spi_w8r8.exit155.spi_w8r8.exit163_crit_edge:      ; preds = %spi_w8r8.exit155
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_w8r8.exit163

cond.false.i161:                                  ; preds = %spi_w8r8.exit155
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %result.i157 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %result.i157, align 1
  %conv.i160 = zext i8 %63 to i32
  br label %spi_w8r8.exit163

spi_w8r8.exit163:                                 ; preds = %cond.false.i161, %spi_w8r8.exit155.spi_w8r8.exit163_crit_edge
  %cond.i162 = phi i32 [ %conv.i160, %cond.false.i161 ], [ %call.i158, %spi_w8r8.exit155.spi_w8r8.exit163_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i157) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i156)
  %conv38 = trunc i32 %cond.i162 to i8
  %call39 = call i32 @_bcd2bin(i8 noundef zeroext %conv38) #10
  %sub = add i32 %call39, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %64 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub, ptr %tm_wday, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i164)
  %65 = ptrtoint ptr %cmd.addr.i164 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 5, ptr %cmd.addr.i164, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i165) #6
  %66 = ptrtoint ptr %result.i165 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -1, ptr %result.i165, align 1, !annotation !45
  %call.i166 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i164, i32 noundef 1, ptr noundef nonnull %result.i165, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %cmp.i167 = icmp slt i32 %call.i166, 0
  br i1 %cmp.i167, label %spi_w8r8.exit163.spi_w8r8.exit171_crit_edge, label %cond.false.i169

spi_w8r8.exit163.spi_w8r8.exit171_crit_edge:      ; preds = %spi_w8r8.exit163
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_w8r8.exit171

cond.false.i169:                                  ; preds = %spi_w8r8.exit163
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %result.i165 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %result.i165, align 1
  %conv.i168 = zext i8 %68 to i32
  br label %spi_w8r8.exit171

spi_w8r8.exit171:                                 ; preds = %cond.false.i169, %spi_w8r8.exit163.spi_w8r8.exit171_crit_edge
  %cond.i170 = phi i32 [ %conv.i168, %cond.false.i169 ], [ %call.i166, %spi_w8r8.exit163.spi_w8r8.exit171_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i165) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i164)
  %conv41 = trunc i32 %cond.i170 to i8
  %call42 = call i32 @_bcd2bin(i8 noundef zeroext %conv41) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %69 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call42, ptr %tm_mday, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i172)
  %70 = ptrtoint ptr %cmd.addr.i172 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 6, ptr %cmd.addr.i172, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i173) #6
  %71 = ptrtoint ptr %result.i173 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %result.i173, align 1, !annotation !45
  %call.i174 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i172, i32 noundef 1, ptr noundef nonnull %result.i173, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %cmp.i175 = icmp slt i32 %call.i174, 0
  br i1 %cmp.i175, label %spi_w8r8.exit171.spi_w8r8.exit179_crit_edge, label %cond.false.i177

spi_w8r8.exit171.spi_w8r8.exit179_crit_edge:      ; preds = %spi_w8r8.exit171
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_w8r8.exit179

cond.false.i177:                                  ; preds = %spi_w8r8.exit171
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %result.i173 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %result.i173, align 1
  %conv.i176 = zext i8 %73 to i32
  br label %spi_w8r8.exit179

spi_w8r8.exit179:                                 ; preds = %cond.false.i177, %spi_w8r8.exit171.spi_w8r8.exit179_crit_edge
  %cond.i178 = phi i32 [ %conv.i176, %cond.false.i177 ], [ %call.i174, %spi_w8r8.exit171.spi_w8r8.exit179_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i173) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i172)
  %conv44 = trunc i32 %cond.i178 to i8
  %call45 = call i32 @_bcd2bin(i8 noundef zeroext %conv44) #10
  %sub46 = add i32 %call45, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %74 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub46, ptr %tm_mon, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i180)
  %75 = ptrtoint ptr %cmd.addr.i180 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 7, ptr %cmd.addr.i180, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i181) #6
  %76 = ptrtoint ptr %result.i181 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -1, ptr %result.i181, align 1, !annotation !45
  %call.i182 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i180, i32 noundef 1, ptr noundef nonnull %result.i181, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp.i183 = icmp slt i32 %call.i182, 0
  br i1 %cmp.i183, label %spi_w8r8.exit179.spi_w8r8.exit187_crit_edge, label %cond.false.i185

spi_w8r8.exit179.spi_w8r8.exit187_crit_edge:      ; preds = %spi_w8r8.exit179
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_w8r8.exit187

cond.false.i185:                                  ; preds = %spi_w8r8.exit179
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %result.i181 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %result.i181, align 1
  %conv.i184 = zext i8 %78 to i32
  br label %spi_w8r8.exit187

spi_w8r8.exit187:                                 ; preds = %cond.false.i185, %spi_w8r8.exit179.spi_w8r8.exit187_crit_edge
  %cond.i186 = phi i32 [ %conv.i184, %cond.false.i185 ], [ %call.i182, %spi_w8r8.exit179.spi_w8r8.exit187_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i181) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i180)
  %conv48 = trunc i32 %cond.i186 to i8
  %call49 = call i32 @_bcd2bin(i8 noundef zeroext %conv48) #10
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %79 = and i32 %cond.i154, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %79)
  %.not = icmp eq i32 %79, 128
  %add56 = add i32 %call49, 100
  %spec.select = select i1 %.not, i32 %call49, i32 %add56
  %80 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %spec.select, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m41t94_read_time.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@m41t94_read_time, %cleanup)) #6
          to label %if.then63 [label %cleanup], !srcloc !46

if.then63:                                        ; preds = %spi_w8r8.exit187
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tm, align 4
  %83 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tm_min, align 4
  %85 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tm_hour, align 4
  %87 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tm_mday, align 4
  %89 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tm_mon, align 4
  %91 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tm_year, align 4
  %93 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tm_wday, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m41t94_read_time.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88, i32 noundef %90, i32 noundef %92, i32 noundef %94) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %spi_w8r8.exit187, %spi_w8r8.exit119.thread, %spi_w8r8.exit.thread
  %retval.0 = phi i32 [ 0, %if.then63 ], [ %call.i, %spi_w8r8.exit.thread ], [ %call.i114, %spi_w8r8.exit119.thread ], [ 0, %spi_w8r8.exit187 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t94_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %buf = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %7 = getelementptr inbounds i8, ptr %buf, i32 7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m41t94_set_time.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@m41t94_set_time, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !46

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %11 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %13 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %15 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %17 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %19 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_year, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %21 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m41t94_set_time.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -127, ptr %buf, align 1
  %24 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm, align 4
  %call9 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #10
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call9, ptr %0, align 1
  %tm_min13 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %27 = ptrtoint ptr %tm_min13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_min13, align 4
  %call24 = tail call zeroext i8 @_bin2bcd(i32 noundef %28) #10
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call24, ptr %1, align 1
  %tm_hour30 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %30 = ptrtoint ptr %tm_hour30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm_hour30, align 4
  %call41 = tail call zeroext i8 @_bin2bcd(i32 noundef %31) #10
  %tm_wday47 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %32 = ptrtoint ptr %tm_wday47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_wday47, align 4
  %add48 = add i32 %33, 1
  %call62 = tail call zeroext i8 @_bin2bcd(i32 noundef %add48) #10
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call62, ptr %3, align 1
  %tm_mday68 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %35 = ptrtoint ptr %tm_mday68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_mday68, align 4
  %call79 = tail call zeroext i8 @_bin2bcd(i32 noundef %36) #10
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %call79, ptr %4, align 1
  %tm_mon85 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %38 = ptrtoint ptr %tm_mon85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_mon85, align 4
  %add86 = add i32 %39, 1
  %call100 = tail call zeroext i8 @_bin2bcd(i32 noundef %add86) #10
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %call100, ptr %5, align 1
  %41 = or i8 %call41, -128
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %2, align 1
  %tm_year109 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %43 = ptrtoint ptr %tm_year109 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tm_year109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %44)
  %cmp = icmp sgt i32 %44, 99
  br i1 %cmp, label %if.then111, label %do.end.cond.end134_crit_edge

do.end.cond.end134_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end134

if.then111:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %45 = or i8 %call41, -64
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %2, align 1
  br label %cond.end134

cond.end134:                                      ; preds = %if.then111, %do.end.cond.end134_crit_edge
  %rem118 = srem i32 %44, 100
  %call132 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem118) #10
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %call132, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %48 = getelementptr inbounds i8, ptr %t.i, i32 4
  %49 = call ptr @memset(ptr %48, i32 0, i32 92)
  %50 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %buf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %51 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %52 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %53 = call ptr @memset(ptr %52, i32 0, i32 40)
  %54 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %56 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %57 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %cond.end134.spi_write.exit_crit_edge

cond.end134.spi_write.exit_crit_edge:             ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %59 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %61 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %cond.end134.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #6
  ret i32 %call.i.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_rtc_m41t94__236_140_m41t94_driver_init6, !1, !"__initcall__kmod_rtc_m41t94__236_140_m41t94_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-m41t94.c", i32 140, i32 1}
!2 = !{ptr @__exitcall_m41t94_driver_exit, !1, !"__exitcall_m41t94_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-m41t94.c", i32 142, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-m41t94.c", i32 143, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-m41t94.c", i32 144, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias241, !11, !"__UNIQUE_ID_alias241", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-m41t94.c", i32 145, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-m41t94.c", i32 135, i32 11}
!14 = !{ptr @m41t94_driver, !15, !"m41t94_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-m41t94.c", i32 133, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-m41t94.c", i32 119, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @m41t94_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @m41t94_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @m41t94_rtc_ops, !25, !"m41t94_rtc_ops", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-m41t94.c", i32 102, i32 35}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-m41t94.c", i32 93, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @m41t94_read_time.__UNIQUE_ID_ddebug235, !27, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!31 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-m41t94.c", i32 34, i32 2}
!34 = !{ptr @m41t94_set_time.__UNIQUE_ID_ddebug234, !33, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!35 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i64 2148955247, i64 2148955252, i64 2148955265, i64 2148955309, i64 2148955343, i64 2148955364}
