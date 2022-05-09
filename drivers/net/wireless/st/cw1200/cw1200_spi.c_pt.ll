; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/st/cw1200/cw1200_spi.c_pt.bc'
source_filename = "../drivers/net/wireless/st/cw1200/cw1200_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwbus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.cw1200_platform_data_spi = type { i8, i16, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.hwbus_priv = type { ptr, ptr, ptr, %struct.spinlock, %struct.wait_queue_head, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.83, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__UNIQUE_ID_author350 = internal constant [59 x i8] c"cw1200_wlan_spi.author=Solomon Peachy <speachy@sagrad.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description351 = internal constant [67 x i8] c"cw1200_wlan_spi.description=mac80211 ST-Ericsson CW1200 SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [68 x i8] c"cw1200_wlan_spi.file=drivers/net/wireless/st/cw1200/cw1200_wlan_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [28 x i8] c"cw1200_wlan_spi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias354 = internal constant [42 x i8] c"cw1200_wlan_spi.alias=spi:cw1200_wlan_spi\00", section ".modinfo", align 1
@__initcall__kmod_cw1200_wlan_spi__359_464_spi_driver_init6 = internal global ptr @spi_driver_init, section ".initcall6.init", align 4
@spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @cw1200_spi_probe, ptr @cw1200_spi_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cw1200_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_spi_driver_exit = internal global ptr @spi_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cw1200_wlan_spi\00", [16 x i8] zeroinitializer }, align 32
@cw1200_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cw1200_spi_suspend, ptr null, ptr @cw1200_spi_suspend, ptr null, ptr @cw1200_spi_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cw1200_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016cw1200_wlan_spi: Probe called (CS %d M %d BPW %d CLK %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cw1200_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/st/cw1200/cw1200_spi.c\00", [52 x i8] zeroinitializer }, align 32
@cw1200_spi_probe._entry_ptr = internal global ptr @cw1200_spi_probe._entry, section ".printk_index", align 4
@cw1200_spi_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013spi_on() failed!\0A\00", [44 x i8] zeroinitializer }, align 32
@cw1200_spi_probe._entry_ptr.6 = internal global ptr @cw1200_spi_probe._entry.4, section ".printk_index", align 4
@cw1200_spi_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013spi_setup() failed!\0A\00", [41 x i8] zeroinitializer }, align 32
@cw1200_spi_probe._entry_ptr.9 = internal global ptr @cw1200_spi_probe._entry.7, section ".printk_index", align 4
@cw1200_spi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Can't allocate SPI hwbus_priv.\00", [63 x i8] zeroinitializer }, align 32
@cw1200_spi_probe._entry_ptr.12 = internal global ptr @cw1200_spi_probe._entry.10, section ".printk_index", align 4
@cw1200_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&self->lock\00", [20 x i8] zeroinitializer }, align 32
@cw1200_spi_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&self->wq\00", [22 x i8] zeroinitializer }, align 32
@cw1200_spi_hwbus_ops = internal constant { %struct.hwbus_ops, [40 x i8] } { %struct.hwbus_ops { ptr @cw1200_spi_memcpy_fromio, ptr @cw1200_spi_memcpy_toio, ptr @cw1200_spi_lock, ptr @cw1200_spi_unlock, ptr @cw1200_spi_align_size, ptr @cw1200_spi_pm }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cw1200_wlan_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cw1200_wlan_powerup\00", [44 x i8] zeroinitializer }, align 32
@cw1200_spi_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013power_ctrl() failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cw1200_spi_on\00", [18 x i8] zeroinitializer }, align 32
@cw1200_spi_on._entry_ptr = internal global ptr @cw1200_spi_on._entry, section ".printk_index", align 4
@cw1200_spi_on._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013clk_ctrl() failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@cw1200_spi_on._entry_ptr.22 = internal global ptr @cw1200_spi_on._entry.20, section ".printk_index", align 4
@cw1200_spi_irq_subscribe.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cw1200_spi_irq_subscribe\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SW IRQ subscribe\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cw1200_wlan_irq\00", [16 x i8] zeroinitializer }, align 32
@cw1200_spi_irq_unsubscribe.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cw1200_spi_irq_unsubscribe\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SW IRQ unsubscribe\0A\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"spi_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 455, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 459, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"cw1200_pm_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 453, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 380, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 385, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 390, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 396, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 402, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 406, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [21 x i8] c"cw1200_spi_hwbus_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 348, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 298, i32 30 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 302, i32 32 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 311, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 319, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 250, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 255, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [47 x i8] c"../drivers/net/wireless/st/cw1200/cw1200_spi.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 273, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_alias354, ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__exitcall_spi_driver_exit, ptr @__initcall__kmod_cw1200_wlan_spi__359_464_spi_driver_init6, ptr @cw1200_spi_on._entry, ptr @cw1200_spi_on._entry.20, ptr @cw1200_spi_on._entry_ptr, ptr @cw1200_spi_on._entry_ptr.22, ptr @cw1200_spi_probe._entry, ptr @cw1200_spi_probe._entry.10, ptr @cw1200_spi_probe._entry.4, ptr @cw1200_spi_probe._entry.7, ptr @cw1200_spi_probe._entry_ptr, ptr @cw1200_spi_probe._entry_ptr.12, ptr @cw1200_spi_probe._entry_ptr.6, ptr @cw1200_spi_probe._entry_ptr.9, ptr @spi_driver_exit, ptr @spi_driver, ptr @.str, ptr @cw1200_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @cw1200_spi_probe.__key, ptr @.str.13, ptr @cw1200_spi_probe.__key.14, ptr @.str.15, ptr @cw1200_spi_hwbus_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_spi_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_spi_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_spi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_spi_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_spi_hwbus_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_spi_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_spi_on._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @spi_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @spi_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_spi_probe(ptr noundef %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %func, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %func, i32 0, i32 3
  %2 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000000, i32 %3)
  %cmp = icmp ugt i32 %3, 52000000
  br i1 %cmp, label %entry.if.end6.sink.split_crit_edge, label %if.end

entry.if.end6.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %3)
  %cmp3 = icmp ult i32 %3, 1000000
  br i1 %cmp3, label %if.end.if.end6.sink.split_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.if.end6.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.end.if.end6.sink.split_crit_edge, %entry.if.end6.sink.split_crit_edge
  %.sink = phi i32 [ 52000000, %entry.if.end6.sink.split_crit_edge ], [ 1000000, %if.end.if.end6.sink.split_crit_edge ]
  %4 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %max_speed_hz, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.end.if.end6_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end6.if.end9_crit_edge, label %if.then7

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %func, i32 0, i32 5
  %7 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %bits_per_word, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end6.if.end9_crit_edge
  %bits_per_word10 = getelementptr inbounds %struct.spi_device, ptr %func, i32 0, i32 5
  %8 = ptrtoint ptr %bits_per_word10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bits_per_word10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %bits_per_word10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 16, ptr %bits_per_word10, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  %mode = getelementptr inbounds %struct.spi_device, ptr %func, i32 0, i32 7
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %mode, align 8
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %func, i32 0, i32 4
  %12 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %bits_per_word10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bits_per_word10, align 1
  %conv17 = zext i8 %15 to i32
  %16 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_speed_hz, align 8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef 0, i32 noundef %conv17, i32 noundef %17) #11
  %reset.i = getelementptr inbounds %struct.cw1200_platform_data_spi, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end14.if.end.i_crit_edge, label %if.then.i

if.end14.if.end.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @gpio_request(i32 noundef %19, ptr noundef nonnull @.str.16) #8
  %20 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reset.i, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %21) #8
  %call1.i.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i.i, i32 noundef 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end14.if.end.i_crit_edge
  %powerup.i = getelementptr inbounds %struct.cw1200_platform_data_spi, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %powerup.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %powerup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool4.not.i = icmp eq i32 %23, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then5.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 @gpio_request(i32 noundef %23, ptr noundef nonnull @.str.17) #8
  %24 = ptrtoint ptr %powerup.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %powerup.i, align 4
  %call.i70.i = tail call ptr @gpio_to_desc(i32 noundef %25) #8
  %call1.i71.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i70.i, i32 noundef 0) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %if.end.i.if.end10.i_crit_edge
  %26 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.not.i = icmp eq i32 %27, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i, label %if.end10.i.if.then15.i_crit_edge

if.end10.i.if.then15.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

lor.lhs.false.i:                                  ; preds = %if.end10.i
  %28 = ptrtoint ptr %powerup.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %powerup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool14.not.i = icmp eq i32 %29, 0
  br i1 %tobool14.not.i, label %lor.lhs.false.i.if.end16.i_crit_edge, label %lor.lhs.false.i.if.then15.i_crit_edge

lor.lhs.false.i.if.then15.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

lor.lhs.false.i.if.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then15.i:                                      ; preds = %lor.lhs.false.i.if.then15.i_crit_edge, %if.end10.i.if.then15.i_crit_edge
  tail call void @msleep(i32 noundef 10) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %lor.lhs.false.i.if.end16.i_crit_edge
  %power_ctrl.i = getelementptr inbounds %struct.cw1200_platform_data_spi, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %power_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %power_ctrl.i, align 4
  %tobool17.not.i = icmp eq ptr %31, null
  br i1 %tobool17.not.i, label %if.end16.i.if.end25.i_crit_edge, label %if.then18.i

if.end16.i.if.end25.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then18.i:                                      ; preds = %if.end16.i
  %call20.i = tail call i32 %31(ptr noundef %1, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.then18.i.if.end25.i_crit_edge, label %if.then18.i.do.end25_crit_edge

if.then18.i.do.end25_crit_edge:                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

if.then18.i.if.end25.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then18.i.if.end25.i_crit_edge, %if.end16.i.if.end25.i_crit_edge
  %clk_ctrl.i = getelementptr inbounds %struct.cw1200_platform_data_spi, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %clk_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_ctrl.i, align 4
  %tobool26.not.i = icmp eq ptr %33, null
  br i1 %tobool26.not.i, label %if.end25.i.if.end37.i_crit_edge, label %if.then27.i

if.end25.i.if.end37.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then27.i:                                      ; preds = %if.end25.i
  %call29.i = tail call i32 %33(ptr noundef %1, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end36.i, label %if.then27.i.do.end25_crit_edge

if.then27.i.do.end25_crit_edge:                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

if.end36.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 10) #8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end36.i, %if.end25.i.if.end37.i_crit_edge
  %34 = ptrtoint ptr %powerup.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %powerup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool39.not.i = icmp eq i32 %35, 0
  br i1 %tobool39.not.i, label %if.end37.i.if.end42.i_crit_edge, label %if.then40.i

if.end37.i.if.end42.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i72.i = tail call ptr @gpio_to_desc(i32 noundef %35) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i72.i, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 250) #8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then40.i, %if.end37.i.if.end42.i_crit_edge
  %36 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool44.not.i = icmp eq i32 %37, 0
  br i1 %tobool44.not.i, label %if.end42.i.if.end28_crit_edge, label %if.then45.i

if.end42.i.if.end28_crit_edge:                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i73.i = tail call ptr @gpio_to_desc(i32 noundef %37) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i73.i, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 50) #8
  br label %if.end28

do.end25:                                         ; preds = %if.then27.i.do.end25_crit_edge, %if.then18.i.do.end25_crit_edge
  %.str.21.sink = phi ptr [ @.str.18, %if.then18.i.do.end25_crit_edge ], [ @.str.21, %if.then27.i.do.end25_crit_edge ]
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.21.sink) #11
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end28:                                         ; preds = %if.then45.i, %if.end42.i.if.end28_crit_edge
  %call29 = tail call i32 @spi_setup(ptr noundef %func) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %call.i106 = tail call noalias ptr @devm_kmalloc(ptr noundef %func, i32 noundef 112, i32 noundef 3520) #8
  %tobool40.not = icmp eq ptr %call.i106, null
  br i1 %tobool40.not, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %pdata = getelementptr inbounds %struct.hwbus_priv, ptr %call.i106, i32 0, i32 2
  %38 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %1, ptr %pdata, align 4
  %39 = ptrtoint ptr %call.i106 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %func, ptr %call.i106, align 4
  %lock = getelementptr inbounds %struct.hwbus_priv, ptr %call.i106, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @cw1200_spi_probe.__key, i16 noundef signext 3) #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %func, i32 0, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i106, ptr %driver_data.i.i, align 4
  %wq = getelementptr inbounds %struct.hwbus_priv, ptr %call.i106, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.15, ptr noundef nonnull @cw1200_spi_probe.__key.14) #8
  tail call fastcc void @cw1200_spi_irq_subscribe(ptr noundef nonnull %call.i106)
  %core = getelementptr inbounds %struct.hwbus_priv, ptr %call.i106, i32 0, i32 1
  %41 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdata, align 4
  %ref_clk = getelementptr inbounds %struct.cw1200_platform_data_spi, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ref_clk, align 2
  %conv59 = zext i16 %44 to i32
  %macaddr = getelementptr inbounds %struct.cw1200_platform_data_spi, ptr %42, i32 0, i32 7
  %45 = ptrtoint ptr %macaddr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %macaddr, align 4
  %sdd_file = getelementptr inbounds %struct.cw1200_platform_data_spi, ptr %42, i32 0, i32 8
  %47 = ptrtoint ptr %sdd_file to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sdd_file, align 4
  %have_5ghz = getelementptr inbounds %struct.cw1200_platform_data_spi, ptr %42, i32 0, i32 2
  %49 = ptrtoint ptr %have_5ghz to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %have_5ghz, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool63 = icmp ne i8 %50, 0
  %call64 = tail call i32 @cw1200_core_probe(ptr noundef nonnull @cw1200_spi_hwbus_ops, ptr noundef nonnull %call.i106, ptr noundef %func, ptr noundef %core, i32 noundef %conv59, ptr noundef %46, ptr noundef %48, i1 noundef zeroext %tobool63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end47.cleanup_crit_edge, label %if.then66

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then66:                                        ; preds = %if.end47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_spi_irq_unsubscribe.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_spi_probe, %if.then.i107)) #8
          to label %cw1200_spi_irq_unsubscribe.exit [label %if.then.i107], !srcloc !82

if.then.i107:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_spi_irq_unsubscribe.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.28) #8
  br label %cw1200_spi_irq_unsubscribe.exit

cw1200_spi_irq_unsubscribe.exit:                  ; preds = %if.then.i107, %if.then66
  %51 = ptrtoint ptr %call.i106 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i106, align 4
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq.i, align 4
  %call.i.i108 = tail call i32 @irq_set_irq_wake(i32 noundef %54, i32 noundef 0) #8
  %55 = ptrtoint ptr %call.i106 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i106, align 4
  %irq5.i = getelementptr inbounds %struct.spi_device, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %irq5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq5.i, align 4
  %call6.i = tail call ptr @free_irq(i32 noundef %58, ptr noundef nonnull %call.i106) #8
  %59 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i111 = icmp eq i32 %60, 0
  br i1 %tobool.not.i111, label %cw1200_spi_irq_unsubscribe.exit.if.end.i115_crit_edge, label %if.then.i113

cw1200_spi_irq_unsubscribe.exit.if.end.i115_crit_edge: ; preds = %cw1200_spi_irq_unsubscribe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i115

if.then.i113:                                     ; preds = %cw1200_spi_irq_unsubscribe.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i112 = tail call ptr @gpio_to_desc(i32 noundef %60) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i112, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 30) #8
  %61 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reset.i, align 4
  tail call void @gpio_free(i32 noundef %62) #8
  br label %if.end.i115

if.end.i115:                                      ; preds = %if.then.i113, %cw1200_spi_irq_unsubscribe.exit.if.end.i115_crit_edge
  %63 = ptrtoint ptr %power_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %power_ctrl.i, align 4
  %tobool3.not.i = icmp eq ptr %64, null
  br i1 %tobool3.not.i, label %if.end.i115.if.end6.i_crit_edge, label %if.then4.i

if.end.i115.if.end6.i_crit_edge:                  ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  %call.i116 = tail call i32 %64(ptr noundef %1, i1 noundef zeroext false) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i115.if.end6.i_crit_edge
  %65 = ptrtoint ptr %clk_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clk_ctrl.i, align 4
  %tobool7.not.i = icmp eq ptr %66, null
  br i1 %tobool7.not.i, label %if.end6.i.cleanup_crit_edge, label %if.then8.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i = tail call i32 %66(ptr noundef %1, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %if.end6.i.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %do.end44, %do.end34, %do.end25
  %retval.0 = phi i32 [ -1, %do.end25 ], [ -1, %do.end34 ], [ -12, %do.end44 ], [ 0, %if.end47.cleanup_crit_edge ], [ %call64, %if.end6.i.cleanup_crit_edge ], [ %call64, %if.then8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_spi_disconnect(ptr nocapture noundef readonly %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %func, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_spi_irq_unsubscribe.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_spi_disconnect, %if.then.i)) #8
          to label %cw1200_spi_irq_unsubscribe.exit [label %if.then.i], !srcloc !82

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_spi_irq_unsubscribe.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.28) #8
  br label %cw1200_spi_irq_unsubscribe.exit

cw1200_spi_irq_unsubscribe.exit:                  ; preds = %if.then.i, %if.then
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 0) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %irq5.i = getelementptr inbounds %struct.spi_device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %irq5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq5.i, align 4
  %call6.i = tail call ptr @free_irq(i32 noundef %9, ptr noundef nonnull %1) #8
  %core = getelementptr inbounds %struct.hwbus_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %cw1200_spi_irq_unsubscribe.exit.if.end5_crit_edge, label %if.then2

cw1200_spi_irq_unsubscribe.exit.if.end5_crit_edge: ; preds = %cw1200_spi_irq_unsubscribe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then2:                                         ; preds = %cw1200_spi_irq_unsubscribe.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cw1200_core_release(ptr noundef nonnull %11) #8
  %12 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %core, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %cw1200_spi_irq_unsubscribe.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %platform_data.i = getelementptr inbounds %struct.device, ptr %func, i32 0, i32 7
  %13 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform_data.i, align 8
  %reset.i = getelementptr inbounds %struct.cw1200_platform_data_spi, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.end5.if.end.i_crit_edge, label %if.then.i14

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i14:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i13 = tail call ptr @gpio_to_desc(i32 noundef %16) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i13, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 30) #8
  %17 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reset.i, align 4
  tail call void @gpio_free(i32 noundef %18) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i14, %if.end5.if.end.i_crit_edge
  %power_ctrl.i = getelementptr inbounds %struct.cw1200_platform_data_spi, ptr %14, i32 0, i32 5
  %19 = ptrtoint ptr %power_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %power_ctrl.i, align 4
  %tobool3.not.i = icmp eq ptr %20, null
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %20(ptr noundef %14, i1 noundef zeroext false) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %clk_ctrl.i = getelementptr inbounds %struct.cw1200_platform_data_spi, ptr %14, i32 0, i32 6
  %21 = ptrtoint ptr %clk_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_ctrl.i, align 4
  %tobool7.not.i = icmp eq ptr %22, null
  br i1 %tobool7.not.i, label %if.end6.i.cw1200_spi_off.exit_crit_edge, label %if.then8.i

if.end6.i.cw1200_spi_off.exit_crit_edge:          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cw1200_spi_off.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i = tail call i32 %22(ptr noundef %14, i1 noundef zeroext false) #8
  br label %cw1200_spi_off.exit

cw1200_spi_off.exit:                              ; preds = %if.then8.i, %if.end6.i.cw1200_spi_off.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_spi_irq_subscribe(ptr noundef %self) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_spi_irq_subscribe.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_spi_irq_subscribe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_spi_irq_subscribe.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.24) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call3 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef null, ptr noundef nonnull @cw1200_spi_irq_handler, i32 noundef 8196, ptr noundef nonnull @.str.25, ptr noundef %self) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end19, label %if.end35.critedge, !prof !83

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 256, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end35.critedge:                                ; preds = %do.end
  %4 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %self, align 4
  %irq37 = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %irq37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq37, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not = icmp eq i32 %call.i, 0
  br i1 %tobool40.not, label %if.end35.critedge.cleanup_crit_edge, label %do.end56, !prof !84

if.end35.critedge.cleanup_crit_edge:              ; preds = %if.end35.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end56:                                         ; preds = %if.end35.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 260, i32 noundef 9, ptr noundef null) #8
  %8 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %self, align 4
  %irq74 = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %irq74 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq74, align 4
  %call75 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %self) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.end35.critedge.cleanup_crit_edge, %do.end19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_core_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_spi_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.hwbus_priv, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cw1200_spi_lock(ptr noundef %dev_id)
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  tail call void @cw1200_irq_handler(ptr noundef %3) #8
  %lock.i = getelementptr inbounds %struct.hwbus_priv, ptr %dev_id, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %claimed.i = getelementptr inbounds %struct.hwbus_priv, ptr %dev_id, i32 0, i32 5
  %4 = ptrtoint ptr %claimed.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %claimed.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %wq.i = getelementptr inbounds %struct.hwbus_priv, ptr %dev_id, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cw1200_spi_lock(ptr noundef %self) #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 200) #8
  %wq = getelementptr inbounds %struct.hwbus_priv, ptr %self, i32 0, i32 4
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #8
  %lock = getelementptr inbounds %struct.hwbus_priv, ptr %self, i32 0, i32 3
  %call9 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %claimed = getelementptr inbounds %struct.hwbus_priv, ptr %self, i32 0, i32 5
  br label %__here

__here:                                           ; preds = %if.end82, %entry
  %flags.0 = phi i32 [ %call9, %entry ], [ %call93, %if.end82 ]
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 212
  %15 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 ptrtoint (ptr blockaddress(@cw1200_spi_lock, %__here) to i32), ptr %task_state_change, align 4
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 2, ptr %16, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  %18 = ptrtoint ptr %claimed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %claimed, align 4
  %tobool80.not = icmp eq i32 %19, 0
  br i1 %tobool80.not, label %__here149, label %if.end82

if.end82:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #8
  call void @schedule() #8
  %call93 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  br label %__here

__here149:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %task_state_change153 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 212
  %22 = ptrtoint ptr %task_state_change153 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 ptrtoint (ptr blockaddress(@cw1200_spi_lock, %__here149) to i32), ptr %task_state_change153, align 4
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %23, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  %25 = ptrtoint ptr %claimed to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %claimed, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #8
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_irq_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cw1200_spi_unlock(ptr noundef %self) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hwbus_priv, ptr %self, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %claimed = getelementptr inbounds %struct.hwbus_priv, ptr %self, i32 0, i32 5
  %0 = ptrtoint ptr %claimed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %claimed, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  %wq = getelementptr inbounds %struct.hwbus_priv, ptr %self, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_spi_memcpy_fromio(ptr nocapture noundef readonly %self, i32 noundef %addr, ptr noundef %dst, i32 noundef %count) #2 align 64 {
entry:
  %regaddr = alloca i16, align 2
  %m = alloca %struct.spi_message, align 4
  %t_addr = alloca %struct.spi_transfer, align 4
  %t_msg = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regaddr) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t_addr) #8
  %0 = getelementptr inbounds i8, ptr %t_addr, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  %2 = ptrtoint ptr %t_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %regaddr, ptr %t_addr, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t_addr, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t_msg) #8
  %4 = call ptr @memset(ptr %t_msg, i32 0, i32 96)
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t_msg, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dst, ptr %rx_buf, align 4
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %t_msg, i32 0, i32 2
  %6 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %count, ptr %len2, align 4
  %7 = shl i32 %addr, 10
  %8 = and i32 %7, 28672
  %9 = lshr i32 %count, 1
  %conv8 = or i32 %9, %8
  %10 = trunc i32 %conv8 to i16
  %conv12 = or i16 %10, -32768
  %11 = ptrtoint ptr %regaddr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv12, ptr %regaddr, align 2
  %12 = getelementptr inbounds i8, ptr %m, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t_addr, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t_addr, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %transfer_list.i23 = getelementptr inbounds %struct.spi_transfer, ptr %t_msg, i32 0, i32 18
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i25 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i23, ptr noundef %23, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i25, label %if.end.i.i.i27, label %spi_message_add_tail.exit.spi_message_add_tail.exit28_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit28_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit28

if.end.i.i.i27:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i23, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %m, ptr %transfer_list.i23, align 4
  %prev3.i.i.i26 = getelementptr inbounds %struct.spi_transfer, ptr %t_msg, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i26, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i23, ptr %23, align 4
  br label %spi_message_add_tail.exit28

spi_message_add_tail.exit28:                      ; preds = %if.end.i.i.i27, %spi_message_add_tail.exit.spi_message_add_tail.exit28_crit_edge
  %28 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %self, align 4
  %call = call i32 @spi_sync(ptr noundef %29, ptr noundef nonnull %m) #8
  %add = add i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp29 = icmp sgt i32 %add, 1
  br i1 %cmp29, label %for.body.preheader, label %spi_message_add_tail.exit28.for.end_crit_edge

spi_message_add_tail.exit28.for.end_crit_edge:    ; preds = %spi_message_add_tail.exit28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %spi_message_add_tail.exit28
  %shr1331 = lshr i32 %add, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i16, ptr %dst, i32 %i.030
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %31)
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %shr1331
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %spi_message_add_tail.exit28.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t_msg) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t_addr) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regaddr) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_spi_memcpy_toio(ptr nocapture noundef readonly %self, i32 noundef %addr, ptr noundef %src, i32 noundef %count) #2 align 64 {
entry:
  %regaddr = alloca i16, align 2
  %t_addr = alloca %struct.spi_transfer, align 4
  %t_msg = alloca %struct.spi_transfer, align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regaddr) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t_addr) #8
  %0 = getelementptr inbounds i8, ptr %t_addr, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  %2 = ptrtoint ptr %t_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %regaddr, ptr %t_addr, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t_addr, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t_msg) #8
  %4 = getelementptr inbounds i8, ptr %t_msg, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %t_msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %src, ptr %t_msg, align 4
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %t_msg, i32 0, i32 2
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %count, ptr %len2, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #8
  %8 = shl i32 %addr, 10
  %conv9 = and i32 %8, 28672
  %9 = lshr i32 %count, 1
  %or = or i32 %9, %conv9
  %conv12 = trunc i32 %or to i16
  %10 = ptrtoint ptr %regaddr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv12, ptr %regaddr, align 2
  %add = add i32 %count, 1
  %shr13 = ashr i32 %add, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp48 = icmp sgt i32 %add, 1
  br i1 %cmp48, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %smax = call i32 @llvm.smax.i32(i32 %shr13, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.049 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i16, ptr %src, i32 %i.049
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 2
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %15 = getelementptr inbounds i8, ptr %m, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t_addr, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.spi_message_add_tail.exit_crit_edge

for.end.spi_message_add_tail.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t_addr, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %for.end.spi_message_add_tail.exit_crit_edge
  %transfer_list.i42 = getelementptr inbounds %struct.spi_transfer, ptr %t_msg, i32 0, i32 18
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i44 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i42, ptr noundef %26, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i44, label %if.end.i.i.i46, label %spi_message_add_tail.exit.spi_message_add_tail.exit47_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit47_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit47

if.end.i.i.i46:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i42, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %m, ptr %transfer_list.i42, align 4
  %prev3.i.i.i45 = getelementptr inbounds %struct.spi_transfer, ptr %t_msg, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i45, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i42, ptr %26, align 4
  br label %spi_message_add_tail.exit47

spi_message_add_tail.exit47:                      ; preds = %if.end.i.i.i46, %spi_message_add_tail.exit.spi_message_add_tail.exit47_crit_edge
  %31 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %self, align 4
  %call = call i32 @spi_sync(ptr noundef %32, ptr noundef nonnull %m) #8
  br i1 %cmp48, label %for.body22.preheader, label %spi_message_add_tail.exit47.for.end27_crit_edge

spi_message_add_tail.exit47.for.end27_crit_edge:  ; preds = %spi_message_add_tail.exit47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27

for.body22.preheader:                             ; preds = %spi_message_add_tail.exit47
  %smax52 = call i32 @llvm.smax.i32(i32 %shr13, i32 1)
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.body22.preheader
  %i.151 = phi i32 [ %inc26, %for.body22.for.body22_crit_edge ], [ 0, %for.body22.preheader ]
  %arrayidx23 = getelementptr i16, ptr %src, i32 %i.151
  %33 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx23, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %36 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %arrayidx23, align 2
  %inc26 = add nuw nsw i32 %i.151, 1
  %exitcond53.not = icmp eq i32 %inc26, %smax52
  br i1 %exitcond53.not, label %for.body22.for.end27_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22

for.body22.for.end27_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27

for.end27:                                        ; preds = %for.body22.for.end27_crit_edge, %spi_message_add_tail.exit47.for.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t_msg) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t_addr) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regaddr) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cw1200_spi_align_size(ptr nocapture noundef readnone %self, i32 noundef %size) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %size, 1
  %cond = add i32 %and, %size
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_spi_pm(ptr nocapture noundef readonly %self, i1 noundef zeroext %suspend) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %conv = zext i1 %suspend to i32
  %call = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef %conv) #8
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cw1200_core_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw1200_spi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core = getelementptr inbounds %struct.hwbus_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call2 = tail call i32 @cw1200_can_suspend(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %. = select i1 %tobool.not, i32 -11, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_can_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67, !68, !69}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__UNIQUE_ID_author350, !1, !"__UNIQUE_ID_author350", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_description351, !3, !"__UNIQUE_ID_description351", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_file352, !5, !"__UNIQUE_ID_file352", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 30, i32 1}
!6 = !{ptr @__UNIQUE_ID_license353, !5, !"__UNIQUE_ID_license353", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias354, !8, !"__UNIQUE_ID_alias354", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 31, i32 1}
!9 = !{ptr @__initcall__kmod_cw1200_wlan_spi__359_464_spi_driver_init6, !10, !"__initcall__kmod_cw1200_wlan_spi__359_464_spi_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 464, i32 1}
!11 = !{ptr @__exitcall_spi_driver_exit, !10, !"__exitcall_spi_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 459, i32 12}
!14 = !{ptr @spi_driver, !15, !"spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 455, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 380, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cw1200_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @cw1200_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 385, i32 3}
!24 = !{ptr @cw1200_spi_probe._entry.4, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @cw1200_spi_probe._entry_ptr.6, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 390, i32 3}
!28 = !{ptr @cw1200_spi_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cw1200_spi_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 396, i32 3}
!32 = !{ptr @cw1200_spi_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cw1200_spi_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @cw1200_spi_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 402, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cw1200_spi_probe.__key.14, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 406, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 298, i32 30}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 302, i32 32}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 311, i32 4}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cw1200_spi_on._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @cw1200_spi_on._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 319, i32 4}
!51 = !{ptr @cw1200_spi_on._entry.20, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cw1200_spi_on._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 250, i32 2}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cw1200_spi_irq_subscribe.__UNIQUE_ID_ddebug357, !54, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 255, i32 8}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 205, i32 3}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 212, i32 2}
!63 = !{ptr @cw1200_spi_hwbus_ops, !64, !"cw1200_spi_hwbus_ops", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 348, i32 31}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 273, i32 2}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cw1200_spi_irq_unsubscribe.__UNIQUE_ID_ddebug358, !66, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!69 = !{ptr @cw1200_pm_ops, !70, !"cw1200_pm_ops", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/st/cw1200/cw1200_spi.c", i32 453, i32 8}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i8 0, i8 2}
!82 = !{i64 2148962125, i64 2148962130, i64 2148962143, i64 2148962187, i64 2148962221, i64 2148962242}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2157730396}
!86 = !{i64 2157735498}
