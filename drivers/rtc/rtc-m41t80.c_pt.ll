; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-m41t80.c_pt.bc'
source_filename = "../drivers/rtc/rtc-m41t80.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.m41t80_data = type { i32, ptr, ptr, %struct.clk_hw, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.81 = type { ptr }

@__param_str_wdt_margin = internal constant [22 x i8] c"rtc_m41t80.wdt_margin\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@wdt_margin = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_wdt_margin = internal constant %struct.kernel_param { ptr @__param_str_wdt_margin, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @wdt_margin } }, section "__param", align 4
@__UNIQUE_ID_wdt_margintype288 = internal constant [35 x i8] c"rtc_m41t80.parmtype=wdt_margin:int\00", section ".modinfo", align 1
@__UNIQUE_ID_wdt_margin289 = internal constant [69 x i8] c"rtc_m41t80.parm=wdt_margin:Watchdog timeout in seconds (default 60s)\00", section ".modinfo", align 1
@__initcall__kmod_rtc_m41t80__290_1019_m41t80_driver_init6 = internal global ptr @m41t80_driver_init, section ".initcall6.init", align 4
@m41t80_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @m41t80_probe, ptr @m41t80_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @m41t80_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m41t80_pm, ptr null, ptr null }, ptr @m41t80_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_m41t80_driver_exit = internal global ptr @m41t80_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [50 x i8] c"rtc_m41t80.author=Alexander Bigga <ab@mycable.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [79 x i8] c"rtc_m41t80.description=ST Microelectronics M41T80 series RTC I2C Client Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [39 x i8] c"rtc_m41t80.file=drivers/rtc/rtc-m41t80\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [23 x i8] c"rtc_m41t80.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-m41t80\00", [21 x i8] zeroinitializer }, align 32
@m41t80_of_match = internal constant { [14 x %struct.of_device_id], [680 x i8] } { [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t62\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 20 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t65\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t81\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t81s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t82\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t83\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t84\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t85\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t87\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microcrystal,rv4162\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 28 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,rv4162\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 28 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rv4162\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 28 to ptr) }, %struct.of_device_id zeroinitializer], [680 x i8] zeroinitializer }, align 32
@m41t80_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @m41t80_suspend, ptr @m41t80_resume, ptr @m41t80_suspend, ptr @m41t80_resume, ptr @m41t80_suspend, ptr @m41t80_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@m41t80_id = internal constant { [12 x %struct.i2c_device_id], [64 x i8] } { [12 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"m41t62\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 20 }, %struct.i2c_device_id { [20 x i8] c"m41t65\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"m41t80\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"m41t81\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"m41t81s\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"m41t82\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"m41t83\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"m41st84\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"m41st85\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"m41st87\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"rv4162\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 28 }, %struct.i2c_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@m41t80_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 890, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"doesn't support I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_I2C_BLOCK\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"m41t80_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-m41t80.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@m41t80_probe._entry_ptr = internal global ptr @m41t80_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m41t80\00", [25 x i8] zeroinitializer }, align 32
@m41t80_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 921, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to request IRQ, alarms disabled\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@m41t80_probe._entry_ptr.11 = internal global ptr @m41t80_probe._entry.8, section ".printk_index", align 4
@m41t80_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @m41t80_rtc_read_time, ptr @m41t80_rtc_set_time, ptr @m41t80_read_alarm, ptr @m41t80_set_alarm, ptr @m41t80_rtc_proc, ptr @m41t80_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@m41t80_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 946, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HT bit was set!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@m41t80_probe._entry_ptr.15 = internal global ptr @m41t80_probe._entry.12, section ".printk_index", align 4
@m41t80_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 947, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Power Down at %ptR\0A\00", [44 x i8] zeroinitializer }, align 32
@m41t80_probe._entry_ptr.18 = internal global ptr @m41t80_probe._entry.16, section ".printk_index", align 4
@m41t80_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 954, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Can't clear HT bit\0A\00", [44 x i8] zeroinitializer }, align 32
@m41t80_probe._entry_ptr.21 = internal global ptr @m41t80_probe._entry.19, section ".printk_index", align 4
@m41t80_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 965, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Can't clear ST bit\0A\00", [44 x i8] zeroinitializer }, align 32
@m41t80_probe._entry_ptr.24 = internal global ptr @m41t80_probe._entry.22, section ".printk_index", align 4
@save_client = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@wdt_dev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 130, ptr @.str.45, ptr @wdt_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@wdt_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @wdt_notify_sys, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@m41t80_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 260, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to write to date registers\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"m41t80_rtc_set_time\00", [44 x i8] zeroinitializer }, align 32
@m41t80_rtc_set_time._entry_ptr = internal global ptr @m41t80_rtc_set_time._entry, section ".printk_index", align 4
@m41t80_rtc_set_time._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to write flags register\0A\00", [32 x i8] zeroinitializer }, align 32
@m41t80_rtc_set_time._entry_ptr.29 = internal global ptr @m41t80_rtc_set_time._entry.27, section ".printk_index", align 4
@m41t80_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 336, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to clear AFE bit\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m41t80_set_alarm\00", [47 x i8] zeroinitializer }, align 32
@m41t80_set_alarm._entry_ptr = internal global ptr @m41t80_set_alarm._entry, section ".printk_index", align 4
@m41t80_set_alarm._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to clear AF bit\0A\00", [40 x i8] zeroinitializer }, align 32
@m41t80_set_alarm._entry_ptr.34 = internal global ptr @m41t80_set_alarm._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"battery\09\09: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exhausted\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@m41t80_alarm_irq_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to enable alarm IRQ %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"m41t80_alarm_irq_enable\00", [40 x i8] zeroinitializer }, align 32
@m41t80_alarm_irq_enable._entry_ptr = internal global ptr @m41t80_alarm_irq_enable._entry, section ".printk_index", align 4
@m41t80_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Oscillator failure, data is invalid.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"m41t80_rtc_read_time\00", [43 x i8] zeroinitializer }, align 32
@m41t80_rtc_read_time._entry_ptr = internal global ptr @m41t80_rtc_read_time._entry, section ".printk_index", align 4
@m41t80_rtc_read_time._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unable to read date\0A\00", [43 x i8] zeroinitializer }, align 32
@m41t80_rtc_read_time._entry_ptr.44 = internal global ptr @m41t80_rtc_read_time._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@wdt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @wdt_read, ptr @wdt_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wdt_unlocked_ioctl, ptr null, ptr null, i32 0, ptr @wdt_open, ptr null, ptr @wdt_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@m41t80_rtc_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.46, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @m41t80_rtc_mutex, i64 52), ptr getelementptr (i8, ptr @m41t80_rtc_mutex, i64 52) }, ptr @m41t80_rtc_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.47, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"m41t80_rtc_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m41t80_rtc_mutex\00", [47 x i8] zeroinitializer }, align 32
@wdt_ioctl.ident = internal global { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 32912, i32 1, [32 x i8] c"M41T80 WTD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@wdt_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016rtc_m41t80: disable watchdog\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wdt_ioctl\00", [22 x i8] zeroinitializer }, align 32
@wdt_ioctl._entry_ptr = internal global ptr @wdt_ioctl._entry, section ".printk_index", align 4
@wdt_ioctl._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016rtc_m41t80: enable watchdog\0A\00", [33 x i8] zeroinitializer }, align 32
@wdt_ioctl._entry_ptr.52 = internal global ptr @wdt_ioctl._entry.50, section ".printk_index", align 4
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@wdt_is_open = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clock\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"m41t80-sqw\00", [21 x i8] zeroinitializer }, align 32
@m41t80_sqw_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @m41t80_sqw_prepare, ptr @m41t80_sqw_unprepare, ptr @m41t80_sqw_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m41t80_sqw_recalc_rate, ptr @m41t80_sqw_round_rate, ptr null, ptr null, ptr null, ptr @m41t80_sqw_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.59 = internal global [9 x i64] [i64 7, i64 32, i64 2147768065, i64 2147768066, i64 2147768068, i64 2147768069, i64 2147768071, i64 2150127360, i64 3221509894]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"wdt_margin\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 606, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"m41t80_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1008, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1010, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"m41t80_of_match\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 88, i32 49 }
@___asan_gen_.73 = private unnamed_addr constant [10 x i8] c"m41t80_pm\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 430, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant [10 x i8] c"m41t80_id\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 72, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 890, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 913, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 919, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 921, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [15 x i8] c"m41t80_rtc_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 399, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 946, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 947, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 954, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 965, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [12 x i8] c"save_client\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 601, i32 27 }
@___asan_gen_.145 = private unnamed_addr constant [8 x i8] c"wdt_dev\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 856, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant [13 x i8] c"wdt_notifier\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 866, i32 30 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 260, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 272, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 336, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 350, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 289, i32 19 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 290, i32 39 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 290, i32 53 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 311, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 207, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 214, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 858, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant [9 x i8] c"wdt_fops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 845, i32 37 }
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"m41t80_rtc_mutex\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 600, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 727, i32 30 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 762, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 767, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 174, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [12 x i8] c"wdt_is_open\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 610, i32 22 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 552, i32 43 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 572, i32 14 }
@___asan_gen_.259 = private unnamed_addr constant [15 x i8] c"m41t80_sqw_ops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 534, i32 29 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.263 = private constant [28 x i8] c"../drivers/rtc/rtc-m41t80.c\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 581, i32 32 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__UNIQUE_ID_wdt_margin289, ptr @__UNIQUE_ID_wdt_margintype288, ptr @__exitcall_m41t80_driver_exit, ptr @__initcall__kmod_rtc_m41t80__290_1019_m41t80_driver_init6, ptr @__param_wdt_margin, ptr @m41t80_alarm_irq_enable._entry, ptr @m41t80_alarm_irq_enable._entry_ptr, ptr @m41t80_driver_exit, ptr @m41t80_probe._entry, ptr @m41t80_probe._entry.12, ptr @m41t80_probe._entry.16, ptr @m41t80_probe._entry.19, ptr @m41t80_probe._entry.22, ptr @m41t80_probe._entry.8, ptr @m41t80_probe._entry_ptr, ptr @m41t80_probe._entry_ptr.11, ptr @m41t80_probe._entry_ptr.15, ptr @m41t80_probe._entry_ptr.18, ptr @m41t80_probe._entry_ptr.21, ptr @m41t80_probe._entry_ptr.24, ptr @m41t80_rtc_read_time._entry, ptr @m41t80_rtc_read_time._entry.42, ptr @m41t80_rtc_read_time._entry_ptr, ptr @m41t80_rtc_read_time._entry_ptr.44, ptr @m41t80_rtc_set_time._entry, ptr @m41t80_rtc_set_time._entry.27, ptr @m41t80_rtc_set_time._entry_ptr, ptr @m41t80_rtc_set_time._entry_ptr.29, ptr @m41t80_set_alarm._entry, ptr @m41t80_set_alarm._entry.32, ptr @m41t80_set_alarm._entry_ptr, ptr @m41t80_set_alarm._entry_ptr.34, ptr @wdt_ioctl._entry, ptr @wdt_ioctl._entry.50, ptr @wdt_ioctl._entry_ptr, ptr @wdt_ioctl._entry_ptr.52, ptr @wdt_margin, ptr @m41t80_driver, ptr @.str, ptr @m41t80_of_match, ptr @m41t80_pm, ptr @m41t80_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @m41t80_rtc_ops, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @save_client, ptr @wdt_dev, ptr @wdt_notifier, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @wdt_fops, ptr @m41t80_rtc_mutex, ptr @.str.46, ptr @.str.47, ptr @wdt_ioctl.ident, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.55, ptr @wdt_is_open, ptr @.str.56, ptr @.str.57, ptr @m41t80_sqw_ops, ptr @.str.58], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_margin to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_of_match to i32), i32 2744, i32 3424, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_id to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_client to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_dev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_rtc_set_time._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_set_alarm._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_alarm_irq_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_rtc_read_time._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_rtc_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_ioctl.ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_ioctl._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_is_open to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t80_sqw_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t80_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @m41t80_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m41t80_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @m41t80_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t80_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #11
  %2 = call ptr @memset(ptr %tm, i32 255, i32 36)
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %1) #11
  %and.i = and i32 %call.i.i, 202899456
  call void @__sanitizer_cov_trace_const_cmp4(i32 202899456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 202899456
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 32, i32 noundef 3520) #11
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %client8 = getelementptr inbounds %struct.m41t80_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %client8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %client8, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call ptr @of_device_get_match_data(ptr noundef %dev3) #11
  %10 = ptrtoint ptr %call13 to i32
  br label %if.end15

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  %storemerge = phi i32 [ %12, %if.else ], [ %10, %if.then11 ]
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call17 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev3) #11
  %rtc = getelementptr inbounds %struct.m41t80_data, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call17, ptr %rtc, align 4
  %cmp.i196 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call.i197 = tail call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.6, ptr noundef null) #11
  %tobool.i = icmp ne ptr %call.i197, null
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp sgt i32 %20, 0
  br i1 %cmp, label %if.then27, label %if.end23.if.end39_crit_edge

if.end23.if.end39_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then27:                                        ; preds = %if.end23
  %call30 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev3, i32 noundef %20, ptr noundef null, ptr noundef nonnull @m41t80_handle_irq, i32 noundef 8200, ptr noundef nonnull @.str.7, ptr noundef %client) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then27.if.end39_crit_edge, label %do.end35

if.then27.if.end39_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

do.end35:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.9) #14
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %irq, align 4
  br label %if.end39

if.end39:                                         ; preds = %do.end35, %if.then27.if.end39_crit_edge, %if.end23.if.end39_crit_edge
  %wakeup_source.0.shrunk = phi i1 [ false, %do.end35 ], [ %tobool.i, %if.then27.if.end39_crit_edge ], [ %tobool.i, %if.end23.if.end39_crit_edge ]
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp41 = icmp sgt i32 %23, 0
  %brmerge = select i1 %cmp41, i1 true, i1 %wakeup_source.0.shrunk
  br i1 %brmerge, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = tail call i32 @device_init_wakeup(ptr noundef %dev3, i1 noundef zeroext true) #11
  br label %if.end49

if.else46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rtc, align 4
  %features48 = getelementptr inbounds %struct.rtc_device, ptr %25, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %features48) #11
  br label %if.end49

if.end49:                                         ; preds = %if.else46, %if.then43
  %26 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtc, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @m41t80_rtc_ops, ptr %ops, align 8
  %29 = load ptr, ptr %rtc, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 946684800, ptr %range_min, align 8
  %31 = load ptr, ptr %rtc, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %31, i32 0, i32 23
  %32 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 4102444799, ptr %range_max, align 8
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp54 = icmp slt i32 %34, 1
  br i1 %cmp54, label %if.then55, label %if.end49.if.end57_crit_edge

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rtc, align 4
  %uie_unsupported = getelementptr inbounds %struct.rtc_device, ptr %36, i32 0, i32 19
  %37 = ptrtoint ptr %uie_unsupported to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %uie_unsupported, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end49.if.end57_crit_edge
  %call58 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 12) #11
  %38 = and i32 %call58, -2147483584
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %38)
  %.not = icmp eq i32 %38, 64
  br i1 %.not, label %if.then61, label %if.end57.if.end79_crit_edge

if.end57.if.end79_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then61:                                        ; preds = %if.end57
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call.i, align 4
  %and63 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.then61.if.end76_crit_edge, label %if.then65

if.then61.if.end76_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.then65:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %call67 = call i32 @m41t80_rtc_read_time(ptr noundef %dev3, ptr noundef nonnull %tm)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.13) #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.17, ptr noundef nonnull %tm) #14
  br label %if.end76

if.end76:                                         ; preds = %if.then65, %if.then61.if.end76_crit_edge
  %41 = trunc i32 %call58 to i8
  %conv = and i8 %41, -65
  %call78 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 12, i8 noundef zeroext %conv) #11
  br label %if.end79

if.end79:                                         ; preds = %if.end76, %if.end57.if.end79_crit_edge
  %rc.0 = phi i32 [ %call78, %if.end76 ], [ %call58, %if.end57.if.end79_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp80 = icmp slt i32 %rc.0, 0
  br i1 %cmp80, label %do.end85, label %if.end87

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.20) #14
  br label %cleanup

if.end87:                                         ; preds = %if.end79
  %call88 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #11
  %42 = and i32 %call88, -2147483520
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %42)
  %.not202 = icmp eq i32 %42, 128
  br i1 %.not202, label %if.then94, label %if.end87.if.end98_crit_edge

if.end87.if.end98_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then94:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %43 = trunc i32 %call88 to i8
  %conv96 = and i8 %43, 127
  %call97 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext %conv96) #11
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.end87.if.end98_crit_edge
  %rc.1 = phi i32 [ %call97, %if.then94 ], [ %call88, %if.end87.if.end98_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %cmp99 = icmp slt i32 %rc.1, 0
  br i1 %cmp99, label %do.end104, label %if.end106

do.end104:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.23) #14
  br label %cleanup

if.end106:                                        ; preds = %if.end98
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call.i, align 4
  %and108 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end106.if.end119_crit_edge, label %if.then110

if.end106.if.end119_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.then110:                                       ; preds = %if.end106
  store ptr %client, ptr @save_client, align 4
  %call111 = call i32 @misc_register(ptr noundef nonnull @wdt_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.then110.cleanup_crit_edge

if.then110.cleanup_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end114:                                        ; preds = %if.then110
  %call115 = call i32 @register_reboot_notifier(ptr noundef nonnull @wdt_notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end114.if.end119_crit_edge, label %if.then117

if.end114.if.end119_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  call void @misc_deregister(ptr noundef nonnull @wdt_dev) #11
  br label %cleanup

if.end119:                                        ; preds = %if.end114.if.end119_crit_edge, %if.end106.if.end119_crit_edge
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call.i, align 4
  %and121 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end119.if.end125_crit_edge, label %if.then123

if.end119.if.end125_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

if.then123:                                       ; preds = %if.end119
  %48 = ptrtoint ptr %client8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %client8, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4, i32 27
  %50 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #11
  %52 = getelementptr inbounds i8, ptr %init.i, i32 12
  %53 = call ptr @memset(ptr %52, i32 255, i32 12)
  %call.i198 = call ptr @of_get_child_by_name(ptr noundef %51, ptr noundef nonnull @.str.56) #11
  %tobool.not.i = icmp eq ptr %call.i198, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_node_put(ptr noundef nonnull %call.i198) #11
  br label %m41t80_sqw_register_clk.exit

if.end.i:                                         ; preds = %if.then123
  %call2.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i199 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i199, label %if.end.i.m41t80_sqw_register_clk.exit_crit_edge, label %if.end5.i

if.end.i.m41t80_sqw_register_clk.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %m41t80_sqw_register_clk.exit

if.end5.i:                                        ; preds = %if.end.i
  %54 = trunc i32 %call2.i to i8
  %conv.i200 = and i8 %54, -65
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 10, i8 noundef zeroext %conv.i200) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.m41t80_sqw_register_clk.exit_crit_edge, label %if.end11.i

if.end5.i.m41t80_sqw_register_clk.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %m41t80_sqw_register_clk.exit

if.end11.i:                                       ; preds = %if.end5.i
  %55 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.57, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %56 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @m41t80_sqw_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %flags.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %58 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %59 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %num_parents.i, align 4
  %sqw.i = getelementptr inbounds %struct.m41t80_data, ptr %call.i, i32 0, i32 3
  %init12.i = getelementptr inbounds %struct.m41t80_data, ptr %call.i, i32 0, i32 3, i32 2
  %60 = ptrtoint ptr %init12.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %init.i, ptr %init12.i, align 4
  %61 = ptrtoint ptr %client8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client8, align 4
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call.i, align 4
  %and.i.i = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %conv.i.i = select i1 %tobool.not.i.i, i8 19, i8 4
  %call.i.i201 = call i32 @i2c_smbus_read_byte_data(ptr noundef %62, i8 noundef zeroext %conv.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i201)
  %cmp.i.i = icmp slt i32 %call.i.i201, 0
  br i1 %cmp.i.i, label %if.end11.i.m41t80_get_freq.exit.i_crit_edge, label %if.end.i.i

if.end11.i.m41t80_get_freq.exit.i_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %m41t80_get_freq.exit.i

if.end.i.i:                                       ; preds = %if.end11.i
  %shr8.i.i = lshr i32 %call.i.i201, 4
  %65 = zext i32 %shr8.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr8.i.i, label %cond.false3.i.i.i [
    i32 0, label %if.end.i.i.m41t80_get_freq.exit.i_crit_edge
    i32 1, label %cond.end4.fold.split.i.i.i
  ]

if.end.i.i.m41t80_get_freq.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %m41t80_get_freq.exit.i

cond.false3.i.i.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i.i.i = lshr i32 32768, %shr8.i.i
  br label %m41t80_get_freq.exit.i

cond.end4.fold.split.i.i.i:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %m41t80_get_freq.exit.i

m41t80_get_freq.exit.i:                           ; preds = %cond.end4.fold.split.i.i.i, %cond.false3.i.i.i, %if.end.i.i.m41t80_get_freq.exit.i_crit_edge, %if.end11.i.m41t80_get_freq.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end11.i.m41t80_get_freq.exit.i_crit_edge ], [ %shr8.i.i, %if.end.i.i.m41t80_get_freq.exit.i_crit_edge ], [ %shr.i.i.i, %cond.false3.i.i.i ], [ 32768, %cond.end4.fold.split.i.i.i ]
  %freq.i = getelementptr inbounds %struct.m41t80_data, ptr %call.i, i32 0, i32 4
  %66 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %retval.0.i.i, ptr %freq.i, align 4
  %call15.i = call i32 @of_property_read_string(ptr noundef %51, ptr noundef nonnull @.str.58, ptr noundef nonnull %init.i) #11
  %call18.i = call ptr @clk_register(ptr noundef %dev.i, ptr noundef %sqw.i) #11
  %cmp.i1.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %m41t80_get_freq.exit.i.m41t80_sqw_register_clk.exit_crit_edge, label %if.then20.i

m41t80_get_freq.exit.i.m41t80_sqw_register_clk.exit_crit_edge: ; preds = %m41t80_get_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %m41t80_sqw_register_clk.exit

if.then20.i:                                      ; preds = %m41t80_get_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call21.i = call i32 @of_clk_add_provider(ptr noundef %51, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call18.i) #11
  br label %m41t80_sqw_register_clk.exit

m41t80_sqw_register_clk.exit:                     ; preds = %if.then20.i, %m41t80_get_freq.exit.i.m41t80_sqw_register_clk.exit_crit_edge, %if.end5.i.m41t80_sqw_register_clk.exit_crit_edge, %if.end.i.m41t80_sqw_register_clk.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #11
  br label %if.end125

if.end125:                                        ; preds = %m41t80_sqw_register_clk.exit, %if.end119.if.end125_crit_edge
  %67 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rtc, align 4
  %call127 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %68) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %if.then117, %if.then110.cleanup_crit_edge, %do.end104, %do.end85, %if.then20, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %16, %if.then20 ], [ %rc.0, %do.end85 ], [ %rc.1, %do.end104 ], [ %call115, %if.then117 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call111, %if.then110.cleanup_crit_edge ], [ %call127, %if.end125 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t80_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @misc_deregister(ptr noundef nonnull @wdt_dev) #11
  %call1 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @wdt_notifier) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t80_handle_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %dev_id, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rtc = getelementptr inbounds %struct.m41t80_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #11
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %dev_id, i8 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %dev_id, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %and = and i32 %call4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.then15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc, align 4
  tail call void @rtc_update_irq(ptr noundef %5, i32 noundef 1, i32 noundef 32) #11
  %6 = trunc i32 %call4 to i8
  %conv = and i8 %6, -65
  %call17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %dev_id, i8 noundef zeroext 15, i8 noundef zeroext %conv) #11
  %7 = trunc i32 %call1 to i8
  %conv18 = and i8 %7, 127
  %call19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %dev_id, i8 noundef zeroext 10, i8 noundef zeroext %conv18) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then15 ], [ 1, %if.end9.cleanup_crit_edge ]
  %8 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtc, align 4
  %ops_lock22 = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %ops_lock22) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t80_rtc_read_time(ptr noundef %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #11
  %0 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %buf, align 8
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef nonnull %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %cond.end

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #14
  br label %cleanup

cond.end:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %0, align 1
  %10 = and i8 %9, 127
  %call25 = call i32 @_bcd2bin(i8 noundef zeroext %10) #15
  %11 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call25, ptr %tm, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 2
  %14 = and i8 %13, 127
  %call46 = call i32 @_bcd2bin(i8 noundef zeroext %14) #15
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %15 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call46, ptr %tm_min, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %2, align 1
  %18 = and i8 %17, 63
  %call69 = call i32 @_bcd2bin(i8 noundef zeroext %18) #15
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %19 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call69, ptr %tm_hour, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %4, align 1
  %22 = and i8 %21, 63
  %call92 = call i32 @_bcd2bin(i8 noundef zeroext %22) #15
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %23 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call92, ptr %tm_mday, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 4
  %26 = and i8 %25, 7
  %and97 = zext i8 %26 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %27 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and97, ptr %tm_wday, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %5, align 2
  %30 = and i8 %29, 31
  %call118 = call i32 @_bcd2bin(i8 noundef zeroext %30) #15
  %sub = add i32 %call118, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %31 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub, ptr %tm_mon, align 4
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %6, align 1
  %call133 = call i32 @_bcd2bin(i8 noundef zeroext %33) #15
  %add136 = add i32 %call133, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %34 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add136, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call4, %do.end9 ], [ 0, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t80_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #11
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %buf, align 1
  %10 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm, align 4
  %call4 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #15
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call4, ptr %2, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %call18 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #15
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call18, ptr %3, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %16 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_hour, align 4
  %call34 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #15
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call34, ptr %4, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %19 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mday, align 4
  %call50 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #15
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call50, ptr %6, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %22 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_mon, align 4
  %add56 = add i32 %23, 1
  %call70 = tail call zeroext i8 @_bin2bcd(i32 noundef %add56) #15
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call70, ptr %7, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %25 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_year, align 4
  %sub = add i32 %26, -100
  %call89 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #15
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call89, ptr %8, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %28 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_wday, align 4
  %conv95 = trunc i32 %29 to i8
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv95, ptr %5, align 1
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  %and = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end104_crit_edge, label %if.then

entry.if.end104_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then:                                          ; preds = %entry
  %call97 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp = icmp slt i32 %call97, 0
  br i1 %cmp, label %if.then.cleanup127_crit_edge, label %if.end

if.then.cleanup127_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup127

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %5, align 1
  %35 = trunc i32 %call97 to i8
  %36 = and i8 %35, -16
  %conv103 = or i8 %34, %36
  store i8 %conv103, ptr %5, align 1
  br label %if.end104

if.end104:                                        ; preds = %if.end, %entry.if.end104_crit_edge
  %call105 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef nonnull %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.end104.cleanup127.sink.split_crit_edge, label %if.end110

if.end104.cleanup127.sink.split_crit_edge:        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup127.sink.split

if.end110:                                        ; preds = %if.end104
  %call111 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.end110.cleanup127_crit_edge, label %if.end115

if.end110.cleanup127_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup127

if.end115:                                        ; preds = %if.end110
  %37 = trunc i32 %call111 to i8
  %conv117 = and i8 %37, -5
  %call118 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 15, i8 noundef zeroext %conv117) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.end115.cleanup127.sink.split_crit_edge, label %if.end115.cleanup127_crit_edge

if.end115.cleanup127_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup127

if.end115.cleanup127.sink.split_crit_edge:        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup127.sink.split

cleanup127.sink.split:                            ; preds = %if.end115.cleanup127.sink.split_crit_edge, %if.end104.cleanup127.sink.split_crit_edge
  %.str.28.sink = phi ptr [ @.str.25, %if.end104.cleanup127.sink.split_crit_edge ], [ @.str.28, %if.end115.cleanup127.sink.split_crit_edge ]
  %retval.1.ph = phi i32 [ %call105, %if.end104.cleanup127.sink.split_crit_edge ], [ %call118, %if.end115.cleanup127.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.28.sink) #14
  br label %cleanup127

cleanup127:                                       ; preds = %cleanup127.sink.split, %if.end115.cleanup127_crit_edge, %if.end110.cleanup127_crit_edge, %if.then.cleanup127_crit_edge
  %retval.1 = phi i32 [ %call111, %if.end110.cleanup127_crit_edge ], [ %call118, %if.end115.cleanup127_crit_edge ], [ %call97, %if.then.cleanup127_crit_edge ], [ %retval.1.ph, %cleanup127.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t80_read_alarm(ptr noundef %dev, ptr nocapture noundef writeonly %alrm) #2 align 64 {
entry:
  %alarmvals = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %alarmvals) #11
  %0 = getelementptr inbounds [5 x i8], ptr %alarmvals, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %alarmvals, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %alarmvals, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %alarmvals, i32 0, i32 4
  %4 = call ptr @memset(ptr %alarmvals, i32 255, i32 5)
  %call = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 10, i8 noundef zeroext 5, ptr noundef nonnull %alarmvals) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp.not = icmp eq i32 %call, 5
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp1, i32 %call, i32 -5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %cond.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.end21:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %3, align 1
  %7 = and i8 %6, 127
  %call20 = call i32 @_bcd2bin(i8 noundef zeroext %7) #15
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %8 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call20, ptr %time, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %2, align 1
  %11 = and i8 %10, 127
  %call43 = call i32 @_bcd2bin(i8 noundef zeroext %11) #15
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call43, ptr %tm_min, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  %15 = and i8 %14, 63
  %call67 = call i32 @_bcd2bin(i8 noundef zeroext %15) #15
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call67, ptr %tm_hour, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %0, align 1
  %19 = and i8 %18, 63
  %call91 = call i32 @_bcd2bin(i8 noundef zeroext %19) #15
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call91, ptr %tm_mday, align 4
  %21 = ptrtoint ptr %alarmvals to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %alarmvals, align 1
  %23 = and i8 %22, 63
  %call115 = call i32 @_bcd2bin(i8 noundef zeroext %23) #15
  %sub = add i32 %call115, -1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %tm_mon, align 4
  %.lobit = lshr i8 %22, 7
  %25 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.lobit, ptr %alrm, align 4
  %and124 = and i32 %call2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp ne i32 %and124, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool128 = icmp slt i8 %22, 0
  %spec.select145 = select i1 %tobool125.not, i1 %tobool128, i1 false
  %conv129 = zext i1 %spec.select145 to i8
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %26 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv129, ptr %pending, align 1
  br label %cleanup

cleanup:                                          ; preds = %cond.end21, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 0, %cond.end21 ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %alarmvals) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t80_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  %alarmvals = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %alarmvals) #11
  %0 = getelementptr inbounds [5 x i8], ptr %alarmvals, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %alarmvals, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %alarmvals, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %alarmvals, i32 0, i32 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_mon, align 4
  %add = add i32 %5, 1
  %call = tail call zeroext i8 @_bin2bcd(i32 noundef %add) #15
  %6 = ptrtoint ptr %alarmvals to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call, ptr %alarmvals, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_mday, align 4
  %call27 = tail call zeroext i8 @_bin2bcd(i32 noundef %8) #15
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call27, ptr %0, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_hour, align 4
  %call47 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #15
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call47, ptr %1, align 1
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %call67 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #15
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call67, ptr %2, align 1
  %16 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %time, align 4
  %call87 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #15
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call87, ptr %3, align 1
  %call93 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp = icmp slt i32 %call93, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = trunc i32 %call93 to i8
  %conv95 = and i8 %19, 127
  %call96 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 10, i8 noundef zeroext %conv95) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %do.end, label %if.end100

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #14
  br label %cleanup

if.end100:                                        ; preds = %if.end
  %20 = ptrtoint ptr %alarmvals to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %alarmvals, align 1
  %22 = and i8 %19, 64
  %conv104 = or i8 %21, %22
  store i8 %conv104, ptr %alarmvals, align 1
  %call105 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.end100.cleanup_crit_edge, label %if.end109

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end109:                                        ; preds = %if.end100
  %23 = trunc i32 %call105 to i8
  %conv111 = and i8 %23, -65
  %call112 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 15, i8 noundef zeroext %conv111) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %do.end118, label %if.end119

do.end118:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #14
  br label %cleanup

if.end119:                                        ; preds = %if.end109
  %call120 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 10, i8 noundef zeroext 5, ptr noundef nonnull %alarmvals) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool.not = icmp eq i32 %call120, 0
  br i1 %tobool.not, label %if.end122, label %if.end119.cleanup_crit_edge

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end122:                                        ; preds = %if.end119
  %24 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool123.not = icmp eq i8 %25, 0
  br i1 %tobool123.not, label %if.end122.if.end134_crit_edge, label %if.then124

if.end122.if.end134_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.then124:                                       ; preds = %if.end122
  %26 = ptrtoint ptr %alarmvals to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %alarmvals, align 1
  %28 = or i8 %27, -128
  store i8 %28, ptr %alarmvals, align 1
  %call130 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 10, i8 noundef zeroext %28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then124.if.end134_crit_edge, label %if.then124.cleanup_crit_edge

if.then124.cleanup_crit_edge:                     ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then124.if.end134_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.end134:                                        ; preds = %if.then124.if.end134_crit_edge, %if.end122.if.end134_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end134, %if.then124.cleanup_crit_edge, %if.end119.cleanup_crit_edge, %do.end118, %if.end100.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call96, %do.end ], [ %call112, %do.end118 ], [ 0, %if.end134 ], [ %call93, %entry.cleanup_crit_edge ], [ %call105, %if.end100.cleanup_crit_edge ], [ %call120, %if.end119.cleanup_crit_edge ], [ %call130, %if.then124.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %alarmvals) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t80_rtc_proc(ptr noundef %dev, ptr noundef %seq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %and3 = and i32 %call1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond = select i1 %tobool4.not, ptr @.str.37, ptr @.str.36
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t80_alarm_irq_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %and = and i32 %call, 127
  %masksel = select i1 %tobool.not, i32 0, i32 128
  %flags.0 = or i32 %and, %masksel
  %conv = trunc i32 %flags.0 to i8
  %call4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 10, i8 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call4) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wdt_read(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt_write(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %i2c_data.i = alloca [2 x i8], align 1
  %msgs1.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i2c_data.i) #11
  %0 = getelementptr inbounds [2 x i8], ptr %i2c_data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs1.i) #11
  %1 = getelementptr inbounds i8, ptr %msgs1.i, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 196607, ptr %1, align 4
  %3 = load ptr, ptr @save_client, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr1.i, align 2
  %6 = ptrtoint ptr %msgs1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msgs1.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs1.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs1.i, i32 0, i32 3
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i2c_data.i, ptr %buf.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  %11 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 9, ptr %i2c_data.i, align 1
  %12 = load i32, ptr @wdt_margin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %12)
  %cmp.i = icmp sgt i32 %12, 31
  %.tr.i = trunc i32 %12 to i8
  %13 = shl i8 %.tr.i, 2
  %conv4.i = or i8 %13, -126
  %conv.i = or i8 %.tr.i, -125
  %storemerge.i = select i1 %cmp.i, i8 %conv.i, i8 %conv4.i
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %storemerge.i, ptr %0, align 1
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 4
  %and6.i = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %if.then.wdt_ping.exit_crit_edge, label %if.then7.i

if.then.wdt_ping.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %wdt_ping.exit

if.then7.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %17 = and i8 %storemerge.i, 127
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %0, align 1
  br label %wdt_ping.exit

wdt_ping.exit:                                    ; preds = %if.then7.i, %if.then.wdt_ping.exit_crit_edge
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs1.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs1.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i2c_data.i) #11
  br label %return

return:                                           ; preds = %wdt_ping.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %wdt_ping.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt_unlocked_ioctl(ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %i2c_data.i2 = alloca [2 x i8], align 1
  %i2c_buf.i = alloca [16 x i8], align 1
  %msgs0.i = alloca [2 x %struct.i2c_msg], align 4
  %msgs1.i3 = alloca [1 x %struct.i2c_msg], align 4
  %i2c_data.i = alloca [2 x i8], align 1
  %msgs1.i = alloca [1 x %struct.i2c_msg], align 4
  %i2c_data.i15.i = alloca [2 x i8], align 1
  %msgs1.i16.i = alloca [1 x %struct.i2c_msg], align 4
  %i2c_data.i.i = alloca [2 x i8], align 1
  %msgs1.i.i = alloca [1 x %struct.i2c_msg], align 4
  %rv.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @m41t80_rtc_mutex, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rv.i) #11
  %0 = ptrtoint ptr %rv.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rv.i, align 4, !annotation !156
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %cmd, label %entry.wdt_ioctl.exit_crit_edge [
    i32 -2144839936, label %sw.bb.i
    i32 -2147199231, label %entry.sw.bb1.i_crit_edge
    i32 -2147199230, label %entry.sw.bb1.i_crit_edge9
    i32 -2147199227, label %sw.bb4.i
    i32 -1073457402, label %sw.bb5.i
    i32 -2147199225, label %entry.sw.bb20_crit_edge.i
    i32 -2147199228, label %sw.bb36.i
  ]

entry.sw.bb1.i_crit_edge9:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

entry.wdt_ioctl.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %wdt_ioctl.exit

entry.sw.bb20_crit_edge.i:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %.pre.i = inttoptr i32 %arg to ptr
  br label %sw.bb20.i

sw.bb.i:                                          ; preds = %entry
  %2 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 174) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %sw.bb.i.wdt_ioctl.exit_crit_edge, label %if.end.i.i.i

sw.bb.i.wdt_ioctl.exit_crit_edge:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wdt_ioctl.exit

if.end.i.i.i:                                     ; preds = %sw.bb.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 40, i32 -1226833920) #16, !srcloc !157
  %asmresult.i.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i1.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.wdt_ioctl.exit_crit_edge

if.end.i.i.i.wdt_ioctl.exit_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wdt_ioctl.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @wdt_ioctl.ident, i32 noundef 40) #11
  %call.i1.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull @wdt_ioctl.ident, i32 noundef 40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %wdt_ioctl.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge9
  %4 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 741) #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !146) #11
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !158
  %and.i.i = and i32 %7, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #11, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  %8 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 0, i32 -1226833921) #11, !srcloc !161
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  br label %wdt_ioctl.exit

sw.bb4.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i2c_data.i.i) #11
  %9 = getelementptr inbounds [2 x i8], ptr %i2c_data.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs1.i.i) #11
  %10 = getelementptr inbounds i8, ptr %msgs1.i.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 196607, ptr %10, align 4
  %12 = load ptr, ptr @save_client, align 4
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr1.i.i, align 2
  %15 = ptrtoint ptr %msgs1.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msgs1.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs1.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs1.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %i2c_data.i.i, ptr %buf.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %20 = ptrtoint ptr %i2c_data.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 9, ptr %i2c_data.i.i, align 1
  %21 = load i32, ptr @wdt_margin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %21)
  %cmp.i.i = icmp sgt i32 %21, 31
  %.tr.i.i = trunc i32 %21 to i8
  %22 = shl i8 %.tr.i.i, 2
  %conv4.i.i = or i8 %22, -126
  %conv.i.i = or i8 %.tr.i.i, -125
  %storemerge.i.i = select i1 %cmp.i.i, i8 %conv.i.i, i8 %conv4.i.i
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %storemerge.i.i, ptr %9, align 1
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 4
  %and6.i.i = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb4.i.wdt_ping.exit.i_crit_edge, label %if.then7.i.i

sw.bb4.i.wdt_ping.exit.i_crit_edge:               ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wdt_ping.exit.i

if.then7.i.i:                                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = and i8 %storemerge.i.i, 127
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %9, align 1
  br label %wdt_ping.exit.i

wdt_ping.exit.i:                                  ; preds = %if.then7.i.i, %sw.bb4.i.wdt_ping.exit.i_crit_edge
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %28 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter.i.i, align 8
  %call14.i.i = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msgs1.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs1.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i2c_data.i.i) #11
  br label %wdt_ioctl.exit

sw.bb5.i:                                         ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 746) #11
  %30 = inttoptr i32 %arg to ptr
  %31 = tail call i32 @llvm.read_register.i32(metadata !146) #11
  %and.i.i.i1.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i1.i to ptr
  %cpu_domain.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i2.i) #7, !srcloc !158
  %and.i3.i = and i32 %33, -13
  %or.i4.i = or i32 %and.i3.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i4.i) #11, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  %34 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %30, i32 -1226833921) #11, !srcloc !162
  %asmresult.i = extractvalue { i32, i32 } %34, 0
  %asmresult14.i = extractvalue { i32, i32 } %34, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #11, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool16.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool16.not.i, label %if.end.i, label %sw.bb5.i.wdt_ioctl.exit_crit_edge

sw.bb5.i.wdt_ioctl.exit_crit_edge:                ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wdt_ioctl.exit

if.end.i:                                         ; preds = %sw.bb5.i
  %35 = add i32 %asmresult14.i, -125
  call void @__sanitizer_cov_trace_const_cmp4(i32 -124, i32 %35)
  %36 = icmp ult i32 %35, -124
  br i1 %36, label %if.end.i.wdt_ioctl.exit_crit_edge, label %if.end19.i

if.end.i.wdt_ioctl.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wdt_ioctl.exit

if.end19.i:                                       ; preds = %if.end.i
  store i32 %asmresult14.i, ptr @wdt_margin, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i2c_data.i15.i) #11
  %37 = getelementptr inbounds [2 x i8], ptr %i2c_data.i15.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs1.i16.i) #11
  %38 = getelementptr inbounds i8, ptr %msgs1.i16.i, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 196607, ptr %38, align 4
  %40 = load ptr, ptr @save_client, align 4
  %addr1.i17.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %addr1.i17.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %addr1.i17.i, align 2
  %43 = ptrtoint ptr %msgs1.i16.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %msgs1.i16.i, align 4
  %flags.i18.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs1.i16.i, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i18.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %flags.i18.i, align 2
  %buf.i20.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs1.i16.i, i32 0, i32 3
  %45 = ptrtoint ptr %buf.i20.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %i2c_data.i15.i, ptr %buf.i20.i, align 4
  %driver_data.i.i.i21.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4, i32 8
  %46 = ptrtoint ptr %driver_data.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i.i21.i, align 4
  %48 = ptrtoint ptr %i2c_data.i15.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 9, ptr %i2c_data.i15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %asmresult14.i)
  %cmp.i22.i = icmp ugt i32 %asmresult14.i, 31
  %.tr.i23.i = trunc i32 %asmresult14.i to i8
  %49 = shl i8 %.tr.i23.i, 2
  %conv4.i24.i = or i8 %49, -126
  %conv.i25.i = or i8 %.tr.i23.i, -125
  %storemerge.i26.i = select i1 %cmp.i22.i, i8 %conv.i25.i, i8 %conv4.i24.i
  %50 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %storemerge.i26.i, ptr %37, align 1
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %47, align 4
  %and6.i27.i = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i27.i)
  %tobool.not.i28.i = icmp eq i32 %and6.i27.i, 0
  br i1 %tobool.not.i28.i, label %if.end19.i.wdt_ping.exit32.i_crit_edge, label %if.then7.i29.i

if.end19.i.wdt_ping.exit32.i_crit_edge:           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wdt_ping.exit32.i

if.then7.i29.i:                                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = and i8 %storemerge.i26.i, 127
  %54 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %37, align 1
  br label %wdt_ping.exit32.i

wdt_ping.exit32.i:                                ; preds = %if.then7.i29.i, %if.end19.i.wdt_ping.exit32.i_crit_edge
  %adapter.i30.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 3
  %55 = ptrtoint ptr %adapter.i30.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter.i30.i, align 8
  %call14.i31.i = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msgs1.i16.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs1.i16.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i2c_data.i15.i) #11
  br label %sw.bb20.i

sw.bb20.i:                                        ; preds = %wdt_ping.exit32.i, %entry.sw.bb20_crit_edge.i
  %.pre-phi.i = phi ptr [ %.pre.i, %entry.sw.bb20_crit_edge.i ], [ %30, %wdt_ping.exit32.i ]
  %57 = load i32, ptr @wdt_margin, align 4
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 755) #11
  %58 = call i32 @llvm.read_register.i32(metadata !146) #11
  %and.i.i.i5.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i5.i to ptr
  %cpu_domain.i.i6.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 4
  %60 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i6.i) #7, !srcloc !158
  %and.i7.i = and i32 %60, -13
  %or.i8.i = or i32 %and.i7.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i8.i) #11, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  %61 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %.pre-phi.i, i32 %57, i32 -1226833921) #11, !srcloc !163
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #11, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  br label %wdt_ioctl.exit

sw.bb36.i:                                        ; preds = %entry
  %62 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #11
  %call.i.i9.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i9.i, label %sw.bb36.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb36.i.if.then11.i.i.i_crit_edge:              ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb36.i
  %63 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %62, i32 4, i32 -1226833920) #16, !srcloc !164
  %asmresult.i.i10.i = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i10.i)
  %cmp.i1.i11.i = icmp eq i32 %asmresult.i.i10.i, 0
  br i1 %cmp.i1.i11.i, label %if.end.i.i13.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !165

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i13.i:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i12.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rv.i, i32 noundef 4) #11
  %64 = call i32 @llvm.read_register.i32(metadata !146) #11
  %and.i.i.i.i.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !158
  %and.i.i.i.i.i = and i32 %66, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rv.i, ptr noundef %62, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #11, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end40.i, label %if.end.i.i13.i.if.then11.i.i.i_crit_edge, !prof !165

if.end.i.i13.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i13.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb36.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i13.i.if.then11.i.i.i_crit_edge ], [ 4, %sw.bb36.i.if.then11.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 4, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %rv.i, i32 %sub.i.i.i
  %67 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %wdt_ioctl.exit

if.end40.i:                                       ; preds = %if.end.i.i13.i
  %68 = ptrtoint ptr %rv.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rv.i, align 4
  %and.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool41.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool41.not.i, label %if.end40.i.if.end48.i_crit_edge, label %do.end45.i

if.end40.i.if.end48.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

do.end45.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i2c_data.i2) #11
  %70 = getelementptr inbounds [2 x i8], ptr %i2c_data.i2, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %70, align 1, !annotation !156
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_buf.i) #11
  %72 = call ptr @memset(ptr %i2c_buf.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs0.i) #11
  %73 = getelementptr inbounds i8, ptr %msgs0.i, i32 4
  %74 = call ptr @memset(ptr %73, i32 255, i32 16)
  %75 = load ptr, ptr @save_client, align 4
  %addr1.i4 = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %addr1.i4 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %addr1.i4, align 2
  %78 = ptrtoint ptr %msgs0.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %msgs0.i, align 4
  %flags.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs0.i, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i5, align 2
  %80 = ptrtoint ptr %73 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1, ptr %73, align 4
  %buf.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msgs0.i, i32 0, i32 3
  %81 = ptrtoint ptr %buf.i7 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %i2c_data.i2, ptr %buf.i7, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs0.i, i32 1
  %82 = load i16, ptr %addr1.i4, align 2
  %83 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs0.i, i32 1, i32 1
  %84 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs0.i, i32 1, i32 2
  %85 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs0.i, i32 1, i32 3
  %86 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %i2c_buf.i, ptr %buf6.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs1.i3) #11
  %87 = getelementptr inbounds i8, ptr %msgs1.i3, i32 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 196607, ptr %87, align 4
  %89 = ptrtoint ptr %addr1.i4 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %addr1.i4, align 2
  %91 = ptrtoint ptr %msgs1.i3 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %msgs1.i3, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs1.i3, i32 0, i32 1
  %92 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %flags11.i, align 2
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs1.i3, i32 0, i32 3
  %93 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %i2c_data.i2, ptr %buf13.i, align 4
  %94 = ptrtoint ptr %i2c_data.i2 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 9, ptr %i2c_data.i2, align 1
  %adapter.i8 = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 3
  %95 = ptrtoint ptr %adapter.i8 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adapter.i8, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msgs0.i, i32 noundef 2) #11
  %97 = ptrtoint ptr %i2c_data.i2 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 9, ptr %i2c_data.i2, align 1
  %98 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %70, align 1
  %99 = load ptr, ptr @save_client, align 4
  %adapter18.i = getelementptr inbounds %struct.i2c_client, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %adapter18.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %adapter18.i, align 8
  %call20.i = call i32 @i2c_transfer(ptr noundef %101, ptr noundef nonnull %msgs1.i3, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs1.i3) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs0.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_buf.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i2c_data.i2) #11
  br label %if.end48.i

if.end48.i:                                       ; preds = %do.end45.i, %if.end40.i.if.end48.i_crit_edge
  %102 = ptrtoint ptr %rv.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rv.i, align 4
  %and49.i = and i32 %103, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end48.i.wdt_ioctl.exit_crit_edge, label %do.end54.i

if.end48.i.wdt_ioctl.exit_crit_edge:              ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wdt_ioctl.exit

do.end54.i:                                       ; preds = %if.end48.i
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i2c_data.i) #11
  %104 = getelementptr inbounds [2 x i8], ptr %i2c_data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs1.i) #11
  %105 = getelementptr inbounds i8, ptr %msgs1.i, i32 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 196607, ptr %105, align 4
  %107 = load ptr, ptr @save_client, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %addr1.i, align 2
  %110 = ptrtoint ptr %msgs1.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %msgs1.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs1.i, i32 0, i32 1
  %111 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs1.i, i32 0, i32 3
  %112 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %i2c_data.i, ptr %buf.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %107, i32 0, i32 4, i32 8
  %113 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %driver_data.i.i.i, align 4
  %115 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 9, ptr %i2c_data.i, align 1
  %116 = load i32, ptr @wdt_margin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %116)
  %cmp.i = icmp sgt i32 %116, 31
  %.tr.i = trunc i32 %116 to i8
  %117 = shl i8 %.tr.i, 2
  %conv4.i = or i8 %117, -126
  %conv.i = or i8 %.tr.i, -125
  %storemerge.i = select i1 %cmp.i, i8 %conv.i, i8 %conv4.i
  %118 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %storemerge.i, ptr %104, align 1
  %119 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %114, align 4
  %and6.i = and i32 %120, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i1 = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i1, label %do.end54.i.wdt_ping.exit_crit_edge, label %if.then7.i

do.end54.i.wdt_ping.exit_crit_edge:               ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wdt_ping.exit

if.then7.i:                                       ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  %121 = and i8 %storemerge.i, 127
  %122 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %104, align 1
  br label %wdt_ping.exit

wdt_ping.exit:                                    ; preds = %if.then7.i, %do.end54.i.wdt_ping.exit_crit_edge
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %107, i32 0, i32 3
  %123 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %adapter.i, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %msgs1.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs1.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i2c_data.i) #11
  br label %wdt_ioctl.exit

wdt_ioctl.exit:                                   ; preds = %wdt_ping.exit, %if.end48.i.wdt_ioctl.exit_crit_edge, %if.then11.i.i.i, %sw.bb20.i, %if.end.i.wdt_ioctl.exit_crit_edge, %sw.bb5.i.wdt_ioctl.exit_crit_edge, %wdt_ping.exit.i, %sw.bb1.i, %copy_to_user.exit.i, %if.end.i.i.i.wdt_ioctl.exit_crit_edge, %sw.bb.i.wdt_ioctl.exit_crit_edge, %entry.wdt_ioctl.exit_crit_edge
  %retval.0.i = phi i32 [ %61, %sw.bb20.i ], [ 0, %wdt_ping.exit.i ], [ %8, %sw.bb1.i ], [ -14, %sw.bb5.i.wdt_ioctl.exit_crit_edge ], [ -22, %if.end.i.wdt_ioctl.exit_crit_edge ], [ -22, %wdt_ping.exit ], [ -22, %if.end48.i.wdt_ioctl.exit_crit_edge ], [ -25, %entry.wdt_ioctl.exit_crit_edge ], [ -14, %sw.bb.i.wdt_ioctl.exit_crit_edge ], [ -14, %if.end.i.i.i.wdt_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rv.i) #11
  call void @mutex_unlock(ptr noundef nonnull @m41t80_rtc_mutex) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 130
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @m41t80_rtc_mutex, i32 noundef 0) #11
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @wdt_is_open) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @m41t80_rtc_mutex) #11
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  store i32 1, ptr @wdt_is_open, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @m41t80_rtc_mutex) #11
  %call3 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #11
  br label %return

return:                                           ; preds = %if.end, %if.then2, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %if.then2 ], [ %call3, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 130
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @wdt_is_open) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt_notify_sys(ptr nocapture noundef readnone %this, i32 noundef %code, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  %i2c_data.i = alloca [2 x i8], align 1
  %i2c_buf.i = alloca [16 x i8], align 1
  %msgs0.i = alloca [2 x %struct.i2c_msg], align 4
  %msgs1.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %code.off = add i32 %code, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %code.off)
  %switch = icmp ult i32 %code.off, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i2c_data.i) #11
  %0 = getelementptr inbounds [2 x i8], ptr %i2c_data.i, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !156
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_buf.i) #11
  %2 = call ptr @memset(ptr %i2c_buf.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs0.i) #11
  %3 = getelementptr inbounds i8, ptr %msgs0.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %5 = load ptr, ptr @save_client, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr1.i, align 2
  %8 = ptrtoint ptr %msgs0.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msgs0.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs0.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %3, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs0.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %i2c_data.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs0.i, i32 1
  %12 = load i16, ptr %addr1.i, align 2
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs0.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs0.i, i32 1, i32 2
  %15 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs0.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %i2c_buf.i, ptr %buf6.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs1.i) #11
  %17 = getelementptr inbounds i8, ptr %msgs1.i, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 196607, ptr %17, align 4
  %19 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr1.i, align 2
  %21 = ptrtoint ptr %msgs1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %msgs1.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs1.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags11.i, align 2
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs1.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %i2c_data.i, ptr %buf13.i, align 4
  %24 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 9, ptr %i2c_data.i, align 1
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msgs0.i, i32 noundef 2) #11
  %27 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 9, ptr %i2c_data.i, align 1
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %0, align 1
  %29 = load ptr, ptr @save_client, align 4
  %adapter18.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %adapter18.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter18.i, align 8
  %call20.i = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msgs1.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs1.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs0.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_buf.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i2c_data.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t80_sqw_prepare(ptr nocapture noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client1.i = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.m41t80_sqw_control.exit_crit_edge, label %if.end.i

entry.m41t80_sqw_control.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %m41t80_sqw_control.exit

if.end.i:                                         ; preds = %entry
  %2 = trunc i32 %call.i to i8
  %conv.i = or i8 %2, 64
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 10, i8 noundef zeroext %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i.m41t80_sqw_control.exit_crit_edge

if.end.i.m41t80_sqw_control.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %m41t80_sqw_control.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sqwe.i = getelementptr i8, ptr %hw, i32 16
  %3 = ptrtoint ptr %sqwe.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %sqwe.i, align 4
  br label %m41t80_sqw_control.exit

m41t80_sqw_control.exit:                          ; preds = %if.then6.i, %if.end.i.m41t80_sqw_control.exit_crit_edge, %entry.m41t80_sqw_control.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.m41t80_sqw_control.exit_crit_edge ], [ 0, %if.then6.i ], [ %call4.i, %if.end.i.m41t80_sqw_control.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m41t80_sqw_unprepare(ptr nocapture noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client1.i = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.m41t80_sqw_control.exit_crit_edge, label %if.end.i

entry.m41t80_sqw_control.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %m41t80_sqw_control.exit

if.end.i:                                         ; preds = %entry
  %2 = trunc i32 %call.i to i8
  %conv.i = and i8 %2, -65
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 10, i8 noundef zeroext %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i.m41t80_sqw_control.exit_crit_edge

if.end.i.m41t80_sqw_control.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %m41t80_sqw_control.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sqwe.i = getelementptr i8, ptr %hw, i32 16
  %3 = ptrtoint ptr %sqwe.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sqwe.i, align 4
  br label %m41t80_sqw_control.exit

m41t80_sqw_control.exit:                          ; preds = %if.then6.i, %if.end.i.m41t80_sqw_control.exit_crit_edge, %entry.m41t80_sqw_control.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @m41t80_sqw_is_prepared(ptr nocapture noundef readonly %hw) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sqwe = getelementptr i8, ptr %hw, i32 16
  %0 = ptrtoint ptr %sqwe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sqwe, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @m41t80_sqw_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %freq = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freq, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @m41t80_sqw_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %prate) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %rate)
  %cmp = icmp ugt i32 %rate, 32767
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %rate)
  %cmp1 = icmp ugt i32 %rate, 8191
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %if.end3.return_crit_edge, label %cond.end9

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

cond.end9:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.ctlz.i32(i32 %rate, i1 true) #11, !range !166
  %sub.i = xor i32 %0, 31
  %shl = shl nuw i32 1, %sub.i
  br label %return

return:                                           ; preds = %cond.end9, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %shl, %cond.end9 ], [ 32768, %entry.return_crit_edge ], [ 8192, %if.end.return_crit_edge ], [ 0, %if.end3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t80_sqw_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %client1 = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %rate)
  %cmp = icmp ugt i32 %rate, 32767
  br i1 %cmp, label %entry.if.end15_crit_edge, label %if.else

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %rate)
  %cmp2 = icmp ugt i32 %rate, 8191
  br i1 %cmp2, label %if.else.if.end15_crit_edge, label %if.else4

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool5.not = icmp eq i32 %rate, 0
  br i1 %tobool5.not, label %if.else4.if.end15_crit_edge, label %cond.end11

if.else4.if.end15_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

cond.end11:                                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #13
  %4 = tail call i32 @llvm.ctlz.i32(i32 %rate, i1 true) #11, !range !166
  %sub13 = add nsw i32 %4, -16
  br label %if.end15

if.end15:                                         ; preds = %cond.end11, %if.else4.if.end15_crit_edge, %if.else.if.end15_crit_edge, %entry.if.end15_crit_edge
  %val.0 = phi i32 [ %sub13, %cond.end11 ], [ 0, %if.else4.if.end15_crit_edge ], [ 1, %entry.if.end15_crit_edge ], [ 2, %if.else.if.end15_crit_edge ]
  %conv16 = select i1 %tobool.not, i8 19, i8 4
  %call17 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %and22 = and i32 %call17, 15
  %shl = shl nsw i32 %val.0, 4
  %or = or i32 %and22, %shl
  %conv24 = trunc i32 %or to i8
  %call25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv16, i8 noundef zeroext %conv24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27:                                        ; preds = %if.end21
  %5 = zext i32 %val.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %val.0, label %cond.false3.i [
    i32 0, label %if.then27.m41t80_decode_freq.exit_crit_edge
    i32 1, label %cond.end4.fold.split.i
  ]

if.then27.m41t80_decode_freq.exit_crit_edge:      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %m41t80_decode_freq.exit

cond.false3.i:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 32768, %val.0
  br label %m41t80_decode_freq.exit

cond.end4.fold.split.i:                           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %m41t80_decode_freq.exit

m41t80_decode_freq.exit:                          ; preds = %cond.end4.fold.split.i, %cond.false3.i, %if.then27.m41t80_decode_freq.exit_crit_edge
  %cond5.i = phi i32 [ %val.0, %if.then27.m41t80_decode_freq.exit_crit_edge ], [ %shr.i, %cond.false3.i ], [ 32768, %cond.end4.fold.split.i ]
  %freq = getelementptr i8, ptr %hw, i32 12
  %6 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond5.i, ptr %freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %m41t80_decode_freq.exit, %if.end21.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end15.cleanup_crit_edge ], [ 0, %m41t80_decode_freq.exit ], [ %call25, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t80_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.if.end_crit_edge, label %device_may_wakeup.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

device_may_wakeup.exit:                           ; preds = %land.lhs.true
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %1, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t80_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.if.end_crit_edge, label %device_may_wakeup.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

device_may_wakeup.exit:                           ; preds = %land.lhs.true
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %1, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone willreturn }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !107, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144}
!llvm.named.register.sp = !{!146}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @__param_wdt_margin, !1, !"__param_wdt_margin", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-m41t80.c", i32 607, i32 1}
!2 = !{ptr @__UNIQUE_ID_wdt_margintype288, !1, !"__UNIQUE_ID_wdt_margintype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_wdt_margin289, !4, !"__UNIQUE_ID_wdt_margin289", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-m41t80.c", i32 608, i32 1}
!5 = !{ptr @__initcall__kmod_rtc_m41t80__290_1019_m41t80_driver_init6, !6, !"__initcall__kmod_rtc_m41t80__290_1019_m41t80_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-m41t80.c", i32 1019, i32 1}
!7 = !{ptr @__exitcall_m41t80_driver_exit, !6, !"__exitcall_m41t80_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author291, !9, !"__UNIQUE_ID_author291", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-m41t80.c", i32 1021, i32 1}
!10 = !{ptr @__UNIQUE_ID_description292, !11, !"__UNIQUE_ID_description292", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-m41t80.c", i32 1022, i32 1}
!12 = !{ptr @__UNIQUE_ID_file293, !13, !"__UNIQUE_ID_file293", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-m41t80.c", i32 1023, i32 1}
!14 = !{ptr @__UNIQUE_ID_license294, !13, !"__UNIQUE_ID_license294", i1 false, i1 false}
!15 = !{ptr @__param_str_wdt_margin, !1, !"__param_str_wdt_margin", i1 false, i1 false}
!16 = !{ptr @wdt_margin, !17, !"wdt_margin", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-m41t80.c", i32 606, i32 12}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-m41t80.c", i32 1010, i32 11}
!20 = !{ptr @m41t80_driver, !21, !"m41t80_driver", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-m41t80.c", i32 1008, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-m41t80.c", i32 890, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @m41t80_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @m41t80_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-m41t80.c", i32 913, i32 12}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-m41t80.c", i32 919, i32 13}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-m41t80.c", i32 921, i32 4}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @m41t80_probe._entry.8, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @m41t80_probe._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-m41t80.c", i32 946, i32 4}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @m41t80_probe._entry.12, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @m41t80_probe._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-m41t80.c", i32 947, i32 4}
!46 = !{ptr @m41t80_probe._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @m41t80_probe._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-m41t80.c", i32 954, i32 3}
!50 = !{ptr @m41t80_probe._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @m41t80_probe._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-m41t80.c", i32 965, i32 3}
!54 = !{ptr @m41t80_probe._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @m41t80_probe._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @m41t80_rtc_ops, !57, !"m41t80_rtc_ops", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-m41t80.c", i32 399, i32 35}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-m41t80.c", i32 260, i32 3}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @m41t80_rtc_set_time._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @m41t80_rtc_set_time._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-m41t80.c", i32 272, i32 3}
!65 = !{ptr @m41t80_rtc_set_time._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @m41t80_rtc_set_time._entry_ptr.29, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/rtc/rtc-m41t80.c", i32 336, i32 3}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @m41t80_set_alarm._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @m41t80_set_alarm._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/rtc/rtc-m41t80.c", i32 350, i32 3}
!74 = !{ptr @m41t80_set_alarm._entry.32, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @m41t80_set_alarm._entry_ptr.34, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/rtc/rtc-m41t80.c", i32 289, i32 19}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/rtc/rtc-m41t80.c", i32 290, i32 39}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-m41t80.c", i32 290, i32 53}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-m41t80.c", i32 311, i32 3}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @m41t80_alarm_irq_enable._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @m41t80_alarm_irq_enable._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/rtc/rtc-m41t80.c", i32 207, i32 3}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @m41t80_rtc_read_time._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @m41t80_rtc_read_time._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/rtc/rtc-m41t80.c", i32 214, i32 3}
!94 = !{ptr @m41t80_rtc_read_time._entry.42, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @m41t80_rtc_read_time._entry_ptr.44, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @save_client, !97, !"save_client", i1 false, i1 false}
!97 = !{!"../drivers/rtc/rtc-m41t80.c", i32 601, i32 27}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/rtc/rtc-m41t80.c", i32 858, i32 10}
!100 = !{ptr @wdt_dev, !101, !"wdt_dev", i1 false, i1 false}
!101 = !{!"../drivers/rtc/rtc-m41t80.c", i32 856, i32 26}
!102 = !{ptr @wdt_fops, !103, !"wdt_fops", i1 false, i1 false}
!103 = !{!"../drivers/rtc/rtc-m41t80.c", i32 845, i32 37}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/rtc/rtc-m41t80.c", i32 600, i32 8}
!106 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @m41t80_rtc_mutex, !105, !"m41t80_rtc_mutex", i1 false, i1 false}
!108 = !{ptr @wdt_ioctl.ident, !109, !"ident", i1 false, i1 false}
!109 = !{!"../drivers/rtc/rtc-m41t80.c", i32 727, i32 30}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/rtc/rtc-m41t80.c", i32 762, i32 4}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @wdt_ioctl._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @wdt_ioctl._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/rtc/rtc-m41t80.c", i32 767, i32 4}
!117 = !{ptr @wdt_ioctl._entry.50, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @wdt_ioctl._entry_ptr.52, !116, !"_entry_ptr", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!121 = distinct !{null, !120, !"<string literal>", i1 false, i1 false}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!126 = distinct !{null, !127, !"boot_flag", i1 false, i1 false}
!127 = !{!"../drivers/rtc/rtc-m41t80.c", i32 611, i32 12}
!128 = !{ptr @wdt_is_open, !129, !"wdt_is_open", i1 false, i1 false}
!129 = !{!"../drivers/rtc/rtc-m41t80.c", i32 610, i32 22}
!130 = !{ptr @wdt_notifier, !131, !"wdt_notifier", i1 false, i1 false}
!131 = !{!"../drivers/rtc/rtc-m41t80.c", i32 866, i32 30}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/rtc/rtc-m41t80.c", i32 552, i32 43}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/rtc/rtc-m41t80.c", i32 572, i32 14}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/rtc/rtc-m41t80.c", i32 581, i32 32}
!138 = !{ptr @m41t80_sqw_ops, !139, !"m41t80_sqw_ops", i1 false, i1 false}
!139 = !{!"../drivers/rtc/rtc-m41t80.c", i32 534, i32 29}
!140 = !{ptr @m41t80_of_match, !141, !"m41t80_of_match", i1 false, i1 false}
!141 = !{!"../drivers/rtc/rtc-m41t80.c", i32 88, i32 49}
!142 = !{ptr @m41t80_pm, !143, !"m41t80_pm", i1 false, i1 false}
!143 = !{!"../drivers/rtc/rtc-m41t80.c", i32 430, i32 8}
!144 = !{ptr @m41t80_id, !145, !"m41t80_id", i1 false, i1 false}
!145 = !{!"../drivers/rtc/rtc-m41t80.c", i32 72, i32 35}
!146 = !{!"sp"}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{!"auto-init"}
!157 = !{i64 2153930968, i64 2153930993}
!158 = !{i64 6425842}
!159 = !{i64 6426039}
!160 = !{i64 2153911272}
!161 = !{i64 2155798840, i64 2155799120, i64 2155799454, i64 2155799788}
!162 = !{i64 2155811868, i64 2155812148, i64 2155812482, i64 2155812816}
!163 = !{i64 2155822158, i64 2155822438, i64 2155822772, i64 2155823106}
!164 = !{i64 2153930287, i64 2153930312}
!165 = !{!"branch_weights", i32 2000, i32 1}
!166 = !{i32 0, i32 33}
