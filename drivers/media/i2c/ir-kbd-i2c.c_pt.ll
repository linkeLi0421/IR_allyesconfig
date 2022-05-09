; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ir-kbd-i2c.c_pt.bc'
source_filename = "../drivers/media/i2c/ir-kbd-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.code_block = type <{ i8, [7 x i16], i8, i8, [8 x i16], [61 x i8], [2 x i8] }>
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.IR_i2c = type { ptr, ptr, ptr, i8, i32, %struct.delayed_work, [32 x i8], ptr, ptr, %struct.mutex, i32, i32 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_enable_hdpvr = internal constant [24 x i8] c"ir_kbd_i2c.enable_hdpvr\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable_hdpvr = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable_hdpvr = internal constant %struct.kernel_param { ptr @__param_str_enable_hdpvr, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @enable_hdpvr } }, section "__param", align 4
@__UNIQUE_ID_enable_hdpvrtype288 = internal constant [38 x i8] c"ir_kbd_i2c.parmtype=enable_hdpvr:bool\00", section ".modinfo", align 1
@__initcall__kmod_ir_kbd_i2c__312_950_ir_kbd_driver_init6 = internal global ptr @ir_kbd_driver_init, section ".initcall6.init", align 4
@ir_kbd_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ir_probe, ptr @ir_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ir_kbd_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ir_kbd_driver_exit = internal global ptr @ir_kbd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author313 = internal constant [86 x i8] c"ir_kbd_i2c.author=Gerd Knorr, Michal Kochanowicz, Christoph Bartelmus, Ulrich Mueller\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [63 x i8] c"ir_kbd_i2c.description=input driver for i2c IR remote controls\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [45 x i8] c"ir_kbd_i2c.file=drivers/media/i2c/ir-kbd-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [23 x i8] c"ir_kbd_i2c.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ir-kbd-i2c\00", [21 x i8] zeroinitializer }, align 32
@ir_kbd_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ir_video\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ir_z8f0811_haup\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ir_z8f0811_hdpvr\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ir_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 736, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"IR for HDPVR is known to cause problems during recording, use enable_hdpvr modparam to enable\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ir_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/i2c/ir-kbd-i2c.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ir_probe._entry_ptr = internal global ptr @ir_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Pixelview\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Hauppauge\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KNC One\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FusionHDTV\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc-fusionhdtv-mce\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AVerMedia Cardbus remote\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rc-avermedia-cardbus\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AVerMedia EM78P153\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rc-avermedia-m733a-rm-k6\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Hauppauge/Zilog Z8\00", [45 x i8] zeroinitializer }, align 32
@ir_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 854, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported device at address 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ir_probe._entry_ptr.21 = internal global ptr @ir_probe._entry.18, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s/%s\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ir_kbd_i2c\00", [21 x i8] zeroinitializer }, align 32
@ir_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ir->lock\00", [22 x i8] zeroinitializer }, align 32
@ir_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&(&ir->work)->work)\00", [58 x i8] zeroinitializer }, align 32
@ir_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(&ir->work)->timer\00", [44 x i8] zeroinitializer }, align 32
@ir_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 891, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to setup tx i2c address\00", [33 x i8] zeroinitializer }, align 32
@ir_probe._entry_ptr.31 = internal global ptr @ir_probe._entry.29, section ".printk_index", align 4
@get_key_pixelview.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_key_pixelview\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read error\0A\00", [20 x i8] zeroinitializer }, align 32
@get_key_haup_common.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_key_haup_common\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ir hauppauge (rc5): s%d r%d t%d dev=%d code=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@get_key_haup_common.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.34, ptr @.str.3, ptr @.str.36, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ir hauppauge (rc6-mce): t%d vendor=%d dev=%d code=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_key_haup_common.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.34, ptr @.str.3, ptr @.str.37, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ir hauppauge (rc6-6a-32): vendor=%d dev=%d code=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@get_key_knc1.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.38, ptr @.str.3, ptr @.str.33, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_key_knc1\00", [19 x i8] zeroinitializer }, align 32
@get_key_knc1.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"key %02x\0A\00", [22 x i8] zeroinitializer }, align 32
@get_key_fusionhdtv.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.40, ptr @.str.3, ptr @.str.33, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_key_fusionhdtv\00", [45 x i8] zeroinitializer }, align 32
@get_key_fusionhdtv.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %*ph\0A\00", [22 x i8] zeroinitializer }, align 32
@get_key_avermedia_cardbus.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.42, ptr @.str.3, ptr @.str.33, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"get_key_avermedia_cardbus\00", [38 x i8] zeroinitializer }, align 32
@get_key_avermedia_cardbus.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.42, ptr @.str.3, ptr @.str.33, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@get_key_avermedia_cardbus.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"read key 0x%02x/0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@get_key_avermedia_cardbus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 271, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"warning: invalid key group 0x%02x for key 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@get_key_avermedia_cardbus._entry_ptr = internal global ptr @get_key_avermedia_cardbus._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ir_key_poll.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ir_key_poll\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@ir_key_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 295, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"error %d\0A\00", [22 x i8] zeroinitializer }, align 32
@ir_key_poll._entry_ptr = internal global ptr @ir_key_poll._entry, section ".printk_index", align 4
@ir_key_poll.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.45, ptr @.str.3, ptr @.str.48, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: proto = 0x%04x, scancode = 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@zilog_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 437, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to retrieve firmware version: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"zilog_init\00", [21 x i8] zeroinitializer }, align 32
@zilog_init._entry_ptr = internal global ptr @zilog_init._entry, section ".printk_index", align 4
@zilog_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 442, ptr @.str.53, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Zilog/Hauppauge IR blaster firmware version %d.%d.%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@zilog_init._entry_ptr.54 = internal global ptr @zilog_init._entry.51, section ".printk_index", align 4
@send_data_block.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"send_data_block\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%*ph\00", [27 x i8] zeroinitializer }, align 32
@send_data_block.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.55, ptr @.str.3, ptr @.str.57, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"i2c_master_send failed with %d\0A\00", [32 x i8] zeroinitializer }, align 32
@send_data_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@send_data_block._entry_ptr = internal global ptr @send_data_block._entry, section ".printk_index", align 4
@send_data_block._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@send_data_block._entry_ptr.59 = internal global ptr @send_data_block._entry.58, section ".printk_index", align 4
@zilog_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 629, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"i2c_master_recv failed with %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zilog_tx\00", [23 x i8] zeroinitializer }, align 32
@zilog_tx._entry_ptr = internal global ptr @zilog_tx._entry, section ".printk_index", align 4
@zilog_tx.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"code set status: %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@zilog_tx._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.61, ptr @.str.3, i32 637, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unexpected IR TX response %02x\0A\00", [32 x i8] zeroinitializer }, align 32
@zilog_tx._entry_ptr.65 = internal global ptr @zilog_tx._entry.63, section ".printk_index", align 4
@zilog_tx._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.61, ptr @.str.3, i32 647, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@zilog_tx._entry_ptr.67 = internal global ptr @zilog_tx._entry.66, section ".printk_index", align 4
@zilog_tx.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.61, ptr @.str.3, ptr @.str.68, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"send command sent\0A\00", [45 x i8] zeroinitializer }, align 32
@zilog_tx.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.61, ptr @.str.3, ptr @.str.69, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"NAK expected: i2c_master_send failed with %d (try %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@zilog_tx._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.61, ptr @.str.3, i32 675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"IR TX chip never got ready: last i2c_master_send failed with %d\0A\00", [63 x i8] zeroinitializer }, align 32
@zilog_tx._entry_ptr.72 = internal global ptr @zilog_tx._entry.70, section ".printk_index", align 4
@zilog_tx._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 683, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@zilog_tx._entry_ptr.74 = internal global ptr @zilog_tx._entry.73, section ".printk_index", align 4
@zilog_tx._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.61, ptr @.str.3, i32 688, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unexpected IR TX response #2: %02x\0A\00", [60 x i8] zeroinitializer }, align 32
@zilog_tx._entry_ptr.77 = internal global ptr @zilog_tx._entry.75, section ".printk_index", align 4
@zilog_tx.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.61, ptr @.str.3, ptr @.str.78, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"transmit complete\0A\00", [45 x i8] zeroinitializer }, align 32
@zilog_ir_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 511, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IR too long, cannot transmit\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zilog_ir_format\00", [16 x i8] zeroinitializer }, align 32
@zilog_ir_format._entry_ptr = internal global ptr @zilog_ir_format._entry, section ".printk_index", align 4
@zilog_ir_format._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 528, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Too many different lengths spaces, cannot transmit\00", [45 x i8] zeroinitializer }, align 32
@zilog_ir_format._entry_ptr.83 = internal global ptr @zilog_ir_format._entry.81, section ".printk_index", align 4
@zilog_ir_format._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.3, i32 538, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Too many different lengths pulses, cannot transmit\00", [45 x i8] zeroinitializer }, align 32
@zilog_ir_format._entry_ptr.86 = internal global ptr @zilog_ir_format._entry.84, section ".printk_index", align 4
@zilog_ir_format.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.80, ptr @.str.3, ptr @.str.87, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"generated %d codes\0A\00", [44 x i8] zeroinitializer }, align 32
@zilog_ir_format._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 577, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@zilog_ir_format._entry_ptr.89 = internal global ptr @zilog_ir_format._entry.88, section ".printk_index", align 4
@zilog_ir_format.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.80, ptr @.str.3, ptr @.str.90, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"found trailing %d repeat\0A\00", [38 x i8] zeroinitializer }, align 32
@zilog_ir_format._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 590, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@zilog_ir_format._entry_ptr.92 = internal global ptr @zilog_ir_format._entry.91, section ".printk_index", align 4
@zilog_ir_format.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.80, ptr @.str.3, ptr @.str.93, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"found no trailing repeat\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 16, i64 24, i64 26, i64 31, i64 48, i64 64, i64 65, i64 100, i64 107, i64 113]
@__sancov_gen_cov_switch_values.94 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 8, i64 254, i64 255]
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"enable_hdpvr\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 56, i32 13 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"ir_kbd_driver\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 941, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 943, i32 13 }
@___asan_gen_.105 = private unnamed_addr constant [10 x i8] c"ir_kbd_id\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 931, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 736, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 750, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 753, i32 17 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 758, i32 17 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 761, i32 17 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 764, i32 17 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 770, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 773, i32 17 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 776, i32 17 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 779, i32 17 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 782, i32 17 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 786, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 789, i32 17 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 853, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 861, i32 39 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 882, i32 21 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 884, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 886, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 891, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 167, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 96, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 114, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 120, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 216, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 226, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 188, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 195, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 251, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 268, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 270, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 292, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 295, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 300, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 436, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 441, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 393, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 396, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 407, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 415, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 629, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 633, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 636, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 647, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 653, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 667, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 673, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 683, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 687, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 692, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 511, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 528, i32 5 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 538, i32 5 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 555, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 577, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 581, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 590, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.370 = private constant [34 x i8] c"../drivers/media/i2c/ir-kbd-i2c.c\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 594, i32 3 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_enable_hdpvrtype288, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_ir_kbd_driver_exit, ptr @__initcall__kmod_ir_kbd_i2c__312_950_ir_kbd_driver_init6, ptr @__param_enable_hdpvr, ptr @get_key_avermedia_cardbus._entry, ptr @get_key_avermedia_cardbus._entry_ptr, ptr @ir_kbd_driver_exit, ptr @ir_key_poll._entry, ptr @ir_key_poll._entry_ptr, ptr @ir_probe._entry, ptr @ir_probe._entry.18, ptr @ir_probe._entry.29, ptr @ir_probe._entry_ptr, ptr @ir_probe._entry_ptr.21, ptr @ir_probe._entry_ptr.31, ptr @send_data_block._entry, ptr @send_data_block._entry.58, ptr @send_data_block._entry_ptr, ptr @send_data_block._entry_ptr.59, ptr @zilog_init._entry, ptr @zilog_init._entry.51, ptr @zilog_init._entry_ptr, ptr @zilog_init._entry_ptr.54, ptr @zilog_ir_format._entry, ptr @zilog_ir_format._entry.81, ptr @zilog_ir_format._entry.84, ptr @zilog_ir_format._entry.88, ptr @zilog_ir_format._entry.91, ptr @zilog_ir_format._entry_ptr, ptr @zilog_ir_format._entry_ptr.83, ptr @zilog_ir_format._entry_ptr.86, ptr @zilog_ir_format._entry_ptr.89, ptr @zilog_ir_format._entry_ptr.92, ptr @zilog_tx._entry, ptr @zilog_tx._entry.63, ptr @zilog_tx._entry.66, ptr @zilog_tx._entry.70, ptr @zilog_tx._entry.73, ptr @zilog_tx._entry.75, ptr @zilog_tx._entry_ptr, ptr @zilog_tx._entry_ptr.65, ptr @zilog_tx._entry_ptr.67, ptr @zilog_tx._entry_ptr.72, ptr @zilog_tx._entry_ptr.74, ptr @zilog_tx._entry_ptr.77, ptr @enable_hdpvr, ptr @ir_kbd_driver, ptr @.str, ptr @ir_kbd_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @ir_probe.__key, ptr @.str.24, ptr @ir_probe.__key.25, ptr @.str.26, ptr @ir_probe.__key.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_hdpvr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_kbd_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_kbd_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key_avermedia_cardbus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_key_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zilog_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zilog_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_data_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_data_block._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zilog_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zilog_tx._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zilog_tx._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zilog_tx._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zilog_tx._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zilog_tx._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zilog_ir_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zilog_ir_format._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zilog_ir_format._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zilog_ir_format._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zilog_ir_format._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_kbd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ir_kbd_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ir_kbd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @ir_kbd_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %code_block.i = alloca %struct.code_block, align 1
  %buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %2 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr1, align 2
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp ne i32 %6, 0
  %and3 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load i8, ptr @enable_hdpvr, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev5, i32 noundef 260, i32 noundef 3520) #10
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %c = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %c, align 4
  %polling_interval = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %polling_interval to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 100, ptr %polling_interval, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %conv = zext i16 %3 to i32
  %12 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end8.sw.epilog_crit_edge [
    i16 100, label %sw.bb
    i16 24, label %if.end8.sw.bb9_crit_edge
    i16 31, label %if.end8.sw.bb9_crit_edge268
    i16 26, label %if.end8.sw.bb9_crit_edge269
    i16 48, label %sw.bb11
    i16 107, label %sw.bb13
    i16 64, label %sw.bb15
    i16 65, label %sw.bb17
    i16 113, label %sw.bb19
  ]

if.end8.sw.bb9_crit_edge269:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end8.sw.bb9_crit_edge268:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end8.sw.bb9_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %get_key = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %get_key to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @get_key_pixelview, ptr %get_key, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end8.sw.bb9_crit_edge, %if.end8.sw.bb9_crit_edge268, %if.end8.sw.bb9_crit_edge269
  %get_key10 = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %get_key10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @get_key_haup, ptr %get_key10, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %get_key12 = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %get_key12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @get_key_knc1, ptr %get_key12, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %get_key14 = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %get_key14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @get_key_fusionhdtv, ptr %get_key14, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %get_key16 = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %get_key16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @get_key_avermedia_cardbus, ptr %get_key16, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %get_key18 = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %get_key18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @get_key_avermedia_cardbus, ptr %get_key18, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %get_key20 = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %get_key20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @get_key_haup_xvr, ptr %get_key20, align 4
  %20 = ptrtoint ptr %polling_interval to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 125, ptr %polling_interval, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb, %if.end8.sw.epilog_crit_edge
  %ir_codes.0 = phi ptr [ null, %if.end8.sw.epilog_crit_edge ], [ @.str.9, %sw.bb19 ], [ @.str.16, %sw.bb17 ], [ @.str.14, %sw.bb15 ], [ @.str.12, %sw.bb13 ], [ @.str.7, %sw.bb11 ], [ @.str.9, %sw.bb9 ], [ @.str.7, %sw.bb ]
  %name.0 = phi ptr [ null, %if.end8.sw.epilog_crit_edge ], [ @.str.17, %sw.bb19 ], [ @.str.15, %sw.bb17 ], [ @.str.13, %sw.bb15 ], [ @.str.11, %sw.bb13 ], [ @.str.10, %sw.bb11 ], [ @.str.8, %sw.bb9 ], [ @.str.6, %sw.bb ]
  %rc_proto.0 = phi i64 [ 1, %if.end8.sw.epilog_crit_edge ], [ 786436, %sw.bb19 ], [ 2, %sw.bb17 ], [ 2, %sw.bb15 ], [ 1, %sw.bb13 ], [ 2, %sw.bb11 ], [ 4, %sw.bb9 ], [ 2, %sw.bb ]
  %probe_tx.0.off0 = phi i1 [ %7, %if.end8.sw.epilog_crit_edge ], [ true, %sw.bb19 ], [ %7, %sw.bb17 ], [ %7, %sw.bb15 ], [ %7, %sw.bb13 ], [ %7, %sw.bb11 ], [ %7, %sw.bb9 ], [ %7, %sw.bb ]
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %21 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %platform_data, align 8
  %tobool23.not = icmp eq ptr %22, null
  br i1 %tobool23.not, label %sw.epilog.if.then57_crit_edge, label %if.then24

sw.epilog.if.then57_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.then24:                                        ; preds = %sw.epilog
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %rc_dev = getelementptr inbounds %struct.IR_i2c_init_data, ptr %22, i32 0, i32 6
  %25 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rc_dev, align 4
  %name28 = getelementptr inbounds %struct.IR_i2c_init_data, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name28, align 4
  %type = getelementptr inbounds %struct.IR_i2c_init_data, ptr %22, i32 0, i32 2
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool29.not = icmp eq i64 %30, 0
  %spec.select = select i1 %tobool29.not, i64 %rc_proto.0, i64 %30
  %polling_interval33 = getelementptr inbounds %struct.IR_i2c_init_data, ptr %22, i32 0, i32 3
  %31 = ptrtoint ptr %polling_interval33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %polling_interval33, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool34.not = icmp eq i32 %32, 0
  br i1 %tobool34.not, label %if.then24.if.end38_crit_edge, label %if.then35

if.then24.if.end38_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then35:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %polling_interval to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %polling_interval, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then24.if.end38_crit_edge
  %internal_get_key_func = getelementptr inbounds %struct.IR_i2c_init_data, ptr %22, i32 0, i32 5
  %34 = ptrtoint ptr %internal_get_key_func to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %internal_get_key_func, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %35, label %if.end38.if.end55_crit_edge [
    i32 0, label %sw.bb39
    i32 1, label %if.end38.if.end55.sink.split_crit_edge
    i32 2, label %sw.bb44
    i32 3, label %sw.bb46
    i32 4, label %sw.bb48
    i32 5, label %sw.bb50
    i32 6, label %sw.bb52
  ]

if.end38.if.end55.sink.split_crit_edge:           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.sink.split

if.end38.if.end55_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

sw.bb39:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %get_key40 = getelementptr inbounds %struct.IR_i2c_init_data, ptr %22, i32 0, i32 4
  %37 = ptrtoint ptr %get_key40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_key40, align 4
  br label %if.end55.sink.split

sw.bb44:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.sink.split

sw.bb46:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.sink.split

sw.bb48:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.sink.split

sw.bb50:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.sink.split

sw.bb52:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %sw.bb52, %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb39, %if.end38.if.end55.sink.split_crit_edge
  %.sink = phi ptr [ %38, %sw.bb39 ], [ @get_key_haup, %sw.bb44 ], [ @get_key_knc1, %sw.bb46 ], [ @get_key_fusionhdtv, %sw.bb48 ], [ @get_key_haup_xvr, %sw.bb50 ], [ @get_key_avermedia_cardbus, %sw.bb52 ], [ @get_key_pixelview, %if.end38.if.end55.sink.split_crit_edge ]
  %get_key41 = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 7
  %39 = ptrtoint ptr %get_key41 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %.sink, ptr %get_key41, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.end38.if.end55_crit_edge
  %tobool56.not = icmp eq ptr %26, null
  br i1 %tobool56.not, label %if.end55.if.then57_crit_edge, label %if.end55.if.end62_crit_edge

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end55.if.then57_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.then57:                                        ; preds = %if.end55.if.then57_crit_edge, %sw.epilog.if.then57_crit_edge
  %rc_proto.2265 = phi i64 [ %spec.select, %if.end55.if.then57_crit_edge ], [ %rc_proto.0, %sw.epilog.if.then57_crit_edge ]
  %name.1263 = phi ptr [ %28, %if.end55.if.then57_crit_edge ], [ %name.0, %sw.epilog.if.then57_crit_edge ]
  %ir_codes.1261 = phi ptr [ %24, %if.end55.if.then57_crit_edge ], [ %ir_codes.0, %sw.epilog.if.then57_crit_edge ]
  %call58 = tail call ptr @rc_allocate_device(i32 noundef 0) #10
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.then57.cleanup_crit_edge, label %if.then57.if.end62_crit_edge

if.then57.if.end62_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end62:                                         ; preds = %if.then57.if.end62_crit_edge, %if.end55.if.end62_crit_edge
  %rc_proto.2264 = phi i64 [ %spec.select, %if.end55.if.end62_crit_edge ], [ %rc_proto.2265, %if.then57.if.end62_crit_edge ]
  %name.1262 = phi ptr [ %28, %if.end55.if.end62_crit_edge ], [ %name.1263, %if.then57.if.end62_crit_edge ]
  %ir_codes.1260 = phi ptr [ %24, %if.end55.if.end62_crit_edge ], [ %ir_codes.1261, %if.then57.if.end62_crit_edge ]
  %rc.1 = phi ptr [ %26, %if.end55.if.end62_crit_edge ], [ %call58, %if.then57.if.end62_crit_edge ]
  %rc63 = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %rc63 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %rc.1, ptr %rc63, align 4
  %tobool64.not = icmp eq ptr %name.1262, null
  br i1 %tobool64.not, label %if.end62.do.end74_crit_edge, label %lor.lhs.false

if.end62.do.end74_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74

lor.lhs.false:                                    ; preds = %if.end62
  %get_key65 = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 7
  %41 = ptrtoint ptr %get_key65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %get_key65, align 4
  %tobool66.not = icmp eq ptr %42, null
  %tobool70.not = icmp eq ptr %ir_codes.1260, null
  %or.cond = select i1 %tobool66.not, i1 true, i1 %tobool70.not
  br i1 %or.cond, label %lor.lhs.false.do.end74_crit_edge, label %if.end77

lor.lhs.false.do.end74_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74

do.end74:                                         ; preds = %lor.lhs.false.do.end74_crit_edge, %if.end62.do.end74_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.19, i32 noundef %conv) #13
  br label %err_out_free

if.end77:                                         ; preds = %lor.lhs.false
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ir_codes.1260, ptr %call.i, align 4
  %phys = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 6
  %init_name.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 3
  %44 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end77.dev_name.exit_crit_edge

if.end77.dev_name.exit_crit_edge:                 ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %dev79 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev79, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end77.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %47, %if.end.i ], [ %45, %if.end77.dev_name.exit_crit_edge ]
  %init_name.i245 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %48 = ptrtoint ptr %init_name.i245 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i245, align 8
  %tobool.not.i246 = icmp eq ptr %49, null
  br i1 %tobool.not.i246, label %if.end.i247, label %dev_name.exit.dev_name.exit249_crit_edge

dev_name.exit.dev_name.exit249_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit249

if.end.i247:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev5, align 4
  br label %dev_name.exit249

dev_name.exit249:                                 ; preds = %if.end.i247, %dev_name.exit.dev_name.exit249_crit_edge
  %retval.0.i248 = phi ptr [ %51, %if.end.i247 ], [ %49, %dev_name.exit.dev_name.exit249_crit_edge ]
  %call83 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i, ptr noundef %retval.0.i248)
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %rc.1, i32 0, i32 5
  %52 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 24, ptr %input_id, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %rc.1, i32 0, i32 4
  %53 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %phys, ptr %input_phys, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %rc.1, i32 0, i32 3
  %54 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %name.1262, ptr %device_name, align 8
  %parent = getelementptr inbounds %struct.device, ptr %rc.1, i32 0, i32 1
  %55 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dev5, ptr %parent, align 8
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc.1, i32 0, i32 24
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %priv, align 4
  %open = getelementptr inbounds %struct.rc_dev, ptr %rc.1, i32 0, i32 48
  %57 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ir_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.rc_dev, ptr %rc.1, i32 0, i32 49
  %58 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @ir_close, ptr %close, align 4
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %rc.1, i32 0, i32 7
  %61 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %map_name, align 4
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %rc.1, i32 0, i32 16
  %62 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %rc_proto.2264, ptr %allowed_protocols, align 8
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %rc.1, i32 0, i32 6
  %63 = ptrtoint ptr %driver_name to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver_name, align 8
  %tobool89.not = icmp eq ptr %64, null
  br i1 %tobool89.not, label %if.then90, label %dev_name.exit249.do.body93_crit_edge

dev_name.exit249.do.body93_crit_edge:             ; preds = %dev_name.exit249
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body93

if.then90:                                        ; preds = %dev_name.exit249
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.23, ptr %driver_name, align 8
  br label %do.body93

do.body93:                                        ; preds = %if.then90, %dev_name.exit249.do.body93_crit_edge
  %lock = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @ir_probe.__key) #10
  %work = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #10
  %66 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.26, ptr noundef nonnull @ir_probe.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry105 = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %67 = ptrtoint ptr %entry105 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %entry105, ptr %entry105, align 4
  %prev.i = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %entry105, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %69 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @ir_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @ir_probe.__key.27) #10
  br i1 %probe_tx.0.off0, label %if.then117, label %do.body93.if.end134_crit_edge

do.body93.if.end134_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.then117:                                       ; preds = %do.body93
  %70 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adapter, align 8
  %call119 = tail call ptr @i2c_new_dummy_device(ptr noundef %71, i16 noundef zeroext 112) #10
  %tx_c = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 8
  %72 = ptrtoint ptr %tx_c to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call119, ptr %tx_c, align 4
  %cmp.i = icmp ugt ptr %call119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end125, label %if.else

do.end125:                                        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.30) #13
  %73 = ptrtoint ptr %tx_c to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tx_c, align 4
  %75 = ptrtoint ptr %74 to i32
  br label %err_out_free

if.else:                                          ; preds = %if.then117
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %code_block.i) #10
  %76 = getelementptr inbounds i8, ptr %code_block.i, i32 1
  %77 = call ptr @memset(ptr %76, i32 0, i32 95)
  %78 = ptrtoint ptr %code_block.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 96, ptr %code_block.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %79 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %80 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %81 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %arrayidx.i = getelementptr inbounds %struct.code_block, ptr %code_block.i, i32 0, i32 1, i32 3
  %82 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %buf.i, align 4
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 4096, ptr %arrayidx.i, align 1
  %call.i250 = call fastcc i32 @send_data_block(ptr noundef nonnull %call.i, i32 noundef 32, ptr noundef nonnull %code_block.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250)
  %tobool.not.i251 = icmp eq i32 %call.i250, 0
  br i1 %tobool.not.i251, label %if.end.i252, label %if.else.zilog_init.exit.thread_crit_edge

if.else.zilog_init.exit.thread_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %zilog_init.exit.thread

if.end.i252:                                      ; preds = %if.else
  %84 = ptrtoint ptr %tx_c to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tx_c, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %85, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 4
  %86 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %c, align 4
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %87, i32 0, i32 4
  br i1 %cmp.not.i, label %if.then131, label %do.end.i

do.end.i:                                         ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.49, i32 noundef %call.i.i) #13
  br label %zilog_init.exit.thread

zilog_init.exit.thread:                           ; preds = %do.end.i, %if.else.zilog_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %code_block.i) #10
  br label %if.end134

if.then131:                                       ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %79, align 1
  %conv.i = zext i8 %89 to i32
  %90 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %80, align 2
  %conv12.i = zext i8 %91 to i32
  %92 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %81, align 1
  %conv14.i = zext i8 %93 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9.i, ptr noundef nonnull @.str.52, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %code_block.i) #10
  %carrier = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 10
  %94 = ptrtoint ptr %carrier to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 38000, ptr %carrier, align 4
  %duty_cycle = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 11
  %95 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 40, ptr %duty_cycle, align 4
  %tx_ir = getelementptr inbounds %struct.rc_dev, ptr %rc.1, i32 0, i32 54
  %96 = ptrtoint ptr %tx_ir to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @zilog_tx, ptr %tx_ir, align 8
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, ptr %rc.1, i32 0, i32 51
  %97 = ptrtoint ptr %s_tx_carrier to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @zilog_tx_carrier, ptr %s_tx_carrier, align 4
  %s_tx_duty_cycle = getelementptr inbounds %struct.rc_dev, ptr %rc.1, i32 0, i32 52
  %98 = ptrtoint ptr %s_tx_duty_cycle to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @zilog_tx_duty_cycle, ptr %s_tx_duty_cycle, align 8
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %zilog_init.exit.thread, %do.body93.if.end134_crit_edge
  %call135 = call i32 @rc_register_device(ptr noundef nonnull %rc.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end134.cleanup_crit_edge, label %if.end134.err_out_free_crit_edge

if.end134.err_out_free_crit_edge:                 ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_free

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_out_free:                                     ; preds = %if.end134.err_out_free_crit_edge, %do.end125, %do.end74
  %err.0 = phi i32 [ %75, %do.end125 ], [ %call135, %if.end134.err_out_free_crit_edge ], [ -19, %do.end74 ]
  %tx_c139 = getelementptr inbounds %struct.IR_i2c, ptr %call.i, i32 0, i32 8
  %99 = ptrtoint ptr %tx_c139 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tx_c139, align 4
  %cmp.i254 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %err_out_free.if.end143_crit_edge, label %if.then141

err_out_free.if.end143_crit_edge:                 ; preds = %err_out_free
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then141:                                       ; preds = %err_out_free
  call void @__sanitizer_cov_trace_pc() #12
  call void @i2c_unregister_device(ptr noundef %100) #10
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %err_out_free.if.end143_crit_edge
  call void @rc_free_device(ptr noundef nonnull %rc.1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %if.end134.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.0, %if.end143 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.then57.cleanup_crit_edge ], [ 0, %if.end134.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 5
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #10
  %tx_c = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %tx_c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_c, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #10
  %rc = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rc, align 4
  tail call void @rc_unregister_device(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_pixelview(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle) #2 align 64 {
entry:
  %b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #10
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b, align 1, !annotation !223
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_key_pixelview.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_key_pixelview, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !224

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %rc5 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %3 = ptrtoint ptr %rc5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rc5, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_key_pixelview.__UNIQUE_ID_ddebug292, ptr noundef %4, ptr noundef nonnull @.str.33) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  %call. = select i1 %cmp6, i32 %call.i, i32 -5
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %protocol, align 4
  %6 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %b, align 1
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %scancode, align 4
  %9 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %toggle, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end
  %retval.0 = phi i32 [ 1, %if.end9 ], [ %call., %do.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_haup(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef %toggle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @get_key_haup_common(ptr noundef %ir, ptr noundef %protocol, ptr noundef %scancode, ptr noundef %toggle, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_knc1(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle) #2 align 64 {
entry:
  %b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #10
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b, align 1, !annotation !223
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %b, i32 noundef 1, i16 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %do.body10, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_key_knc1.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_key_knc1, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !224

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %rc5 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %3 = ptrtoint ptr %rc5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rc5, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_key_knc1.__UNIQUE_ID_ddebug295, ptr noundef %4, ptr noundef nonnull @.str.33) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  %call. = select i1 %cmp6, i32 %call.i, i32 -5
  br label %cleanup

do.body10:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_key_knc1.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_key_knc1, %if.then22)) #10
          to label %do.end27 [label %if.then22], !srcloc !224

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %rc23 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %5 = ptrtoint ptr %rc23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rc23, align 4
  %7 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %b, align 1
  %conv = zext i8 %8 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_key_knc1.__UNIQUE_ID_ddebug296, ptr noundef %6, ptr noundef nonnull @.str.39, i32 noundef %conv) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %do.body10
  %9 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %b, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %10, label %if.end37 [
    i8 -1, label %do.end27.cleanup_crit_edge
    i8 -2, label %if.then36
  ]

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then36:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %protocol, align 4
  %conv38 = zext i8 %10 to i32
  %13 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv38, ptr %scancode, align 4
  %14 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %toggle, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then36, %do.end27.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %if.then36 ], [ 1, %if.end37 ], [ %call., %do.end ], [ 0, %do.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_fusionhdtv(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %buf, align 4
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf, i32 noundef 4, i16 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 4
  br i1 %cmp.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_key_fusionhdtv.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_key_fusionhdtv, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !224

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %rc5 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %6 = ptrtoint ptr %rc5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rc5, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_key_fusionhdtv.__UNIQUE_ID_ddebug293, ptr noundef %7, ptr noundef nonnull @.str.33) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  %call. = select i1 %cmp6, i32 %call.i, i32 -5
  br label %cleanup

if.end9:                                          ; preds = %entry
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp10.not = icmp eq i8 %9, 0
  br i1 %cmp10.not, label %lor.lhs.false, label %if.end9.do.body27_crit_edge

if.end9.do.body27_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27

lor.lhs.false:                                    ; preds = %if.end9
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp14.not = icmp eq i8 %11, 0
  br i1 %cmp14.not, label %lor.lhs.false16, label %lor.lhs.false.do.body27_crit_edge

lor.lhs.false.do.body27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp19.not = icmp eq i8 %13, 0
  br i1 %cmp19.not, label %lor.lhs.false21, label %lor.lhs.false16.do.body27_crit_edge

lor.lhs.false16.do.body27_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27

lor.lhs.false21:                                  ; preds = %lor.lhs.false16
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp24.not = icmp eq i8 %15, 0
  br i1 %cmp24.not, label %lor.lhs.false21.if.end46_crit_edge, label %lor.lhs.false21.do.body27_crit_edge

lor.lhs.false21.do.body27_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27

lor.lhs.false21.if.end46_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.body27:                                        ; preds = %lor.lhs.false21.do.body27_crit_edge, %lor.lhs.false16.do.body27_crit_edge, %lor.lhs.false.do.body27_crit_edge, %if.end9.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_key_fusionhdtv.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_key_fusionhdtv, %if.then39)) #10
          to label %if.end46 [label %if.then39], !srcloc !224

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  %rc40 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %16 = ptrtoint ptr %rc40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rc40, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_key_fusionhdtv.__UNIQUE_ID_ddebug294, ptr noundef %17, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 4, ptr noundef nonnull %buf) #10
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %do.body27, %lor.lhs.false21.if.end46_crit_edge
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp49.not = icmp eq i8 %19, 1
  br i1 %cmp49.not, label %lor.lhs.false51, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false51:                                  ; preds = %if.end46
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %21)
  %cmp54.not = icmp eq i8 %21, -2
  br i1 %cmp54.not, label %if.end57, label %lor.lhs.false51.cleanup_crit_edge

lor.lhs.false51.cleanup_crit_edge:                ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end57:                                         ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %protocol, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 2
  %conv59 = zext i8 %24 to i32
  %25 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv59, ptr %scancode, align 4
  %26 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %toggle, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %lor.lhs.false51.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %if.end57 ], [ %call., %do.end ], [ 0, %lor.lhs.false51.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_avermedia_cardbus(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle) #2 align 64 {
entry:
  %subaddr = alloca i8, align 1
  %key = alloca i8, align 1
  %keygroup = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %subaddr) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %key) #10
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %key, align 1, !annotation !223
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %keygroup) #10
  %1 = ptrtoint ptr %keygroup to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %keygroup, align 1, !annotation !223
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #10
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr1, align 2
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %subaddr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %12 = load i16, ptr %addr1, align 2
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %14 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %15 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %16 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %key, ptr %buf7, align 4
  %17 = ptrtoint ptr %subaddr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 13, ptr %subaddr, align 1
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end13, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_key_avermedia_cardbus.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_key_avermedia_cardbus, %if.then12)) #10
          to label %cleanup [label %if.then12], !srcloc !224

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %rc = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %20 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_key_avermedia_cardbus.__UNIQUE_ID_ddebug297, ptr noundef %21, ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end13:                                         ; preds = %entry
  %22 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp14 = icmp eq i8 %23, -1
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %24 = ptrtoint ptr %subaddr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 11, ptr %subaddr, align 1
  %25 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %keygroup, ptr %buf7, align 4
  %26 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %c, align 4
  %adapter20 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %adapter20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter20, align 8
  %call22 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 2
  br i1 %cmp23.not, label %if.end44, label %do.body26

do.body26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_key_avermedia_cardbus.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_key_avermedia_cardbus, %if.then38)) #10
          to label %cleanup [label %if.then38], !srcloc !224

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %rc39 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %30 = ptrtoint ptr %rc39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rc39, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_key_avermedia_cardbus.__UNIQUE_ID_ddebug298, ptr noundef %31, ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end44:                                         ; preds = %if.end17
  %32 = ptrtoint ptr %keygroup to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %keygroup, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp46 = icmp eq i8 %33, -1
  br i1 %cmp46, label %if.end44.cleanup_crit_edge, label %do.body50

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body50:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_key_avermedia_cardbus.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_key_avermedia_cardbus, %if.then62)) #10
          to label %do.end69 [label %if.then62], !srcloc !224

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %rc63 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %34 = ptrtoint ptr %rc63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rc63, align 4
  %36 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %key, align 1
  %conv65 = zext i8 %37 to i32
  %38 = ptrtoint ptr %keygroup to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %keygroup, align 1
  %conv66 = zext i8 %39 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_key_avermedia_cardbus.__UNIQUE_ID_ddebug299, ptr noundef %35, ptr noundef nonnull @.str.43, i32 noundef %conv65, i32 noundef %conv66) #10
  br label %do.end69

do.end69:                                         ; preds = %if.then62, %do.body50
  %40 = ptrtoint ptr %keygroup to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %keygroup, align 1
  %42 = add i8 %41, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %42)
  %43 = icmp ult i8 %42, -3
  br i1 %43, label %do.end79, label %do.end69.if.end84_crit_edge

do.end69.if.end84_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.end79:                                         ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  %rc80 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %44 = ptrtoint ptr %rc80 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rc80, align 4
  %conv82 = zext i8 %41 to i32
  %46 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %key, align 1
  %conv83 = zext i8 %47 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.44, i32 noundef %conv82, i32 noundef %conv83) #13
  br label %if.end84

if.end84:                                         ; preds = %do.end79, %do.end69.if.end84_crit_edge
  %48 = ptrtoint ptr %keygroup to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %keygroup, align 1
  %50 = shl i8 %49, 6
  %51 = and i8 %50, 64
  %52 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %key, align 1
  %or111 = or i8 %51, %53
  %54 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %protocol, align 4
  %conv88 = zext i8 %or111 to i32
  %55 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv88, ptr %scancode, align 4
  %56 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %c, align 4
  %addr90 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %addr90 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %addr90, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %59)
  %cmp92 = icmp eq i16 %59, 65
  br i1 %cmp92, label %if.then94, label %if.end84.if.end98_crit_edge

if.end84.if.end98_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then94:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %conv95 = zext i8 %49 to i32
  %shl96 = shl nuw nsw i32 %conv95, 8
  %or97 = or i32 %shl96, %conv88
  %60 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or97, ptr %scancode, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.end84.if.end98_crit_edge
  %61 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %toggle, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.end44.cleanup_crit_edge, %if.then38, %do.body26, %if.end13.cleanup_crit_edge, %if.then12, %do.body
  %retval.0 = phi i32 [ 1, %if.end98 ], [ -5, %if.then12 ], [ 0, %if.end13.cleanup_crit_edge ], [ -5, %if.then38 ], [ 0, %if.end44.cleanup_crit_edge ], [ -5, %do.body ], [ -5, %do.body26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %keygroup) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %key) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %subaddr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_haup_xvr(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef %toggle) #2 align 64 {
entry:
  %buf = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #10
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %buf, align 1
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %buf, i32 noundef 1, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp1, i32 %call.i, i32 -22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = call fastcc i32 @get_key_haup_common(ptr noundef %ir, ptr noundef %protocol, ptr noundef %scancode, ptr noundef %toggle, i32 noundef 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %work = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ir_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %work = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 5
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ir_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 140
  %call = tail call i32 @mutex_trylock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.else.i_crit_edge, label %if.then

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %call1 = tail call fastcc i32 @ir_key_poll(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call1)
  %cmp = icmp eq i32 %call1, -19
  br i1 %cmp, label %if.then3, label %if.then.if.else.i_crit_edge

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %rc4 = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %rc4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc4, align 4
  tail call void @rc_unregister_device(ptr noundef %1) #10
  %2 = ptrtoint ptr %rc4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rc4, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.then.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %polling_interval = getelementptr i8, ptr %work, i32 -4
  %3 = ptrtoint ptr %polling_interval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %polling_interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %work, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zilog_tx(ptr noundef %rcdev, ptr nocapture noundef readonly %txbuf, i32 noundef %count) #2 align 64 {
entry:
  %code_block = alloca %struct.code_block, align 1
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rcdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %code_block) #10
  %2 = getelementptr inbounds i8, ptr %code_block, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 95)
  %4 = ptrtoint ptr %code_block to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 96, ptr %code_block, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #10
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %buf, align 1, !annotation !223
  %6 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !223
  %call = call fastcc i32 @zilog_ir_format(ptr noundef %rcdev, ptr noundef %txbuf, i32 noundef %count, ptr noundef nonnull %code_block)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @send_data_block(ptr noundef %1, i32 noundef 64, ptr noundef nonnull %code_block)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_unlock_crit_edge

if.end4.out_unlock_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end8:                                          ; preds = %if.end4
  %tx_c = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %tx_c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %buf, i32 noundef 1, i16 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %do.body12, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %rc = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.60, i32 noundef %call.i) #13
  br label %out_unlock

do.body12:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zilog_tx.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zilog_tx, %if.then17)) #10
          to label %do.end22 [label %if.then17], !srcloc !224

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %rc18 = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %rc18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rc18, align 4
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 1
  %conv = zext i8 %15 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zilog_tx.__UNIQUE_ID_ddebug307, ptr noundef %13, ptr noundef nonnull @.str.62, i32 noundef %conv) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then17, %do.body12
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %17)
  %cmp25.not = icmp eq i8 %17, -96
  br i1 %cmp25.not, label %if.end35, label %do.end30

do.end30:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  %conv24 = zext i8 %17 to i32
  %rc31 = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %rc31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rc31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.64, i32 noundef %conv24) #13
  br label %out_unlock

if.end35:                                         ; preds = %do.end22
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %buf, align 1
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -128, ptr %6, align 1
  %22 = ptrtoint ptr %tx_c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_c, align 4
  %call.i285 = call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i285)
  %cmp41.not = icmp eq i32 %call.i285, 2
  br i1 %cmp41.not, label %do.body54, label %do.end46

do.end46:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %rc47 = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %rc47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rc47, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.57, i32 noundef %call.i285) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i285)
  %cmp49 = icmp sgt i32 %call.i285, -1
  %spec.select = select i1 %cmp49, i32 -5, i32 %call.i285
  br label %out_unlock

do.body54:                                        ; preds = %if.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zilog_tx.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zilog_tx, %if.then66)) #10
          to label %do.end71 [label %if.then66], !srcloc !224

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  %rc67 = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %rc67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rc67, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zilog_tx.__UNIQUE_ID_ddebug308, ptr noundef %27, ptr noundef nonnull @.str.68) #10
  br label %do.end71

do.end71:                                         ; preds = %if.then66, %do.body54
  %rc169 = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 2
  br label %__here

__here:                                           ; preds = %for.inc.__here_crit_edge, %do.end71
  %i.0295 = phi i32 [ 0, %do.end71 ], [ %inc, %for.inc.__here_crit_edge ]
  %28 = call i32 @llvm.read_register.i32(metadata !212) #10
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 212
  %32 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 ptrtoint (ptr blockaddress(@zilog_tx, %__here) to i32), ptr %task_state_change, align 4
  %33 = load ptr, ptr %task, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 2, ptr %33, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !225
  %call148 = call i32 @schedule_timeout(i32 noundef 5) #10
  %35 = ptrtoint ptr %tx_c to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_c, align 4
  %call.i286 = call i32 @i2c_transfer_buffer_flags(ptr noundef %36, ptr noundef nonnull %buf, i32 noundef 1, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i286)
  %cmp152 = icmp eq i32 %call.i286, 1
  br i1 %cmp152, label %if.end186, label %do.body156

do.body156:                                       ; preds = %__here
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zilog_tx.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zilog_tx, %if.then168)) #10
          to label %for.inc [label %if.then168], !srcloc !224

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %rc169 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rc169, align 4
  %add = add nuw nsw i32 %i.0295, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zilog_tx.__UNIQUE_ID_ddebug310, ptr noundef %38, ptr noundef nonnull @.str.69, i32 noundef %call.i286, i32 noundef %add) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then168, %do.body156
  %inc = add nuw nsw i32 %i.0295, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %do.end179, label %for.inc.__here_crit_edge

for.inc.__here_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

do.end179:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %rc169 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rc169, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.71, i32 noundef %call.i286) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i286)
  %cmp182 = icmp sgt i32 %call.i286, -1
  %spec.select274 = select i1 %cmp182, i32 -5, i32 %call.i286
  br label %out_unlock

if.end186:                                        ; preds = %__here
  %41 = ptrtoint ptr %tx_c to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_c, align 4
  %call.i287 = call i32 @i2c_transfer_buffer_flags(ptr noundef %42, ptr noundef nonnull %buf, i32 noundef 1, i16 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i287)
  %cmp190.not = icmp eq i32 %call.i287, 1
  br i1 %cmp190.not, label %if.else, label %do.end195

do.end195:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %rc169 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rc169, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.60, i32 noundef %call.i287) #13
  br label %out_unlock

if.else:                                          ; preds = %if.end186
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %46)
  %cmp200.not = icmp eq i8 %46, -128
  br i1 %cmp200.not, label %do.body212, label %do.end205

do.end205:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv199 = zext i8 %46 to i32
  %47 = ptrtoint ptr %rc169 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rc169, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.76, i32 noundef %conv199) #13
  br label %out_unlock

do.body212:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zilog_tx.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zilog_tx, %if.then224)) #10
          to label %out_unlock [label %if.then224], !srcloc !224

if.then224:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %rc169 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rc169, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zilog_tx.__UNIQUE_ID_ddebug311, ptr noundef %50, ptr noundef nonnull @.str.78) #10
  br label %out_unlock

out_unlock:                                       ; preds = %if.then224, %do.body212, %do.end205, %do.end195, %do.end179, %do.end46, %do.end30, %do.end, %if.end4.out_unlock_crit_edge
  %ret.2 = phi i32 [ %call5, %if.end4.out_unlock_crit_edge ], [ %call.i, %do.end ], [ -5, %do.end30 ], [ -5, %do.end195 ], [ -5, %do.end205 ], [ %spec.select, %do.end46 ], [ %spec.select274, %do.end179 ], [ %count, %if.then224 ], [ %count, %do.body212 ]
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_unlock ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %code_block) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zilog_tx_carrier(ptr nocapture noundef readonly %dev, i32 noundef %carrier) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %carrier, -500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -480001, i32 %0)
  %1 = icmp ult i32 %0, -480001
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %carrier2 = getelementptr inbounds %struct.IR_i2c, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %carrier2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %carrier, ptr %carrier2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zilog_tx_duty_cycle(ptr nocapture noundef readonly %dev, i32 noundef %duty_cycle) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %duty_cycle1 = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %duty_cycle1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %duty_cycle, ptr %duty_cycle1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_key_haup_common(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef %ptoggle, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %2 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 4
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %3 = call ptr @memset(ptr %buf, i32 255, i32 6)
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf, i32 noundef %size, i16 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %size)
  %cmp.not = icmp eq i32 %call.i, %size
  br i1 %cmp.not, label %if.end, label %entry.cleanup115_crit_edge

entry.cleanup115_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup115

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 1
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %size)
  %cmp2 = icmp eq i32 %size, 6
  %cond = select i1 %cmp2, i32 3, i32 0
  %arrayidx4 = getelementptr [6 x i8], ptr %buf, i32 0, i32 %cond
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %9 to i32
  %10 = lshr i32 %conv5, 6
  %and10 = and i32 %10, 1
  %11 = lshr i32 %conv5, 5
  %and14 = and i32 %11, 1
  %and17 = and i32 %conv5, 31
  %add = add nuw nsw i32 %cond, 1
  %arrayidx18 = getelementptr [6 x i8], ptr %buf, i32 0, i32 %add
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18, align 1
  %14 = lshr i8 %13, 2
  %15 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool22.not = icmp sgt i8 %9, -1
  br i1 %tobool22.not, label %if.then1.cleanup115_crit_edge, label %if.end24

if.then1.cleanup115_crit_edge:                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup115

if.end24:                                         ; preds = %if.then1
  %shl25 = shl nuw nsw i32 %and14, 11
  %shl26 = shl nuw nsw i32 %and17, 6
  %or = or i32 %shl25, %shl26
  %or27 = or i32 %or, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %or27)
  %cmp30 = icmp eq i32 %or27, 4095
  br i1 %cmp30, label %if.end24.cleanup115_crit_edge, label %if.end33

if.end24.cleanup115_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup115

if.end33:                                         ; preds = %if.end24
  %16 = shl nuw nsw i32 %and10, 6
  %17 = or i32 %16, %15
  %18 = xor i32 %17, 64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_key_haup_common.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_key_haup_common, %if.then42)) #10
          to label %do.end [label %if.then42], !srcloc !224

if.then42:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %rc = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %19 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_key_haup_common.__UNIQUE_ID_ddebug289, ptr noundef %20, ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef %and10, i32 noundef %and14, i32 noundef %and17, i32 noundef %18) #10
  br label %do.end

do.end:                                           ; preds = %if.then42, %if.end33
  %21 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %protocol, align 4
  %shl45 = shl nuw nsw i32 %and17, 8
  %or46 = or i32 %18, %shl45
  %22 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or46, ptr %scancode, align 4
  %conv47 = trunc i32 %and14 to i8
  %23 = ptrtoint ptr %ptoggle to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv47, ptr %ptoggle, align 1
  br label %cleanup115

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %size)
  %cmp48 = icmp ne i32 %size, 6
  %and52 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %or.cond = select i1 %cmp48, i1 true, i1 %tobool53.not
  br i1 %or.cond, label %if.else.cleanup115_crit_edge, label %if.then54

if.else.cleanup115_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup115

if.then54:                                        ; preds = %if.else
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %2, align 1
  %conv56 = zext i8 %25 to i32
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %1, align 1
  %conv58 = zext i8 %27 to i32
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %0, align 1
  %conv61 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32753, i16 %29)
  %cmp62 = icmp eq i16 %29, -32753
  br i1 %cmp62, label %if.then64, label %if.else89

if.then64:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  %and65.lobit = lshr i8 %27, 7
  %30 = ptrtoint ptr %ptoggle to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %and65.lobit, ptr %ptoggle, align 1
  %31 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 19, ptr %protocol, align 4
  %and69 = and i32 %conv58, 127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_key_haup_common.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_key_haup_common, %if.then82)) #10
          to label %if.end108 [label %if.then82], !srcloc !224

if.then82:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %rc83 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %32 = ptrtoint ptr %rc83 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rc83, align 4
  %34 = ptrtoint ptr %ptoggle to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ptoggle, align 1
  %conv85 = zext i8 %35 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_key_haup_common.__UNIQUE_ID_ddebug290, ptr noundef %33, ptr noundef nonnull @.str.36, i32 noundef %conv85, i32 noundef 32783, i32 noundef %and69, i32 noundef %conv56) #10
  br label %if.end108

if.else89:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %ptoggle to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %ptoggle, align 1
  %37 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 18, ptr %protocol, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_key_haup_common.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_key_haup_common, %if.then102)) #10
          to label %if.end108 [label %if.then102], !srcloc !224

if.then102:                                       ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #12
  %rc103 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %38 = ptrtoint ptr %rc103 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rc103, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_key_haup_common.__UNIQUE_ID_ddebug291, ptr noundef %39, ptr noundef nonnull @.str.37, i32 noundef %conv61, i32 noundef %conv58, i32 noundef %conv56) #10
  br label %if.end108

if.end108:                                        ; preds = %if.then102, %if.else89, %if.then82, %if.then64
  %dev.0 = phi i32 [ %and69, %if.then82 ], [ %conv58, %if.then102 ], [ %and69, %if.then64 ], [ %conv58, %if.else89 ]
  %shl109 = shl nuw i32 %conv61, 16
  %shl110 = shl nuw nsw i32 %dev.0, 8
  %or111 = or i32 %shl110, %shl109
  %or112 = or i32 %or111, %conv56
  %40 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or112, ptr %scancode, align 4
  br label %cleanup115

cleanup115:                                       ; preds = %if.end108, %if.else.cleanup115_crit_edge, %do.end, %if.end24.cleanup115_crit_edge, %if.then1.cleanup115_crit_edge, %entry.cleanup115_crit_edge
  %retval.1 = phi i32 [ 1, %if.end108 ], [ -5, %entry.cleanup115_crit_edge ], [ 1, %do.end ], [ 0, %if.then1.cleanup115_crit_edge ], [ 0, %if.end24.cleanup115_crit_edge ], [ 0, %if.else.cleanup115_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ir_key_poll(ptr noundef %ir) unnamed_addr #2 align 64 {
entry:
  %protocol = alloca i32, align 4
  %scancode = alloca i32, align 4
  %toggle = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %protocol) #10
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %protocol, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scancode) #10
  %1 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %scancode, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %toggle) #10
  %2 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %toggle, align 1, !annotation !223
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_key_poll.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_key_poll, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !224

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rc3 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %3 = ptrtoint ptr %rc3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rc3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_key_poll.__UNIQUE_ID_ddebug300, ptr noundef %4, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %get_key = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 7
  %5 = ptrtoint ptr %get_key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_key, align 4
  %call4 = call i32 %6(ptr noundef %ir, ptr noundef nonnull %protocol, ptr noundef nonnull %scancode, ptr noundef nonnull %toggle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %if.end11

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %rc9 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %7 = ptrtoint ptr %rc9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rc9, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef %call4) #13
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool12.not = icmp eq i32 %call4, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %do.body14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body14:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_key_poll.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_key_poll, %if.then26)) #10
          to label %do.end31 [label %if.then26], !srcloc !224

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %rc27 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %9 = ptrtoint ptr %rc27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rc27, align 4
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %protocol, align 4
  %13 = ptrtoint ptr %scancode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scancode, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_key_poll.__UNIQUE_ID_ddebug301, ptr noundef %10, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.45, i32 noundef %12, i32 noundef %14) #10
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %do.body14
  %rc32 = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %15 = ptrtoint ptr %rc32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rc32, align 4
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %protocol, align 4
  %19 = ptrtoint ptr %scancode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %scancode, align 4
  %conv = zext i32 %20 to i64
  %21 = ptrtoint ptr %toggle to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %toggle, align 1
  call void @rc_keydown(ptr noundef %16, i32 noundef %18, i64 noundef %conv, i8 noundef zeroext %22) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.end11.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ %call4, %do.end8 ], [ 0, %do.end31 ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %toggle) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scancode) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %protocol) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_data_block(ptr nocapture noundef readonly %ir, i32 noundef %cmd, ptr noundef %code_block) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %csum = getelementptr inbounds %struct.code_block, ptr %code_block, i32 0, i32 6
  %1 = getelementptr inbounds i8, ptr %buf, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 -1, ptr %1, align 1
  br label %for.body

for.cond5.preheader:                              ; preds = %for.body
  %rc = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 2
  %tx_c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 8
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0154 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %p.0153 = phi ptr [ %code_block, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %p.0153, i32 1
  %3 = ptrtoint ptr %p.0153 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %p.0153, align 1
  %and = and i32 %i.0154, 1
  %arrayidx = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 6, i32 %and
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %xor141 = xor i8 %6, %4
  store i8 %xor141, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.0154, 1
  %cmp = icmp ult ptr %incdec.ptr, %csum
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond5.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond5:                                        ; preds = %do.end
  %add58 = add nuw nsw i32 %7, %i.1157
  %cmp6 = icmp ult i32 %add58, 96
  br i1 %cmp6, label %for.cond5.do.body_crit_edge, label %for.end59

for.cond5.do.body_crit_edge:                      ; preds = %for.cond5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %for.cond5.do.body_crit_edge, %for.cond5.preheader
  %i.1157 = phi i32 [ 0, %for.cond5.preheader ], [ %add58, %for.cond5.do.body_crit_edge ]
  %sub = sub nuw nsw i32 96, %i.1157
  %7 = call i32 @llvm.smin.i32(i32 %sub, i32 4)
  %8 = trunc i32 %i.1157 to i8
  %conv11 = add nuw nsw i8 %8, 1
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv11, ptr %buf, align 1
  %uglygep160 = getelementptr i8, ptr %code_block, i32 %i.1157
  %10 = call ptr @memcpy(ptr %0, ptr %uglygep160, i32 %7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_data_block.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_data_block, %if.then26)) #10
          to label %do.end [label %if.then26], !srcloc !224

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rc, align 4
  %add27 = add nuw nsw i32 %7, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_data_block.__UNIQUE_ID_ddebug302, ptr noundef %12, ptr noundef nonnull @.str.56, i32 noundef %add27, ptr noundef nonnull %buf) #10
  br label %do.end

do.end:                                           ; preds = %if.then26, %do.body
  %13 = ptrtoint ptr %tx_c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_c, align 4
  %add31 = add nuw nsw i32 %7, 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %buf, i32 noundef %add31, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add31)
  %cmp34.not = icmp eq i32 %call.i, %add31
  br i1 %cmp34.not, label %for.cond5, label %do.body37

do.body37:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_data_block.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_data_block, %if.then49)) #10
          to label %cleanup.thread [label %if.then49], !srcloc !224

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_data_block.__UNIQUE_ID_ddebug303, ptr noundef %16, ptr noundef nonnull @.str.57, i32 noundef %call.i) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then49, %do.body37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp55 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp55, i32 %call.i, i32 -5
  br label %cleanup99

for.end59:                                        ; preds = %for.cond5
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %buf, align 1
  %conv61 = trunc i32 %cmd to i8
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv61, ptr %0, align 1
  %19 = ptrtoint ptr %tx_c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_c, align 4
  %call.i147 = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i147)
  %cmp66.not = icmp eq i32 %call.i147, 2
  br i1 %cmp66.not, label %if.end80, label %do.end71

do.end71:                                         ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.57, i32 noundef %call.i147) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp74 = icmp slt i32 %call.i147, 0
  %spec.select142 = select i1 %cmp74, i32 %call.i147, i32 -5
  br label %cleanup99

if.end80:                                         ; preds = %for.end59
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 5000, i32 noundef 2) #10
  %23 = ptrtoint ptr %tx_c to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_c, align 4
  %call.i148 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %buf, i32 noundef 1, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i148)
  %cmp84.not = icmp eq i32 %call.i148, 1
  br i1 %cmp84.not, label %if.end80.cleanup99_crit_edge, label %do.end89

if.end80.cleanup99_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup99

do.end89:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.57, i32 noundef %call.i148) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp92 = icmp slt i32 %call.i148, 0
  %spec.select143 = select i1 %cmp92, i32 %call.i148, i32 -5
  br label %cleanup99

cleanup99:                                        ; preds = %do.end89, %if.end80.cleanup99_crit_edge, %do.end71, %cleanup.thread
  %retval.2 = phi i32 [ %spec.select142, %do.end71 ], [ %spec.select143, %do.end89 ], [ 0, %if.end80.cleanup99_crit_edge ], [ %spec.select, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #10
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zilog_ir_format(ptr noundef %rcdev, ptr nocapture noundef readonly %txbuf, i32 noundef %count, ptr nocapture noundef %code_block) unnamed_addr #2 align 64 {
entry:
  %codes = alloca [174 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rcdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 174, ptr nonnull %codes) #10
  %2 = call ptr @memset(ptr %codes, i32 255, i32 174)
  %duty_cycle = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %duty_cycle, align 4
  %mul = mul i32 %4, 18432000
  %div = udiv i32 %mul, 1000
  %carrier = getelementptr inbounds %struct.IR_i2c, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %carrier to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %carrier, align 4
  %div1284 = lshr i32 %6, 1
  %add = add nuw i32 %div, %div1284
  %div2 = udiv i32 %add, %6
  %conv = trunc i32 %div2 to i8
  %carrier_pulse = getelementptr inbounds %struct.code_block, ptr %code_block, i32 0, i32 2
  %7 = ptrtoint ptr %carrier_pulse to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %carrier_pulse, align 1
  %8 = load i32, ptr %duty_cycle, align 4
  %sub = sub i32 100, %8
  %mul5 = mul i32 %sub, 18432000
  %div6 = udiv i32 %mul5, 1000
  %9 = load i32, ptr %carrier, align 4
  %div10285 = lshr i32 %9, 1
  %add11 = add nuw i32 %div6, %div10285
  %div12 = udiv i32 %add11, %9
  %conv13 = trunc i32 %div12 to i8
  %carrier_space = getelementptr inbounds %struct.code_block, ptr %code_block, i32 0, i32 3
  %10 = ptrtoint ptr %carrier_space to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv13, ptr %carrier_space, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp380.not = icmp eq i32 %count, 0
  br i1 %cmp380.not, label %entry.for.cond54.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond54.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond54.preheader

for.body.lr.ph:                                   ; preds = %entry
  %space = getelementptr inbounds %struct.code_block, ptr %code_block, i32 0, i32 4
  %pulse = getelementptr inbounds %struct.code_block, ptr %code_block, i32 0, i32 1
  %arrayidx.i.1 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 1
  %arrayidx.i.2 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 2
  %arrayidx.i.3 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 3
  %arrayidx.i.4 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 4
  %arrayidx.i.5 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 5
  %arrayidx.i.6 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 6
  %arrayidx.i.7 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 7
  %arrayidx.i294.1 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 1, i32 1
  %arrayidx.i294.2 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 1, i32 2
  %arrayidx.i294.3 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 1, i32 3
  %arrayidx.i294.4 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 1, i32 4
  %arrayidx.i294.5 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 1, i32 5
  %arrayidx.i294.6 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 1, i32 6
  br label %for.body

for.cond54.preheader:                             ; preds = %for.inc.for.cond54.preheader_crit_edge, %entry.for.cond54.preheader_crit_edge
  %c.0.lcssa = phi i32 [ 0, %entry.for.cond54.preheader_crit_edge ], [ %c.1, %for.inc.for.cond54.preheader_crit_edge ]
  %p.0.lcssa = phi i32 [ 0, %entry.for.cond54.preheader_crit_edge ], [ %p.1, %for.inc.for.cond54.preheader_crit_edge ]
  %arrayidx59 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %arrayidx59, align 1
  %arrayidx62 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 0
  %13 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %arrayidx62, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %12)
  %cmp66 = icmp ugt i16 %14, %12
  %spec.select = zext i1 %cmp66 to i32
  %arrayidx59.1 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx59.1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx59.1, align 1
  %arrayidx62.1 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 %spec.select
  %17 = ptrtoint ptr %arrayidx62.1 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %arrayidx62.1, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %16)
  %cmp66.1 = icmp ugt i16 %18, %16
  %spec.select.1 = select i1 %cmp66.1, i32 2, i32 %spec.select
  %arrayidx59.2 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %arrayidx59.2 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %arrayidx59.2, align 1
  %arrayidx62.2 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 %spec.select.1
  %21 = ptrtoint ptr %arrayidx62.2 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %arrayidx62.2, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %20)
  %cmp66.2 = icmp ugt i16 %22, %20
  %spec.select.2 = select i1 %cmp66.2, i32 3, i32 %spec.select.1
  %arrayidx59.3 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %arrayidx59.3 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %arrayidx59.3, align 1
  %arrayidx62.3 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 %spec.select.2
  %25 = ptrtoint ptr %arrayidx62.3 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %arrayidx62.3, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %24)
  %cmp66.3 = icmp ugt i16 %26, %24
  %spec.select.3 = select i1 %cmp66.3, i32 4, i32 %spec.select.2
  %arrayidx59.4 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 5
  %27 = ptrtoint ptr %arrayidx59.4 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %arrayidx59.4, align 1
  %arrayidx62.4 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 %spec.select.3
  %29 = ptrtoint ptr %arrayidx62.4 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %arrayidx62.4, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %28)
  %cmp66.4 = icmp ugt i16 %30, %28
  %spec.select.4 = select i1 %cmp66.4, i32 5, i32 %spec.select.3
  %arrayidx59.5 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %arrayidx59.5 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %arrayidx59.5, align 1
  %arrayidx62.5 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 %spec.select.4
  %33 = ptrtoint ptr %arrayidx62.5 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %arrayidx62.5, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %32)
  %cmp66.5 = icmp ugt i16 %34, %32
  %spec.select.5 = select i1 %cmp66.5, i32 6, i32 %spec.select.4
  %arrayidx59.6 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 7
  %35 = ptrtoint ptr %arrayidx59.6 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %arrayidx59.6, align 1
  %arrayidx62.6 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 4, i32 %spec.select.5
  %37 = ptrtoint ptr %arrayidx62.6 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %arrayidx62.6, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %36)
  %cmp66.6 = icmp ugt i16 %38, %36
  %spec.select.6 = select i1 %cmp66.6, i32 7, i32 %spec.select.5
  %shl73 = shl i32 %p.0.lcssa, 4
  %or74 = or i32 %spec.select.6, %shl73
  %conv75 = trunc i32 %or74 to i8
  %inc76 = add nuw nsw i32 %c.0.lcssa, 1
  %arrayidx77 = getelementptr [174 x i8], ptr %codes, i32 0, i32 %c.0.lcssa
  %39 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv75, ptr %arrayidx77, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zilog_ir_format.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zilog_ir_format, %if.then84)) #10
          to label %do.end88 [label %if.then84], !srcloc !224

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0383 = phi i32 [ 0, %for.body.lr.ph ], [ %inc53, %for.inc.for.body_crit_edge ]
  %p.0382 = phi i32 [ 0, %for.body.lr.ph ], [ %p.1, %for.inc.for.body_crit_edge ]
  %c.0381 = phi i32 [ 0, %for.body.lr.ph ], [ %c.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 172, i32 %c.0381)
  %cmp15 = icmp ugt i32 %c.0381, 172
  br i1 %cmp15, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %rcdev, ptr noundef nonnull @.str.79) #13
  br label %cleanup200

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr i32, ptr %txbuf, i32 %i.0383
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 142220, i32 %41)
  %cmp17 = icmp ugt i32 %41, 142220
  br i1 %cmp17, label %if.end.cleanup200_crit_edge, label %if.end20

if.end.cleanup200_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup200

if.end20:                                         ; preds = %if.end
  %mul23 = mul nuw i32 %41, 18432
  %add27 = add nuw i32 %mul23, 20000
  %div28 = udiv i32 %add27, 40000
  %and = and i32 %i.0383, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv42 = trunc i32 %div28 to i16
  br i1 %tobool.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end20
  %42 = ptrtoint ptr %space to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %space, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %conv42)
  %cmp2.i = icmp eq i16 %43, %conv42
  br i1 %cmp2.i, label %if.then29.if.end38_crit_edge, label %if.else.i

if.then29.if.end38_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i = icmp eq i16 %43, 0
  br i1 %tobool.not.i, label %if.else.i.if.then5.i_crit_edge, label %for.inc.i

if.else.i.if.then5.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i.7.if.then5.i_crit_edge, %if.else.i.6.if.then5.i_crit_edge, %if.else.i.5.if.then5.i_crit_edge, %if.else.i.4.if.then5.i_crit_edge, %if.else.i.3.if.then5.i_crit_edge, %if.else.i.2.if.then5.i_crit_edge, %if.else.i.1.if.then5.i_crit_edge, %if.else.i.if.then5.i_crit_edge
  %i.019.i.lcssa400 = phi i32 [ 0, %if.else.i.if.then5.i_crit_edge ], [ 1, %if.else.i.1.if.then5.i_crit_edge ], [ 2, %if.else.i.2.if.then5.i_crit_edge ], [ 3, %if.else.i.3.if.then5.i_crit_edge ], [ 4, %if.else.i.4.if.then5.i_crit_edge ], [ 5, %if.else.i.5.if.then5.i_crit_edge ], [ 6, %if.else.i.6.if.then5.i_crit_edge ], [ 7, %if.else.i.7.if.then5.i_crit_edge ]
  %arrayidx.i.lcssa398 = phi ptr [ %space, %if.else.i.if.then5.i_crit_edge ], [ %arrayidx.i.1, %if.else.i.1.if.then5.i_crit_edge ], [ %arrayidx.i.2, %if.else.i.2.if.then5.i_crit_edge ], [ %arrayidx.i.3, %if.else.i.3.if.then5.i_crit_edge ], [ %arrayidx.i.4, %if.else.i.4.if.then5.i_crit_edge ], [ %arrayidx.i.5, %if.else.i.5.if.then5.i_crit_edge ], [ %arrayidx.i.6, %if.else.i.6.if.then5.i_crit_edge ], [ %arrayidx.i.7, %if.else.i.7.if.then5.i_crit_edge ]
  %44 = ptrtoint ptr %arrayidx.i.lcssa398 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %conv42, ptr %arrayidx.i.lcssa398, align 1
  br label %if.end38

for.inc.i:                                        ; preds = %if.else.i
  %45 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %conv42)
  %cmp2.i.1 = icmp eq i16 %46, %conv42
  br i1 %cmp2.i.1, label %for.inc.i.if.end38_crit_edge, label %if.else.i.1

for.inc.i.if.end38_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i.1 = icmp eq i16 %46, 0
  br i1 %tobool.not.i.1, label %if.else.i.1.if.then5.i_crit_edge, label %for.inc.i.1

if.else.i.1.if.then5.i_crit_edge:                 ; preds = %if.else.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

for.inc.i.1:                                      ; preds = %if.else.i.1
  %47 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %conv42)
  %cmp2.i.2 = icmp eq i16 %48, %conv42
  br i1 %cmp2.i.2, label %for.inc.i.1.if.end38_crit_edge, label %if.else.i.2

for.inc.i.1.if.end38_crit_edge:                   ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else.i.2:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool.not.i.2 = icmp eq i16 %48, 0
  br i1 %tobool.not.i.2, label %if.else.i.2.if.then5.i_crit_edge, label %for.inc.i.2

if.else.i.2.if.then5.i_crit_edge:                 ; preds = %if.else.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

for.inc.i.2:                                      ; preds = %if.else.i.2
  %49 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %arrayidx.i.3, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %conv42)
  %cmp2.i.3 = icmp eq i16 %50, %conv42
  br i1 %cmp2.i.3, label %for.inc.i.2.if.end38_crit_edge, label %if.else.i.3

for.inc.i.2.if.end38_crit_edge:                   ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else.i.3:                                      ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.not.i.3 = icmp eq i16 %50, 0
  br i1 %tobool.not.i.3, label %if.else.i.3.if.then5.i_crit_edge, label %for.inc.i.3

if.else.i.3.if.then5.i_crit_edge:                 ; preds = %if.else.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

for.inc.i.3:                                      ; preds = %if.else.i.3
  %51 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %arrayidx.i.4, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %conv42)
  %cmp2.i.4 = icmp eq i16 %52, %conv42
  br i1 %cmp2.i.4, label %for.inc.i.3.if.end38_crit_edge, label %if.else.i.4

for.inc.i.3.if.end38_crit_edge:                   ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else.i.4:                                      ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.not.i.4 = icmp eq i16 %52, 0
  br i1 %tobool.not.i.4, label %if.else.i.4.if.then5.i_crit_edge, label %for.inc.i.4

if.else.i.4.if.then5.i_crit_edge:                 ; preds = %if.else.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

for.inc.i.4:                                      ; preds = %if.else.i.4
  %53 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %arrayidx.i.5, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %conv42)
  %cmp2.i.5 = icmp eq i16 %54, %conv42
  br i1 %cmp2.i.5, label %for.inc.i.4.if.end38_crit_edge, label %if.else.i.5

for.inc.i.4.if.end38_crit_edge:                   ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else.i.5:                                      ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool.not.i.5 = icmp eq i16 %54, 0
  br i1 %tobool.not.i.5, label %if.else.i.5.if.then5.i_crit_edge, label %for.inc.i.5

if.else.i.5.if.then5.i_crit_edge:                 ; preds = %if.else.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

for.inc.i.5:                                      ; preds = %if.else.i.5
  %55 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %arrayidx.i.6, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %conv42)
  %cmp2.i.6 = icmp eq i16 %56, %conv42
  br i1 %cmp2.i.6, label %for.inc.i.5.if.end38_crit_edge, label %if.else.i.6

for.inc.i.5.if.end38_crit_edge:                   ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else.i.6:                                      ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool.not.i.6 = icmp eq i16 %56, 0
  br i1 %tobool.not.i.6, label %if.else.i.6.if.then5.i_crit_edge, label %for.inc.i.6

if.else.i.6.if.then5.i_crit_edge:                 ; preds = %if.else.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

for.inc.i.6:                                      ; preds = %if.else.i.6
  %57 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %arrayidx.i.7, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %conv42)
  %cmp2.i.7 = icmp eq i16 %58, %conv42
  br i1 %cmp2.i.7, label %for.inc.i.6.if.end38_crit_edge, label %if.else.i.7

for.inc.i.6.if.end38_crit_edge:                   ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else.i.7:                                      ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.not.i.7 = icmp eq i16 %58, 0
  br i1 %tobool.not.i.7, label %if.else.i.7.if.then5.i_crit_edge, label %do.end36

if.else.i.7.if.then5.i_crit_edge:                 ; preds = %if.else.i.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

do.end36:                                         ; preds = %if.else.i.7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %rcdev, ptr noundef nonnull @.str.82) #13
  br label %cleanup200

if.end38:                                         ; preds = %for.inc.i.6.if.end38_crit_edge, %for.inc.i.5.if.end38_crit_edge, %for.inc.i.4.if.end38_crit_edge, %for.inc.i.3.if.end38_crit_edge, %for.inc.i.2.if.end38_crit_edge, %for.inc.i.1.if.end38_crit_edge, %for.inc.i.if.end38_crit_edge, %if.then5.i, %if.then29.if.end38_crit_edge
  %i.019.i402 = phi i32 [ %i.019.i.lcssa400, %if.then5.i ], [ 0, %if.then29.if.end38_crit_edge ], [ 1, %for.inc.i.if.end38_crit_edge ], [ 2, %for.inc.i.1.if.end38_crit_edge ], [ 3, %for.inc.i.2.if.end38_crit_edge ], [ 4, %for.inc.i.3.if.end38_crit_edge ], [ 5, %for.inc.i.4.if.end38_crit_edge ], [ 6, %for.inc.i.5.if.end38_crit_edge ], [ 7, %for.inc.i.6.if.end38_crit_edge ]
  %shl = shl i32 %p.0382, 4
  %or = or i32 %i.019.i402, %shl
  %conv39 = trunc i32 %or to i8
  %inc = add nuw nsw i32 %c.0381, 1
  %arrayidx40 = getelementptr [174 x i8], ptr %codes, i32 0, i32 %c.0381
  %59 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv39, ptr %arrayidx40, align 1
  br label %for.inc

if.else:                                          ; preds = %if.end20
  %60 = ptrtoint ptr %pulse to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %pulse, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %conv42)
  %cmp2.i295 = icmp eq i16 %61, %conv42
  br i1 %cmp2.i295, label %if.else.for.inc_crit_edge, label %if.else.i298

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.i298:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.not.i297 = icmp eq i16 %61, 0
  br i1 %tobool.not.i297, label %if.else.i298.if.then5.i299_crit_edge, label %for.inc.i302

if.else.i298.if.then5.i299_crit_edge:             ; preds = %if.else.i298
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i299

if.then5.i299:                                    ; preds = %if.else.i298.6.if.then5.i299_crit_edge, %if.else.i298.5.if.then5.i299_crit_edge, %if.else.i298.4.if.then5.i299_crit_edge, %if.else.i298.3.if.then5.i299_crit_edge, %if.else.i298.2.if.then5.i299_crit_edge, %if.else.i298.1.if.then5.i299_crit_edge, %if.else.i298.if.then5.i299_crit_edge
  %i.019.i293.lcssa405 = phi i32 [ 0, %if.else.i298.if.then5.i299_crit_edge ], [ 1, %if.else.i298.1.if.then5.i299_crit_edge ], [ 2, %if.else.i298.2.if.then5.i299_crit_edge ], [ 3, %if.else.i298.3.if.then5.i299_crit_edge ], [ 4, %if.else.i298.4.if.then5.i299_crit_edge ], [ 5, %if.else.i298.5.if.then5.i299_crit_edge ], [ 6, %if.else.i298.6.if.then5.i299_crit_edge ]
  %arrayidx.i294.lcssa403 = phi ptr [ %pulse, %if.else.i298.if.then5.i299_crit_edge ], [ %arrayidx.i294.1, %if.else.i298.1.if.then5.i299_crit_edge ], [ %arrayidx.i294.2, %if.else.i298.2.if.then5.i299_crit_edge ], [ %arrayidx.i294.3, %if.else.i298.3.if.then5.i299_crit_edge ], [ %arrayidx.i294.4, %if.else.i298.4.if.then5.i299_crit_edge ], [ %arrayidx.i294.5, %if.else.i298.5.if.then5.i299_crit_edge ], [ %arrayidx.i294.6, %if.else.i298.6.if.then5.i299_crit_edge ]
  %62 = ptrtoint ptr %arrayidx.i294.lcssa403 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %conv42, ptr %arrayidx.i294.lcssa403, align 1
  br label %for.inc

for.inc.i302:                                     ; preds = %if.else.i298
  %63 = ptrtoint ptr %arrayidx.i294.1 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %arrayidx.i294.1, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %conv42)
  %cmp2.i295.1 = icmp eq i16 %64, %conv42
  br i1 %cmp2.i295.1, label %for.inc.i302.for.inc_crit_edge, label %if.else.i298.1

for.inc.i302.for.inc_crit_edge:                   ; preds = %for.inc.i302
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.i298.1:                                   ; preds = %for.inc.i302
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not.i297.1 = icmp eq i16 %64, 0
  br i1 %tobool.not.i297.1, label %if.else.i298.1.if.then5.i299_crit_edge, label %for.inc.i302.1

if.else.i298.1.if.then5.i299_crit_edge:           ; preds = %if.else.i298.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i299

for.inc.i302.1:                                   ; preds = %if.else.i298.1
  %65 = ptrtoint ptr %arrayidx.i294.2 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %arrayidx.i294.2, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %66, i16 %conv42)
  %cmp2.i295.2 = icmp eq i16 %66, %conv42
  br i1 %cmp2.i295.2, label %for.inc.i302.1.for.inc_crit_edge, label %if.else.i298.2

for.inc.i302.1.for.inc_crit_edge:                 ; preds = %for.inc.i302.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.i298.2:                                   ; preds = %for.inc.i302.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool.not.i297.2 = icmp eq i16 %66, 0
  br i1 %tobool.not.i297.2, label %if.else.i298.2.if.then5.i299_crit_edge, label %for.inc.i302.2

if.else.i298.2.if.then5.i299_crit_edge:           ; preds = %if.else.i298.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i299

for.inc.i302.2:                                   ; preds = %if.else.i298.2
  %67 = ptrtoint ptr %arrayidx.i294.3 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %arrayidx.i294.3, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %conv42)
  %cmp2.i295.3 = icmp eq i16 %68, %conv42
  br i1 %cmp2.i295.3, label %for.inc.i302.2.for.inc_crit_edge, label %if.else.i298.3

for.inc.i302.2.for.inc_crit_edge:                 ; preds = %for.inc.i302.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.i298.3:                                   ; preds = %for.inc.i302.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool.not.i297.3 = icmp eq i16 %68, 0
  br i1 %tobool.not.i297.3, label %if.else.i298.3.if.then5.i299_crit_edge, label %for.inc.i302.3

if.else.i298.3.if.then5.i299_crit_edge:           ; preds = %if.else.i298.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i299

for.inc.i302.3:                                   ; preds = %if.else.i298.3
  %69 = ptrtoint ptr %arrayidx.i294.4 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %arrayidx.i294.4, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %conv42)
  %cmp2.i295.4 = icmp eq i16 %70, %conv42
  br i1 %cmp2.i295.4, label %for.inc.i302.3.for.inc_crit_edge, label %if.else.i298.4

for.inc.i302.3.for.inc_crit_edge:                 ; preds = %for.inc.i302.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.i298.4:                                   ; preds = %for.inc.i302.3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool.not.i297.4 = icmp eq i16 %70, 0
  br i1 %tobool.not.i297.4, label %if.else.i298.4.if.then5.i299_crit_edge, label %for.inc.i302.4

if.else.i298.4.if.then5.i299_crit_edge:           ; preds = %if.else.i298.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i299

for.inc.i302.4:                                   ; preds = %if.else.i298.4
  %71 = ptrtoint ptr %arrayidx.i294.5 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %arrayidx.i294.5, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %72, i16 %conv42)
  %cmp2.i295.5 = icmp eq i16 %72, %conv42
  br i1 %cmp2.i295.5, label %for.inc.i302.4.for.inc_crit_edge, label %if.else.i298.5

for.inc.i302.4.for.inc_crit_edge:                 ; preds = %for.inc.i302.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.i298.5:                                   ; preds = %for.inc.i302.4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool.not.i297.5 = icmp eq i16 %72, 0
  br i1 %tobool.not.i297.5, label %if.else.i298.5.if.then5.i299_crit_edge, label %for.inc.i302.5

if.else.i298.5.if.then5.i299_crit_edge:           ; preds = %if.else.i298.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i299

for.inc.i302.5:                                   ; preds = %if.else.i298.5
  %73 = ptrtoint ptr %arrayidx.i294.6 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %arrayidx.i294.6, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %74, i16 %conv42)
  %cmp2.i295.6 = icmp eq i16 %74, %conv42
  br i1 %cmp2.i295.6, label %for.inc.i302.5.for.inc_crit_edge, label %if.else.i298.6

for.inc.i302.5.for.inc_crit_edge:                 ; preds = %for.inc.i302.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.i298.6:                                   ; preds = %for.inc.i302.5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool.not.i297.6 = icmp eq i16 %74, 0
  br i1 %tobool.not.i297.6, label %if.else.i298.6.if.then5.i299_crit_edge, label %do.end49

if.else.i298.6.if.then5.i299_crit_edge:           ; preds = %if.else.i298.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i299

do.end49:                                         ; preds = %if.else.i298.6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %rcdev, ptr noundef nonnull @.str.85) #13
  br label %cleanup200

for.inc:                                          ; preds = %for.inc.i302.5.for.inc_crit_edge, %for.inc.i302.4.for.inc_crit_edge, %for.inc.i302.3.for.inc_crit_edge, %for.inc.i302.2.for.inc_crit_edge, %for.inc.i302.1.for.inc_crit_edge, %for.inc.i302.for.inc_crit_edge, %if.then5.i299, %if.else.for.inc_crit_edge, %if.end38
  %c.1 = phi i32 [ %inc, %if.end38 ], [ %c.0381, %if.else.for.inc_crit_edge ], [ %c.0381, %for.inc.i302.for.inc_crit_edge ], [ %c.0381, %for.inc.i302.1.for.inc_crit_edge ], [ %c.0381, %for.inc.i302.2.for.inc_crit_edge ], [ %c.0381, %for.inc.i302.3.for.inc_crit_edge ], [ %c.0381, %for.inc.i302.4.for.inc_crit_edge ], [ %c.0381, %for.inc.i302.5.for.inc_crit_edge ], [ %c.0381, %if.then5.i299 ]
  %p.1 = phi i32 [ %p.0382, %if.end38 ], [ 0, %if.else.for.inc_crit_edge ], [ 1, %for.inc.i302.for.inc_crit_edge ], [ 2, %for.inc.i302.1.for.inc_crit_edge ], [ 3, %for.inc.i302.2.for.inc_crit_edge ], [ 4, %for.inc.i302.3.for.inc_crit_edge ], [ 5, %for.inc.i302.4.for.inc_crit_edge ], [ 6, %for.inc.i302.5.for.inc_crit_edge ], [ %i.019.i293.lcssa405, %if.then5.i299 ]
  %inc53 = add nuw i32 %i.0383, 1
  %exitcond.not = icmp eq i32 %inc53, %count
  br i1 %exitcond.not, label %for.inc.for.cond54.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.cond54.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond54.preheader

if.then84:                                        ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zilog_ir_format.__UNIQUE_ID_ddebug304, ptr noundef %rcdev, ptr noundef nonnull @.str.87, i32 noundef %inc76) #10
  br label %do.end88

do.end88:                                         ; preds = %if.then84, %for.cond54.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %c.0.lcssa)
  %cmp91387 = icmp ugt i32 %c.0.lcssa, 1
  br i1 %cmp91387, label %for.body93.lr.ph, label %do.end88.do.body167_crit_edge

do.end88.do.body167_crit_edge:                    ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body167

for.body93.lr.ph:                                 ; preds = %do.end88
  %div89410.lhs.trunc = trunc i32 %inc76 to i8
  %div89410411 = udiv i8 %div89410.lhs.trunc, 3
  %div89410.zext = zext i8 %div89410411 to i32
  br label %for.body93

for.body93:                                       ; preds = %for.inc111.for.body93_crit_edge, %for.body93.lr.ph
  %rep.0388 = phi i32 [ %div89410.zext, %for.body93.lr.ph ], [ %dec.pre-phi, %for.inc111.for.body93_crit_edge ]
  %mul94.neg = mul i32 %rep.0388, -3
  %sub95 = add i32 %mul94.neg, %inc76
  %arrayidx96 = getelementptr [174 x i8], ptr %codes, i32 0, i32 %sub95
  %mul97.neg = mul i32 %rep.0388, -2
  %sub98 = add i32 %mul97.neg, %inc76
  %arrayidx99 = getelementptr [174 x i8], ptr %codes, i32 0, i32 %sub98
  %bcmp = call i32 @bcmp(ptr %arrayidx96, ptr %arrayidx99, i32 %rep.0388) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool101.not = icmp eq i32 %bcmp, 0
  br i1 %tobool101.not, label %land.lhs.true, label %for.body93.for.inc111_crit_edge

for.body93.for.inc111_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add nsw i32 %rep.0388, -1
  br label %for.inc111

land.lhs.true:                                    ; preds = %for.body93
  %sub102 = sub i32 %inc76, %rep.0388
  %arrayidx103 = getelementptr [174 x i8], ptr %codes, i32 0, i32 %sub102
  %75 = add nsw i32 %rep.0388, -1
  %uglygep13.i = getelementptr i8, ptr %arrayidx99, i32 %75
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %land.lhs.true
  %a.addr.0.i = phi ptr [ %arrayidx103, %land.lhs.true ], [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ]
  %b.addr.0.i = phi ptr [ %arrayidx99, %land.lhs.true ], [ %incdec.ptr1.i, %while.body.i.while.cond.i_crit_edge ]
  %count.addr.0.i = phi i32 [ %rep.0388, %land.lhs.true ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add i32 %count.addr.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i305 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i305, label %cmp_no_trail.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr i8, ptr %a.addr.0.i, i32 1
  %76 = ptrtoint ptr %a.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %a.addr.0.i, align 1
  %incdec.ptr1.i = getelementptr i8, ptr %b.addr.0.i, i32 1
  %78 = ptrtoint ptr %b.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %b.addr.0.i, align 1
  %cmp.not.i = icmp eq i8 %77, %79
  br i1 %cmp.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.for.inc111_crit_edge

while.body.i.for.inc111_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc111

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

cmp_no_trail.exit:                                ; preds = %while.cond.i
  %80 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx77, align 1
  %82 = ptrtoint ptr %uglygep13.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %uglygep13.i, align 1
  %84 = xor i8 %83, %81
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %84)
  %tobool108.not = icmp ult i8 %84, 16
  br i1 %tobool108.not, label %if.then114.critedge, label %cmp_no_trail.exit.for.inc111_crit_edge

cmp_no_trail.exit.for.inc111_crit_edge:           ; preds = %cmp_no_trail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc111

for.inc111:                                       ; preds = %cmp_no_trail.exit.for.inc111_crit_edge, %while.body.i.for.inc111_crit_edge, %for.body93.for.inc111_crit_edge
  %dec.pre-phi = phi i32 [ %.pre, %for.body93.for.inc111_crit_edge ], [ %75, %cmp_no_trail.exit.for.inc111_crit_edge ], [ %75, %while.body.i.for.inc111_crit_edge ]
  %cmp91 = icmp sgt i32 %dec.pre-phi, 0
  br i1 %cmp91, label %for.inc111.for.body93_crit_edge, label %if.else158

for.inc111.for.body93_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body93

if.then114.critedge:                              ; preds = %cmp_no_trail.exit
  %sub117 = sub i32 58, %rep.0388
  call void @__sanitizer_cov_trace_cmp4(i32 %sub95, i32 %sub117)
  %cmp118.not = icmp ult i32 %sub95, %sub117
  br i1 %cmp118.not, label %do.body126, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then114.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %rcdev, ptr noundef nonnull @.str.79) #13
  br label %cleanup200

do.body126:                                       ; preds = %if.then114.critedge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zilog_ir_format.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zilog_ir_format, %if.then138)) #10
          to label %do.end142 [label %if.then138], !srcloc !224

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zilog_ir_format.__UNIQUE_ID_ddebug305, ptr noundef %rcdev, ptr noundef nonnull @.str.90, i32 noundef %rep.0388) #10
  br label %do.end142

do.end142:                                        ; preds = %if.then138, %do.body126
  %codes143 = getelementptr inbounds %struct.code_block, ptr %code_block, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub95)
  %tobool.not15.i = icmp eq i32 %sub95, 0
  br i1 %tobool.not15.i, label %do.end142.copy_codes.exit_crit_edge, label %do.end142.while.body.i310_crit_edge

do.end142.while.body.i310_crit_edge:              ; preds = %do.end142
  br label %while.body.i310

do.end142.copy_codes.exit_crit_edge:              ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_codes.exit

while.body.i310:                                  ; preds = %while.body.i310.while.body.i310_crit_edge, %do.end142.while.body.i310_crit_edge
  %last.019.i = phi i8 [ %87, %while.body.i310.while.body.i310_crit_edge ], [ -1, %do.end142.while.body.i310_crit_edge ]
  %count.addr.018.i = phi i32 [ %dec.i307, %while.body.i310.while.body.i310_crit_edge ], [ %sub95, %do.end142.while.body.i310_crit_edge ]
  %src.addr.017.i = phi ptr [ %incdec.ptr.i308, %while.body.i310.while.body.i310_crit_edge ], [ %codes, %do.end142.while.body.i310_crit_edge ]
  %dst.addr.016.i = phi ptr [ %dst.addr.1.i, %while.body.i310.while.body.i310_crit_edge ], [ %codes143, %do.end142.while.body.i310_crit_edge ]
  %dec.i307 = add i32 %count.addr.018.i, -1
  %incdec.ptr.i308 = getelementptr i8, ptr %src.addr.017.i, i32 1
  %85 = ptrtoint ptr %src.addr.017.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %src.addr.017.i, align 1
  %87 = and i8 %86, -16
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %last.019.i)
  %cmp.i = icmp eq i8 %87, %last.019.i
  %and4.i = and i8 %86, 15
  %or.i = or i8 %and4.i, 112
  %storemerge.i = select i1 %cmp.i, i8 %or.i, i8 %86
  %88 = ptrtoint ptr %dst.addr.016.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %storemerge.i, ptr %dst.addr.016.i, align 1
  %dst.addr.1.i = getelementptr i8, ptr %dst.addr.016.i, i32 1
  %tobool.not.i309 = icmp eq i32 %dec.i307, 0
  br i1 %tobool.not.i309, label %while.body.i310.copy_codes.exit_crit_edge, label %while.body.i310.while.body.i310_crit_edge

while.body.i310.while.body.i310_crit_edge:        ; preds = %while.body.i310
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i310

while.body.i310.copy_codes.exit_crit_edge:        ; preds = %while.body.i310
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_codes.exit

copy_codes.exit:                                  ; preds = %while.body.i310.copy_codes.exit_crit_edge, %do.end142.copy_codes.exit_crit_edge
  %arrayidx147 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 5, i32 %sub95
  %89 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -126, ptr %arrayidx147, align 1
  %add.ptr = getelementptr i8, ptr %codes143, i32 %sub95
  br label %while.body.i325

while.body.i325:                                  ; preds = %while.body.i325.while.body.i325_crit_edge, %copy_codes.exit
  %last.019.i313 = phi i8 [ %92, %while.body.i325.while.body.i325_crit_edge ], [ -1, %copy_codes.exit ]
  %count.addr.018.i314 = phi i32 [ %dec.i317, %while.body.i325.while.body.i325_crit_edge ], [ %rep.0388, %copy_codes.exit ]
  %src.addr.017.i315 = phi ptr [ %incdec.ptr.i318, %while.body.i325.while.body.i325_crit_edge ], [ %arrayidx96, %copy_codes.exit ]
  %dst.addr.016.i316.pn = phi ptr [ %dst.addr.016.i316, %while.body.i325.while.body.i325_crit_edge ], [ %add.ptr, %copy_codes.exit ]
  %dst.addr.016.i316 = getelementptr i8, ptr %dst.addr.016.i316.pn, i32 1
  %dec.i317 = add i32 %count.addr.018.i314, -1
  %incdec.ptr.i318 = getelementptr i8, ptr %src.addr.017.i315, i32 1
  %90 = ptrtoint ptr %src.addr.017.i315 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %src.addr.017.i315, align 1
  %92 = and i8 %91, -16
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %last.019.i313)
  %cmp.i319 = icmp eq i8 %92, %last.019.i313
  %and4.i320 = and i8 %91, 15
  %or.i321 = or i8 %and4.i320, 112
  %storemerge.i322 = select i1 %cmp.i319, i8 %or.i321, i8 %91
  %93 = ptrtoint ptr %dst.addr.016.i316 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %storemerge.i322, ptr %dst.addr.016.i316, align 1
  %tobool.not.i324 = icmp eq i32 %dec.i317, 0
  br i1 %tobool.not.i324, label %cleanup, label %while.body.i325.while.body.i325_crit_edge

while.body.i325.while.body.i325_crit_edge:        ; preds = %while.body.i325
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i325

cleanup:                                          ; preds = %while.body.i325
  call void @__sanitizer_cov_trace_pc() #12
  %add153 = add i32 %rep.0388, 1
  %add154 = add i32 %add153, %sub95
  %inc156 = add i32 %add154, 1
  br label %if.end194

if.else158:                                       ; preds = %for.inc111
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %c.0.lcssa)
  %cmp159 = icmp ugt i32 %c.0.lcssa, 56
  br i1 %cmp159, label %do.end164, label %if.else158.do.body167_crit_edge

if.else158.do.body167_crit_edge:                  ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body167

do.end164:                                        ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %rcdev, ptr noundef nonnull @.str.79) #13
  br label %cleanup200

do.body167:                                       ; preds = %if.else158.do.body167_crit_edge, %do.end88.do.body167_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zilog_ir_format.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zilog_ir_format, %if.then179)) #10
          to label %do.end183 [label %if.then179], !srcloc !224

if.then179:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zilog_ir_format.__UNIQUE_ID_ddebug306, ptr noundef %rcdev, ptr noundef nonnull @.str.93) #10
  br label %do.end183

do.end183:                                        ; preds = %if.then179, %do.body167
  %codes184 = getelementptr inbounds %struct.code_block, ptr %code_block, i32 0, i32 5
  %94 = ptrtoint ptr %codes184 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -126, ptr %codes184, align 1
  %add.ptr188 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 5, i32 1
  br label %while.body.i341

while.body.i341:                                  ; preds = %while.body.i341.while.body.i341_crit_edge, %do.end183
  %last.019.i329 = phi i8 [ %97, %while.body.i341.while.body.i341_crit_edge ], [ -1, %do.end183 ]
  %count.addr.018.i330 = phi i32 [ %dec.i333, %while.body.i341.while.body.i341_crit_edge ], [ %inc76, %do.end183 ]
  %src.addr.017.i331 = phi ptr [ %incdec.ptr.i334, %while.body.i341.while.body.i341_crit_edge ], [ %codes, %do.end183 ]
  %dst.addr.016.i332 = phi ptr [ %dst.addr.1.i339, %while.body.i341.while.body.i341_crit_edge ], [ %add.ptr188, %do.end183 ]
  %dec.i333 = add i32 %count.addr.018.i330, -1
  %incdec.ptr.i334 = getelementptr i8, ptr %src.addr.017.i331, i32 1
  %95 = ptrtoint ptr %src.addr.017.i331 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %src.addr.017.i331, align 1
  %97 = and i8 %96, -16
  call void @__sanitizer_cov_trace_cmp1(i8 %97, i8 %last.019.i329)
  %cmp.i335 = icmp eq i8 %97, %last.019.i329
  %and4.i336 = and i8 %96, 15
  %or.i337 = or i8 %and4.i336, 112
  %storemerge.i338 = select i1 %cmp.i335, i8 %or.i337, i8 %96
  %98 = ptrtoint ptr %dst.addr.016.i332 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %storemerge.i338, ptr %dst.addr.016.i332, align 1
  %dst.addr.1.i339 = getelementptr i8, ptr %dst.addr.016.i332, i32 1
  %tobool.not.i340 = icmp eq i32 %dec.i333, 0
  br i1 %tobool.not.i340, label %copy_codes.exit343, label %while.body.i341.while.body.i341_crit_edge

while.body.i341.while.body.i341_crit_edge:        ; preds = %while.body.i341
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i341

copy_codes.exit343:                               ; preds = %while.body.i341
  call void @__sanitizer_cov_trace_pc() #12
  %inc190 = add i32 %c.0.lcssa, 2
  %inc192 = add i32 %c.0.lcssa, 3
  br label %if.end194

if.end194:                                        ; preds = %copy_codes.exit343, %cleanup
  %add154.sink = phi i32 [ %add154, %cleanup ], [ %inc190, %copy_codes.exit343 ]
  %.sink = phi i8 [ -64, %cleanup ], [ -60, %copy_codes.exit343 ]
  %c.3 = phi i32 [ %inc156, %cleanup ], [ %inc192, %copy_codes.exit343 ]
  %arrayidx157 = getelementptr %struct.code_block, ptr %code_block, i32 0, i32 5, i32 %add154.sink
  %99 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %.sink, ptr %arrayidx157, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %c.3)
  %cmp195390 = icmp ult i32 %c.3, 61
  br i1 %cmp195390, label %while.body.preheader, label %if.end194.cleanup200_crit_edge

if.end194.cleanup200_crit_edge:                   ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup200

while.body.preheader:                             ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  %100 = add nuw nsw i32 %c.3, 33
  %uglygep = getelementptr i8, ptr %code_block, i32 %100
  %101 = sub nuw nsw i32 61, %c.3
  %102 = call ptr @memset(ptr %uglygep, i32 131, i32 %101)
  br label %cleanup200

cleanup200:                                       ; preds = %while.body.preheader, %if.end194.cleanup200_crit_edge, %do.end164, %cleanup.thread, %do.end49, %do.end36, %if.end.cleanup200_crit_edge, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ -22, %do.end36 ], [ -22, %do.end49 ], [ -22, %do.end164 ], [ -22, %cleanup.thread ], [ 0, %if.end194.cleanup200_crit_edge ], [ 0, %while.body.preheader ], [ -22, %if.end.cleanup200_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 174, ptr nonnull %codes) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !162, !163, !165, !167, !168, !170, !171, !172, !174, !175, !177, !178, !179, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210}
!llvm.named.register.sp = !{!212}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = !{ptr @__param_enable_hdpvr, !1, !"__param_enable_hdpvr", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 57, i32 1}
!2 = !{ptr @__UNIQUE_ID_enable_hdpvrtype288, !1, !"__UNIQUE_ID_enable_hdpvrtype288", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_ir_kbd_i2c__312_950_ir_kbd_driver_init6, !4, !"__initcall__kmod_ir_kbd_i2c__312_950_ir_kbd_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 950, i32 1}
!5 = !{ptr @__exitcall_ir_kbd_driver_exit, !4, !"__exitcall_ir_kbd_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author313, !7, !"__UNIQUE_ID_author313", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 954, i32 1}
!8 = !{ptr @__UNIQUE_ID_description314, !9, !"__UNIQUE_ID_description314", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 955, i32 1}
!10 = !{ptr @__UNIQUE_ID_file315, !11, !"__UNIQUE_ID_file315", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 956, i32 1}
!12 = !{ptr @__UNIQUE_ID_license316, !11, !"__UNIQUE_ID_license316", i1 false, i1 false}
!13 = !{ptr @enable_hdpvr, !14, !"enable_hdpvr", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 56, i32 13}
!15 = !{ptr @__param_str_enable_hdpvr, !1, !"__param_str_enable_hdpvr", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 943, i32 13}
!18 = !{ptr @ir_kbd_driver, !19, !"ir_kbd_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 941, i32 26}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 736, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ir_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ir_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 750, i32 17}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 753, i32 17}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 758, i32 17}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 761, i32 17}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 764, i32 17}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 770, i32 17}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 773, i32 17}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 776, i32 17}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 779, i32 17}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 782, i32 17}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 786, i32 17}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 789, i32 17}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 853, i32 3}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ir_probe._entry.18, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ir_probe._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 861, i32 39}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 882, i32 21}
!61 = !{ptr @ir_probe.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 884, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ir_probe.__key.25, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 886, i32 2}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ir_probe.__key.27, !65, !"__key", i1 false, i1 false}
!68 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 891, i32 4}
!71 = !{ptr @ir_probe._entry.29, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ir_probe._entry_ptr.31, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 167, i32 3}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @get_key_pixelview.__UNIQUE_ID_ddebug292, !74, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 96, i32 3}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @get_key_haup_common.__UNIQUE_ID_ddebug289, !78, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 114, i32 4}
!83 = !{ptr @get_key_haup_common.__UNIQUE_ID_ddebug290, !82, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 120, i32 4}
!86 = !{ptr @get_key_haup_common.__UNIQUE_ID_ddebug291, !85, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 216, i32 3}
!89 = !{ptr @get_key_knc1.__UNIQUE_ID_ddebug295, !88, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 226, i32 2}
!92 = !{ptr @get_key_knc1.__UNIQUE_ID_ddebug296, !91, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 188, i32 3}
!95 = !{ptr @get_key_fusionhdtv.__UNIQUE_ID_ddebug293, !94, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 195, i32 3}
!98 = !{ptr @get_key_fusionhdtv.__UNIQUE_ID_ddebug294, !97, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 251, i32 3}
!101 = !{ptr @get_key_avermedia_cardbus.__UNIQUE_ID_ddebug297, !100, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!102 = !{ptr @get_key_avermedia_cardbus.__UNIQUE_ID_ddebug298, !103, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 261, i32 3}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 268, i32 2}
!106 = !{ptr @get_key_avermedia_cardbus.__UNIQUE_ID_ddebug299, !105, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 270, i32 3}
!109 = !{ptr @get_key_avermedia_cardbus._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @get_key_avermedia_cardbus._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 292, i32 2}
!113 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ir_key_poll.__UNIQUE_ID_ddebug300, !112, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 295, i32 3}
!117 = !{ptr @ir_key_poll._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ir_key_poll._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 300, i32 3}
!121 = !{ptr @ir_key_poll.__UNIQUE_ID_ddebug301, !120, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 436, i32 3}
!124 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @zilog_init._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @zilog_init._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 441, i32 2}
!129 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @zilog_init._entry.51, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @zilog_init._entry_ptr.54, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 393, i32 3}
!134 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @send_data_block.__UNIQUE_ID_ddebug302, !133, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 396, i32 4}
!138 = !{ptr @send_data_block.__UNIQUE_ID_ddebug303, !137, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!139 = !{ptr @send_data_block._entry, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 407, i32 3}
!141 = !{ptr @send_data_block._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @send_data_block._entry.58, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 415, i32 3}
!144 = !{ptr @send_data_block._entry_ptr.59, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 629, i32 3}
!147 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @zilog_tx._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @zilog_tx._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 633, i32 2}
!152 = !{ptr @zilog_tx.__UNIQUE_ID_ddebug307, !151, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 636, i32 3}
!155 = !{ptr @zilog_tx._entry.63, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @zilog_tx._entry_ptr.65, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @zilog_tx._entry.66, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 647, i32 3}
!159 = !{ptr @zilog_tx._entry_ptr.67, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 653, i32 2}
!162 = !{ptr @zilog_tx.__UNIQUE_ID_ddebug308, !161, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 662, i32 3}
!165 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 667, i32 3}
!167 = !{ptr @zilog_tx.__UNIQUE_ID_ddebug310, !166, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!168 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 673, i32 3}
!170 = !{ptr @zilog_tx._entry.70, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @zilog_tx._entry_ptr.72, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @zilog_tx._entry.73, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 683, i32 3}
!174 = !{ptr @zilog_tx._entry_ptr.74, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.76, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 687, i32 3}
!177 = !{ptr @zilog_tx._entry.75, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @zilog_tx._entry_ptr.77, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.78, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 692, i32 2}
!181 = !{ptr @zilog_tx.__UNIQUE_ID_ddebug311, !180, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!182 = !{ptr @.str.79, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 511, i32 4}
!184 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @zilog_ir_format._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @zilog_ir_format._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.82, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 528, i32 5}
!189 = !{ptr @zilog_ir_format._entry.81, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @zilog_ir_format._entry_ptr.83, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.85, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 538, i32 5}
!193 = !{ptr @zilog_ir_format._entry.84, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @zilog_ir_format._entry_ptr.86, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.87, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 555, i32 2}
!197 = !{ptr @zilog_ir_format.__UNIQUE_ID_ddebug304, !196, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!198 = !{ptr @zilog_ir_format._entry.88, !199, !"_entry", i1 false, i1 false}
!199 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 577, i32 4}
!200 = !{ptr @zilog_ir_format._entry_ptr.89, !199, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 581, i32 3}
!203 = !{ptr @zilog_ir_format.__UNIQUE_ID_ddebug305, !202, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!204 = !{ptr @zilog_ir_format._entry.91, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 590, i32 4}
!206 = !{ptr @zilog_ir_format._entry_ptr.92, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.93, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 594, i32 3}
!209 = !{ptr @zilog_ir_format.__UNIQUE_ID_ddebug306, !208, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!210 = !{ptr @ir_kbd_id, !211, !"ir_kbd_id", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/ir-kbd-i2c.c", i32 931, i32 35}
!212 = !{!"sp"}
!213 = !{i32 1, !"wchar_size", i32 2}
!214 = !{i32 1, !"min_enum_size", i32 4}
!215 = !{i32 8, !"branch-target-enforcement", i32 0}
!216 = !{i32 8, !"sign-return-address", i32 0}
!217 = !{i32 8, !"sign-return-address-all", i32 0}
!218 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!219 = !{i32 7, !"uwtable", i32 1}
!220 = !{i32 7, !"frame-pointer", i32 2}
!221 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!222 = !{i8 0, i8 2}
!223 = !{!"auto-init"}
!224 = !{i64 2148987137, i64 2148987142, i64 2148987155, i64 2148987199, i64 2148987233, i64 2148987254}
!225 = !{i64 2155804503}
