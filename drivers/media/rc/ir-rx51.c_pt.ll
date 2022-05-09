; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir-rx51.c_pt.bc'
source_filename = "../drivers/media/rc/ir-rx51.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ir_rx51 = type { ptr, ptr, %struct.pwm_state, %struct.hrtimer, ptr, %struct.wait_queue_head, i32, i32, [256 x i32], i32, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_ir_rx51__227_292_ir_rx51_platform_driver_init6 = internal global ptr @ir_rx51_platform_driver_init, section ".initcall6.init", align 4
@ir_rx51_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ir_rx51_probe, ptr @ir_rx51_remove, ptr null, ptr @ir_rx51_suspend, ptr @ir_rx51_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ir_rx51_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ir_rx51_platform_driver_exit = internal global ptr @ir_rx51_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [48 x i8] c"ir_rx51.description=IR TX driver for Nokia RX51\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [33 x i8] c"ir_rx51.author=Nokia Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [38 x i8] c"ir_rx51.file=drivers/media/rc/ir-rx51\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [20 x i8] c"ir_rx51.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ir_rx51\00", [24 x i8] zeroinitializer }, align 32
@ir_rx51_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nokia,n900-ir\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ir_rx51_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 238, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwm_get failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ir_rx51_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/rc/ir-rx51.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ir_rx51_probe._entry_ptr = internal global ptr @ir_rx51_probe._entry, section ".printk_index", align 4
@ir_rx51 = internal global { %struct.ir_rx51, [296 x i8] } { %struct.ir_rx51 { ptr null, ptr null, %struct.pwm_state zeroinitializer, %struct.hrtimer zeroinitializer, ptr null, %struct.wait_queue_head zeroinitializer, i32 0, i32 50, [256 x i32] zeroinitializer, i32 -1, i32 0 }, [296 x i8] zeroinitializer }, align 32
@ir_rx51_timer_cb._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ir_rx51_timer_cb = private unnamed_addr constant [17 x i8] c"ir_rx51_timer_cb\00", align 1
@ir_rx51_timer_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.ir_rx51_timer_cb, ptr @.str.3, i32 62, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BUG wbuf_index has value of %i\0A\00", [32 x i8] zeroinitializer }, align 32
@ir_rx51_timer_cb._entry_ptr = internal global ptr @ir_rx51_timer_cb._entry, section ".printk_index", align 4
@ir_rx51_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.8, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ir_rx51_open\00", [19 x i8] zeroinitializer }, align 32
@ir_rx51_open._entry_ptr = internal global ptr @ir_rx51_open._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [24 x i8] c"ir_rx51_platform_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 282, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 288, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"ir_rx51_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 274, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 238, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [8 x i8] c"ir_rx51\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 170, i32 23 }
@___asan_gen_.39 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 60, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [30 x i8] c"../drivers/media/rc/ir-rx51.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 152, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_ir_rx51_platform_driver_exit, ptr @__initcall__kmod_ir_rx51__227_292_ir_rx51_platform_driver_init6, ptr @ir_rx51_open._entry, ptr @ir_rx51_open._entry_ptr, ptr @ir_rx51_platform_driver_exit, ptr @ir_rx51_probe._entry, ptr @ir_rx51_probe._entry_ptr, ptr @ir_rx51_timer_cb._entry, ptr @ir_rx51_timer_cb._entry_ptr, ptr @ir_rx51_platform_driver, ptr @.str, ptr @ir_rx51_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ir_rx51, ptr @ir_rx51_timer_cb._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rx51_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rx51_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rx51_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rx51 to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rx51_timer_cb._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rx51_timer_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rx51_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_rx51_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ir_rx51_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ir_rx51_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ir_rx51_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_rx51_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %call = tail call ptr @pwm_get(ptr noundef %dev1, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end193

if.then:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %0) #10
  br label %cleanup

if.end193:                                        ; preds = %entry
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %state.sroa.0.0.copyload1.i = load i64, ptr %state1.i.i, align 8
  %add = add i64 %state.sroa.0.0.copyload1.i, 500000000
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %add, i32 0) #11, !srcloc !46
  %asmresult.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %add, i64 %asmresult.i, i32 %asmresult4.i) #11, !srcloc !47
  %asmresult10.i = extractvalue { i64, i32 } %3, 0
  %extract305 = lshr i64 %asmresult10.i, 29
  %extract.t306 = trunc i64 %extract305 to i32
  store i32 %extract.t306, ptr getelementptr inbounds (%struct.ir_rx51, ptr @ir_rx51, i32 0, i32 6), align 8
  %4 = call ptr @memcpy(ptr getelementptr inbounds (%struct.ir_rx51, ptr @ir_rx51, i32 0, i32 2), ptr %state1.i.i, i32 24)
  %args1.i.i = getelementptr inbounds %struct.pwm_device, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %args1.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %args.sroa.0.0.copyload1.i = load i64, ptr %args1.i.i, align 8
  %args.sroa.5.0.args1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %call, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %args.sroa.5.0.args1.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %args.sroa.5.0.copyload2.i = load i32, ptr %args.sroa.5.0.args1.i.sroa_idx.i, align 8
  store i64 %args.sroa.0.0.copyload1.i, ptr getelementptr inbounds (%struct.ir_rx51, ptr @ir_rx51, i32 0, i32 2), align 8
  store i32 %args.sroa.5.0.copyload2.i, ptr getelementptr inbounds (%struct.ir_rx51, ptr @ir_rx51, i32 0, i32 2, i32 2), align 8
  store i64 0, ptr getelementptr inbounds (%struct.ir_rx51, ptr @ir_rx51, i32 0, i32 2, i32 1), align 8
  store i8 0, ptr getelementptr inbounds (%struct.ir_rx51, ptr @ir_rx51, i32 0, i32 2, i32 4), align 1
  tail call void @pwm_put(ptr noundef %call) #7
  tail call void @hrtimer_init(ptr noundef getelementptr inbounds (%struct.ir_rx51, ptr @ir_rx51, i32 0, i32 3), i32 noundef 1, i32 noundef 1) #7
  store ptr @ir_rx51_timer_cb, ptr getelementptr inbounds (%struct.ir_rx51, ptr @ir_rx51, i32 0, i32 3, i32 2), align 8
  store ptr %dev1, ptr getelementptr inbounds (%struct.ir_rx51, ptr @ir_rx51, i32 0, i32 4), align 8
  %call199 = tail call ptr @devm_rc_allocate_device(ptr noundef %dev1, i32 noundef 2) #7
  %tobool200.not = icmp eq ptr %call199, null
  br i1 %tobool200.not, label %if.end193.cleanup_crit_edge, label %if.end202

if.end193.cleanup_crit_edge:                      ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end202:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call199, i32 0, i32 24
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ir_rx51, ptr %priv, align 4
  %open = getelementptr inbounds %struct.rc_dev, ptr %call199, i32 0, i32 48
  %8 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ir_rx51_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.rc_dev, ptr %call199, i32 0, i32 49
  %9 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ir_rx51_release, ptr %close, align 4
  %tx_ir = getelementptr inbounds %struct.rc_dev, ptr %call199, i32 0, i32 54
  %10 = ptrtoint ptr %tx_ir to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ir_rx51_tx, ptr %tx_ir, align 8
  %s_tx_duty_cycle = getelementptr inbounds %struct.rc_dev, ptr %call199, i32 0, i32 52
  %11 = ptrtoint ptr %s_tx_duty_cycle to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ir_rx51_set_duty_cycle, ptr %s_tx_duty_cycle, align 8
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, ptr %call199, i32 0, i32 51
  %12 = ptrtoint ptr %s_tx_carrier to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ir_rx51_set_tx_carrier, ptr %s_tx_carrier, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call199, i32 0, i32 6
  %13 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str, ptr %driver_name, align 8
  store ptr %call199, ptr @ir_rx51, align 8
  %call204 = tail call i32 @devm_rc_register_device(ptr noundef %dev1, ptr noundef nonnull %call199) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end202, %if.end193.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call204, %if.end202 ], [ %0, %do.end ], [ -517, %if.then.cleanup_crit_edge ], [ -12, %if.end193.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ir_rx51_remove(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_rx51_suspend(ptr nocapture noundef readnone %dev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef getelementptr inbounds (%struct.ir_rx51, ptr @ir_rx51, i32 0, i32 10)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef getelementptr inbounds (%struct.ir_rx51, ptr @ir_rx51, i32 0, i32 10)) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ir_rx51_resume(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwm_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_rx51_timer_cb(ptr noundef %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wbuf_index = getelementptr i8, ptr %timer, i32 1136
  %0 = ptrtoint ptr %wbuf_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wbuf_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %do.body, label %do.body7.preheader

do.body7.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp961 = icmp ugt i32 %1, 255
  br i1 %cmp961, label %do.body7.preheader.end_crit_edge, label %if.end11.lr.ph

do.body7.preheader.end_crit_edge:                 ; preds = %do.body7.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end11.lr.ph:                                   ; preds = %do.body7.preheader
  %wbuf = getelementptr i8, ptr %timer, i32 112
  %state.i = getelementptr i8, ptr %timer, i32 -24
  %enabled.i = getelementptr i8, ptr %timer, i32 -4
  %pwm.i = getelementptr i8, ptr %timer, i32 -28
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %timer, i32 0, i32 1
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 1
  %base = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  br label %if.end11

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @ir_rx51_timer_cb._rs, ptr noundef nonnull @__func__.ir_rx51_timer_cb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.end_crit_edge, label %do.end

do.body.end_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %timer, i32 48
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = ptrtoint ptr %wbuf_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wbuf_index, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %5) #10
  br label %end

do.body7thread-pre-split:                         ; preds = %if.end15
  %6 = ptrtoint ptr %wbuf_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %wbuf_index, align 8
  %cmp9 = icmp sgt i32 %.pr, 255
  br i1 %cmp9, label %do.body7thread-pre-split.end_crit_edge, label %do.body7thread-pre-split.if.end11_crit_edge

do.body7thread-pre-split.if.end11_crit_edge:      ; preds = %do.body7thread-pre-split
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.body7thread-pre-split.end_crit_edge:           ; preds = %do.body7thread-pre-split
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end11:                                         ; preds = %do.body7thread-pre-split.if.end11_crit_edge, %if.end11.lr.ph
  %7 = phi i32 [ %1, %if.end11.lr.ph ], [ %.pr, %do.body7thread-pre-split.if.end11_crit_edge ]
  %arrayidx = getelementptr [256 x i32], ptr %wbuf, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp13 = icmp eq i32 %9, -1
  br i1 %cmp13, label %if.end11.end_crit_edge, label %if.end15

if.end11.end_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end15:                                         ; preds = %if.end11
  %10 = trunc i32 %7 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %enabled.i, align 4
  %14 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pwm.i, align 4
  %call.i53 = tail call i32 @pwm_apply_state(ptr noundef %15, ptr noundef %state.i) #7
  %16 = ptrtoint ptr %wbuf_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wbuf_index, align 8
  %arrayidx22 = getelementptr [256 x i32], ptr %wbuf, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx22, align 4
  %mul = mul i32 %19, 1000
  %conv = sext i32 %mul to i64
  %20 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %expires.i, align 8
  %add.i = add i64 %21, %conv
  store i64 %add.i, ptr %expires.i, align 8
  %22 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %_softexpires.i, align 8
  %add3.i = add i64 %23, %conv
  store i64 %add3.i, ptr %_softexpires.i, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %wbuf_index, align 8
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %get_time to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_time, align 4
  %call24 = tail call i64 %27() #7
  %28 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %expires.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %call24)
  %cmp27 = icmp slt i64 %29, %call24
  br i1 %cmp27, label %do.body7thread-pre-split, label %if.end15.cleanup31_crit_edge

if.end15.cleanup31_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

end:                                              ; preds = %if.end11.end_crit_edge, %do.body7thread-pre-split.end_crit_edge, %do.end, %do.body.end_crit_edge, %do.body7.preheader.end_crit_edge
  %state.i55 = getelementptr i8, ptr %timer, i32 -24
  %enabled.i56 = getelementptr i8, ptr %timer, i32 -4
  %30 = ptrtoint ptr %enabled.i56 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %enabled.i56, align 4
  %pwm.i57 = getelementptr i8, ptr %timer, i32 -28
  %31 = ptrtoint ptr %pwm.i57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pwm.i57, align 4
  %call.i58 = tail call i32 @pwm_apply_state(ptr noundef %32, ptr noundef %state.i55) #7
  %33 = ptrtoint ptr %wbuf_index to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %wbuf_index, align 8
  %wqueue = getelementptr i8, ptr %timer, i32 52
  tail call void @__wake_up(ptr noundef %wqueue, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup31

cleanup31:                                        ; preds = %end, %if.end15.cleanup31_crit_edge
  %retval.0 = phi i32 [ 0, %end ], [ 1, %if.end15.cleanup31_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rc_allocate_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_rx51_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %device_is_open = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 10
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %device_is_open) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %call2 = tail call ptr @pwm_get(ptr noundef %3, ptr noundef null) #7
  %pwm = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pwm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %pwm, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call2 to i32
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then5 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ir_rx51_release(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %timer = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 3
  %call = tail call i32 @hrtimer_cancel(ptr noundef %timer) #7
  %state.i = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 2
  %enabled.i = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled.i, align 4
  %pwm.i = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwm.i, align 4
  %call.i = tail call i32 @pwm_apply_state(ptr noundef %4, ptr noundef %state.i) #7
  %5 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pwm.i, align 4
  tail call void @pwm_put(ptr noundef %6) #7
  %device_is_open = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %device_is_open) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_rx51_tx(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buffer, i32 noundef %count) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry37 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %count)
  %cmp = icmp ugt i32 %count, 256
  br i1 %cmp, label %entry.cleanup60_crit_edge, label %if.end

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

if.end:                                           ; preds = %entry
  %wbuf = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 8
  %mul = shl nuw nsw i32 %count, 2
  %2 = call ptr @memcpy(ptr %wbuf, ptr %buffer, i32 %mul)
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 114) #7
  %wbuf_index = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %wbuf_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wbuf_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4 = icmp slt i32 %4, 0
  br i1 %cmp4, label %if.end.if.end14_crit_edge, label %if.then5

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %wqueue = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 5
  %call95 = call i32 @prepare_to_wait_event(ptr noundef %wqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %6 = ptrtoint ptr %wbuf_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wbuf_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp896 = icmp slt i32 %7, 0
  br i1 %cmp896, label %if.then5.for.end_crit_edge, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  br label %if.end10

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end10:                                         ; preds = %cleanup.if.end10_crit_edge, %if.then5.if.end10_crit_edge
  %call97 = phi i32 [ %call, %cleanup.if.end10_crit_edge ], [ %call95, %if.then5.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool.not = icmp eq i32 %call97, 0
  br i1 %tobool.not, label %cleanup, label %if.end10.__out_crit_edge

if.end10.__out_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end10
  call void @schedule() #7
  %call = call i32 @prepare_to_wait_event(ptr noundef %wqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %8 = ptrtoint ptr %wbuf_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wbuf_index, align 8
  %cmp8 = icmp slt i32 %9, 0
  br i1 %cmp8, label %cleanup.for.end_crit_edge, label %cleanup.if.end10_crit_edge

cleanup.if.end10_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then5.for.end_crit_edge
  call void @finish_wait(ptr noundef %wqueue, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end10.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end14

if.end14:                                         ; preds = %__out, %if.end.if.end14_crit_edge
  %freq.i = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %freq.i, align 8
  %div2.i = lshr i32 %11, 1
  %add.i = add nuw i32 %div2.i, 1000000000
  %div1.i = udiv i32 %add.i, %11
  %conv.i = zext i32 %div1.i to i64
  %state.i = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv.i, ptr %state.i, align 8
  %duty_cycle.i = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %duty_cycle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %14)
  %cmp.i.i = icmp ugt i32 %14, 100
  br i1 %cmp.i.i, label %if.end14.init_timing_params.exit_crit_edge, label %if.end188.i.i

if.end14.init_timing_params.exit_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_timing_params.exit

if.end188.i.i:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i32 %14 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, %conv.i
  %add.i.i = add nuw nsw i64 %mul.i.i, 50
  %15 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %add.i.i, i32 0) #11, !srcloc !46
  %asmresult.i.i.i = extractvalue { i64, i32 } %15, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %15, 1
  %16 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %add.i.i, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !47
  %asmresult10.i.i.i = extractvalue { i64, i32 } %16, 0
  %_tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 6
  %duty_cycle191.i.i = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %duty_cycle191.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %_tmp.0.i.i, ptr %duty_cycle191.i.i, align 8
  br label %init_timing_params.exit

init_timing_params.exit:                          ; preds = %if.end188.i.i, %if.end14.init_timing_params.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %count)
  %cmp17 = icmp ult i32 %count, 256
  br i1 %cmp17, label %if.then18, label %init_timing_params.exit.if.end20_crit_edge

init_timing_params.exit.if.end20_crit_edge:       ; preds = %init_timing_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %init_timing_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.ir_rx51, ptr %1, i32 0, i32 8, i32 %count
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %arrayidx, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %init_timing_params.exit.if.end20_crit_edge
  %enabled.i = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %enabled.i, align 4
  %pwm.i = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pwm.i, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef %21, ptr noundef %state.i) #7
  %22 = ptrtoint ptr %wbuf_index to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %wbuf_index, align 8
  %timer = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wbuf, align 8
  %mul24 = mul i32 %24, 1000
  %conv = sext i32 %mul24 to i64
  call void @hrtimer_start_range_ns(ptr noundef %timer, i64 noundef %conv, i64 noundef 0, i32 noundef 1) #7
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 134) #7
  %25 = ptrtoint ptr %wbuf_index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wbuf_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp34 = icmp slt i32 %26, 0
  br i1 %cmp34, label %if.end20.cleanup60_crit_edge, label %if.then36

if.end20.cleanup60_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

if.then36:                                        ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry37) #7
  %27 = call ptr @memset(ptr %__wq_entry37, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry37, i32 noundef 0) #7
  %wqueue41 = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 5
  %call4298 = call i32 @prepare_to_wait_event(ptr noundef %wqueue41, ptr noundef nonnull %__wq_entry37, i32 noundef 1) #7
  %28 = ptrtoint ptr %wbuf_index to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wbuf_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp4499 = icmp slt i32 %29, 0
  br i1 %cmp4499, label %if.then36.for.end54_crit_edge, label %if.then36.if.end47_crit_edge

if.then36.if.end47_crit_edge:                     ; preds = %if.then36
  br label %if.end47

if.then36.for.end54_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end54

if.end47:                                         ; preds = %cleanup51.if.end47_crit_edge, %if.then36.if.end47_crit_edge
  %call42100 = phi i32 [ %call42, %cleanup51.if.end47_crit_edge ], [ %call4298, %if.then36.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42100)
  %tobool48.not = icmp eq i32 %call42100, 0
  br i1 %tobool48.not, label %cleanup51, label %if.end47.__out56_crit_edge

if.end47.__out56_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out56

cleanup51:                                        ; preds = %if.end47
  call void @schedule() #7
  %call42 = call i32 @prepare_to_wait_event(ptr noundef %wqueue41, ptr noundef nonnull %__wq_entry37, i32 noundef 1) #7
  %30 = ptrtoint ptr %wbuf_index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wbuf_index, align 8
  %cmp44 = icmp slt i32 %31, 0
  br i1 %cmp44, label %cleanup51.for.end54_crit_edge, label %cleanup51.if.end47_crit_edge

cleanup51.if.end47_crit_edge:                     ; preds = %cleanup51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

cleanup51.for.end54_crit_edge:                    ; preds = %cleanup51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end54

for.end54:                                        ; preds = %cleanup51.for.end54_crit_edge, %if.then36.for.end54_crit_edge
  call void @finish_wait(ptr noundef %wqueue41, ptr noundef nonnull %__wq_entry37) #7
  br label %__out56

__out56:                                          ; preds = %for.end54, %if.end47.__out56_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry37) #7
  br label %cleanup60

cleanup60:                                        ; preds = %__out56, %if.end20.cleanup60_crit_edge, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup60_crit_edge ], [ %count, %__out56 ], [ %count, %if.end20.cleanup60_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ir_rx51_set_duty_cycle(ptr nocapture noundef readonly %dev, i32 noundef %duty) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %duty_cycle = getelementptr inbounds %struct.ir_rx51, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %duty, ptr %duty_cycle, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ir_rx51_set_tx_carrier(ptr nocapture noundef readonly %dev, i32 noundef %carrier) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %carrier, -500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -480001, i32 %0)
  %1 = icmp ult i32 %0, -480001
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %freq = getelementptr inbounds %struct.ir_rx51, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %carrier, ptr %freq, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_ir_rx51__227_292_ir_rx51_platform_driver_init6, !1, !"__initcall__kmod_ir_rx51__227_292_ir_rx51_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir-rx51.c", i32 292, i32 1}
!2 = !{ptr @__exitcall_ir_rx51_platform_driver_exit, !1, !"__exitcall_ir_rx51_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/ir-rx51.c", i32 294, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/ir-rx51.c", i32 295, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir-rx51.c", i32 296, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/ir-rx51.c", i32 288, i32 11}
!12 = !{ptr @ir_rx51_platform_driver, !13, !"ir_rx51_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/rc/ir-rx51.c", i32 282, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/rc/ir-rx51.c", i32 238, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ir_rx51_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ir_rx51_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ir_rx51, !23, !"ir_rx51", i1 false, i1 false}
!23 = !{!"../drivers/media/rc/ir-rx51.c", i32 170, i32 23}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/ir-rx51.c", i32 60, i32 3}
!26 = !{ptr @ir_rx51_timer_cb._rs, !25, !"_rs", i1 false, i1 false}
!27 = !{ptr @__func__.ir_rx51_timer_cb, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ir_rx51_timer_cb._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @ir_rx51_timer_cb._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/rc/ir-rx51.c", i32 152, i32 3}
!33 = !{ptr @ir_rx51_open._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ir_rx51_open._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @ir_rx51_match, !36, !"ir_rx51_match", i1 false, i1 false}
!36 = !{!"../drivers/media/rc/ir-rx51.c", i32 274, i32 34}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 1149692, i64 1149719, i64 1149741, i64 1149769}
!47 = !{i64 1150100, i64 1150127, i64 1150160, i64 1150181, i64 1150208, i64 1150234}
