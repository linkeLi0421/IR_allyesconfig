; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-max6900.c_pt.bc'
source_filename = "../drivers/rtc/rtc-max6900.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_max6900__288_232_max6900_driver_init6 = internal global ptr @max6900_driver_init, section ".initcall6.init", align 4
@max6900_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max6900_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max6900_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max6900_driver_exit = internal global ptr @max6900_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [49 x i8] c"rtc_max6900.description=Maxim MAX6900 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [57 x i8] c"rtc_max6900.author=Dale Farnsworth <dale@farnsworth.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"rtc_max6900.file=drivers/rtc/rtc-max6900\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"rtc_max6900.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc-max6900\00", [20 x i8] zeroinitializer }, align 32
@max6900_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max6900\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max6900_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @max6900_rtc_read_time, ptr @max6900_rtc_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@max6900_i2c_read_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: register read failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max6900_i2c_read_regs\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-max6900.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max6900_i2c_read_regs._entry_ptr = internal global ptr @max6900_i2c_read_regs._entry, section ".printk_index", align 4
@__const.max6900_i2c_write_regs.i2c_burst_buf = private unnamed_addr constant <{ i8, [8 x i8] }> <{ i8 -66, [8 x i8] zeroinitializer }>, align 1
@max6900_i2c_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 136, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: register write failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max6900_i2c_write_regs\00", [41 x i8] zeroinitializer }, align 32
@max6900_i2c_write_regs._entry_ptr = internal global ptr @max6900_i2c_write_regs._entry, section ".printk_index", align 4
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"max6900_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 224, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 226, i32 14 }
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"max6900_id\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 218, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"max6900_rtc_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 195, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 85, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [29 x i8] c"../drivers/rtc/rtc-max6900.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 136, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max6900_driver_exit, ptr @__initcall__kmod_rtc_max6900__288_232_max6900_driver_init6, ptr @max6900_driver_exit, ptr @max6900_i2c_read_regs._entry, ptr @max6900_i2c_read_regs._entry_ptr, ptr @max6900_i2c_write_regs._entry, ptr @max6900_i2c_write_regs._entry_ptr, ptr @max6900_driver, ptr @.str, ptr @max6900_id, ptr @max6900_rtc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6900_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6900_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6900_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6900_i2c_read_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6900_i2c_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max6900_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max6900_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max6900_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @max6900_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6900_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.i2c_driver, ptr @max6900_driver, i32 0, i32 7), align 4
  %call1 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef %6, ptr noundef nonnull @max6900_rtc_ops, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then3 ], [ 0, %if.end5 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6900_rtc_read_time(ptr noundef %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %reg_burst_read.i = alloca [1 x i8], align 1
  %reg_century_read.i = alloca [1 x i8], align 1
  %msgs.i = alloca [4 x %struct.i2c_msg], align 4
  %regs = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %regs) #6
  %0 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 9
  %1 = call ptr @memset(ptr %regs, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_burst_read.i) #6
  %2 = ptrtoint ptr %reg_burst_read.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -65, ptr %reg_burst_read.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_century_read.i) #6
  %3 = ptrtoint ptr %reg_century_read.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -109, ptr %reg_century_read.i, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %msgs.i) #6
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 40)
  %addr1.i = getelementptr i8, ptr %dev, i32 -30
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr1.i, align 2
  %8 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg_burst_read.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %7, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %14 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 8, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %regs, ptr %buf7.i, align 4
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 2
  %16 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %7, ptr %arrayinit.element8.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 2, i32 1
  %17 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 2, i32 2
  %18 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 2, i32 3
  %19 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %reg_century_read.i, ptr %buf13.i, align 4
  %arrayinit.element15.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 3
  %20 = ptrtoint ptr %arrayinit.element15.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %7, ptr %arrayinit.element15.i, align 4
  %flags18.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 3, i32 1
  %21 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags18.i, align 2
  %len19.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 3, i32 2
  %22 = ptrtoint ptr %len19.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len19.i, align 4
  %buf20.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 3, i32 3
  %23 = ptrtoint ptr %buf20.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %0, ptr %buf20.i, align 4
  %adapter.i = getelementptr i8, ptr %dev, i32 -8
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msgs.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 4
  br i1 %cmp.not.i, label %if.end, label %max6900_i2c_read_regs.exit.thread

max6900_i2c_read_regs.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_century_read.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_burst_read.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %26 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 6
  %27 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 5
  %28 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 4
  %29 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 3
  %30 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 2
  %31 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_century_read.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_burst_read.i) #6
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %regs, align 1
  %call5 = call i32 @_bcd2bin(i8 noundef zeroext %33) #10
  %34 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call5, ptr %tm, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %31, align 1
  %call18 = call i32 @_bcd2bin(i8 noundef zeroext %36) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %37 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call18, ptr %tm_min, align 4
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %30, align 1
  %40 = and i8 %39, 63
  %call41 = call i32 @_bcd2bin(i8 noundef zeroext %40) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %41 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call41, ptr %tm_hour, align 4
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %29, align 1
  %call56 = call i32 @_bcd2bin(i8 noundef zeroext %43) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %44 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call56, ptr %tm_mday, align 4
  %45 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %28, align 1
  %call71 = call i32 @_bcd2bin(i8 noundef zeroext %46) #10
  %sub = add i32 %call71, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %47 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub, ptr %tm_mon, align 4
  %48 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %26, align 1
  %call86 = call i32 @_bcd2bin(i8 noundef zeroext %49) #10
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %0, align 1
  %call101 = call i32 @_bcd2bin(i8 noundef zeroext %51) #10
  %mul104 = mul i32 %call101, 100
  %add105 = add i32 %call86, -1900
  %sub106 = add i32 %add105, %mul104
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %52 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub106, ptr %tm_year, align 4
  %53 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %27, align 1
  %call119 = call i32 @_bcd2bin(i8 noundef zeroext %54) #10
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %55 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call119, ptr %tm_wday, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %max6900_i2c_read_regs.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %max6900_i2c_read_regs.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %regs) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6900_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %i2c_century_buf.i = alloca [2 x i8], align 2
  %century_msgs.i = alloca [1 x %struct.i2c_msg], align 4
  %i2c_burst_buf.i = alloca [9 x i8], align 1
  %burst_msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -114, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %cond.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false:                                       ; preds = %entry
  %0 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %2 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %4 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %6 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %8 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_mon, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %10 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_wday, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %12 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_year, align 4
  %add112 = add i32 %13, 1900
  %div113 = sdiv i32 %add112, 100
  %call130 = tail call zeroext i8 @_bin2bcd(i32 noundef %div113) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i2c_century_buf.i) #6
  %14 = ptrtoint ptr %i2c_century_buf.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -28160, ptr %i2c_century_buf.i, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %century_msgs.i) #6
  %15 = getelementptr inbounds i8, ptr %century_msgs.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 196607, ptr %15, align 4
  %addr1.i = getelementptr i8, ptr %dev, i32 -30
  %17 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr1.i, align 2
  %19 = ptrtoint ptr %century_msgs.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %century_msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %century_msgs.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %century_msgs.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %i2c_century_buf.i, ptr %buf2.i, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %i2c_burst_buf.i) #6
  %22 = call ptr @memcpy(ptr %i2c_burst_buf.i, ptr @__const.max6900_i2c_write_regs.i2c_burst_buf, i32 9)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %burst_msgs.i) #6
  %23 = getelementptr inbounds i8, ptr %burst_msgs.i, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 655359, ptr %23, align 4
  %25 = ptrtoint ptr %burst_msgs.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %18, ptr %burst_msgs.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %burst_msgs.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags6.i, align 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %burst_msgs.i, i32 0, i32 3
  %27 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %i2c_burst_buf.i, ptr %buf8.i, align 4
  %arrayidx10.i = getelementptr inbounds [2 x i8], ptr %i2c_century_buf.i, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call130, ptr %arrayidx10.i, align 1
  %adapter.i = getelementptr i8, ptr %dev, i32 -8
  %29 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i, align 8
  %call.i179 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %century_msgs.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i179)
  %cmp.not.i = icmp eq i32 %call.i179, 1
  br i1 %cmp.not.i, label %if.end.i, label %cond.false._crit_edge

cond.false._crit_edge:                            ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %35

if.end.i:                                         ; preds = %cond.false
  %rem91 = srem i32 %13, 100
  %call105 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem91) #10
  %call85 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #10
  %conv86 = zext i8 %call85 to i32
  %add55 = add i32 %9, 1
  %call69 = tail call zeroext i8 @_bin2bcd(i32 noundef %add55) #10
  %conv70 = zext i8 %call69 to i32
  %call49 = tail call zeroext i8 @_bin2bcd(i32 noundef %7) #10
  %call33 = tail call zeroext i8 @_bin2bcd(i32 noundef %5) #10
  %call17 = tail call zeroext i8 @_bin2bcd(i32 noundef %3) #10
  %call4 = tail call zeroext i8 @_bin2bcd(i32 noundef %1) #10
  call void @msleep(i32 noundef 3) #6
  %arrayidx12.i = getelementptr inbounds [9 x i8], ptr %i2c_burst_buf.i, i32 0, i32 1
  %regs.sroa.0.sroa.15.0.insert.ext = zext i8 %call105 to i64
  %regs.sroa.0.sroa.15.0.insert.shift = shl nuw nsw i64 %regs.sroa.0.sroa.15.0.insert.ext, 8
  %conv89.mask = shl nuw nsw i32 %conv86, 16
  %31 = shl nuw i32 %conv70, 24
  %regs.sroa.0.sroa.11.0.insert.shift = zext i32 %31 to i64
  %regs.sroa.0.sroa.13.0.insert.shift.masked = zext i32 %conv89.mask to i64
  %regs.sroa.0.sroa.13.0.insert.insert = or i64 %regs.sroa.0.sroa.15.0.insert.shift, %regs.sroa.0.sroa.13.0.insert.shift.masked
  %regs.sroa.0.sroa.11.0.insert.mask = or i64 %regs.sroa.0.sroa.13.0.insert.insert, %regs.sroa.0.sroa.11.0.insert.shift
  %regs.sroa.0.sroa.9.0.insert.ext = zext i8 %call49 to i64
  %regs.sroa.0.sroa.9.0.insert.shift = shl nuw nsw i64 %regs.sroa.0.sroa.9.0.insert.ext, 32
  %regs.sroa.0.sroa.11.0.insert.insert = or i64 %regs.sroa.0.sroa.11.0.insert.mask, %regs.sroa.0.sroa.9.0.insert.shift
  %regs.sroa.0.sroa.7.0.insert.ext = zext i8 %call33 to i64
  %regs.sroa.0.sroa.7.0.insert.shift = shl nuw nsw i64 %regs.sroa.0.sroa.7.0.insert.ext, 40
  %regs.sroa.0.sroa.5.0.insert.ext = zext i8 %call17 to i64
  %regs.sroa.0.sroa.5.0.insert.shift = shl nuw nsw i64 %regs.sroa.0.sroa.5.0.insert.ext, 48
  %regs.sroa.0.sroa.7.0.insert.insert = or i64 %regs.sroa.0.sroa.11.0.insert.insert, %regs.sroa.0.sroa.7.0.insert.shift
  %regs.sroa.0.sroa.0.0.insert.ext = zext i8 %call4 to i64
  %regs.sroa.0.sroa.0.0.insert.shift = shl nuw i64 %regs.sroa.0.sroa.0.0.insert.ext, 56
  %regs.sroa.0.sroa.5.0.insert.insert = or i64 %regs.sroa.0.sroa.7.0.insert.insert, %regs.sroa.0.sroa.5.0.insert.shift
  %regs.sroa.0.sroa.0.0.insert.mask = or i64 %regs.sroa.0.sroa.0.0.insert.shift, %regs.sroa.0.sroa.5.0.insert.insert
  %regs.sroa.0.sroa.0.0.insert.insert = or i64 %regs.sroa.0.sroa.0.0.insert.mask, 128
  %32 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %regs.sroa.0.sroa.0.0.insert.insert, ptr %arrayidx12.i, align 1
  %33 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i, align 8
  %call15.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %burst_msgs.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i)
  %cmp16.not.i = icmp eq i32 %call15.i, 1
  br i1 %cmp16.not.i, label %max6900_i2c_write_regs.exit, label %if.end.i._crit_edge

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %35

max6900_i2c_write_regs.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %burst_msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %i2c_burst_buf.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %century_msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i2c_century_buf.i) #6
  br label %cleanup

35:                                               ; preds = %if.end.i._crit_edge, %cond.false._crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %burst_msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %i2c_burst_buf.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %century_msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i2c_century_buf.i) #6
  br label %cleanup

cleanup:                                          ; preds = %35, %max6900_i2c_write_regs.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -5, %35 ], [ 0, %max6900_i2c_write_regs.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_rtc_max6900__288_232_max6900_driver_init6, !1, !"__initcall__kmod_rtc_max6900__288_232_max6900_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-max6900.c", i32 232, i32 1}
!2 = !{ptr @__exitcall_max6900_driver_exit, !1, !"__exitcall_max6900_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-max6900.c", i32 234, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-max6900.c", i32 235, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-max6900.c", i32 236, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-max6900.c", i32 226, i32 14}
!12 = !{ptr @max6900_driver, !13, !"max6900_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-max6900.c", i32 224, i32 26}
!14 = !{ptr @max6900_rtc_ops, !15, !"max6900_rtc_ops", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-max6900.c", i32 195, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-max6900.c", i32 85, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @max6900_i2c_read_regs._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @max6900_i2c_read_regs._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-max6900.c", i32 136, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @max6900_i2c_write_regs._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @max6900_i2c_write_regs._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @max6900_id, !30, !"max6900_id", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-max6900.c", i32 218, i32 35}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
