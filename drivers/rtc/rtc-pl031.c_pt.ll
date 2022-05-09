; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-pl031.c_pt.bc'
source_filename = "../drivers/rtc/rtc-pl031.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.pl031_vendor_data = type { %struct.rtc_class_ops, i8, i8, i32, i64, i64 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.pl031_local = type { ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_pl031__290_466_pl031_driver_init6 = internal global ptr @pl031_driver_init, section ".initcall6.init", align 4
@pl031_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pl031_probe, ptr @pl031_remove, ptr null, ptr @pl031_ids }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pl031_driver_exit = internal global ptr @pl031_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [53 x i8] c"rtc_pl031.author=Deepak Saxena <dsaxena@plexity.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [48 x i8] c"rtc_pl031.description=ARM AMBA PL031 RTC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [37 x i8] c"rtc_pl031.file=drivers/rtc/rtc-pl031\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"rtc_pl031.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc-pl031\00", [22 x i8] zeroinitializer }, align 32
@pl031_ids = internal constant { [4 x %struct.amba_id], [48 x i8] } { [4 x %struct.amba_id] [%struct.amba_id { i32 266289, i32 1048575, ptr @arm_pl031 }, %struct.amba_id { i32 1572913, i32 16777215, ptr @stv1_pl031 }, %struct.amba_id { i32 2621489, i32 16777215, ptr @stv2_pl031 }, %struct.amba_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pl031_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 81, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc_pl031\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pl031_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-pl031.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"designer ID = 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@pl031_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 81, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"revision = 0x%01x\0A\00", [45 x i8] zeroinitializer }, align 32
@arm_pl031 = internal global { %struct.pl031_vendor_data, [56 x i8] } { %struct.pl031_vendor_data { %struct.rtc_class_ops { ptr null, ptr @pl031_read_time, ptr @pl031_set_time, ptr @pl031_read_alarm, ptr @pl031_set_alarm, ptr null, ptr @pl031_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, i8 0, i8 0, i32 0, i64 0, i64 4294967295 }, [56 x i8] zeroinitializer }, align 32
@stv1_pl031 = internal global { %struct.pl031_vendor_data, [56 x i8] } { %struct.pl031_vendor_data { %struct.rtc_class_ops { ptr null, ptr @pl031_read_time, ptr @pl031_set_time, ptr @pl031_read_alarm, ptr @pl031_set_alarm, ptr null, ptr @pl031_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, i8 1, i8 1, i32 0, i64 0, i64 4294967295 }, [56 x i8] zeroinitializer }, align 32
@stv2_pl031 = internal global { %struct.pl031_vendor_data, [56 x i8] } { %struct.pl031_vendor_data { %struct.rtc_class_ops { ptr null, ptr @pl031_stv2_read_time, ptr @pl031_stv2_set_time, ptr @pl031_stv2_read_alarm, ptr @pl031_stv2_set_alarm, ptr null, ptr @pl031_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, i8 1, i8 1, i32 262272, i64 -62167219200, i64 253402300799 }, [56 x i8] zeroinitializer }, align 32
@pl031_stv2_tm_to_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 124, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid wday value %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pl031_stv2_tm_to_time\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pl031_stv2_tm_to_time._entry_ptr = internal global ptr @pl031_stv2_tm_to_time._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"pl031_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 457, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 459, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"pl031_ids\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 435, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 325, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 326, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"arm_pl031\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 388, i32 33 }
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"stv1_pl031\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 400, i32 33 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"stv2_pl031\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 414, i32 33 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [27 x i8] c"../drivers/rtc/rtc-pl031.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 124, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_pl031_driver_exit, ptr @__initcall__kmod_rtc_pl031__290_466_pl031_driver_init6, ptr @pl031_driver_exit, ptr @pl031_stv2_tm_to_time._entry, ptr @pl031_stv2_tm_to_time._entry_ptr, ptr @pl031_driver, ptr @.str, ptr @pl031_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @arm_pl031, ptr @stv1_pl031, ptr @stv2_pl031, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl031_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl031_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_pl031 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv1_pl031 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv2_pl031 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl031_stv2_tm_to_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pl031_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @pl031_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pl031_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @amba_driver_unregister(ptr noundef nonnull @pl031_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl031_probe(ptr noundef %adev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.amba_id, ptr %id, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @amba_request_regions(ptr noundef %adev, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 12, i32 noundef 3520) #7
  %call5 = tail call ptr @devm_kmemdup(ptr noundef %adev, ptr noundef %1, i32 noundef 44, i32 noundef 3264) #7
  %tobool6.not = icmp eq ptr %call.i, null
  %tobool7.not = icmp eq ptr %call5, null
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.end.out_crit_edge, label %if.end9

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %call.i, align 4
  %res = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %res, align 8
  %end.i = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %4
  %add.i = add i32 %sub.i, %6
  %call14 = tail call ptr @devm_ioremap(ptr noundef %adev, i32 noundef %4, i32 noundef %add.i) #7
  %base = getelementptr inbounds %struct.pl031_local, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %base, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.end9.out_crit_edge, label %if.end18

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end18:                                         ; preds = %if.end9
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl031_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl031_probe, %do.body28)) #7
          to label %if.then25 [label %do.body28], !srcloc !47

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %periphid = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 4
  %9 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %periphid, align 8
  %shr = lshr i32 %10, 12
  %and = and i32 %shr, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl031_probe.__UNIQUE_ID_ddebug288, ptr noundef %adev, ptr noundef nonnull @.str.4, i32 noundef %and) #7
  br label %do.body28

do.body28:                                        ; preds = %if.then25, %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl031_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl031_probe, %do.end49)) #7
          to label %if.then42 [label %do.end49], !srcloc !47

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %periphid44 = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 4
  %11 = ptrtoint ptr %periphid44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %periphid44, align 8
  %shr45 = lshr i32 %12, 20
  %and46 = and i32 %shr45, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl031_probe.__UNIQUE_ID_ddebug289, ptr noundef %adev, ptr noundef nonnull @.str.5, i32 noundef %and46) #7
  br label %do.end49

do.end49:                                         ; preds = %if.then42, %do.body28
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !48
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %clockwatch = getelementptr inbounds %struct.pl031_vendor_data, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %clockwatch to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %clockwatch, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool54.not = icmp eq i8 %18, 0
  %data1.0.v = select i1 %tobool54.not, i32 1, i32 67108864
  %data1.0 = or i32 %data1.0.v, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %data1.0)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr62 = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %19) #7, !srcloc !52
  %st_weekday = getelementptr inbounds %struct.pl031_vendor_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %st_weekday to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %st_weekday, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool63.not = icmp eq i8 %23, 0
  br i1 %tobool63.not, label %do.end49.if.end96_crit_edge, label %if.then64

do.end49.if.end96_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then64:                                        ; preds = %do.end49
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr68 = getelementptr i8, ptr %25, i32 48
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %26)
  %cmp = icmp eq i32 %26, 2097152
  br i1 %cmp, label %if.then72, label %if.then64.if.end96_crit_edge

if.then64.if.end96_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then72:                                        ; preds = %if.then64
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !48
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  %and80 = and i32 %30, 536739840
  call void @__sanitizer_cov_trace_const_cmp4(i32 34734080, i32 %and80)
  %cmp81 = icmp eq i32 %and80, 34734080
  br i1 %cmp81, label %if.then82, label %if.then72.if.end96_crit_edge

if.then72.if.end96_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then82:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  %or83 = or i32 %30, 917504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr88 = getelementptr i8, ptr %32, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 2097152) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %or83)
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr93 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %33) #7, !srcloc !52
  br label %if.end96

if.end96:                                         ; preds = %if.then82, %if.then72.if.end96_crit_edge, %if.then64.if.end96_crit_edge, %do.end49.if.end96_crit_edge
  %irq = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 7
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool97.not = icmp eq i32 %37, 0
  br i1 %tobool97.not, label %if.then98, label %if.end96.if.end99_crit_edge

if.end96.if.end99_crit_edge:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then98:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  %rtc = getelementptr inbounds %struct.pl031_local, ptr %call.i, i32 0, i32 1
  %38 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rtc, align 4
  %features = getelementptr inbounds %struct.rtc_device, ptr %39, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %features) #7
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end96.if.end99_crit_edge
  %call101 = tail call i32 @device_init_wakeup(ptr noundef %adev, i1 noundef zeroext true) #7
  %call103 = tail call ptr @devm_rtc_allocate_device(ptr noundef %adev) #7
  %rtc104 = getelementptr inbounds %struct.pl031_local, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %rtc104 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call103, ptr %rtc104, align 4
  %cmp.i = icmp ugt ptr %call103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then107, label %if.end110

if.then107:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call103 to i32
  br label %out

if.end110:                                        ; preds = %if.end99
  %ops112 = getelementptr inbounds %struct.rtc_device, ptr %call103, i32 0, i32 3
  %42 = ptrtoint ptr %ops112 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call5, ptr %ops112, align 8
  %range_min = getelementptr inbounds %struct.pl031_vendor_data, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %range_min to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %range_min, align 8
  %45 = ptrtoint ptr %rtc104 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rtc104, align 4
  %range_min114 = getelementptr inbounds %struct.rtc_device, ptr %46, i32 0, i32 22
  %47 = ptrtoint ptr %range_min114 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %44, ptr %range_min114, align 8
  %range_max = getelementptr inbounds %struct.pl031_vendor_data, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %range_max to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %range_max, align 8
  %50 = load ptr, ptr %rtc104, align 4
  %range_max116 = getelementptr inbounds %struct.rtc_device, ptr %50, i32 0, i32 23
  %51 = ptrtoint ptr %range_max116 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %49, ptr %range_max116, align 8
  %52 = load ptr, ptr %rtc104, align 4
  %call118 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.end110.out_crit_edge

if.end110.out_crit_edge:                          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end121:                                        ; preds = %if.end110
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool124.not = icmp eq i32 %54, 0
  br i1 %tobool124.not, label %if.end121.cleanup_crit_edge, label %if.then125

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then125:                                       ; preds = %if.end121
  %irqflags = getelementptr inbounds %struct.pl031_vendor_data, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irqflags, align 8
  %call.i196 = tail call i32 @request_threaded_irq(i32 noundef %54, ptr noundef nonnull @pl031_interrupt, ptr noundef null, i32 noundef %56, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool129.not = icmp eq i32 %call.i196, 0
  br i1 %tobool129.not, label %if.end131, label %if.then125.out_crit_edge

if.then125.out_crit_edge:                         ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end131:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq, align 8
  %call135 = tail call i32 @dev_pm_set_wake_irq(ptr noundef %adev, i32 noundef %58) #7
  br label %cleanup

out:                                              ; preds = %if.then125.out_crit_edge, %if.end110.out_crit_edge, %if.then107, %if.end9.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %41, %if.then107 ], [ %call118, %if.end110.out_crit_edge ], [ %call.i196, %if.then125.out_crit_edge ], [ -12, %if.end.out_crit_edge ], [ -12, %if.end9.out_crit_edge ]
  tail call void @amba_release_regions(ptr noundef %adev) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end131, %if.end121.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end131 ], [ 0, %if.end121.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl031_remove(ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @dev_pm_clear_wake_irq(ptr noundef %adev) #7
  %call3 = tail call i32 @device_init_wakeup(ptr noundef %adev, i1 noundef zeroext false) #7
  %irq = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 7
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @amba_release_regions(ptr noundef %adev) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl031_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.pl031_local, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 16777216) #7, !srcloc !52
  %rtc = getelementptr inbounds %struct.pl031_local, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc, align 4
  tail call void @rtc_update_irq(ptr noundef %7, i32 noundef 1, i32 noundef 160) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl031_read_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.pl031_local, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !48
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %conv = zext i32 %5 to i64
  tail call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %tm) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl031_set_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #7
  %conv = trunc i64 %call1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %base = getelementptr inbounds %struct.pl031_local, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !52
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl031_read_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alarm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.pl031_local, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !48
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %conv = zext i32 %5 to i64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  tail call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %time) #7
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !48
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %10 = trunc i32 %9 to i8
  %conv10 = and i8 %10, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 1
  %11 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10, ptr %pending, align 1
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !48
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %16 = trunc i32 %15 to i8
  %conv19 = and i8 %16, 1
  %17 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv19, ptr %alarm, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl031_set_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alarm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #7
  %conv = trunc i64 %call1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %base = getelementptr inbounds %struct.pl031_local, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !52
  %5 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %alarm, align 4
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.pl031_local, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !52
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !48
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.i = icmp eq i8 %6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp.i, label %do.body5.i, label %do.body10.i

do.body5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %14, 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %15) #7, !srcloc !52
  br label %pl031_alarm_irq_enable.exit

do.body10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %14, -2
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %18) #7, !srcloc !52
  br label %pl031_alarm_irq_enable.exit

pl031_alarm_irq_enable.exit:                      ; preds = %do.body10.i, %do.body5.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl031_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %base = getelementptr inbounds %struct.pl031_local, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !52
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !48
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %enabled)
  %cmp = icmp eq i32 %enabled, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp, label %do.body5, label %do.body10

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %7, 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %8) #7, !srcloc !52
  br label %if.end

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %7, -2
  %11 = tail call i32 @llvm.bswap.i32(i32 %and)
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %11) #7, !srcloc !52
  br label %if.end

if.end:                                           ; preds = %do.body10, %do.body5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl031_stv2_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.pl031_local, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 48
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shr2.i = lshr i32 %8, 8
  %conv3.i = trunc i32 %shr2.i to i8
  %call14.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv3.i) #10
  %conv.i = trunc i32 %8 to i8
  %call.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv.i) #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %4)
  %mul17.i = mul i32 %call14.i, 100
  %add18.i = add i32 %mul17.i, %call.i
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %10 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add18.i, ptr %tm_year.i, align 4
  %and19.i = lshr i32 %9, 25
  %shr20.i = and i32 %and19.i, 15
  %sub.i = add nsw i32 %shr20.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %11 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %and21.i = lshr i32 %9, 20
  %shr22.i = and i32 %and21.i, 31
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %12 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr22.i, ptr %tm_mday.i, align 4
  %and23.i = lshr i32 %9, 17
  %shr24.i = and i32 %and23.i, 7
  %sub25.i = add nsw i32 %shr24.i, -1
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %13 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub25.i, ptr %tm_wday.i, align 4
  %and26.i = lshr i32 %9, 12
  %shr27.i = and i32 %and26.i, 31
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %14 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr27.i, ptr %tm_hour.i, align 4
  %and28.i = lshr i32 %9, 6
  %shr29.i = and i32 %and28.i, 63
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %15 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr29.i, ptr %tm_min.i, align 4
  %and30.i = and i32 %9, 63
  %16 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and30.i, ptr %tm, align 4
  %call35.i = tail call i32 @rtc_year_days(i32 noundef %shr22.i, i32 noundef %sub.i, i32 noundef %add18.i) #7
  %tm_yday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %17 = ptrtoint ptr %tm_yday.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call35.i, ptr %tm_yday.i, align 4
  %18 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_year.i, align 4
  %sub37.i = add i32 %19, -1900
  store i32 %sub37.i, ptr %tm_year.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl031_stv2_set_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %time = alloca i32, align 4
  %bcd_year = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time) #7
  %0 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %time, align 4, !annotation !69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcd_year) #7
  %1 = ptrtoint ptr %bcd_year to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %bcd_year, align 4, !annotation !69
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call1 = call fastcc i32 @pl031_stv2_tm_to_time(ptr noundef %dev, ptr noundef %tm, ptr noundef nonnull %time, ptr noundef nonnull %bcd_year)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %bcd_year to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bcd_year, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %base = getelementptr inbounds %struct.pl031_local, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %time, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %11) #7, !srcloc !52
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcd_year) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl031_stv2_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %alarm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.pl031_local, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shr2.i = lshr i32 %8, 8
  %conv3.i = trunc i32 %shr2.i to i8
  %call14.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv3.i) #10
  %conv.i = trunc i32 %8 to i8
  %call.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv.i) #10
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %9 = tail call i32 @llvm.bswap.i32(i32 %4)
  %mul17.i = mul i32 %call14.i, 100
  %add18.i = add i32 %mul17.i, %call.i
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add18.i, ptr %tm_year.i, align 4
  %and19.i = lshr i32 %9, 25
  %shr20.i = and i32 %and19.i, 15
  %sub.i = add nsw i32 %shr20.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %and21.i = lshr i32 %9, 20
  %shr22.i = and i32 %and21.i, 31
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr22.i, ptr %tm_mday.i, align 4
  %and23.i = lshr i32 %9, 17
  %shr24.i = and i32 %and23.i, 7
  %sub25.i = add nsw i32 %shr24.i, -1
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 6
  %13 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub25.i, ptr %tm_wday.i, align 4
  %and26.i = lshr i32 %9, 12
  %shr27.i = and i32 %and26.i, 31
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr27.i, ptr %tm_hour.i, align 4
  %and28.i = lshr i32 %9, 6
  %shr29.i = and i32 %and28.i, 63
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr29.i, ptr %tm_min.i, align 4
  %and30.i = and i32 %9, 63
  %16 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and30.i, ptr %time, align 4
  %call35.i = tail call i32 @rtc_year_days(i32 noundef %shr22.i, i32 noundef %sub.i, i32 noundef %add18.i) #7
  %tm_yday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 7
  %17 = ptrtoint ptr %tm_yday.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call35.i, ptr %tm_yday.i, align 4
  %18 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_year.i, align 4
  %sub37.i = add i32 %19, -1900
  store i32 %sub37.i, ptr %tm_year.i, align 4
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %21, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !48
  %23 = lshr i32 %22, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %24 = trunc i32 %23 to i8
  %conv = and i8 %24, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 1
  %25 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %pending, align 1
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #7, !srcloc !48
  %29 = lshr i32 %28, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %30 = trunc i32 %29 to i8
  %conv26 = and i8 %30, 1
  %31 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv26, ptr %alarm, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl031_stv2_set_alarm(ptr noundef %dev, ptr noundef %alarm) #2 align 64 {
entry:
  %time = alloca i32, align 4
  %bcd_year = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time) #7
  %2 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %time, align 4, !annotation !69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcd_year) #7
  %3 = ptrtoint ptr %bcd_year to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %bcd_year, align 4, !annotation !69
  %time1 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %call2 = call fastcc i32 @pl031_stv2_tm_to_time(ptr noundef %dev, ptr noundef %time1, ptr noundef nonnull %time, ptr noundef nonnull %bcd_year)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %bcd_year to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bcd_year, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %base = getelementptr inbounds %struct.pl031_local, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %time, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %11) #7, !srcloc !52
  %14 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %alarm, align 4
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.pl031_local, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !52
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !48
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp.i = icmp eq i8 %15, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp.i, label %do.body5.i, label %do.body10.i

do.body5.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %23, 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %24) #7, !srcloc !52
  br label %if.end

do.body10.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %23, -2
  %27 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %27) #7, !srcloc !52
  br label %if.end

if.end:                                           ; preds = %do.body10.i, %do.body5.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcd_year) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time) #7
  ret i32 %call2
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_year_days(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl031_stv2_tm_to_time(ptr noundef %dev, ptr noundef %tm, ptr nocapture noundef writeonly %st_time, ptr nocapture noundef writeonly %bcd_year) unnamed_addr #2 align 64 {
entry:
  %calc_tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %0 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_year, align 4
  %add = add i32 %1, 1900
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %2 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_wday, align 4
  %4 = add i32 %3, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %4)
  %5 = icmp ult i32 %4, -8
  br i1 %5, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %3) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp3 = icmp eq i32 %3, -1
  br i1 %cmp3, label %if.then4, label %if.else.cond.false_crit_edge

if.else.cond.false_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %calc_tm) #7
  %6 = call ptr @memset(ptr %calc_tm, i32 255, i32 36)
  %call = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #7
  call void @rtc_time64_to_tm(i64 noundef %call, ptr noundef nonnull %calc_tm) #7
  %tm_wday5 = getelementptr inbounds %struct.rtc_time, ptr %calc_tm, i32 0, i32 6
  %7 = ptrtoint ptr %tm_wday5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_wday5, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %calc_tm) #7
  br label %cond.false

cond.false:                                       ; preds = %if.then4, %if.else.cond.false_crit_edge
  %wday.0 = phi i32 [ %8, %if.then4 ], [ %3, %if.else.cond.false_crit_edge ]
  %add.frozen = freeze i32 %add
  %div14 = sdiv i32 %add.frozen, 100
  %9 = mul i32 %div14, 100
  %rem.decomposed = sub i32 %add.frozen, %9
  %call12 = call zeroext i8 @_bin2bcd(i32 noundef %rem.decomposed) #10
  %conv13 = zext i8 %call12 to i32
  %call25 = call zeroext i8 @_bin2bcd(i32 noundef %div14) #10
  %conv26 = zext i8 %call25 to i32
  %shl29 = shl nuw nsw i32 %conv26, 8
  %or = or i32 %shl29, %conv13
  %10 = ptrtoint ptr %bcd_year to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %bcd_year, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %11 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_mon, align 4
  %add30 = shl i32 %12, 25
  %shl31 = add i32 %add30, 33554432
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %13 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_mday, align 4
  %shl32 = shl i32 %14, 20
  %add34 = shl i32 %wday.0, 17
  %shl35 = add i32 %add34, 131072
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_hour, align 4
  %shl37 = shl i32 %16, 12
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %17 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_min, align 4
  %shl39 = shl i32 %18, 6
  %19 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm, align 4
  %or33 = or i32 %shl32, %shl35
  %or36 = or i32 %or33, %shl31
  %or38 = or i32 %or36, %shl37
  %or40 = or i32 %or38, %shl39
  %or42 = or i32 %or40, %20
  %21 = ptrtoint ptr %st_time to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or42, ptr %st_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %cond.false ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_rtc_pl031__290_466_pl031_driver_init6, !1, !"__initcall__kmod_rtc_pl031__290_466_pl031_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-pl031.c", i32 466, i32 1}
!2 = !{ptr @__exitcall_pl031_driver_exit, !1, !"__exitcall_pl031_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-pl031.c", i32 468, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-pl031.c", i32 469, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-pl031.c", i32 470, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-pl031.c", i32 459, i32 11}
!12 = !{ptr @pl031_driver, !13, !"pl031_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-pl031.c", i32 457, i32 27}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-pl031.c", i32 325, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pl031_probe.__UNIQUE_ID_ddebug288, !15, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-pl031.c", i32 326, i32 2}
!22 = !{ptr @pl031_probe.__UNIQUE_ID_ddebug289, !21, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!23 = !{ptr @pl031_ids, !24, !"pl031_ids", i1 false, i1 false}
!24 = !{!"../drivers/rtc/rtc-pl031.c", i32 435, i32 29}
!25 = !{ptr @arm_pl031, !26, !"arm_pl031", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-pl031.c", i32 388, i32 33}
!27 = !{ptr @stv1_pl031, !28, !"stv1_pl031", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-pl031.c", i32 400, i32 33}
!29 = !{ptr @stv2_pl031, !30, !"stv2_pl031", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-pl031.c", i32 414, i32 33}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-pl031.c", i32 124, i32 3}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pl031_stv2_tm_to_time._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @pl031_stv2_tm_to_time._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2148963790, i64 2148963795, i64 2148963808, i64 2148963852, i64 2148963886, i64 2148963907}
!48 = !{i64 4635720}
!49 = !{i64 2155014370}
!50 = !{i8 0, i8 2}
!51 = !{i64 2155014610}
!52 = !{i64 4635302}
!53 = !{i64 2155015284}
!54 = !{i64 2155015779}
!55 = !{i64 2155016086}
!56 = !{i64 2155016492}
!57 = !{i64 2155005298}
!58 = !{i64 2155005541}
!59 = !{i64 2155006237}
!60 = !{i64 2155006474}
!61 = !{i64 2155007196}
!62 = !{i64 2155007691}
!63 = !{i64 2155008195}
!64 = !{i64 2155008451}
!65 = !{i64 2154996138}
!66 = !{i64 2154996824}
!67 = !{i64 2155000678}
!68 = !{i64 2155001173}
!69 = !{!"auto-init"}
!70 = !{i64 2155001398}
!71 = !{i64 2155001810}
!72 = !{i64 2155002484}
!73 = !{i64 2155002979}
!74 = !{i64 2155003474}
!75 = !{i64 2155003978}
!76 = !{i64 2155004212}
!77 = !{i64 2155004624}
