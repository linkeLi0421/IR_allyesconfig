; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-core/dvb_ca_en50221.c_pt.bc'
source_filename = "../drivers/media/dvb-core/dvb_ca_en50221.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dvb_ca_en50221_camchange_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_ca_en50221_camchange_irq\09\09\09\09"
module asm "\09.long\09__crc_dvb_ca_en50221_camchange_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ca_en50221_camchange_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ca_en50221_camchange_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ca_en50221_camchange_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_ca_en50221_camready_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_ca_en50221_camready_irq\09\09\09\09"
module asm "\09.long\09__crc_dvb_ca_en50221_camready_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ca_en50221_camready_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ca_en50221_camready_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ca_en50221_camready_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_ca_en50221_frda_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_ca_en50221_frda_irq\09\09\09\09"
module asm "\09.long\09__crc_dvb_ca_en50221_frda_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ca_en50221_frda_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ca_en50221_frda_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ca_en50221_frda_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_ca_en50221_init\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_ca_en50221_init\09\09\09\09"
module asm "\09.long\09__crc_dvb_ca_en50221_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ca_en50221_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ca_en50221_init\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ca_en50221_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_ca_en50221_release\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_ca_en50221_release\09\09\09\09"
module asm "\09.long\09__crc_dvb_ca_en50221_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ca_en50221_release:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ca_en50221_release\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ca_en50221_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_ca_private = type { %struct.kref, ptr, ptr, i32, i32, ptr, %struct.wait_queue_head, ptr, i8, i32, i32, %struct.mutex }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_ca_slot = type { i32, %struct.mutex, %struct.atomic_t, i32, i32, i8, i8, i32, %struct.dvb_ringbuffer, i32 }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ca_caps = type { i32, i32, i32, i32 }
%struct.ca_slot_info = type { i32, i32, i32 }

@__param_str_cam_debug = internal constant [19 x i8] c"dvb_core.cam_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_ca_en50221_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_cam_debug = internal constant %struct.kernel_param { ptr @__param_str_cam_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @dvb_ca_en50221_debug } }, section "__param", align 4
@__UNIQUE_ID_cam_debugtype225 = internal constant [32 x i8] c"dvb_core.parmtype=cam_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cam_debug226 = internal constant [54 x i8] c"dvb_core.parm=cam_debug:enable verbose debug messages\00", section ".modinfo", align 1
@dvb_ca_en50221_camchange_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017dvb_ca_en50221: %s: CAMCHANGE IRQ slot:%i change_type:%i\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dvb_ca_en50221_camchange_irq\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/dvb-core/dvb_ca_en50221.c\00", [56 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_camchange_irq._entry_ptr = internal global ptr @dvb_ca_en50221_camchange_irq._entry, section ".printk_index", align 4
@__kstrtab_dvb_ca_en50221_camchange_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ca_en50221_camchange_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ca_en50221_camchange_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ca_en50221_camchange_irq to i32), ptr @__kstrtab_dvb_ca_en50221_camchange_irq, ptr @__kstrtabns_dvb_ca_en50221_camchange_irq }, section "___ksymtab+dvb_ca_en50221_camchange_irq", align 4
@dvb_ca_en50221_camready_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017dvb_ca_en50221: %s: CAMREADY IRQ slot:%i\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dvb_ca_en50221_camready_irq\00", [36 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_camready_irq._entry_ptr = internal global ptr @dvb_ca_en50221_camready_irq._entry, section ".printk_index", align 4
@__kstrtab_dvb_ca_en50221_camready_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ca_en50221_camready_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ca_en50221_camready_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ca_en50221_camready_irq to i32), ptr @__kstrtab_dvb_ca_en50221_camready_irq, ptr @__kstrtabns_dvb_ca_en50221_camready_irq }, section "___ksymtab+dvb_ca_en50221_camready_irq", align 4
@dvb_ca_en50221_frda_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dvb_ca_en50221: %s: FR/DA IRQ slot:%i\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dvb_ca_en50221_frda_irq\00", [40 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_frda_irq._entry_ptr = internal global ptr @dvb_ca_en50221_frda_irq._entry, section ".printk_index", align 4
@dvb_ca_en50221_frda_irq._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017dvb_ca_en50221: %s: CAM supports DA IRQ\0A\00", [53 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_frda_irq._entry_ptr.9 = internal global ptr @dvb_ca_en50221_frda_irq._entry.7, section ".printk_index", align 4
@__kstrtab_dvb_ca_en50221_frda_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ca_en50221_frda_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ca_en50221_frda_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ca_en50221_frda_irq to i32), ptr @__kstrtab_dvb_ca_en50221_frda_irq, ptr @__kstrtabns_dvb_ca_en50221_frda_irq }, section "___ksymtab+dvb_ca_en50221_frda_irq", align 4
@dvb_ca_en50221_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017dvb_ca_en50221: %s: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb_ca_en50221_init\00", [44 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_init._entry_ptr = internal global ptr @dvb_ca_en50221_init._entry, section ".printk_index", align 4
@dvb_ca_en50221_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ca->wait_queue\00", [16 x i8] zeroinitializer }, align 32
@dvbdev_ca = internal constant { %struct.dvb_device, [32 x i8] } { %struct.dvb_device { %struct.list_head zeroinitializer, ptr @dvb_ca_fops, ptr null, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, %struct.wait_queue_head zeroinitializer, ptr null, ptr @.str.23, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sl->slot_lock\00", [17 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ca->ioctl_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kdvb-ca-%i:%i\00", [18 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 1907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013dvb_ca_en50221: dvb_ca_init: failed to start kernel_thread (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_init._entry_ptr.20 = internal global ptr @dvb_ca_en50221_init._entry.18, section ".printk_index", align 4
@__kstrtab_dvb_ca_en50221_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ca_en50221_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ca_en50221_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ca_en50221_init to i32), ptr @__kstrtab_dvb_ca_en50221_init, ptr @__kstrtabns_dvb_ca_en50221_init }, section "___ksymtab+dvb_ca_en50221_init", align 4
@dvb_ca_en50221_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.21, ptr @.str.2, i32 1934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb_ca_en50221_release\00", [41 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_release._entry_ptr = internal global ptr @dvb_ca_en50221_release._entry, section ".printk_index", align 4
@__kstrtab_dvb_ca_en50221_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ca_en50221_release = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ca_en50221_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ca_en50221_release to i32), ptr @__kstrtab_dvb_ca_en50221_release, ptr @__kstrtabns_dvb_ca_en50221_release }, section "___ksymtab+dvb_ca_en50221_release", align 4
@dvb_ca_en50221_thread_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.22, ptr @.str.2, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dvb_ca_en50221_thread_wakeup\00", [35 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_thread_wakeup._entry_ptr = internal global ptr @dvb_ca_en50221_thread_wakeup._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dvb_ca_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @dvb_ca_en50221_io_read, ptr @dvb_ca_en50221_io_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dvb_ca_en50221_io_poll, ptr @dvb_ca_en50221_io_ioctl, ptr null, ptr null, i32 0, ptr @dvb_ca_en50221_io_open, ptr null, ptr @dvb_ca_en50221_io_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb-ca-en50221\00", [17 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_io_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.24, ptr @.str.2, i32 1611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb_ca_en50221_io_read\00", [41 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_io_read._entry_ptr = internal global ptr @dvb_ca_en50221_io_read._entry, section ".printk_index", align 4
@dvb_ca_en50221_io_read._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 1644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: BUG: read packet ended before last_fragment encountered\0A\00", [34 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_io_read._entry_ptr.27 = internal global ptr @dvb_ca_en50221_io_read._entry.25, section ".printk_index", align 4
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_io_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.31, ptr @.str.2, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dvb_ca_en50221_io_write\00", [40 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_io_write._entry_ptr = internal global ptr @dvb_ca_en50221_io_write._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dvb_ca_en50221_write_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.32, ptr @.str.2, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dvb_ca_en50221_write_data\00", [38 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_write_data._entry_ptr = internal global ptr @dvb_ca_en50221_write_data._entry, section ".printk_index", align 4
@dvb_ca_en50221_write_data._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\017dvb_ca_en50221: %s: Wrote CA packet for slot %i, connection id 0x%x last_frag:%i size:0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_write_data._entry_ptr.35 = internal global ptr @dvb_ca_en50221_write_data._entry.33, section ".printk_index", align 4
@dvb_ca_en50221_io_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.36, ptr @.str.2, i32 1790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb_ca_en50221_io_poll\00", [41 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_io_poll._entry_ptr = internal global ptr @dvb_ca_en50221_io_poll._entry, section ".printk_index", align 4
@dvb_ca_en50221_io_do_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.37, ptr @.str.2, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb_ca_en50221_io_do_ioctl\00", [37 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_io_do_ioctl._entry_ptr = internal global ptr @dvb_ca_en50221_io_do_ioctl._entry, section ".printk_index", align 4
@dvb_ca_en50221_io_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.38, ptr @.str.2, i32 1710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb_ca_en50221_io_open\00", [41 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_io_open._entry_ptr = internal global ptr @dvb_ca_en50221_io_open._entry, section ".printk_index", align 4
@dvb_ca_en50221_io_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.39, ptr @.str.2, i32 1759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dvb_ca_en50221_io_release\00", [38 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_io_release._entry_ptr = internal global ptr @dvb_ca_en50221_io_release._entry, section ".printk_index", align 4
@dvb_ca_en50221_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.40, ptr @.str.2, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb_ca_en50221_thread\00", [42 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_thread._entry_ptr = internal global ptr @dvb_ca_en50221_thread._entry, section ".printk_index", align 4
@dvb_ca_en50221_thread_state_machine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013dvb_ca_en50221: dvb_ca adaptor %d: PC card did not respond :(\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dvb_ca_en50221_thread_state_machine\00", [60 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_thread_state_machine._entry_ptr = internal global ptr @dvb_ca_en50221_thread_state_machine._entry, section ".printk_index", align 4
@dvb_ca_en50221_thread_state_machine._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: Invalid PC card inserted :(\0A\00", [62 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_thread_state_machine._entry_ptr.45 = internal global ptr @dvb_ca_en50221_thread_state_machine._entry.43, section ".printk_index", align 4
@dvb_ca_en50221_thread_state_machine._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 1183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: Unable to initialise CAM :(\0A\00", [62 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_thread_state_machine._entry_ptr.48 = internal global ptr @dvb_ca_en50221_thread_state_machine._entry.46, section ".printk_index", align 4
@dvb_ca_en50221_thread_state_machine._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.2, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: Unable to reset CAM IF\0A\00", [35 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_thread_state_machine._entry_ptr.51 = internal global ptr @dvb_ca_en50221_thread_state_machine._entry.49, section ".printk_index", align 4
@dvb_ca_en50221_thread_state_machine._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.2, i32 1197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017dvb_ca_en50221: %s: DVB CAM validated successfully\0A\00", [42 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_thread_state_machine._entry_ptr.54 = internal global ptr @dvb_ca_en50221_thread_state_machine._entry.52, section ".printk_index", align 4
@dvb_ca_en50221_thread_state_machine._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.42, ptr @.str.2, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: DVB CAM did not respond :(\0A\00", [63 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_thread_state_machine._entry_ptr.57 = internal global ptr @dvb_ca_en50221_thread_state_machine._entry.55, section ".printk_index", align 4
@dvb_ca_en50221_thread_state_machine._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.42, ptr @.str.2, i32 1226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: DVB CAM link initialisation failed :(\0A\00", [52 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_thread_state_machine._entry_ptr.60 = internal global ptr @dvb_ca_en50221_thread_state_machine._entry.58, section ".printk_index", align 4
@dvb_ca_en50221_thread_state_machine._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.42, ptr @.str.2, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: Unable to allocate CAM rx buffer :(\0A\00", [54 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_thread_state_machine._entry_ptr.63 = internal global ptr @dvb_ca_en50221_thread_state_machine._entry.61, section ".printk_index", align 4
@dvb_ca_en50221_thread_state_machine._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.42, ptr @.str.2, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016dvb_ca_en50221: dvb_ca adapter %d: DVB CAM detected and initialised successfully\0A\00", [44 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_thread_state_machine._entry_ptr.66 = internal global ptr @dvb_ca_en50221_thread_state_machine._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DVB_CI_V\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.00\00", [27 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_parse_attributes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: Unsupported DVB CAM module version %c%c%c%c\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dvb_ca_en50221_parse_attributes\00", [32 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_parse_attributes._entry_ptr = internal global ptr @dvb_ca_en50221_parse_attributes._entry, section ".printk_index", align 4
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DVB_HOST\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DVB_CI_MODULE\00", [18 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_parse_attributes._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.70, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\017dvb_ca_en50221: %s: dvb_ca: Skipping unknown tuple type:0x%x length:0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_parse_attributes._entry_ptr.75 = internal global ptr @dvb_ca_en50221_parse_attributes._entry.73, section ".printk_index", align 4
@dvb_ca_en50221_parse_attributes._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.70, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\017dvb_ca_en50221: %s: Valid DVB CAM detected MANID:%x DEVID:%x CONFIGBASE:0x%x CONFIGOPTION:0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_parse_attributes._entry_ptr.78 = internal global ptr @dvb_ca_en50221_parse_attributes._entry.76, section ".printk_index", align 4
@dvb_ca_en50221_read_tuple._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017dvb_ca_en50221: %s: END OF CHAIN TUPLE type:0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dvb_ca_en50221_read_tuple\00", [38 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_read_tuple._entry_ptr = internal global ptr @dvb_ca_en50221_read_tuple._entry, section ".printk_index", align 4
@dvb_ca_en50221_read_tuple._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017dvb_ca_en50221: %s: TUPLE type:0x%x length:%i\0A\00", [47 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_read_tuple._entry_ptr.83 = internal global ptr @dvb_ca_en50221_read_tuple._entry.81, section ".printk_index", align 4
@dvb_ca_en50221_read_tuple._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017dvb_ca_en50221: %s:   0x%02x: 0x%02x %c\0A\00", [53 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_read_tuple._entry_ptr.86 = internal global ptr @dvb_ca_en50221_read_tuple._entry.84, section ".printk_index", align 4
@dvb_ca_en50221_set_configoption._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.87, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dvb_ca_en50221_set_configoption\00", [32 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_set_configoption._entry_ptr = internal global ptr @dvb_ca_en50221_set_configoption._entry, section ".printk_index", align 4
@dvb_ca_en50221_set_configoption._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017dvb_ca_en50221: %s: Set configoption 0x%x, read configoption 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_set_configoption._entry_ptr.90 = internal global ptr @dvb_ca_en50221_set_configoption._entry.88, section ".printk_index", align 4
@dvb_ca_en50221_link_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.91, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dvb_ca_en50221_link_init\00", [39 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_link_init._entry_ptr = internal global ptr @dvb_ca_en50221_link_init._entry, section ".printk_index", align 4
@dvb_ca_en50221_link_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017dvb_ca_en50221: %s: Chosen link buffer size of %i\0A\00", [43 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_link_init._entry_ptr.94 = internal global ptr @dvb_ca_en50221_link_init._entry.92, section ".printk_index", align 4
@dvb_ca_en50221_wait_if_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.95, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dvb_ca_en50221_wait_if_status\00", [34 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_wait_if_status._entry_ptr = internal global ptr @dvb_ca_en50221_wait_if_status._entry, section ".printk_index", align 4
@dvb_ca_en50221_wait_if_status._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017dvb_ca_en50221: %s: %s succeeded timeout:%lu\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_wait_if_status._entry_ptr.98 = internal global ptr @dvb_ca_en50221_wait_if_status._entry.96, section ".printk_index", align 4
@dvb_ca_en50221_wait_if_status._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017dvb_ca_en50221: %s: %s failed timeout:%lu\0A\00", [51 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_wait_if_status._entry_ptr.101 = internal global ptr @dvb_ca_en50221_wait_if_status._entry.99, section ".printk_index", align 4
@dvb_ca_en50221_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.102, ptr @.str.2, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dvb_ca_en50221_read_data\00", [39 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_read_data._entry_ptr = internal global ptr @dvb_ca_en50221_read_data._entry, section ".printk_index", align 4
@dvb_ca_en50221_read_data._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.2, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: CAM tried to send a buffer larger than the link buffer size (%i > %i)!\0A\00", [51 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_read_data._entry_ptr.105 = internal global ptr @dvb_ca_en50221_read_data._entry.103, section ".printk_index", align 4
@dvb_ca_en50221_read_data._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.102, ptr @.str.2, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: CAM sent a buffer that was less than 2 bytes!\0A\00", [44 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_read_data._entry_ptr.108 = internal global ptr @dvb_ca_en50221_read_data._entry.106, section ".printk_index", align 4
@dvb_ca_en50221_read_data._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.102, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013dvb_ca_en50221: dvb_ca adapter %d: CAM tried to send a buffer larger than the ecount size!\0A\00", [34 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_read_data._entry_ptr.111 = internal global ptr @dvb_ca_en50221_read_data._entry.109, section ".printk_index", align 4
@dvb_ca_en50221_read_data._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.102, ptr @.str.2, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\017dvb_ca_en50221: %s: Received CA packet for slot %i connection id 0x%x last_frag:%i size:0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_read_data._entry_ptr.114 = internal global ptr @dvb_ca_en50221_read_data._entry.112, section ".printk_index", align 4
@dvb_ca_en50221_slot_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.115, ptr @.str.2, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dvb_ca_en50221_slot_shutdown\00", [35 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_slot_shutdown._entry_ptr = internal global ptr @dvb_ca_en50221_slot_shutdown._entry, section ".printk_index", align 4
@dvb_ca_en50221_slot_shutdown._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.2, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dvb_ca_en50221: %s: Slot %i shutdown\0A\00", [56 x i8] zeroinitializer }, align 32
@dvb_ca_en50221_slot_shutdown._entry_ptr.118 = internal global ptr @dvb_ca_en50221_slot_shutdown._entry.116, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 7]
@__sancov_gen_cov_switch_values.119 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.120 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.121 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.122 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 27, i64 255]
@__sancov_gen_cov_switch_values.124 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.125 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.126 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.127 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.128 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.129 = internal global [5 x i64] [i64 3, i64 32, i64 28544, i64 2148298626, i64 2148560769]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.131 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.132 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.133 = private unnamed_addr constant [21 x i8] c"dvb_ca_en50221_debug\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 33, i32 12 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 937, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 965, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 986, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 992, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1849, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1870, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [10 x i8] c"dvbdev_ca\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1818, i32 32 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1890, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1893, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1902, i32 15 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1906, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1934, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1015, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [12 x i8] c"dvb_ca_fops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1807, i32 37 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1824, i32 10 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1611, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1643, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 174, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1453, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 791, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 886, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1790, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1346, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1710, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1759, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1300, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1158, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1175, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1182, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1191, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1197, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1206, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1225, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1235, i32 5 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1248, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 522, i32 49 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 529, i32 27 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 530, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 557, i32 10 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 559, i32 10 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 573, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 582, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 410, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 422, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 428, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 600, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 609, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 327, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 363, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 278, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 293, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 306, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 640, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 698, i32 5 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 706, i32 5 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 714, i32 5 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 759, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 907, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.485 = private constant [43 x i8] c"../drivers/media/dvb-core/dvb_ca_en50221.c\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 918, i32 2 }
@llvm.compiler.used = appending global [173 x ptr] [ptr @__UNIQUE_ID_cam_debug226, ptr @__UNIQUE_ID_cam_debugtype225, ptr @__ksymtab_dvb_ca_en50221_camchange_irq, ptr @__ksymtab_dvb_ca_en50221_camready_irq, ptr @__ksymtab_dvb_ca_en50221_frda_irq, ptr @__ksymtab_dvb_ca_en50221_init, ptr @__ksymtab_dvb_ca_en50221_release, ptr @__param_cam_debug, ptr @dvb_ca_en50221_camchange_irq._entry, ptr @dvb_ca_en50221_camchange_irq._entry_ptr, ptr @dvb_ca_en50221_camready_irq._entry, ptr @dvb_ca_en50221_camready_irq._entry_ptr, ptr @dvb_ca_en50221_frda_irq._entry, ptr @dvb_ca_en50221_frda_irq._entry.7, ptr @dvb_ca_en50221_frda_irq._entry_ptr, ptr @dvb_ca_en50221_frda_irq._entry_ptr.9, ptr @dvb_ca_en50221_init._entry, ptr @dvb_ca_en50221_init._entry.18, ptr @dvb_ca_en50221_init._entry_ptr, ptr @dvb_ca_en50221_init._entry_ptr.20, ptr @dvb_ca_en50221_io_do_ioctl._entry, ptr @dvb_ca_en50221_io_do_ioctl._entry_ptr, ptr @dvb_ca_en50221_io_open._entry, ptr @dvb_ca_en50221_io_open._entry_ptr, ptr @dvb_ca_en50221_io_poll._entry, ptr @dvb_ca_en50221_io_poll._entry_ptr, ptr @dvb_ca_en50221_io_read._entry, ptr @dvb_ca_en50221_io_read._entry.25, ptr @dvb_ca_en50221_io_read._entry_ptr, ptr @dvb_ca_en50221_io_read._entry_ptr.27, ptr @dvb_ca_en50221_io_release._entry, ptr @dvb_ca_en50221_io_release._entry_ptr, ptr @dvb_ca_en50221_io_write._entry, ptr @dvb_ca_en50221_io_write._entry_ptr, ptr @dvb_ca_en50221_link_init._entry, ptr @dvb_ca_en50221_link_init._entry.92, ptr @dvb_ca_en50221_link_init._entry_ptr, ptr @dvb_ca_en50221_link_init._entry_ptr.94, ptr @dvb_ca_en50221_parse_attributes._entry, ptr @dvb_ca_en50221_parse_attributes._entry.73, ptr @dvb_ca_en50221_parse_attributes._entry.76, ptr @dvb_ca_en50221_parse_attributes._entry_ptr, ptr @dvb_ca_en50221_parse_attributes._entry_ptr.75, ptr @dvb_ca_en50221_parse_attributes._entry_ptr.78, ptr @dvb_ca_en50221_read_data._entry, ptr @dvb_ca_en50221_read_data._entry.103, ptr @dvb_ca_en50221_read_data._entry.106, ptr @dvb_ca_en50221_read_data._entry.109, ptr @dvb_ca_en50221_read_data._entry.112, ptr @dvb_ca_en50221_read_data._entry_ptr, ptr @dvb_ca_en50221_read_data._entry_ptr.105, ptr @dvb_ca_en50221_read_data._entry_ptr.108, ptr @dvb_ca_en50221_read_data._entry_ptr.111, ptr @dvb_ca_en50221_read_data._entry_ptr.114, ptr @dvb_ca_en50221_read_tuple._entry, ptr @dvb_ca_en50221_read_tuple._entry.81, ptr @dvb_ca_en50221_read_tuple._entry.84, ptr @dvb_ca_en50221_read_tuple._entry_ptr, ptr @dvb_ca_en50221_read_tuple._entry_ptr.83, ptr @dvb_ca_en50221_read_tuple._entry_ptr.86, ptr @dvb_ca_en50221_release._entry, ptr @dvb_ca_en50221_release._entry_ptr, ptr @dvb_ca_en50221_set_configoption._entry, ptr @dvb_ca_en50221_set_configoption._entry.88, ptr @dvb_ca_en50221_set_configoption._entry_ptr, ptr @dvb_ca_en50221_set_configoption._entry_ptr.90, ptr @dvb_ca_en50221_slot_shutdown._entry, ptr @dvb_ca_en50221_slot_shutdown._entry.116, ptr @dvb_ca_en50221_slot_shutdown._entry_ptr, ptr @dvb_ca_en50221_slot_shutdown._entry_ptr.118, ptr @dvb_ca_en50221_thread._entry, ptr @dvb_ca_en50221_thread._entry_ptr, ptr @dvb_ca_en50221_thread_state_machine._entry, ptr @dvb_ca_en50221_thread_state_machine._entry.43, ptr @dvb_ca_en50221_thread_state_machine._entry.46, ptr @dvb_ca_en50221_thread_state_machine._entry.49, ptr @dvb_ca_en50221_thread_state_machine._entry.52, ptr @dvb_ca_en50221_thread_state_machine._entry.55, ptr @dvb_ca_en50221_thread_state_machine._entry.58, ptr @dvb_ca_en50221_thread_state_machine._entry.61, ptr @dvb_ca_en50221_thread_state_machine._entry.64, ptr @dvb_ca_en50221_thread_state_machine._entry_ptr, ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.45, ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.48, ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.51, ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.54, ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.57, ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.60, ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.63, ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.66, ptr @dvb_ca_en50221_thread_wakeup._entry, ptr @dvb_ca_en50221_thread_wakeup._entry_ptr, ptr @dvb_ca_en50221_wait_if_status._entry, ptr @dvb_ca_en50221_wait_if_status._entry.96, ptr @dvb_ca_en50221_wait_if_status._entry.99, ptr @dvb_ca_en50221_wait_if_status._entry_ptr, ptr @dvb_ca_en50221_wait_if_status._entry_ptr.101, ptr @dvb_ca_en50221_wait_if_status._entry_ptr.98, ptr @dvb_ca_en50221_write_data._entry, ptr @dvb_ca_en50221_write_data._entry.33, ptr @dvb_ca_en50221_write_data._entry_ptr, ptr @dvb_ca_en50221_write_data._entry_ptr.35, ptr @dvb_ca_en50221_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @dvb_ca_en50221_init.__key, ptr @.str.12, ptr @dvbdev_ca, ptr @dvb_ca_en50221_init.__key.13, ptr @.str.14, ptr @dvb_ca_en50221_init.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @dvb_ca_fops, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.117], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_camchange_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_camready_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_frda_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_frda_irq._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbdev_ca to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_thread_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_io_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_io_read._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_io_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_write_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_write_data._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_io_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_io_do_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_io_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_io_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_thread_state_machine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_thread_state_machine._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_thread_state_machine._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_thread_state_machine._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_thread_state_machine._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_thread_state_machine._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_thread_state_machine._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_thread_state_machine._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_thread_state_machine._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_parse_attributes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_parse_attributes._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_parse_attributes._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_read_tuple._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_read_tuple._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_read_tuple._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_set_configoption._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_set_configoption._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_link_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_link_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_wait_if_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_wait_if_status._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_wait_if_status._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_read_data._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_read_data._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_read_data._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_read_data._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_slot_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_en50221_slot_shutdown._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dvb_ca_en50221_camchange_irq(ptr nocapture noundef readonly %pubca, i32 noundef %slot, i32 noundef %change_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dvb_ca_en50221, ptr %pubca, i32 0, i32 12
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %slot_info = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slot_info, align 4
  %4 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %slot, i32 noundef %change_type) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %change_type)
  %switch = icmp ult i32 %change_type, 2
  br i1 %switch, label %sw.epilog, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog:                                        ; preds = %do.end3
  %camchange_type = getelementptr %struct.dvb_ca_slot, ptr %3, i32 %slot, i32 3
  %5 = ptrtoint ptr %camchange_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %change_type, ptr %camchange_type, align 4
  %camchange_count = getelementptr %struct.dvb_ca_slot, ptr %3, i32 %slot, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %camchange_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %camchange_count, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %camchange_count, ptr %camchange_count, i32 1, ptr elementtype(i32) %camchange_count) #12, !srcloc !258
  %7 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %sw.epilog.dvb_ca_en50221_thread_wakeup.exit_crit_edge, label %do.end.i

sw.epilog.dvb_ca_en50221_thread_wakeup.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_wakeup.exit

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22) #15
  br label %dvb_ca_en50221_thread_wakeup.exit

dvb_ca_en50221_thread_wakeup.exit:                ; preds = %do.end.i, %sw.epilog.dvb_ca_en50221_thread_wakeup.exit_crit_edge
  %wakeup.i = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %wakeup.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %wakeup.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  tail call void @arm_heavy_mb() #12
  %thread.i = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %thread.i, align 4
  %call5.i = tail call i32 @wake_up_process(ptr noundef %10) #12
  br label %cleanup

cleanup:                                          ; preds = %dvb_ca_en50221_thread_wakeup.exit, %do.end3.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dvb_ca_en50221_thread_wakeup(ptr nocapture noundef %ca) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22) #15
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %wakeup = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 8
  %1 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %wakeup, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %wakeup, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  tail call void @arm_heavy_mb() #12
  %thread = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 7
  %2 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %thread, align 4
  %call5 = tail call i32 @wake_up_process(ptr noundef %3) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dvb_ca_en50221_camready_irq(ptr nocapture noundef readonly %pubca, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dvb_ca_en50221, ptr %pubca, i32 0, i32 12
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %slot_info = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slot_info, align 4
  %arrayidx = getelementptr %struct.dvb_ca_slot, ptr %3, i32 %slot
  %4 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %slot) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp eq i32 %6, 4
  br i1 %cmp, label %if.then4, label %do.end3.if.end6_crit_edge

do.end3.if.end6_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %do.end3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %arrayidx, align 4
  %8 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then4.dvb_ca_en50221_thread_wakeup.exit_crit_edge, label %do.end.i

if.then4.dvb_ca_en50221_thread_wakeup.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_wakeup.exit

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22) #15
  br label %dvb_ca_en50221_thread_wakeup.exit

dvb_ca_en50221_thread_wakeup.exit:                ; preds = %do.end.i, %if.then4.dvb_ca_en50221_thread_wakeup.exit_crit_edge
  %wakeup.i = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %wakeup.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %wakeup.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  tail call void @arm_heavy_mb() #12
  %thread.i = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %thread.i, align 4
  %call5.i = tail call i32 @wake_up_process(ptr noundef %11) #12
  br label %if.end6

if.end6:                                          ; preds = %dvb_ca_en50221_thread_wakeup.exit, %do.end3.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dvb_ca_en50221_frda_irq(ptr noundef %pubca, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dvb_ca_en50221, ptr %pubca, i32 0, i32 12
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %slot_info = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slot_info, align 4
  %arrayidx = getelementptr %struct.dvb_ca_slot, ptr %3, i32 %slot
  %4 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %slot) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end3.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 2, label %sw.bb19
  ]

do.end3.sw.epilog_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end3
  %pub = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pub, align 4
  %read_cam_control = getelementptr inbounds %struct.dvb_ca_en50221, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %read_cam_control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_cam_control, align 4
  %call4 = tail call i32 %11(ptr noundef %pubca, i32 noundef %slot, i8 noundef zeroext 1) #12
  %and = and i32 %call4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %sw.bb.sw.epilog_crit_edge, label %do.body7

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body7:                                         ; preds = %sw.bb
  %12 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %do.body7.do.end17_crit_edge, label %do.end12

do.body7.do.end17_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6) #15
  br label %do.end17

do.end17:                                         ; preds = %do.end12, %do.body7.do.end17_crit_edge
  %da_irq_supported = getelementptr %struct.dvb_ca_slot, ptr %3, i32 %slot, i32 6
  %13 = ptrtoint ptr %da_irq_supported to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %da_irq_supported, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %da_irq_supported, align 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end3
  %open = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load20 = load i8, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load20)
  %tobool21.not = icmp sgt i8 %bf.load20, -1
  br i1 %tobool21.not, label %sw.bb19.sw.epilog_crit_edge, label %if.then22

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb19
  %15 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then22.dvb_ca_en50221_thread_wakeup.exit_crit_edge, label %do.end.i

if.then22.dvb_ca_en50221_thread_wakeup.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_wakeup.exit

do.end.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22) #15
  br label %dvb_ca_en50221_thread_wakeup.exit

dvb_ca_en50221_thread_wakeup.exit:                ; preds = %do.end.i, %if.then22.dvb_ca_en50221_thread_wakeup.exit_crit_edge
  %16 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %open, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %open, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  tail call void @arm_heavy_mb() #12
  %thread.i = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %thread.i, align 4
  %call5.i = tail call i32 @wake_up_process(ptr noundef %18) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %dvb_ca_en50221_thread_wakeup.exit, %sw.bb19.sw.epilog_crit_edge, %do.end17, %sw.bb.sw.epilog_crit_edge, %do.end3.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_ca_en50221_init(ptr noundef %dvb_adapter, ptr noundef %pubca, i32 noundef %flags, i32 noundef %slot_count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.11) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %slot_count)
  %cmp = icmp slt i32 %slot_count, 1
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end5

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 184) #16
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.exit_crit_edge, label %if.end9

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end9:                                          ; preds = %if.end5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #12
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %call7.i.i, align 8
  %pub = getelementptr inbounds %struct.dvb_ca_private, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pub to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pubca, ptr %pub, align 4
  %flags10 = getelementptr inbounds %struct.dvb_ca_private, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %flags10, align 4
  %slot_count11 = getelementptr inbounds %struct.dvb_ca_private, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %slot_count11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %slot_count, ptr %slot_count11, align 8
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %slot_count, i32 236) #12
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !260

kcalloc.exit.thread:                              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %slot_info108 = getelementptr inbounds %struct.dvb_ca_private, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %slot_info108 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %slot_info108, align 4
  br label %free_ca

if.end7.i.i:                                      ; preds = %if.end9
  %9 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #17
  %slot_info = getelementptr inbounds %struct.dvb_ca_private, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %slot_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i, ptr %slot_info, align 4
  %tobool14.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool14.not, label %if.end7.i.i.free_ca_crit_edge, label %do.body17

if.end7.i.i.free_ca_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_ca

do.body17:                                        ; preds = %if.end7.i.i
  %wait_queue = getelementptr inbounds %struct.dvb_ca_private, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %wait_queue, ptr noundef nonnull @.str.12, ptr noundef nonnull @dvb_ca_en50221_init.__key) #12
  %open = getelementptr inbounds %struct.dvb_ca_private, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %open, align 8
  %bf.clear21 = and i8 %bf.load, 63
  store i8 %bf.clear21, ptr %open, align 8
  %next_read_slot = getelementptr inbounds %struct.dvb_ca_private, ptr %call7.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %next_read_slot to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %next_read_slot, align 8
  %private = getelementptr inbounds %struct.dvb_ca_en50221, ptr %pubca, i32 0, i32 12
  %13 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %private, align 4
  %dvbdev = getelementptr inbounds %struct.dvb_ca_private, ptr %call7.i.i, i32 0, i32 2
  %call23 = tail call i32 @dvb_register_device(ptr noundef %dvb_adapter, ptr noundef %dvbdev, ptr noundef nonnull @dvbdev_ca, ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body17.for.body_crit_edge, label %do.body17.free_slot_info_crit_edge

do.body17.free_slot_info_crit_edge:               ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_slot_info

do.body17.for.body_crit_edge:                     ; preds = %do.body17
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body17.for.body_crit_edge
  %i.0119 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body17.for.body_crit_edge ]
  %14 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slot_info, align 4
  %arrayidx = getelementptr %struct.dvb_ca_slot, ptr %15, i32 %i.0119
  %camchange_count = getelementptr %struct.dvb_ca_slot, ptr %15, i32 %i.0119, i32 2
  %16 = call ptr @memset(ptr %arrayidx, i32 0, i32 236)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %camchange_count, i32 noundef 4) #12
  %17 = ptrtoint ptr %camchange_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %camchange_count, align 4
  %camchange_type = getelementptr %struct.dvb_ca_slot, ptr %15, i32 %i.0119, i32 3
  %18 = ptrtoint ptr %camchange_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %camchange_type, align 4
  %slot_lock = getelementptr %struct.dvb_ca_slot, ptr %15, i32 %i.0119, i32 1
  tail call void @__mutex_init(ptr noundef %slot_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @dvb_ca_en50221_init.__key.13) #12
  %inc = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, %slot_count
  br i1 %exitcond.not, label %do.body32, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body32:                                        ; preds = %for.body
  %ioctl_mutex = getelementptr inbounds %struct.dvb_ca_private, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %ioctl_mutex, ptr noundef nonnull @.str.16, ptr noundef nonnull @dvb_ca_en50221_init.__key.15) #12
  %19 = tail call i32 @llvm.read_register.i32(metadata !248) #12
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stack.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %27 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %do.body32.unregister_device_crit_edge, !prof !261

do.body32.unregister_device_crit_edge:            ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  br label %unregister_device

signal_pending.exit:                              ; preds = %do.body32
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %24, align 4
  %and1.i.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool37.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool37.not, label %do.body40, label %signal_pending.exit.unregister_device_crit_edge

signal_pending.exit.unregister_device_crit_edge:  ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unregister_device

do.body40:                                        ; preds = %signal_pending.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !262
  tail call void @arm_heavy_mb() #12
  %30 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dvbdev, align 8
  %adapter = getelementptr inbounds %struct.dvb_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %id = getelementptr inbounds %struct.dvb_device, ptr %31, i32 0, i32 5
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id, align 4
  %call45 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @dvb_ca_en50221_thread, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.17, i32 noundef %35, i32 noundef %37) #12
  %cmp.i = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then53, label %if.end49

if.end49:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  %call48 = tail call i32 @wake_up_process(ptr noundef %call45) #12
  %thread = getelementptr inbounds %struct.dvb_ca_private, ptr %call7.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call45, ptr %thread, align 4
  br label %cleanup

if.then53:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  %thread117 = getelementptr inbounds %struct.dvb_ca_private, ptr %call7.i.i, i32 0, i32 7
  %39 = ptrtoint ptr %thread117 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call45, ptr %thread117, align 4
  %40 = ptrtoint ptr %call45 to i32
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %40) #15
  br label %unregister_device

unregister_device:                                ; preds = %if.then53, %signal_pending.exit.unregister_device_crit_edge, %do.body32.unregister_device_crit_edge
  %ret.0 = phi i32 [ %40, %if.then53 ], [ -4, %signal_pending.exit.unregister_device_crit_edge ], [ -4, %do.body32.unregister_device_crit_edge ]
  %41 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dvbdev, align 8
  tail call void @dvb_unregister_device(ptr noundef %42) #12
  br label %free_slot_info

free_slot_info:                                   ; preds = %unregister_device, %do.body17.free_slot_info_crit_edge
  %ret.1 = phi i32 [ %call23, %do.body17.free_slot_info_crit_edge ], [ %ret.0, %unregister_device ]
  %43 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %slot_info, align 4
  tail call void @kfree(ptr noundef %44) #12
  br label %free_ca

free_ca:                                          ; preds = %free_slot_info, %if.end7.i.i.free_ca_crit_edge, %kcalloc.exit.thread
  %ret.2 = phi i32 [ %ret.1, %free_slot_info ], [ -12, %if.end7.i.i.free_ca_crit_edge ], [ -12, %kcalloc.exit.thread ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %exit

exit:                                             ; preds = %free_ca, %if.end5.exit_crit_edge
  %ret.3 = phi i32 [ %ret.2, %free_ca ], [ -12, %if.end5.exit_crit_edge ]
  %private64 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %pubca, i32 0, i32 12
  %45 = ptrtoint ptr %private64 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %private64, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end49, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %exit ], [ -22, %do.end3.cleanup_crit_edge ], [ 0, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_thread(ptr noundef %data) #0 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %address.i.i = alloca i32, align 4
  %tuple_length.i.i = alloca i32, align 4
  %tuple_type.i.i = alloca i32, align 4
  %tuple.i.i = alloca [257 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.40) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %slot_count.i = getelementptr inbounds %struct.dvb_ca_private, ptr %data, i32 0, i32 4
  %1 = ptrtoint ptr %slot_count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp44.not.i = icmp eq i32 %2, 0
  br i1 %cmp44.not.i, label %do.end3.dvb_ca_en50221_thread_update_delay.exit_crit_edge, label %for.body.lr.ph.i

do.end3.dvb_ca_en50221_thread_update_delay.exit_crit_edge: ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit

for.body.lr.ph.i:                                 ; preds = %do.end3
  %slot_info.i = getelementptr inbounds %struct.dvb_ca_private, ptr %data, i32 0, i32 5
  %3 = ptrtoint ptr %slot_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slot_info.i, align 4
  %flags2.i = getelementptr inbounds %struct.dvb_ca_private, ptr %data, i32 0, i32 3
  %open.i = getelementptr inbounds %struct.dvb_ca_private, ptr %data, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %slot.046.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ]
  %curdelay.045.i = phi i32 [ 100000000, %for.body.lr.ph.i ], [ %16, %sw.epilog.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dvb_ca_slot, ptr %4, i32 %slot.046.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %6, label %sw.bb.i [
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb1.i
    i32 1, label %for.body.i.sw.epilog.i_crit_edge
    i32 4, label %for.body.i.sw.epilog.i_crit_edge314
    i32 5, label %for.body.i.sw.epilog.i_crit_edge315
    i32 6, label %for.body.i.sw.epilog.i_crit_edge316
    i32 7, label %for.body.i.sw.epilog.i_crit_edge317
  ]

for.body.i.sw.epilog.i_crit_edge317:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge316:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge315:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge314:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags2.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 500, i32 6000
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags2.i, align 4
  %and3.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %spec.store.select29.i = select i1 %tobool4.not.i, i32 10, i32 6000
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %for.body.i
  %12 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags2.i, align 4
  %and10.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %spec.store.select30.i = select i1 %tobool11.not.i, i32 10, i32 6000
  %14 = ptrtoint ptr %open.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %open.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool14.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool14.not.i, label %sw.bb8.i.sw.epilog.i_crit_edge, label %if.then15.i

sw.bb8.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then15.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  %da_irq_supported.i = getelementptr %struct.dvb_ca_slot, ptr %4, i32 %slot.046.i, i32 6
  %15 = ptrtoint ptr %da_irq_supported.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load16.i = load i8, ptr %da_irq_supported.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16.i)
  %tobool18.not.i = icmp sgt i8 %bf.load16.i, -1
  %and20.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %or.cond.i = select i1 %tobool18.not.i, i1 true, i1 %tobool21.not.i
  %spec.select43.i = select i1 %or.cond.i, i32 10, i32 %spec.store.select30.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then15.i, %sw.bb8.i.sw.epilog.i_crit_edge, %sw.bb1.i, %sw.bb.i, %for.body.i.sw.epilog.i_crit_edge, %for.body.i.sw.epilog.i_crit_edge314, %for.body.i.sw.epilog.i_crit_edge315, %for.body.i.sw.epilog.i_crit_edge316, %for.body.i.sw.epilog.i_crit_edge317
  %delay.0.i = phi i32 [ %spec.store.select.i, %sw.bb.i ], [ %spec.store.select29.i, %sw.bb1.i ], [ %spec.store.select30.i, %sw.bb8.i.sw.epilog.i_crit_edge ], [ 10, %for.body.i.sw.epilog.i_crit_edge ], [ 10, %for.body.i.sw.epilog.i_crit_edge314 ], [ 10, %for.body.i.sw.epilog.i_crit_edge315 ], [ 10, %for.body.i.sw.epilog.i_crit_edge316 ], [ 10, %for.body.i.sw.epilog.i_crit_edge317 ], [ %spec.select43.i, %if.then15.i ]
  %16 = tail call i32 @llvm.smin.i32(i32 %delay.0.i, i32 %curdelay.045.i) #12
  %inc.i = add nuw i32 %slot.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit

dvb_ca_en50221_thread_update_delay.exit:          ; preds = %sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge, %do.end3.dvb_ca_en50221_thread_update_delay.exit_crit_edge
  %curdelay.0.lcssa.i = phi i32 [ 100000000, %do.end3.dvb_ca_en50221_thread_update_delay.exit_crit_edge ], [ %16, %sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge ]
  %delay28.i = getelementptr inbounds %struct.dvb_ca_private, ptr %data, i32 0, i32 9
  %17 = ptrtoint ptr %delay28.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %curdelay.0.lcssa.i, ptr %delay28.i, align 4
  %call4279 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call4279, label %dvb_ca_en50221_thread_update_delay.exit.cleanup_crit_edge, label %while.body.lr.ph

dvb_ca_en50221_thread_update_delay.exit.cleanup_crit_edge: ; preds = %dvb_ca_en50221_thread_update_delay.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %dvb_ca_en50221_thread_update_delay.exit
  %wakeup = getelementptr inbounds %struct.dvb_ca_private, ptr %data, i32 0, i32 8
  %slot_info.i94 = getelementptr inbounds %struct.dvb_ca_private, ptr %data, i32 0, i32 5
  %pub.i.i = getelementptr inbounds %struct.dvb_ca_private, ptr %data, i32 0, i32 1
  %wait_queue.i.i = getelementptr inbounds %struct.dvb_ca_private, ptr %data, i32 0, i32 6
  %flags2.i.i = getelementptr inbounds %struct.dvb_ca_private, ptr %data, i32 0, i32 3
  %dvbdev87.i = getelementptr inbounds %struct.dvb_ca_private, ptr %data, i32 0, i32 2
  %arrayidx.i265.i = getelementptr inbounds [257 x i8], ptr %tuple.i.i, i32 0, i32 1
  %arrayidx34.i.i = getelementptr inbounds [257 x i8], ptr %tuple.i.i, i32 0, i32 3
  %arrayidx37.i.i = getelementptr inbounds [257 x i8], ptr %tuple.i.i, i32 0, i32 2
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %tuple.i.i to i32
  %sub.ptr.sub.i.i = sub i32 12, %sub.ptr.rhs.cast.i.i
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %arrayidx67.i.i = getelementptr inbounds [257 x i8], ptr %tuple.i.i, i32 0, i32 2
  %arrayidx67.i.i.1 = getelementptr inbounds [257 x i8], ptr %tuple.i.i, i32 0, i32 3
  %arrayidx67.i.i.2 = getelementptr inbounds [257 x i8], ptr %tuple.i.i, i32 0, i32 4
  %arrayidx67.i.i.3 = getelementptr inbounds [257 x i8], ptr %tuple.i.i, i32 0, i32 5
  br label %while.body

while.cond.loopexit:                              ; preds = %dvb_ca_en50221_thread_state_machine.exit.while.cond.loopexit_crit_edge, %if.end79.while.cond.loopexit_crit_edge
  %call4 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call4, label %while.cond.loopexit.cleanup_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.loopexit.cleanup_crit_edge:            ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %19 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %wakeup, align 4
  %20 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not = icmp eq i8 %20, 0
  br i1 %tobool5.not, label %__here, label %while.body.if.end79_crit_edge

while.body.if.end79_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

__here:                                           ; preds = %while.body
  %21 = call i32 @llvm.read_register.i32(metadata !248) #12
  %and.i93 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i93 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 212
  %25 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 ptrtoint (ptr blockaddress(@dvb_ca_en50221_thread, %__here) to i32), ptr %task_state_change, align 4
  %26 = load ptr, ptr %task, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %26, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !263
  %28 = ptrtoint ptr %delay28.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %delay28.i, align 4
  %call75 = call i32 @schedule_timeout(i32 noundef %29) #12
  %call76 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call76, label %__here.cleanup_crit_edge, label %__here.if.end79_crit_edge

__here.if.end79_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

__here.cleanup_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end79:                                         ; preds = %__here.if.end79_crit_edge, %while.body.if.end79_crit_edge
  %30 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load81 = load i8, ptr %wakeup, align 4
  %bf.clear82 = and i8 %bf.load81, -65
  store i8 %bf.clear82, ptr %wakeup, align 4
  %31 = ptrtoint ptr %slot_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp272.not = icmp eq i32 %32, 0
  br i1 %cmp272.not, label %if.end79.while.cond.loopexit_crit_edge, label %if.end79.for.body_crit_edge

if.end79.for.body_crit_edge:                      ; preds = %if.end79
  br label %for.body

if.end79.while.cond.loopexit_crit_edge:           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.loopexit

for.body:                                         ; preds = %dvb_ca_en50221_thread_state_machine.exit.for.body_crit_edge, %if.end79.for.body_crit_edge
  %slot.0273 = phi i32 [ %inc, %dvb_ca_en50221_thread_state_machine.exit.for.body_crit_edge ], [ 0, %if.end79.for.body_crit_edge ]
  %33 = ptrtoint ptr %slot_info.i94 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %slot_info.i94, align 4
  %arrayidx.i95 = getelementptr %struct.dvb_ca_slot, ptr %34, i32 %slot.0273
  %slot_lock.i = getelementptr %struct.dvb_ca_slot, ptr %34, i32 %slot.0273, i32 1
  call void @mutex_lock_nested(ptr noundef %slot_lock.i, i32 noundef 0) #12
  %call311.i = call fastcc i32 @dvb_ca_en50221_check_camstatus(ptr noundef %data, i32 noundef %slot.0273) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call311.i)
  %tobool.not312.i = icmp eq i32 %call311.i, 0
  br i1 %tobool.not312.i, label %for.body.while.end.i_crit_edge, label %while.body.lr.ph.i

for.body.while.end.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %for.body
  %camchange_type.i = getelementptr %struct.dvb_ca_slot, ptr %34, i32 %slot.0273, i32 3
  %camchange_count.i = getelementptr %struct.dvb_ca_slot, ptr %34, i32 %slot.0273, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %dvb_ca_en50221_thread_update_delay.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %35 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.not.i = icmp eq i32 %36, 0
  br i1 %cmp.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  %37 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i, label %if.then.i.do.end2.i.i_crit_edge, label %do.end.i.i

if.then.i.do.end2.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end2.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.115) #15
  br label %do.end2.i.i

do.end2.i.i:                                      ; preds = %do.end.i.i, %if.then.i.do.end2.i.i_crit_edge
  %38 = ptrtoint ptr %pub.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pub.i.i, align 4
  %slot_shutdown.i.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %slot_shutdown.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %slot_shutdown.i.i, align 4
  %call4.i.i = call i32 %41(ptr noundef %39, i32 noundef %slot.0273) #12
  %42 = ptrtoint ptr %slot_info.i94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %slot_info.i94, align 4
  %arrayidx.i.i = getelementptr %struct.dvb_ca_slot, ptr %43, i32 %slot.0273
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx.i.i, align 4
  call void @__wake_up(ptr noundef %wait_queue.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %45 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool6.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool6.not.i.i, label %do.end2.i.i.if.end.i_crit_edge, label %do.end9.i.i

do.end2.i.i.if.end.i_crit_edge:                   ; preds = %do.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end9.i.i:                                      ; preds = %do.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.115, i32 noundef %slot.0273) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end9.i.i, %do.end2.i.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %46 = ptrtoint ptr %camchange_type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %camchange_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp2.i = icmp eq i32 %47, 1
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %arrayidx.i95, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %49 = ptrtoint ptr %slot_count.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp44.not.i.i = icmp eq i32 %50, 0
  br i1 %cmp44.not.i.i, label %if.end5.i.dvb_ca_en50221_thread_update_delay.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end5.i.dvb_ca_en50221_thread_update_delay.exit.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end5.i
  %51 = ptrtoint ptr %slot_info.i94 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %slot_info.i94, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %sw.epilog.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %slot.046.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %sw.epilog.i.i.for.body.i.i_crit_edge ]
  %curdelay.045.i.i = phi i32 [ 100000000, %for.body.lr.ph.i.i ], [ %64, %sw.epilog.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i262.i = getelementptr %struct.dvb_ca_slot, ptr %52, i32 %slot.046.i.i
  %53 = ptrtoint ptr %arrayidx.i262.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i262.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %54, label %sw.bb.i.i [
    i32 2, label %sw.bb8.i.i
    i32 3, label %sw.bb1.i.i
    i32 1, label %for.body.i.i.sw.epilog.i.i_crit_edge
    i32 4, label %for.body.i.i.sw.epilog.i.i_crit_edge318
    i32 5, label %for.body.i.i.sw.epilog.i.i_crit_edge319
    i32 6, label %for.body.i.i.sw.epilog.i.i_crit_edge320
    i32 7, label %for.body.i.i.sw.epilog.i.i_crit_edge321
  ]

for.body.i.i.sw.epilog.i.i_crit_edge321:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

for.body.i.i.sw.epilog.i.i_crit_edge320:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

for.body.i.i.sw.epilog.i.i_crit_edge319:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

for.body.i.i.sw.epilog.i.i_crit_edge318:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

for.body.i.i.sw.epilog.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags2.i.i, align 4
  %and.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i263.i = icmp eq i32 %and.i.i, 0
  %spec.store.select.i.i = select i1 %tobool.not.i263.i, i32 500, i32 6000
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags2.i.i, align 4
  %and3.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %spec.store.select29.i.i = select i1 %tobool4.not.i.i, i32 10, i32 6000
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %for.body.i.i
  %60 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags2.i.i, align 4
  %and10.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  %spec.store.select30.i.i = select i1 %tobool11.not.i.i, i32 10, i32 6000
  %62 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.i.i = load i8, ptr %wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool14.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool14.not.i.i, label %sw.bb8.i.i.sw.epilog.i.i_crit_edge, label %if.then15.i.i

sw.bb8.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

if.then15.i.i:                                    ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %da_irq_supported.i.i = getelementptr %struct.dvb_ca_slot, ptr %52, i32 %slot.046.i.i, i32 6
  %63 = ptrtoint ptr %da_irq_supported.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load16.i.i = load i8, ptr %da_irq_supported.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16.i.i)
  %tobool18.not.i.i = icmp sgt i8 %bf.load16.i.i, -1
  %and20.i.i = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  %or.cond.i.i = select i1 %tobool18.not.i.i, i1 true, i1 %tobool21.not.i.i
  %spec.select43.i.i = select i1 %or.cond.i.i, i32 10, i32 %spec.store.select30.i.i
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.then15.i.i, %sw.bb8.i.i.sw.epilog.i.i_crit_edge, %sw.bb1.i.i, %sw.bb.i.i, %for.body.i.i.sw.epilog.i.i_crit_edge, %for.body.i.i.sw.epilog.i.i_crit_edge318, %for.body.i.i.sw.epilog.i.i_crit_edge319, %for.body.i.i.sw.epilog.i.i_crit_edge320, %for.body.i.i.sw.epilog.i.i_crit_edge321
  %delay.0.i.i = phi i32 [ %spec.store.select.i.i, %sw.bb.i.i ], [ %spec.store.select29.i.i, %sw.bb1.i.i ], [ %spec.store.select30.i.i, %sw.bb8.i.i.sw.epilog.i.i_crit_edge ], [ 10, %for.body.i.i.sw.epilog.i.i_crit_edge ], [ 10, %for.body.i.i.sw.epilog.i.i_crit_edge318 ], [ 10, %for.body.i.i.sw.epilog.i.i_crit_edge319 ], [ 10, %for.body.i.i.sw.epilog.i.i_crit_edge320 ], [ 10, %for.body.i.i.sw.epilog.i.i_crit_edge321 ], [ %spec.select43.i.i, %if.then15.i.i ]
  %64 = call i32 @llvm.smin.i32(i32 %delay.0.i.i, i32 %curdelay.045.i.i) #12
  %inc.i.i = add nuw i32 %slot.046.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %50
  br i1 %exitcond.not.i.i, label %sw.epilog.i.i.dvb_ca_en50221_thread_update_delay.exit.i_crit_edge, label %sw.epilog.i.i.for.body.i.i_crit_edge

sw.epilog.i.i.for.body.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

sw.epilog.i.i.dvb_ca_en50221_thread_update_delay.exit.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit.i

dvb_ca_en50221_thread_update_delay.exit.i:        ; preds = %sw.epilog.i.i.dvb_ca_en50221_thread_update_delay.exit.i_crit_edge, %if.end5.i.dvb_ca_en50221_thread_update_delay.exit.i_crit_edge
  %curdelay.0.lcssa.i.i = phi i32 [ 100000000, %if.end5.i.dvb_ca_en50221_thread_update_delay.exit.i_crit_edge ], [ %64, %sw.epilog.i.i.dvb_ca_en50221_thread_update_delay.exit.i_crit_edge ]
  %65 = ptrtoint ptr %delay28.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %curdelay.0.lcssa.i.i, ptr %delay28.i, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %camchange_count.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %camchange_count.i, i32 1, i32 3, i32 1) #12
  %66 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %camchange_count.i, ptr %camchange_count.i, i32 1, ptr elementtype(i32) %camchange_count.i) #12, !srcloc !264
  %call.i = call fastcc i32 @dvb_ca_en50221_check_camstatus(ptr noundef %data, i32 noundef %slot.0273) #12
  %tobool.not.i96 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i96, label %dvb_ca_en50221_thread_update_delay.exit.i.while.end.i_crit_edge, label %dvb_ca_en50221_thread_update_delay.exit.i.while.body.i_crit_edge

dvb_ca_en50221_thread_update_delay.exit.i.while.body.i_crit_edge: ; preds = %dvb_ca_en50221_thread_update_delay.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

dvb_ca_en50221_thread_update_delay.exit.i.while.end.i_crit_edge: ; preds = %dvb_ca_en50221_thread_update_delay.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %dvb_ca_en50221_thread_update_delay.exit.i.while.end.i_crit_edge, %for.body.while.end.i_crit_edge
  %67 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i95, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %68, label %while.end.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge [
    i32 2, label %sw.bb151.i
    i32 7, label %sw.bb104.i
    i32 1, label %sw.bb7.i
    i32 4, label %sw.bb11.i
    i32 5, label %sw.bb18.i
    i32 6, label %sw.bb78.i
  ]

while.end.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_state_machine.exit

sw.bb7.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 4, ptr %arrayidx.i95, align 4
  %71 = ptrtoint ptr %pub.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pub.i.i, align 4
  %slot_reset.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %slot_reset.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %slot_reset.i, align 4
  %call10.i = call i32 %74(ptr noundef %72, i32 noundef %slot.0273) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %75, 1000
  %timeout.i = getelementptr %struct.dvb_ca_slot, ptr %34, i32 %slot.0273, i32 9
  %76 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add.i, ptr %timeout.i, align 4
  br label %dvb_ca_en50221_thread_state_machine.exit

sw.bb11.i:                                        ; preds = %while.end.i
  %timeout12.i = getelementptr %struct.dvb_ca_slot, ptr %34, i32 %slot.0273, i32 9
  %77 = ptrtoint ptr %timeout12.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %timeout12.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %78, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp13.i = icmp slt i32 %sub.i, 0
  br i1 %cmp13.i, label %do.end.i, label %sw.bb11.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge

sw.bb11.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge: ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_state_machine.exit

do.end.i:                                         ; preds = %sw.bb11.i
  %80 = ptrtoint ptr %dvbdev87.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dvbdev87.i, align 4
  %adapter.i = getelementptr inbounds %struct.dvb_device, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %adapter.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %85) #15
  %86 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 3, ptr %arrayidx.i95, align 4
  %87 = ptrtoint ptr %slot_count.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp44.not.i225 = icmp eq i32 %88, 0
  br i1 %cmp44.not.i225, label %do.end.i.dvb_ca_en50221_thread_update_delay.exit262_crit_edge, label %for.body.lr.ph.i229

do.end.i.dvb_ca_en50221_thread_update_delay.exit262_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit262

for.body.lr.ph.i229:                              ; preds = %do.end.i
  %89 = ptrtoint ptr %slot_info.i94 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %slot_info.i94, align 4
  br label %for.body.i233

for.body.i233:                                    ; preds = %sw.epilog.i259.for.body.i233_crit_edge, %for.body.lr.ph.i229
  %slot.046.i230 = phi i32 [ 0, %for.body.lr.ph.i229 ], [ %inc.i257, %sw.epilog.i259.for.body.i233_crit_edge ]
  %curdelay.045.i231 = phi i32 [ 100000000, %for.body.lr.ph.i229 ], [ %102, %sw.epilog.i259.for.body.i233_crit_edge ]
  %arrayidx.i232 = getelementptr %struct.dvb_ca_slot, ptr %90, i32 %slot.046.i230
  %91 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i232, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %92, label %sw.bb.i237 [
    i32 2, label %sw.bb8.i247
    i32 3, label %sw.bb1.i241
    i32 1, label %for.body.i233.sw.epilog.i259_crit_edge
    i32 4, label %for.body.i233.sw.epilog.i259_crit_edge322
    i32 5, label %for.body.i233.sw.epilog.i259_crit_edge323
    i32 6, label %for.body.i233.sw.epilog.i259_crit_edge324
    i32 7, label %for.body.i233.sw.epilog.i259_crit_edge325
  ]

for.body.i233.sw.epilog.i259_crit_edge325:        ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i259

for.body.i233.sw.epilog.i259_crit_edge324:        ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i259

for.body.i233.sw.epilog.i259_crit_edge323:        ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i259

for.body.i233.sw.epilog.i259_crit_edge322:        ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i259

for.body.i233.sw.epilog.i259_crit_edge:           ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i259

sw.bb.i237:                                       ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags2.i.i, align 4
  %and.i234 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234)
  %tobool.not.i235 = icmp eq i32 %and.i234, 0
  %spec.store.select.i236 = select i1 %tobool.not.i235, i32 500, i32 6000
  br label %sw.epilog.i259

sw.bb1.i241:                                      ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #14
  %96 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags2.i.i, align 4
  %and3.i238 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i238)
  %tobool4.not.i239 = icmp eq i32 %and3.i238, 0
  %spec.store.select29.i240 = select i1 %tobool4.not.i239, i32 10, i32 6000
  br label %sw.epilog.i259

sw.bb8.i247:                                      ; preds = %for.body.i233
  %98 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags2.i.i, align 4
  %and10.i242 = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i242)
  %tobool11.not.i243 = icmp eq i32 %and10.i242, 0
  %spec.store.select30.i244 = select i1 %tobool11.not.i243, i32 10, i32 6000
  %100 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i245 = load i8, ptr %wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i245)
  %tobool14.not.i246 = icmp sgt i8 %bf.load.i245, -1
  br i1 %tobool14.not.i246, label %sw.bb8.i247.sw.epilog.i259_crit_edge, label %if.then15.i255

sw.bb8.i247.sw.epilog.i259_crit_edge:             ; preds = %sw.bb8.i247
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i259

if.then15.i255:                                   ; preds = %sw.bb8.i247
  call void @__sanitizer_cov_trace_pc() #14
  %da_irq_supported.i248 = getelementptr %struct.dvb_ca_slot, ptr %90, i32 %slot.046.i230, i32 6
  %101 = ptrtoint ptr %da_irq_supported.i248 to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load16.i249 = load i8, ptr %da_irq_supported.i248, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16.i249)
  %tobool18.not.i250 = icmp sgt i8 %bf.load16.i249, -1
  %and20.i251 = and i32 %99, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i251)
  %tobool21.not.i252 = icmp eq i32 %and20.i251, 0
  %or.cond.i253 = select i1 %tobool18.not.i250, i1 true, i1 %tobool21.not.i252
  %spec.select43.i254 = select i1 %or.cond.i253, i32 10, i32 %spec.store.select30.i244
  br label %sw.epilog.i259

sw.epilog.i259:                                   ; preds = %if.then15.i255, %sw.bb8.i247.sw.epilog.i259_crit_edge, %sw.bb1.i241, %sw.bb.i237, %for.body.i233.sw.epilog.i259_crit_edge, %for.body.i233.sw.epilog.i259_crit_edge322, %for.body.i233.sw.epilog.i259_crit_edge323, %for.body.i233.sw.epilog.i259_crit_edge324, %for.body.i233.sw.epilog.i259_crit_edge325
  %delay.0.i256 = phi i32 [ %spec.store.select.i236, %sw.bb.i237 ], [ %spec.store.select29.i240, %sw.bb1.i241 ], [ %spec.store.select30.i244, %sw.bb8.i247.sw.epilog.i259_crit_edge ], [ 10, %for.body.i233.sw.epilog.i259_crit_edge ], [ 10, %for.body.i233.sw.epilog.i259_crit_edge322 ], [ 10, %for.body.i233.sw.epilog.i259_crit_edge323 ], [ 10, %for.body.i233.sw.epilog.i259_crit_edge324 ], [ 10, %for.body.i233.sw.epilog.i259_crit_edge325 ], [ %spec.select43.i254, %if.then15.i255 ]
  %102 = call i32 @llvm.smin.i32(i32 %delay.0.i256, i32 %curdelay.045.i231) #12
  %inc.i257 = add nuw i32 %slot.046.i230, 1
  %exitcond.not.i258 = icmp eq i32 %inc.i257, %88
  br i1 %exitcond.not.i258, label %sw.epilog.i259.dvb_ca_en50221_thread_update_delay.exit262_crit_edge, label %sw.epilog.i259.for.body.i233_crit_edge

sw.epilog.i259.for.body.i233_crit_edge:           ; preds = %sw.epilog.i259
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i233

sw.epilog.i259.dvb_ca_en50221_thread_update_delay.exit262_crit_edge: ; preds = %sw.epilog.i259
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit262

dvb_ca_en50221_thread_update_delay.exit262:       ; preds = %sw.epilog.i259.dvb_ca_en50221_thread_update_delay.exit262_crit_edge, %do.end.i.dvb_ca_en50221_thread_update_delay.exit262_crit_edge
  %curdelay.0.lcssa.i260 = phi i32 [ 100000000, %do.end.i.dvb_ca_en50221_thread_update_delay.exit262_crit_edge ], [ %102, %sw.epilog.i259.dvb_ca_en50221_thread_update_delay.exit262_crit_edge ]
  %103 = ptrtoint ptr %delay28.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %curdelay.0.lcssa.i260, ptr %delay28.i, align 4
  br label %dvb_ca_en50221_thread_state_machine.exit

sw.bb18.i:                                        ; preds = %while.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %address.i.i) #12
  %104 = ptrtoint ptr %address.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %address.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuple_length.i.i) #12
  %105 = ptrtoint ptr %tuple_length.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %tuple_length.i.i, align 4, !annotation !265
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuple_type.i.i) #12
  %106 = ptrtoint ptr %tuple_type.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %tuple_type.i.i, align 4, !annotation !265
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %tuple.i.i) #12
  %107 = call ptr @memset(ptr %tuple.i.i, i32 255, i32 257)
  %call.i264.i = call fastcc i32 @dvb_ca_en50221_read_tuple(ptr noundef %data, i32 noundef %slot.0273, ptr noundef nonnull %address.i.i, ptr noundef nonnull %tuple_type.i.i, ptr noundef nonnull %tuple_length.i.i, ptr noundef nonnull %tuple.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264.i)
  %cmp.i.i = icmp slt i32 %call.i264.i, 0
  br i1 %cmp.i.i, label %sw.bb18.i.if.then21.i_crit_edge, label %if.end.i.i

sw.bb18.i.if.then21.i_crit_edge:                  ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end.i.i:                                       ; preds = %sw.bb18.i
  %108 = ptrtoint ptr %tuple_type.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tuple_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %109)
  %cmp1.not.i.i = icmp eq i32 %109, 29
  br i1 %cmp1.not.i.i, label %if.end3.i.i, label %if.end.i.i.if.then21.i_crit_edge

if.end.i.i.if.then21.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = call fastcc i32 @dvb_ca_en50221_read_tuple(ptr noundef %data, i32 noundef %slot.0273, ptr noundef nonnull %address.i.i, ptr noundef nonnull %tuple_type.i.i, ptr noundef nonnull %tuple_length.i.i, ptr noundef nonnull %tuple.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %if.end3.i.i.if.then21.i_crit_edge, label %if.end8.i.i

if.end3.i.i.if.then21.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end8.i.i:                                      ; preds = %if.end3.i.i
  %110 = ptrtoint ptr %tuple_type.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tuple_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %111)
  %cmp9.not.i.i = icmp eq i32 %111, 28
  br i1 %cmp9.not.i.i, label %if.end11.i.i, label %if.end8.i.i.if.then21.i_crit_edge

if.end8.i.i.if.then21.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end11.i.i:                                     ; preds = %if.end8.i.i
  %call13.i.i = call fastcc i32 @dvb_ca_en50221_read_tuple(ptr noundef %data, i32 noundef %slot.0273, ptr noundef nonnull %address.i.i, ptr noundef nonnull %tuple_type.i.i, ptr noundef nonnull %tuple_length.i.i, ptr noundef nonnull %tuple.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp14.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %if.end11.i.i.if.then21.i_crit_edge, label %if.end16.i.i

if.end11.i.i.if.then21.i_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end16.i.i:                                     ; preds = %if.end11.i.i
  %112 = ptrtoint ptr %tuple_type.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tuple_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %113)
  %cmp17.not.i.i = icmp eq i32 %113, 21
  br i1 %cmp17.not.i.i, label %if.end19.i.i, label %if.end16.i.i.if.then21.i_crit_edge

if.end16.i.i.if.then21.i_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end19.i.i:                                     ; preds = %if.end16.i.i
  %call21.i.i = call fastcc i32 @dvb_ca_en50221_read_tuple(ptr noundef %data, i32 noundef %slot.0273, ptr noundef nonnull %address.i.i, ptr noundef nonnull %tuple_type.i.i, ptr noundef nonnull %tuple_length.i.i, ptr noundef nonnull %tuple.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %cmp22.i.i = icmp slt i32 %call21.i.i, 0
  br i1 %cmp22.i.i, label %if.end19.i.i.if.then21.i_crit_edge, label %if.end24.i.i

if.end19.i.i.if.then21.i_crit_edge:               ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end24.i.i:                                     ; preds = %if.end19.i.i
  %114 = ptrtoint ptr %tuple_type.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tuple_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %115)
  %cmp25.not.i.i = icmp eq i32 %115, 32
  br i1 %cmp25.not.i.i, label %if.end27.i.i, label %if.end24.i.i.if.then21.i_crit_edge

if.end24.i.i.if.then21.i_crit_edge:               ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end27.i.i:                                     ; preds = %if.end24.i.i
  %116 = ptrtoint ptr %tuple_length.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tuple_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %117)
  %cmp28.not.i.i = icmp eq i32 %117, 4
  br i1 %cmp28.not.i.i, label %if.end30.i.i, label %if.end27.i.i.if.then21.i_crit_edge

if.end27.i.i.if.then21.i_crit_edge:               ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end30.i.i:                                     ; preds = %if.end27.i.i
  %118 = ptrtoint ptr %arrayidx.i265.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.i265.i, align 1
  %conv.i.i = zext i8 %119 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %120 = ptrtoint ptr %tuple.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %tuple.i.i, align 1
  %conv32.i.i = zext i8 %121 to i32
  %or.i.i = or i32 %shl.i.i, %conv32.i.i
  %122 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx34.i.i, align 1
  %conv35.i.i = zext i8 %123 to i32
  %shl36.i.i = shl nuw nsw i32 %conv35.i.i, 8
  %124 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx37.i.i, align 1
  %conv38.i.i = zext i8 %125 to i32
  %or39.i.i = or i32 %shl36.i.i, %conv38.i.i
  %call42.i.i = call fastcc i32 @dvb_ca_en50221_read_tuple(ptr noundef %data, i32 noundef %slot.0273, ptr noundef nonnull %address.i.i, ptr noundef nonnull %tuple_type.i.i, ptr noundef nonnull %tuple_length.i.i, ptr noundef nonnull %tuple.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %cmp43.i.i = icmp slt i32 %call42.i.i, 0
  br i1 %cmp43.i.i, label %if.end30.i.i.if.then21.i_crit_edge, label %if.end46.i.i

if.end30.i.i.if.then21.i_crit_edge:               ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end46.i.i:                                     ; preds = %if.end30.i.i
  %126 = ptrtoint ptr %tuple_type.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tuple_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %127)
  %cmp47.not.i.i = icmp eq i32 %127, 26
  br i1 %cmp47.not.i.i, label %if.end50.i.i, label %if.end46.i.i.if.then21.i_crit_edge

if.end46.i.i.if.then21.i_crit_edge:               ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end50.i.i:                                     ; preds = %if.end46.i.i
  %128 = ptrtoint ptr %tuple_length.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tuple_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %129)
  %cmp51.i.i = icmp slt i32 %129, 3
  br i1 %cmp51.i.i, label %if.end50.i.i.if.then21.i_crit_edge, label %if.end54.i.i

if.end50.i.i.if.then21.i_crit_edge:               ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end54.i.i:                                     ; preds = %if.end50.i.i
  %130 = ptrtoint ptr %tuple.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %tuple.i.i, align 1
  %132 = and i8 %131, 3
  %narrow = add nuw nsw i8 %132, 17
  %add57.i.i = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %add57.i.i)
  %cmp58.i.i = icmp ult i32 %129, %add57.i.i
  br i1 %cmp58.i.i, label %if.end54.i.i.if.then21.i_crit_edge, label %if.end61.i.i

if.end54.i.i.if.then21.i_crit_edge:               ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end61.i.i:                                     ; preds = %if.end54.i.i
  %133 = ptrtoint ptr %slot_info.i94 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %slot_info.i94, align 4
  %config_base.i.i = getelementptr %struct.dvb_ca_slot, ptr %134, i32 %slot.0273, i32 4
  %135 = ptrtoint ptr %config_base.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %config_base.i.i, align 4
  %136 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %137 to i32
  %138 = load i32, ptr %config_base.i.i, align 4
  %or71.i.i = or i32 %138, %conv68.i.i
  store i32 %or71.i.i, ptr %config_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %exitcond.i.i = icmp eq i8 %132, 0
  br i1 %exitcond.i.i, label %if.end61.i.i.for.end.i.i_crit_edge, label %for.body.i269.i.1

if.end61.i.i.for.end.i.i_crit_edge:               ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.i269.i.1:                                ; preds = %if.end61.i.i
  %139 = ptrtoint ptr %arrayidx67.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx67.i.i.1, align 1
  %conv68.i.i.1 = zext i8 %140 to i32
  %shl69.i.i.1 = shl nuw nsw i32 %conv68.i.i.1, 8
  %141 = ptrtoint ptr %config_base.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %config_base.i.i, align 4
  %or71.i.i.1 = or i32 %shl69.i.i.1, %142
  store i32 %or71.i.i.1, ptr %config_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %132)
  %exitcond.i.i.1 = icmp eq i8 %132, 1
  br i1 %exitcond.i.i.1, label %for.body.i269.i.1.for.end.i.i_crit_edge, label %for.body.i269.i.2

for.body.i269.i.1.for.end.i.i_crit_edge:          ; preds = %for.body.i269.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.i269.i.2:                                ; preds = %for.body.i269.i.1
  %143 = ptrtoint ptr %arrayidx67.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx67.i.i.2, align 1
  %conv68.i.i.2 = zext i8 %144 to i32
  %shl69.i.i.2 = shl nuw nsw i32 %conv68.i.i.2, 16
  %145 = ptrtoint ptr %config_base.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %config_base.i.i, align 4
  %or71.i.i.2 = or i32 %shl69.i.i.2, %146
  store i32 %or71.i.i.2, ptr %config_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %132)
  %exitcond.i.i.2 = icmp eq i8 %132, 2
  br i1 %exitcond.i.i.2, label %for.body.i269.i.2.for.end.i.i_crit_edge, label %for.body.i269.i.3

for.body.i269.i.2.for.end.i.i_crit_edge:          ; preds = %for.body.i269.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.i269.i.3:                                ; preds = %for.body.i269.i.2
  call void @__sanitizer_cov_trace_pc() #14
  %147 = ptrtoint ptr %arrayidx67.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx67.i.i.3, align 1
  %conv68.i.i.3 = zext i8 %148 to i32
  %shl69.i.i.3 = shl nuw i32 %conv68.i.i.3, 24
  %149 = ptrtoint ptr %config_base.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %config_base.i.i, align 4
  %or71.i.i.3 = or i32 %shl69.i.i.3, %150
  store i32 %or71.i.i.3, ptr %config_base.i.i, align 4
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i269.i.3, %for.body.i269.i.2.for.end.i.i_crit_edge, %for.body.i269.i.1.for.end.i.i_crit_edge, %if.end61.i.i.for.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %129)
  %cmp.i = icmp slt i32 %129, 8
  br i1 %cmp.i, label %for.end.i.i.if.then21.i_crit_edge, label %for.cond.preheader.i

for.end.i.i.if.then21.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

for.cond.preheader.i:                             ; preds = %for.end.i.i
  %sub.i219 = add nsw i32 %129, -8
  br label %for.body.i223

for.cond.i:                                       ; preds = %for.body.i223
  %inc.i220 = add i32 %i.013.i, 1
  %cmp1.not.i = icmp sgt i32 %inc.i220, %sub.i219
  br i1 %cmp1.not.i, label %for.cond.i.if.then21.i_crit_edge, label %for.cond.i.for.body.i223_crit_edge

for.cond.i.for.body.i223_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i223

for.cond.i.if.then21.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

for.body.i223:                                    ; preds = %for.cond.i.for.body.i223_crit_edge, %for.cond.preheader.i
  %i.013.i = phi i32 [ %inc.i220, %for.cond.i.for.body.i223_crit_edge ], [ 0, %for.cond.preheader.i ]
  %add.ptr.i = getelementptr i8, ptr %tuple.i.i, i32 %i.013.i
  %call.i221 = call i32 @strncmp(ptr noundef %add.ptr.i, ptr noundef nonnull dereferenceable(9) @.str.67, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool.not.i222 = icmp eq i32 %call.i221, 0
  br i1 %tobool.not.i222, label %findstr.exit, label %for.cond.i

findstr.exit:                                     ; preds = %for.body.i223
  %tobool.not.i270.i = icmp eq ptr %add.ptr.i, null
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i to i32
  %add77.i.i = add i32 %sub.ptr.sub.i.i, %sub.ptr.lhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %add77.i.i)
  %cmp78.i.i = icmp slt i32 %129, %add77.i.i
  %or.cond = select i1 %tobool.not.i270.i, i1 true, i1 %cmp78.i.i
  br i1 %or.cond, label %findstr.exit.if.then21.i_crit_edge, label %if.end81.i.i

findstr.exit.if.then21.i_crit_edge:               ; preds = %findstr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end81.i.i:                                     ; preds = %findstr.exit
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 8
  %call82.i.i = call i32 @strncmp(ptr noundef %add.ptr.i.i, ptr noundef nonnull dereferenceable(5) @.str.68, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i.i)
  %tobool83.not.i.i = icmp eq i32 %call82.i.i, 0
  br i1 %tobool83.not.i.i, label %while.cond.preheader.i.i, label %do.end.i271.i

while.cond.preheader.i.i:                         ; preds = %if.end81.i.i
  %config_option.i.i = getelementptr %struct.dvb_ca_slot, ptr %134, i32 %slot.0273, i32 5
  %151 = ptrtoint ptr %address.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %address.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %152)
  %cmp96.i313.i = icmp slt i32 %152, 4096
  br i1 %cmp96.i313.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.cond.preheader.i.i.if.then21.i_crit_edge

while.cond.preheader.i.i.if.then21.i_crit_edge:   ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

do.end.i271.i:                                    ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %153 = ptrtoint ptr %dvbdev87.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dvbdev87.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.dvb_device, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %adapter.i.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 4
  %159 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %add.ptr.i.i, align 1
  %conv86.i.i = zext i8 %160 to i32
  %arrayidx87.i.i = getelementptr i8, ptr %add.ptr.i, i32 9
  %161 = ptrtoint ptr %arrayidx87.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx87.i.i, align 1
  %conv88.i.i = zext i8 %162 to i32
  %arrayidx89.i.i = getelementptr i8, ptr %add.ptr.i, i32 10
  %163 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx89.i.i, align 1
  %conv90.i.i = zext i8 %164 to i32
  %arrayidx91.i.i = getelementptr i8, ptr %add.ptr.i, i32 11
  %165 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx91.i.i, align 1
  %conv92.i.i = zext i8 %166 to i32
  %call93.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %158, i32 noundef %conv86.i.i, i32 noundef %conv88.i.i, i32 noundef %conv90.i.i, i32 noundef %conv92.i.i) #15
  br label %if.then21.i

while.body.i.i:                                   ; preds = %sw.epilog.i273.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %got_cftableentry.0210.i314.i = phi i32 [ %got_cftableentry.1.i.i, %sw.epilog.i273.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %call99.i.i = call fastcc i32 @dvb_ca_en50221_read_tuple(ptr noundef %data, i32 noundef %slot.0273, ptr noundef nonnull %address.i.i, ptr noundef nonnull %tuple_type.i.i, ptr noundef nonnull %tuple_length.i.i, ptr noundef nonnull %tuple.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i.i)
  %cmp100.i.i = icmp slt i32 %call99.i.i, 0
  br i1 %cmp100.i.i, label %while.body.i.i.if.then21.i_crit_edge, label %if.end103.i.i

while.body.i.i.if.then21.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end103.i.i:                                    ; preds = %while.body.i.i
  %167 = ptrtoint ptr %tuple_type.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %tuple_type.i.i, align 4
  %169 = zext i32 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %168, label %do.body124.i.i [
    i32 27, label %sw.bb.i272.i
    i32 20, label %if.end103.i.i.sw.epilog.i273.i_crit_edge
    i32 255, label %if.end103.i.i.while.end.i.i_crit_edge
  ]

if.end103.i.i.while.end.i.i_crit_edge:            ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

if.end103.i.i.sw.epilog.i273.i_crit_edge:         ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i273.i

sw.bb.i272.i:                                     ; preds = %if.end103.i.i
  %170 = ptrtoint ptr %tuple_length.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %tuple_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %171)
  %cmp104.i.i = icmp slt i32 %171, 30
  br i1 %cmp104.i.i, label %sw.bb.i272.i.sw.epilog.i273.i_crit_edge, label %if.end107.i.i

sw.bb.i272.i.sw.epilog.i273.i_crit_edge:          ; preds = %sw.bb.i272.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i273.i

if.end107.i.i:                                    ; preds = %sw.bb.i272.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %got_cftableentry.0210.i314.i)
  %tobool108.not.i.i = icmp eq i32 %got_cftableentry.0210.i314.i, 0
  br i1 %tobool108.not.i.i, label %if.end110.i.i, label %if.end107.i.i.sw.epilog.i273.i_crit_edge

if.end107.i.i.sw.epilog.i273.i_crit_edge:         ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i273.i

if.end110.i.i:                                    ; preds = %if.end107.i.i
  %172 = ptrtoint ptr %tuple.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %tuple.i.i, align 1
  %174 = and i8 %173, 63
  %175 = ptrtoint ptr %config_option.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %config_option.i.i, align 4
  %call116.i.i = call fastcc ptr @findstr(ptr noundef nonnull %tuple.i.i, i32 noundef %171, ptr noundef nonnull @.str.71, i32 noundef 8) #12
  %tobool117.not.i.i = icmp eq ptr %call116.i.i, null
  br i1 %tobool117.not.i.i, label %if.end110.i.i.sw.epilog.i273.i_crit_edge, label %lor.lhs.false.i.i

if.end110.i.i.sw.epilog.i273.i_crit_edge:         ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i273.i

lor.lhs.false.i.i:                                ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call119.i.i = call fastcc ptr @findstr(ptr noundef nonnull %tuple.i.i, i32 noundef %171, ptr noundef nonnull @.str.72, i32 noundef 13) #12
  %tobool120.not.i.i = icmp ne ptr %call119.i.i, null
  %spec.select.i.i = zext i1 %tobool120.not.i.i to i32
  br label %sw.epilog.i273.i

do.body124.i.i:                                   ; preds = %if.end103.i.i
  %176 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool125.not.i.i = icmp eq i32 %176, 0
  br i1 %tobool125.not.i.i, label %do.body124.i.i.sw.epilog.i273.i_crit_edge, label %do.end129.i.i

do.body124.i.i.sw.epilog.i273.i_crit_edge:        ; preds = %do.body124.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i273.i

do.end129.i.i:                                    ; preds = %do.body124.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %177 = ptrtoint ptr %tuple_length.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %tuple_length.i.i, align 4
  %call131.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.70, i32 noundef %168, i32 noundef %178) #15
  br label %sw.epilog.i273.i

sw.epilog.i273.i:                                 ; preds = %do.end129.i.i, %do.body124.i.i.sw.epilog.i273.i_crit_edge, %lor.lhs.false.i.i, %if.end110.i.i.sw.epilog.i273.i_crit_edge, %if.end107.i.i.sw.epilog.i273.i_crit_edge, %sw.bb.i272.i.sw.epilog.i273.i_crit_edge, %if.end103.i.i.sw.epilog.i273.i_crit_edge
  %got_cftableentry.1.i.i = phi i32 [ %got_cftableentry.0210.i314.i, %do.end129.i.i ], [ %got_cftableentry.0210.i314.i, %do.body124.i.i.sw.epilog.i273.i_crit_edge ], [ %got_cftableentry.0210.i314.i, %if.end103.i.i.sw.epilog.i273.i_crit_edge ], [ %got_cftableentry.0210.i314.i, %sw.bb.i272.i.sw.epilog.i273.i_crit_edge ], [ 1, %if.end107.i.i.sw.epilog.i273.i_crit_edge ], [ 0, %if.end110.i.i.sw.epilog.i273.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  %179 = ptrtoint ptr %address.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %address.i.i, align 4
  %cmp96.i.i = icmp slt i32 %180, 4096
  br i1 %cmp96.i.i, label %sw.epilog.i273.i.while.body.i.i_crit_edge, label %sw.epilog.i273.i.while.end.i.i_crit_edge

sw.epilog.i273.i.while.end.i.i_crit_edge:         ; preds = %sw.epilog.i273.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

sw.epilog.i273.i.while.body.i.i_crit_edge:        ; preds = %sw.epilog.i273.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %sw.epilog.i273.i.while.end.i.i_crit_edge, %if.end103.i.i.while.end.i.i_crit_edge
  %got_cftableentry.0210.i.lcssa.i = phi i32 [ %got_cftableentry.1.i.i, %sw.epilog.i273.i.while.end.i.i_crit_edge ], [ %got_cftableentry.0210.i314.i, %if.end103.i.i.while.end.i.i_crit_edge ]
  %181 = ptrtoint ptr %address.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %address.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %182)
  %cmp135.i.i = icmp sgt i32 %182, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %got_cftableentry.0210.i.lcssa.i)
  %tobool138.not.i.i = icmp eq i32 %got_cftableentry.0210.i.lcssa.i, 0
  %or.cond.i274.i = select i1 %cmp135.i.i, i1 true, i1 %tobool138.not.i.i
  br i1 %or.cond.i274.i, label %while.end.i.i.if.then21.i_crit_edge, label %do.body141.i.i

while.end.i.i.if.then21.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

do.body141.i.i:                                   ; preds = %while.end.i.i
  %183 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool142.not.i.i = icmp eq i32 %183, 0
  br i1 %tobool142.not.i.i, label %if.end35.thread.i, label %if.end35.i

if.end35.thread.i:                                ; preds = %do.body141.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %tuple.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuple_type.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuple_length.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %address.i.i) #12
  %184 = ptrtoint ptr %slot_info.i94 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %slot_info.i94, align 4
  br label %do.end3.i.i

if.then21.i:                                      ; preds = %while.end.i.i.if.then21.i_crit_edge, %while.body.i.i.if.then21.i_crit_edge, %do.end.i271.i, %while.cond.preheader.i.i.if.then21.i_crit_edge, %findstr.exit.if.then21.i_crit_edge, %for.cond.i.if.then21.i_crit_edge, %for.end.i.i.if.then21.i_crit_edge, %if.end54.i.i.if.then21.i_crit_edge, %if.end50.i.i.if.then21.i_crit_edge, %if.end46.i.i.if.then21.i_crit_edge, %if.end30.i.i.if.then21.i_crit_edge, %if.end27.i.i.if.then21.i_crit_edge, %if.end24.i.i.if.then21.i_crit_edge, %if.end19.i.i.if.then21.i_crit_edge, %if.end16.i.i.if.then21.i_crit_edge, %if.end11.i.i.if.then21.i_crit_edge, %if.end8.i.i.if.then21.i_crit_edge, %if.end3.i.i.if.then21.i_crit_edge, %if.end.i.i.if.then21.i_crit_edge, %sw.bb18.i.if.then21.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %tuple.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuple_type.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuple_length.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %address.i.i) #12
  %call22.i = call fastcc i32 @dvb_ca_en50221_poll_cam_gone(ptr noundef %data, i32 noundef %slot.0273) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %do.end28.i, label %if.then21.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge

if.then21.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_state_machine.exit

do.end28.i:                                       ; preds = %if.then21.i
  %186 = ptrtoint ptr %dvbdev87.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dvbdev87.i, align 4
  %adapter31.i = getelementptr inbounds %struct.dvb_device, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %adapter31.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %adapter31.i, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 4
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %191) #15
  %192 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 3, ptr %arrayidx.i95, align 4
  %193 = ptrtoint ptr %slot_count.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp44.not.i181 = icmp eq i32 %194, 0
  br i1 %cmp44.not.i181, label %do.end28.i.dvb_ca_en50221_thread_update_delay.exit218_crit_edge, label %for.body.lr.ph.i185

do.end28.i.dvb_ca_en50221_thread_update_delay.exit218_crit_edge: ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit218

for.body.lr.ph.i185:                              ; preds = %do.end28.i
  %195 = ptrtoint ptr %slot_info.i94 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %slot_info.i94, align 4
  br label %for.body.i189

for.body.i189:                                    ; preds = %sw.epilog.i215.for.body.i189_crit_edge, %for.body.lr.ph.i185
  %slot.046.i186 = phi i32 [ 0, %for.body.lr.ph.i185 ], [ %inc.i213, %sw.epilog.i215.for.body.i189_crit_edge ]
  %curdelay.045.i187 = phi i32 [ 100000000, %for.body.lr.ph.i185 ], [ %208, %sw.epilog.i215.for.body.i189_crit_edge ]
  %arrayidx.i188 = getelementptr %struct.dvb_ca_slot, ptr %196, i32 %slot.046.i186
  %197 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx.i188, align 4
  %199 = zext i32 %198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %199, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %198, label %sw.bb.i193 [
    i32 2, label %sw.bb8.i203
    i32 3, label %sw.bb1.i197
    i32 1, label %for.body.i189.sw.epilog.i215_crit_edge
    i32 4, label %for.body.i189.sw.epilog.i215_crit_edge326
    i32 5, label %for.body.i189.sw.epilog.i215_crit_edge327
    i32 6, label %for.body.i189.sw.epilog.i215_crit_edge328
    i32 7, label %for.body.i189.sw.epilog.i215_crit_edge329
  ]

for.body.i189.sw.epilog.i215_crit_edge329:        ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i215

for.body.i189.sw.epilog.i215_crit_edge328:        ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i215

for.body.i189.sw.epilog.i215_crit_edge327:        ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i215

for.body.i189.sw.epilog.i215_crit_edge326:        ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i215

for.body.i189.sw.epilog.i215_crit_edge:           ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i215

sw.bb.i193:                                       ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #14
  %200 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %flags2.i.i, align 4
  %and.i190 = and i32 %201, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i190)
  %tobool.not.i191 = icmp eq i32 %and.i190, 0
  %spec.store.select.i192 = select i1 %tobool.not.i191, i32 500, i32 6000
  br label %sw.epilog.i215

sw.bb1.i197:                                      ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #14
  %202 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %flags2.i.i, align 4
  %and3.i194 = and i32 %203, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i194)
  %tobool4.not.i195 = icmp eq i32 %and3.i194, 0
  %spec.store.select29.i196 = select i1 %tobool4.not.i195, i32 10, i32 6000
  br label %sw.epilog.i215

sw.bb8.i203:                                      ; preds = %for.body.i189
  %204 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %flags2.i.i, align 4
  %and10.i198 = and i32 %205, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i198)
  %tobool11.not.i199 = icmp eq i32 %and10.i198, 0
  %spec.store.select30.i200 = select i1 %tobool11.not.i199, i32 10, i32 6000
  %206 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %206)
  %bf.load.i201 = load i8, ptr %wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i201)
  %tobool14.not.i202 = icmp sgt i8 %bf.load.i201, -1
  br i1 %tobool14.not.i202, label %sw.bb8.i203.sw.epilog.i215_crit_edge, label %if.then15.i211

sw.bb8.i203.sw.epilog.i215_crit_edge:             ; preds = %sw.bb8.i203
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i215

if.then15.i211:                                   ; preds = %sw.bb8.i203
  call void @__sanitizer_cov_trace_pc() #14
  %da_irq_supported.i204 = getelementptr %struct.dvb_ca_slot, ptr %196, i32 %slot.046.i186, i32 6
  %207 = ptrtoint ptr %da_irq_supported.i204 to i32
  call void @__asan_load1_noabort(i32 %207)
  %bf.load16.i205 = load i8, ptr %da_irq_supported.i204, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16.i205)
  %tobool18.not.i206 = icmp sgt i8 %bf.load16.i205, -1
  %and20.i207 = and i32 %205, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i207)
  %tobool21.not.i208 = icmp eq i32 %and20.i207, 0
  %or.cond.i209 = select i1 %tobool18.not.i206, i1 true, i1 %tobool21.not.i208
  %spec.select43.i210 = select i1 %or.cond.i209, i32 10, i32 %spec.store.select30.i200
  br label %sw.epilog.i215

sw.epilog.i215:                                   ; preds = %if.then15.i211, %sw.bb8.i203.sw.epilog.i215_crit_edge, %sw.bb1.i197, %sw.bb.i193, %for.body.i189.sw.epilog.i215_crit_edge, %for.body.i189.sw.epilog.i215_crit_edge326, %for.body.i189.sw.epilog.i215_crit_edge327, %for.body.i189.sw.epilog.i215_crit_edge328, %for.body.i189.sw.epilog.i215_crit_edge329
  %delay.0.i212 = phi i32 [ %spec.store.select.i192, %sw.bb.i193 ], [ %spec.store.select29.i196, %sw.bb1.i197 ], [ %spec.store.select30.i200, %sw.bb8.i203.sw.epilog.i215_crit_edge ], [ 10, %for.body.i189.sw.epilog.i215_crit_edge ], [ 10, %for.body.i189.sw.epilog.i215_crit_edge326 ], [ 10, %for.body.i189.sw.epilog.i215_crit_edge327 ], [ 10, %for.body.i189.sw.epilog.i215_crit_edge328 ], [ 10, %for.body.i189.sw.epilog.i215_crit_edge329 ], [ %spec.select43.i210, %if.then15.i211 ]
  %208 = call i32 @llvm.smin.i32(i32 %delay.0.i212, i32 %curdelay.045.i187) #12
  %inc.i213 = add nuw i32 %slot.046.i186, 1
  %exitcond.not.i214 = icmp eq i32 %inc.i213, %194
  br i1 %exitcond.not.i214, label %sw.epilog.i215.dvb_ca_en50221_thread_update_delay.exit218_crit_edge, label %sw.epilog.i215.for.body.i189_crit_edge

sw.epilog.i215.for.body.i189_crit_edge:           ; preds = %sw.epilog.i215
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i189

sw.epilog.i215.dvb_ca_en50221_thread_update_delay.exit218_crit_edge: ; preds = %sw.epilog.i215
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit218

dvb_ca_en50221_thread_update_delay.exit218:       ; preds = %sw.epilog.i215.dvb_ca_en50221_thread_update_delay.exit218_crit_edge, %do.end28.i.dvb_ca_en50221_thread_update_delay.exit218_crit_edge
  %curdelay.0.lcssa.i216 = phi i32 [ 100000000, %do.end28.i.dvb_ca_en50221_thread_update_delay.exit218_crit_edge ], [ %208, %sw.epilog.i215.dvb_ca_en50221_thread_update_delay.exit218_crit_edge ]
  %209 = ptrtoint ptr %delay28.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %curdelay.0.lcssa.i216, ptr %delay28.i, align 4
  br label %dvb_ca_en50221_thread_state_machine.exit

if.end35.i:                                       ; preds = %do.body141.i.i
  %210 = ptrtoint ptr %config_base.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %config_base.i.i, align 4
  %212 = ptrtoint ptr %config_option.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %config_option.i.i, align 4
  %conv152.i.i = zext i8 %213 to i32
  %call153.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.70, i32 noundef %or.i.i, i32 noundef %or39.i.i, i32 noundef %211, i32 noundef %conv152.i.i) #15
  %.pr.i = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %tuple.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuple_type.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuple_length.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %address.i.i) #12
  %214 = ptrtoint ptr %slot_info.i94 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %slot_info.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i276.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i276.i, label %if.end35.i.do.end3.i.i_crit_edge, label %do.end.i278.i

if.end35.i.do.end3.i.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3.i.i

do.end.i278.i:                                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i277.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.87) #15
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i278.i, %if.end35.i.do.end3.i.i_crit_edge, %if.end35.thread.i
  %216 = phi ptr [ %185, %if.end35.thread.i ], [ %215, %do.end.i278.i ], [ %215, %if.end35.i.do.end3.i.i_crit_edge ]
  %217 = ptrtoint ptr %pub.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pub.i.i, align 4
  %write_attribute_mem.i.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %write_attribute_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %write_attribute_mem.i.i, align 4
  %config_base.i280.i = getelementptr %struct.dvb_ca_slot, ptr %216, i32 %slot.0273, i32 4
  %221 = ptrtoint ptr %config_base.i280.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %config_base.i280.i, align 4
  %config_option.i281.i = getelementptr %struct.dvb_ca_slot, ptr %216, i32 %slot.0273, i32 5
  %223 = ptrtoint ptr %config_option.i281.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %config_option.i281.i, align 4
  %call5.i282.i = call i32 %220(ptr noundef %218, i32 noundef %slot.0273, i32 noundef %222, i8 noundef zeroext %224) #12
  %225 = ptrtoint ptr %pub.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pub.i.i, align 4
  %read_attribute_mem.i.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %read_attribute_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %read_attribute_mem.i.i, align 4
  %229 = ptrtoint ptr %config_base.i280.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %config_base.i280.i, align 4
  %call9.i.i = call i32 %228(ptr noundef %226, i32 noundef %slot.0273, i32 noundef %230) #12
  %231 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool11.not.i283.i = icmp eq i32 %231, 0
  br i1 %tobool11.not.i283.i, label %do.end3.i.i.dvb_ca_en50221_set_configoption.exit.i_crit_edge, label %do.end15.i.i

do.end3.i.i.dvb_ca_en50221_set_configoption.exit.i_crit_edge: ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_set_configoption.exit.i

do.end15.i.i:                                     ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %232 = ptrtoint ptr %config_option.i281.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %config_option.i281.i, align 4
  %conv.i284.i = zext i8 %233 to i32
  %and.i285.i = and i32 %call9.i.i, 63
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87, i32 noundef %conv.i284.i, i32 noundef %and.i285.i) #15
  br label %dvb_ca_en50221_set_configoption.exit.i

dvb_ca_en50221_set_configoption.exit.i:           ; preds = %do.end15.i.i, %do.end3.i.i.dvb_ca_en50221_set_configoption.exit.i_crit_edge
  %234 = ptrtoint ptr %pub.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pub.i.i, align 4
  %write_cam_control.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %235, i32 0, i32 4
  %236 = ptrtoint ptr %write_cam_control.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %write_cam_control.i, align 4
  %call51.i = call i32 %237(ptr noundef %235, i32 noundef %slot.0273, i8 noundef zeroext 1, i8 noundef zeroext 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.not.i = icmp eq i32 %call51.i, 0
  br i1 %cmp52.not.i, label %do.body64.i, label %do.end56.i

do.end56.i:                                       ; preds = %dvb_ca_en50221_set_configoption.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %238 = ptrtoint ptr %dvbdev87.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dvbdev87.i, align 4
  %adapter59.i = getelementptr inbounds %struct.dvb_device, ptr %239, i32 0, i32 2
  %240 = ptrtoint ptr %adapter59.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %adapter59.i, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %241, align 4
  %call61.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %243) #15
  %244 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 3, ptr %arrayidx.i95, align 4
  call fastcc void @dvb_ca_en50221_thread_update_delay(ptr noundef %data) #12
  br label %dvb_ca_en50221_thread_state_machine.exit

do.body64.i:                                      ; preds = %dvb_ca_en50221_set_configoption.exit.i
  %245 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool65.not.i = icmp eq i32 %245, 0
  br i1 %tobool65.not.i, label %do.body64.i.do.end74.i_crit_edge, label %do.end69.i

do.body64.i.do.end74.i_crit_edge:                 ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74.i

do.end69.i:                                       ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #14
  %call71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.42) #15
  br label %do.end74.i

do.end74.i:                                       ; preds = %do.end69.i, %do.body64.i.do.end74.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %246 = load volatile i32, ptr @jiffies, align 128
  %add75.i = add i32 %246, 1000
  %timeout76.i = getelementptr %struct.dvb_ca_slot, ptr %34, i32 %slot.0273, i32 9
  %247 = ptrtoint ptr %timeout76.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %add75.i, ptr %timeout76.i, align 4
  %248 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 6, ptr %arrayidx.i95, align 4
  %249 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %249)
  %bf.load.i97 = load i8, ptr %wakeup, align 4
  %bf.set.i = or i8 %bf.load.i97, 64
  store i8 %bf.set.i, ptr %wakeup, align 4
  br label %dvb_ca_en50221_thread_state_machine.exit

sw.bb78.i:                                        ; preds = %while.end.i
  %timeout79.i = getelementptr %struct.dvb_ca_slot, ptr %34, i32 %slot.0273, i32 9
  %250 = ptrtoint ptr %timeout79.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %timeout79.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %252 = load volatile i32, ptr @jiffies, align 128
  %sub80.i = sub i32 %251, %252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub80.i)
  %cmp81.i = icmp slt i32 %sub80.i, 0
  br i1 %cmp81.i, label %do.end85.i, label %if.end92.i

do.end85.i:                                       ; preds = %sw.bb78.i
  %253 = ptrtoint ptr %dvbdev87.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dvbdev87.i, align 4
  %adapter88.i = getelementptr inbounds %struct.dvb_device, ptr %254, i32 0, i32 2
  %255 = ptrtoint ptr %adapter88.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %adapter88.i, align 4
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %256, align 4
  %call90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %258) #15
  %259 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 3, ptr %arrayidx.i95, align 4
  %260 = ptrtoint ptr %slot_count.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %cmp44.not.i142 = icmp eq i32 %261, 0
  br i1 %cmp44.not.i142, label %do.end85.i.dvb_ca_en50221_thread_update_delay.exit179_crit_edge, label %for.body.lr.ph.i146

do.end85.i.dvb_ca_en50221_thread_update_delay.exit179_crit_edge: ; preds = %do.end85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit179

for.body.lr.ph.i146:                              ; preds = %do.end85.i
  %262 = ptrtoint ptr %slot_info.i94 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %slot_info.i94, align 4
  br label %for.body.i150

for.body.i150:                                    ; preds = %sw.epilog.i176.for.body.i150_crit_edge, %for.body.lr.ph.i146
  %slot.046.i147 = phi i32 [ 0, %for.body.lr.ph.i146 ], [ %inc.i174, %sw.epilog.i176.for.body.i150_crit_edge ]
  %curdelay.045.i148 = phi i32 [ 100000000, %for.body.lr.ph.i146 ], [ %275, %sw.epilog.i176.for.body.i150_crit_edge ]
  %arrayidx.i149 = getelementptr %struct.dvb_ca_slot, ptr %263, i32 %slot.046.i147
  %264 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx.i149, align 4
  %266 = zext i32 %265 to i64
  call void @__sanitizer_cov_trace_switch(i64 %266, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %265, label %sw.bb.i154 [
    i32 2, label %sw.bb8.i164
    i32 3, label %sw.bb1.i158
    i32 1, label %for.body.i150.sw.epilog.i176_crit_edge
    i32 4, label %for.body.i150.sw.epilog.i176_crit_edge330
    i32 5, label %for.body.i150.sw.epilog.i176_crit_edge331
    i32 6, label %for.body.i150.sw.epilog.i176_crit_edge332
    i32 7, label %for.body.i150.sw.epilog.i176_crit_edge333
  ]

for.body.i150.sw.epilog.i176_crit_edge333:        ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i176

for.body.i150.sw.epilog.i176_crit_edge332:        ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i176

for.body.i150.sw.epilog.i176_crit_edge331:        ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i176

for.body.i150.sw.epilog.i176_crit_edge330:        ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i176

for.body.i150.sw.epilog.i176_crit_edge:           ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i176

sw.bb.i154:                                       ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #14
  %267 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %flags2.i.i, align 4
  %and.i151 = and i32 %268, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i151)
  %tobool.not.i152 = icmp eq i32 %and.i151, 0
  %spec.store.select.i153 = select i1 %tobool.not.i152, i32 500, i32 6000
  br label %sw.epilog.i176

sw.bb1.i158:                                      ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #14
  %269 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %flags2.i.i, align 4
  %and3.i155 = and i32 %270, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i155)
  %tobool4.not.i156 = icmp eq i32 %and3.i155, 0
  %spec.store.select29.i157 = select i1 %tobool4.not.i156, i32 10, i32 6000
  br label %sw.epilog.i176

sw.bb8.i164:                                      ; preds = %for.body.i150
  %271 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %flags2.i.i, align 4
  %and10.i159 = and i32 %272, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i159)
  %tobool11.not.i160 = icmp eq i32 %and10.i159, 0
  %spec.store.select30.i161 = select i1 %tobool11.not.i160, i32 10, i32 6000
  %273 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %273)
  %bf.load.i162 = load i8, ptr %wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i162)
  %tobool14.not.i163 = icmp sgt i8 %bf.load.i162, -1
  br i1 %tobool14.not.i163, label %sw.bb8.i164.sw.epilog.i176_crit_edge, label %if.then15.i172

sw.bb8.i164.sw.epilog.i176_crit_edge:             ; preds = %sw.bb8.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i176

if.then15.i172:                                   ; preds = %sw.bb8.i164
  call void @__sanitizer_cov_trace_pc() #14
  %da_irq_supported.i165 = getelementptr %struct.dvb_ca_slot, ptr %263, i32 %slot.046.i147, i32 6
  %274 = ptrtoint ptr %da_irq_supported.i165 to i32
  call void @__asan_load1_noabort(i32 %274)
  %bf.load16.i166 = load i8, ptr %da_irq_supported.i165, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16.i166)
  %tobool18.not.i167 = icmp sgt i8 %bf.load16.i166, -1
  %and20.i168 = and i32 %272, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i168)
  %tobool21.not.i169 = icmp eq i32 %and20.i168, 0
  %or.cond.i170 = select i1 %tobool18.not.i167, i1 true, i1 %tobool21.not.i169
  %spec.select43.i171 = select i1 %or.cond.i170, i32 10, i32 %spec.store.select30.i161
  br label %sw.epilog.i176

sw.epilog.i176:                                   ; preds = %if.then15.i172, %sw.bb8.i164.sw.epilog.i176_crit_edge, %sw.bb1.i158, %sw.bb.i154, %for.body.i150.sw.epilog.i176_crit_edge, %for.body.i150.sw.epilog.i176_crit_edge330, %for.body.i150.sw.epilog.i176_crit_edge331, %for.body.i150.sw.epilog.i176_crit_edge332, %for.body.i150.sw.epilog.i176_crit_edge333
  %delay.0.i173 = phi i32 [ %spec.store.select.i153, %sw.bb.i154 ], [ %spec.store.select29.i157, %sw.bb1.i158 ], [ %spec.store.select30.i161, %sw.bb8.i164.sw.epilog.i176_crit_edge ], [ 10, %for.body.i150.sw.epilog.i176_crit_edge ], [ 10, %for.body.i150.sw.epilog.i176_crit_edge330 ], [ 10, %for.body.i150.sw.epilog.i176_crit_edge331 ], [ 10, %for.body.i150.sw.epilog.i176_crit_edge332 ], [ 10, %for.body.i150.sw.epilog.i176_crit_edge333 ], [ %spec.select43.i171, %if.then15.i172 ]
  %275 = call i32 @llvm.smin.i32(i32 %delay.0.i173, i32 %curdelay.045.i148) #12
  %inc.i174 = add nuw i32 %slot.046.i147, 1
  %exitcond.not.i175 = icmp eq i32 %inc.i174, %261
  br i1 %exitcond.not.i175, label %sw.epilog.i176.dvb_ca_en50221_thread_update_delay.exit179_crit_edge, label %sw.epilog.i176.for.body.i150_crit_edge

sw.epilog.i176.for.body.i150_crit_edge:           ; preds = %sw.epilog.i176
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i150

sw.epilog.i176.dvb_ca_en50221_thread_update_delay.exit179_crit_edge: ; preds = %sw.epilog.i176
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit179

dvb_ca_en50221_thread_update_delay.exit179:       ; preds = %sw.epilog.i176.dvb_ca_en50221_thread_update_delay.exit179_crit_edge, %do.end85.i.dvb_ca_en50221_thread_update_delay.exit179_crit_edge
  %curdelay.0.lcssa.i177 = phi i32 [ 100000000, %do.end85.i.dvb_ca_en50221_thread_update_delay.exit179_crit_edge ], [ %275, %sw.epilog.i176.dvb_ca_en50221_thread_update_delay.exit179_crit_edge ]
  %276 = ptrtoint ptr %delay28.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %curdelay.0.lcssa.i177, ptr %delay28.i, align 4
  br label %dvb_ca_en50221_thread_state_machine.exit

if.end92.i:                                       ; preds = %sw.bb78.i
  %277 = ptrtoint ptr %pub.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %pub.i.i, align 4
  %read_cam_control.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %278, i32 0, i32 3
  %279 = ptrtoint ptr %read_cam_control.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %read_cam_control.i, align 4
  %call95.i = call i32 %280(ptr noundef %278, i32 noundef %slot.0273, i8 noundef zeroext 1) #12
  %and.i98 = and i32 %call95.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool96.not.i = icmp eq i32 %and.i98, 0
  br i1 %tobool96.not.i, label %if.end92.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge, label %if.then97.i

if.end92.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge: ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_state_machine.exit

if.then97.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #14
  %281 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 7, ptr %arrayidx.i95, align 4
  %282 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %282)
  %bf.load100.i = load i8, ptr %wakeup, align 4
  %bf.set102.i = or i8 %bf.load100.i, 64
  store i8 %bf.set102.i, ptr %wakeup, align 4
  br label %dvb_ca_en50221_thread_state_machine.exit

sw.bb104.i:                                       ; preds = %while.end.i
  %283 = ptrtoint ptr %slot_info.i94 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %slot_info.i94, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #12
  %285 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 -1, ptr %buf.i.i, align 1, !annotation !265
  %286 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 -1, ptr %18, align 1, !annotation !265
  %287 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool.not.i287.i = icmp eq i32 %287, 0
  br i1 %tobool.not.i287.i, label %sw.bb104.i.do.end3.i295.i_crit_edge, label %do.end.i289.i

sw.bb104.i.do.end3.i295.i_crit_edge:              ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3.i295.i

do.end.i289.i:                                    ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i288.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.91) #15
  br label %do.end3.i295.i

do.end3.i295.i:                                   ; preds = %do.end.i289.i, %sw.bb104.i.do.end3.i295.i_crit_edge
  %da_irq_supported.i290.i = getelementptr %struct.dvb_ca_slot, ptr %284, i32 %slot.0273, i32 6
  %288 = ptrtoint ptr %da_irq_supported.i290.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %bf.load.i291.i = load i8, ptr %da_irq_supported.i290.i, align 1
  %bf.clear.i.i = and i8 %bf.load.i291.i, 127
  store i8 %bf.clear.i.i, ptr %da_irq_supported.i290.i, align 1
  %link_buf_size.i.i = getelementptr %struct.dvb_ca_slot, ptr %284, i32 %slot.0273, i32 7
  %289 = ptrtoint ptr %link_buf_size.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 2, ptr %link_buf_size.i.i, align 4
  %290 = ptrtoint ptr %pub.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %pub.i.i, align 4
  %write_cam_control.i.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %291, i32 0, i32 4
  %292 = ptrtoint ptr %write_cam_control.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %write_cam_control.i.i, align 4
  %call5.i293.i = call i32 %293(ptr noundef %291, i32 noundef %slot.0273, i8 noundef zeroext 1, i8 noundef zeroext -124) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i293.i)
  %tobool6.not.i294.i = icmp eq i32 %call5.i293.i, 0
  br i1 %tobool6.not.i294.i, label %if.end8.i297.i, label %do.end3.i295.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge

do.end3.i295.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge: ; preds = %do.end3.i295.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_link_init.exit.thread.i

if.end8.i297.i:                                   ; preds = %do.end3.i295.i
  %call9.i296.i = call fastcc i32 @dvb_ca_en50221_wait_if_status(ptr noundef %data, i32 noundef %slot.0273, i8 noundef zeroext -128, i32 noundef 100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i296.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i296.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.end8.i297.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge

if.end8.i297.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge: ; preds = %if.end8.i297.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_link_init.exit.thread.i

if.end12.i.i:                                     ; preds = %if.end8.i297.i
  %call13.i298.i = call fastcc i32 @dvb_ca_en50221_read_data(ptr noundef %data, i32 noundef %slot.0273, ptr noundef nonnull %buf.i.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call13.i298.i)
  %cmp.not.i.i = icmp eq i32 %call13.i298.i, 2
  br i1 %cmp.not.i.i, label %if.end15.i.i, label %if.end12.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge

if.end12.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_link_init.exit.thread.i

if.end15.i.i:                                     ; preds = %if.end12.i.i
  %294 = ptrtoint ptr %pub.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %pub.i.i, align 4
  %write_cam_control17.i.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %295, i32 0, i32 4
  %296 = ptrtoint ptr %write_cam_control17.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %write_cam_control17.i.i, align 4
  %call19.i.i = call i32 %297(ptr noundef %295, i32 noundef %slot.0273, i8 noundef zeroext 1, i8 noundef zeroext -128) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end22.i.i, label %if.end15.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge

if.end15.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_link_init.exit.thread.i

if.end22.i.i:                                     ; preds = %if.end15.i.i
  %298 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %buf.i.i, align 1
  %conv.i299.i = zext i8 %299 to i32
  %shl.i300.i = shl nuw nsw i32 %conv.i299.i, 8
  %300 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %18, align 1
  %conv25.i.i = zext i8 %301 to i32
  %or.i301.i = or i32 %shl.i300.i, %conv25.i.i
  %302 = call i32 @llvm.umin.i32(i32 %or.i301.i, i32 512) #12
  %303 = ptrtoint ptr %link_buf_size.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %link_buf_size.i.i, align 4
  %304 = lshr i32 %302, 8
  %conv31.i.i = trunc i32 %304 to i8
  %305 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %conv31.i.i, ptr %buf.i.i, align 1
  %conv33.i.i = trunc i32 %302 to i8
  %306 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %conv33.i.i, ptr %18, align 1
  %307 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %tobool36.not.i.i = icmp eq i32 %307, 0
  br i1 %tobool36.not.i.i, label %if.end22.i.i.do.end45.i.i_crit_edge, label %do.end40.i.i

if.end22.i.i.do.end45.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45.i.i

do.end40.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call42.i302.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91, i32 noundef %302) #15
  br label %do.end45.i.i

do.end45.i.i:                                     ; preds = %do.end40.i.i, %if.end22.i.i.do.end45.i.i_crit_edge
  %308 = ptrtoint ptr %pub.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %pub.i.i, align 4
  %write_cam_control47.i.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %309, i32 0, i32 4
  %310 = ptrtoint ptr %write_cam_control47.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %write_cam_control47.i.i, align 4
  %call49.i.i = call i32 %311(ptr noundef %309, i32 noundef %slot.0273, i8 noundef zeroext 1, i8 noundef zeroext -126) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %tobool50.not.i.i = icmp eq i32 %call49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end52.i.i, label %do.end45.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge

do.end45.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge: ; preds = %do.end45.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_link_init.exit.thread.i

if.end52.i.i:                                     ; preds = %do.end45.i.i
  %call53.i.i = call fastcc i32 @dvb_ca_en50221_wait_if_status(ptr noundef %data, i32 noundef %slot.0273, i8 noundef zeroext 64, i32 noundef 10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %if.end56.i.i, label %if.end52.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge

if.end52.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge: ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_link_init.exit.thread.i

if.end56.i.i:                                     ; preds = %if.end52.i.i
  %call58.i.i = call fastcc i32 @dvb_ca_en50221_write_data(ptr noundef %data, i32 noundef %slot.0273, ptr noundef nonnull %buf.i.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call58.i.i)
  %cmp59.not.i.i = icmp eq i32 %call58.i.i, 2
  br i1 %cmp59.not.i.i, label %dvb_ca_en50221_link_init.exit.i, label %if.end56.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge

if.end56.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge: ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_link_init.exit.thread.i

dvb_ca_en50221_link_init.exit.thread.i:           ; preds = %if.end56.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge, %if.end52.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge, %do.end45.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge, %if.end15.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge, %if.end12.i.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge, %if.end8.i297.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge, %do.end3.i295.i.dvb_ca_en50221_link_init.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #12
  br label %if.then107.i

dvb_ca_en50221_link_init.exit.i:                  ; preds = %if.end56.i.i
  %312 = ptrtoint ptr %pub.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %pub.i.i, align 4
  %write_cam_control64.i.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %313, i32 0, i32 4
  %314 = ptrtoint ptr %write_cam_control64.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %write_cam_control64.i.i, align 4
  %call66.i.i = call i32 %315(ptr noundef %313, i32 noundef %slot.0273, i8 noundef zeroext 1, i8 noundef zeroext -128) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i.i)
  %cmp106.not.i = icmp eq i32 %call66.i.i, 0
  br i1 %cmp106.not.i, label %if.end121.i, label %dvb_ca_en50221_link_init.exit.i.if.then107.i_crit_edge

dvb_ca_en50221_link_init.exit.i.if.then107.i_crit_edge: ; preds = %dvb_ca_en50221_link_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then107.i

if.then107.i:                                     ; preds = %dvb_ca_en50221_link_init.exit.i.if.then107.i_crit_edge, %dvb_ca_en50221_link_init.exit.thread.i
  %call108.i = call fastcc i32 @dvb_ca_en50221_poll_cam_gone(ptr noundef %data, i32 noundef %slot.0273) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i, label %do.end114.i, label %if.then107.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge

if.then107.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge: ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_state_machine.exit

do.end114.i:                                      ; preds = %if.then107.i
  %316 = ptrtoint ptr %dvbdev87.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %dvbdev87.i, align 4
  %adapter117.i = getelementptr inbounds %struct.dvb_device, ptr %317, i32 0, i32 2
  %318 = ptrtoint ptr %adapter117.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %adapter117.i, align 4
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %319, align 4
  %call119.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %321) #15
  %322 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 1, ptr %arrayidx.i95, align 4
  %323 = ptrtoint ptr %slot_count.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %324)
  %cmp44.not.i103 = icmp eq i32 %324, 0
  br i1 %cmp44.not.i103, label %do.end114.i.dvb_ca_en50221_thread_update_delay.exit140_crit_edge, label %for.body.lr.ph.i107

do.end114.i.dvb_ca_en50221_thread_update_delay.exit140_crit_edge: ; preds = %do.end114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit140

for.body.lr.ph.i107:                              ; preds = %do.end114.i
  %325 = ptrtoint ptr %slot_info.i94 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %slot_info.i94, align 4
  br label %for.body.i111

for.body.i111:                                    ; preds = %sw.epilog.i137.for.body.i111_crit_edge, %for.body.lr.ph.i107
  %slot.046.i108 = phi i32 [ 0, %for.body.lr.ph.i107 ], [ %inc.i135, %sw.epilog.i137.for.body.i111_crit_edge ]
  %curdelay.045.i109 = phi i32 [ 100000000, %for.body.lr.ph.i107 ], [ %338, %sw.epilog.i137.for.body.i111_crit_edge ]
  %arrayidx.i110 = getelementptr %struct.dvb_ca_slot, ptr %326, i32 %slot.046.i108
  %327 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %arrayidx.i110, align 4
  %329 = zext i32 %328 to i64
  call void @__sanitizer_cov_trace_switch(i64 %329, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %328, label %sw.bb.i115 [
    i32 2, label %sw.bb8.i125
    i32 3, label %sw.bb1.i119
    i32 1, label %for.body.i111.sw.epilog.i137_crit_edge
    i32 4, label %for.body.i111.sw.epilog.i137_crit_edge334
    i32 5, label %for.body.i111.sw.epilog.i137_crit_edge335
    i32 6, label %for.body.i111.sw.epilog.i137_crit_edge336
    i32 7, label %for.body.i111.sw.epilog.i137_crit_edge337
  ]

for.body.i111.sw.epilog.i137_crit_edge337:        ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i137

for.body.i111.sw.epilog.i137_crit_edge336:        ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i137

for.body.i111.sw.epilog.i137_crit_edge335:        ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i137

for.body.i111.sw.epilog.i137_crit_edge334:        ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i137

for.body.i111.sw.epilog.i137_crit_edge:           ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i137

sw.bb.i115:                                       ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #14
  %330 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %flags2.i.i, align 4
  %and.i112 = and i32 %331, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112)
  %tobool.not.i113 = icmp eq i32 %and.i112, 0
  %spec.store.select.i114 = select i1 %tobool.not.i113, i32 500, i32 6000
  br label %sw.epilog.i137

sw.bb1.i119:                                      ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #14
  %332 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %flags2.i.i, align 4
  %and3.i116 = and i32 %333, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i116)
  %tobool4.not.i117 = icmp eq i32 %and3.i116, 0
  %spec.store.select29.i118 = select i1 %tobool4.not.i117, i32 10, i32 6000
  br label %sw.epilog.i137

sw.bb8.i125:                                      ; preds = %for.body.i111
  %334 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %flags2.i.i, align 4
  %and10.i120 = and i32 %335, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i120)
  %tobool11.not.i121 = icmp eq i32 %and10.i120, 0
  %spec.store.select30.i122 = select i1 %tobool11.not.i121, i32 10, i32 6000
  %336 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %336)
  %bf.load.i123 = load i8, ptr %wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i123)
  %tobool14.not.i124 = icmp sgt i8 %bf.load.i123, -1
  br i1 %tobool14.not.i124, label %sw.bb8.i125.sw.epilog.i137_crit_edge, label %if.then15.i133

sw.bb8.i125.sw.epilog.i137_crit_edge:             ; preds = %sw.bb8.i125
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i137

if.then15.i133:                                   ; preds = %sw.bb8.i125
  call void @__sanitizer_cov_trace_pc() #14
  %da_irq_supported.i126 = getelementptr %struct.dvb_ca_slot, ptr %326, i32 %slot.046.i108, i32 6
  %337 = ptrtoint ptr %da_irq_supported.i126 to i32
  call void @__asan_load1_noabort(i32 %337)
  %bf.load16.i127 = load i8, ptr %da_irq_supported.i126, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16.i127)
  %tobool18.not.i128 = icmp sgt i8 %bf.load16.i127, -1
  %and20.i129 = and i32 %335, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i129)
  %tobool21.not.i130 = icmp eq i32 %and20.i129, 0
  %or.cond.i131 = select i1 %tobool18.not.i128, i1 true, i1 %tobool21.not.i130
  %spec.select43.i132 = select i1 %or.cond.i131, i32 10, i32 %spec.store.select30.i122
  br label %sw.epilog.i137

sw.epilog.i137:                                   ; preds = %if.then15.i133, %sw.bb8.i125.sw.epilog.i137_crit_edge, %sw.bb1.i119, %sw.bb.i115, %for.body.i111.sw.epilog.i137_crit_edge, %for.body.i111.sw.epilog.i137_crit_edge334, %for.body.i111.sw.epilog.i137_crit_edge335, %for.body.i111.sw.epilog.i137_crit_edge336, %for.body.i111.sw.epilog.i137_crit_edge337
  %delay.0.i134 = phi i32 [ %spec.store.select.i114, %sw.bb.i115 ], [ %spec.store.select29.i118, %sw.bb1.i119 ], [ %spec.store.select30.i122, %sw.bb8.i125.sw.epilog.i137_crit_edge ], [ 10, %for.body.i111.sw.epilog.i137_crit_edge ], [ 10, %for.body.i111.sw.epilog.i137_crit_edge334 ], [ 10, %for.body.i111.sw.epilog.i137_crit_edge335 ], [ 10, %for.body.i111.sw.epilog.i137_crit_edge336 ], [ 10, %for.body.i111.sw.epilog.i137_crit_edge337 ], [ %spec.select43.i132, %if.then15.i133 ]
  %338 = call i32 @llvm.smin.i32(i32 %delay.0.i134, i32 %curdelay.045.i109) #12
  %inc.i135 = add nuw i32 %slot.046.i108, 1
  %exitcond.not.i136 = icmp eq i32 %inc.i135, %324
  br i1 %exitcond.not.i136, label %sw.epilog.i137.dvb_ca_en50221_thread_update_delay.exit140_crit_edge, label %sw.epilog.i137.for.body.i111_crit_edge

sw.epilog.i137.for.body.i111_crit_edge:           ; preds = %sw.epilog.i137
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i111

sw.epilog.i137.dvb_ca_en50221_thread_update_delay.exit140_crit_edge: ; preds = %sw.epilog.i137
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit140

dvb_ca_en50221_thread_update_delay.exit140:       ; preds = %sw.epilog.i137.dvb_ca_en50221_thread_update_delay.exit140_crit_edge, %do.end114.i.dvb_ca_en50221_thread_update_delay.exit140_crit_edge
  %curdelay.0.lcssa.i138 = phi i32 [ 100000000, %do.end114.i.dvb_ca_en50221_thread_update_delay.exit140_crit_edge ], [ %338, %sw.epilog.i137.dvb_ca_en50221_thread_update_delay.exit140_crit_edge ]
  %339 = ptrtoint ptr %delay28.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %curdelay.0.lcssa.i138, ptr %delay28.i, align 4
  br label %dvb_ca_en50221_thread_state_machine.exit

if.end121.i:                                      ; preds = %dvb_ca_en50221_link_init.exit.i
  %rx_buffer.i = getelementptr %struct.dvb_ca_slot, ptr %34, i32 %slot.0273, i32 8
  %340 = ptrtoint ptr %rx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %rx_buffer.i, align 4
  %tobool122.not.i = icmp eq ptr %341, null
  br i1 %tobool122.not.i, label %if.then123.i, label %if.end121.i.if.end138.i_crit_edge

if.end121.i.if.end138.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138.i

if.then123.i:                                     ; preds = %if.end121.i
  %call124.i = call noalias ptr @vmalloc(i32 noundef 65535) #17
  %tobool125.not.i = icmp eq ptr %call124.i, null
  br i1 %tobool125.not.i, label %do.end129.i, label %if.end136.i

do.end129.i:                                      ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #14
  %342 = ptrtoint ptr %dvbdev87.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %dvbdev87.i, align 4
  %adapter132.i = getelementptr inbounds %struct.dvb_device, ptr %343, i32 0, i32 2
  %344 = ptrtoint ptr %adapter132.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %adapter132.i, align 4
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %345, align 4
  %call134.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %347) #15
  %348 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 3, ptr %arrayidx.i95, align 4
  call fastcc void @dvb_ca_en50221_thread_update_delay(ptr noundef %data) #12
  br label %dvb_ca_en50221_thread_state_machine.exit

if.end136.i:                                      ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dvb_ringbuffer_init(ptr noundef %rx_buffer.i, ptr noundef nonnull %call124.i, i32 noundef 65535) #12
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.end136.i, %if.end121.i.if.end138.i_crit_edge
  %349 = ptrtoint ptr %pub.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %pub.i.i, align 4
  %slot_ts_enable.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %350, i32 0, i32 9
  %351 = ptrtoint ptr %slot_ts_enable.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %slot_ts_enable.i, align 4
  %call141.i = call i32 %352(ptr noundef %350, i32 noundef %slot.0273) #12
  %353 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 2, ptr %arrayidx.i95, align 4
  call fastcc void @dvb_ca_en50221_thread_update_delay(ptr noundef %data) #12
  %354 = ptrtoint ptr %dvbdev87.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %dvbdev87.i, align 4
  %adapter148.i = getelementptr inbounds %struct.dvb_device, ptr %355, i32 0, i32 2
  %356 = ptrtoint ptr %adapter148.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %adapter148.i, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %357, align 4
  %call150.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %359) #15
  br label %dvb_ca_en50221_thread_state_machine.exit

sw.bb151.i:                                       ; preds = %while.end.i
  %360 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %360)
  %bf.load152.i = load i8, ptr %wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load152.i)
  %tobool153.not.i = icmp sgt i8 %bf.load152.i, -1
  br i1 %tobool153.not.i, label %sw.bb151.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge, label %sw.bb151.i.while.cond156.i_crit_edge

sw.bb151.i.while.cond156.i_crit_edge:             ; preds = %sw.bb151.i
  br label %while.cond156.i

sw.bb151.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge: ; preds = %sw.bb151.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_state_machine.exit

while.cond156.i:                                  ; preds = %if.end174.i.while.cond156.i_crit_edge, %sw.bb151.i.while.cond156.i_crit_edge
  %pktcount.0.i = phi i32 [ %inc.i100, %if.end174.i.while.cond156.i_crit_edge ], [ 0, %sw.bb151.i.while.cond156.i_crit_edge ]
  %call157.i = call fastcc i32 @dvb_ca_en50221_read_data(ptr noundef %data, i32 noundef %slot.0273, ptr noundef null, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.i)
  %cmp158.i = icmp sgt i32 %call157.i, 0
  br i1 %cmp158.i, label %while.body159.i, label %while.cond156.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge

while.cond156.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge: ; preds = %while.cond156.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_state_machine.exit

while.body159.i:                                  ; preds = %while.cond156.i
  %361 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %361)
  %bf.load161.i = load i8, ptr %wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load161.i)
  %tobool164.not.i = icmp sgt i8 %bf.load161.i, -1
  br i1 %tobool164.not.i, label %while.body159.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge, label %if.end166.i

while.body159.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge: ; preds = %while.body159.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_state_machine.exit

if.end166.i:                                      ; preds = %while.body159.i
  %call167.i = call fastcc i32 @dvb_ca_en50221_check_camstatus(ptr noundef %data, i32 noundef %slot.0273) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167.i)
  %tobool168.not.i = icmp eq i32 %call167.i, 0
  br i1 %tobool168.not.i, label %if.end174.i, label %if.then169.i

if.then169.i:                                     ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #14
  %362 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %362)
  %bf.load171.i = load i8, ptr %wakeup, align 4
  %bf.set173.i = or i8 %bf.load171.i, 64
  store i8 %bf.set173.i, ptr %wakeup, align 4
  br label %dvb_ca_en50221_thread_state_machine.exit

if.end174.i:                                      ; preds = %if.end166.i
  %inc.i100 = add nuw nsw i32 %pktcount.0.i, 1
  %exitcond.i = icmp eq i32 %inc.i100, 10
  br i1 %exitcond.i, label %if.then176.i, label %if.end174.i.while.cond156.i_crit_edge

if.end174.i.while.cond156.i_crit_edge:            ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond156.i

if.then176.i:                                     ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #14
  %363 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %363)
  %bf.load178.i = load i8, ptr %wakeup, align 4
  %bf.set180.i = or i8 %bf.load178.i, 64
  store i8 %bf.set180.i, ptr %wakeup, align 4
  br label %dvb_ca_en50221_thread_state_machine.exit

dvb_ca_en50221_thread_state_machine.exit:         ; preds = %if.then176.i, %if.then169.i, %while.body159.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge, %while.cond156.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge, %sw.bb151.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge, %if.end138.i, %do.end129.i, %dvb_ca_en50221_thread_update_delay.exit140, %if.then107.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge, %if.then97.i, %if.end92.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge, %dvb_ca_en50221_thread_update_delay.exit179, %do.end74.i, %do.end56.i, %dvb_ca_en50221_thread_update_delay.exit218, %if.then21.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge, %dvb_ca_en50221_thread_update_delay.exit262, %sw.bb11.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge, %sw.bb7.i, %while.end.i.dvb_ca_en50221_thread_state_machine.exit_crit_edge
  call void @mutex_unlock(ptr noundef %slot_lock.i) #12
  %inc = add nuw i32 %slot.0273, 1
  %364 = ptrtoint ptr %slot_count.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %slot_count.i, align 4
  %cmp = icmp ult i32 %inc, %365
  br i1 %cmp, label %dvb_ca_en50221_thread_state_machine.exit.for.body_crit_edge, label %dvb_ca_en50221_thread_state_machine.exit.while.cond.loopexit_crit_edge

dvb_ca_en50221_thread_state_machine.exit.while.cond.loopexit_crit_edge: ; preds = %dvb_ca_en50221_thread_state_machine.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.loopexit

dvb_ca_en50221_thread_state_machine.exit.for.body_crit_edge: ; preds = %dvb_ca_en50221_thread_state_machine.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %__here.cleanup_crit_edge, %while.cond.loopexit.cleanup_crit_edge, %dvb_ca_en50221_thread_update_delay.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dvb_ca_en50221_release(ptr nocapture noundef %pubca) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dvb_ca_en50221, ptr %pubca, i32 0, i32 12
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.21) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %thread = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %thread, align 4
  %call4 = tail call i32 @kthread_stop(ptr noundef %4) #12
  %slot_count = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %slot_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %slot_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp14.not = icmp eq i32 %6, 0
  br i1 %cmp14.not, label %do.end3.for.end_crit_edge, label %for.body.lr.ph

do.end3.for.end_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end3
  %pub.i = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 1
  %slot_info.i = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 5
  %wait_queue.i = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %dvb_ca_en50221_slot_shutdown.exit.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dvb_ca_en50221_slot_shutdown.exit.for.body_crit_edge ]
  %7 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %for.body.do.end2.i_crit_edge, label %do.end.i

for.body.do.end2.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end2.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.115) #15
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %for.body.do.end2.i_crit_edge
  %8 = ptrtoint ptr %pub.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pub.i, align 4
  %slot_shutdown.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %slot_shutdown.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slot_shutdown.i, align 4
  %call4.i = tail call i32 %11(ptr noundef %9, i32 noundef %i.015) #12
  %12 = ptrtoint ptr %slot_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slot_info.i, align 4
  %arrayidx.i = getelementptr %struct.dvb_ca_slot, ptr %13, i32 %i.015
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx.i, align 4
  tail call void @__wake_up(ptr noundef %wait_queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %15 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not.i = icmp eq i32 %15, 0
  br i1 %tobool6.not.i, label %do.end2.i.dvb_ca_en50221_slot_shutdown.exit_crit_edge, label %do.end9.i

do.end2.i.dvb_ca_en50221_slot_shutdown.exit_crit_edge: ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_slot_shutdown.exit

do.end9.i:                                        ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.115, i32 noundef %i.015) #15
  br label %dvb_ca_en50221_slot_shutdown.exit

dvb_ca_en50221_slot_shutdown.exit:                ; preds = %do.end9.i, %do.end2.i.dvb_ca_en50221_slot_shutdown.exit_crit_edge
  %inc = add nuw i32 %i.015, 1
  %16 = ptrtoint ptr %slot_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slot_count, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %dvb_ca_en50221_slot_shutdown.exit.for.body_crit_edge, label %dvb_ca_en50221_slot_shutdown.exit.for.end_crit_edge

dvb_ca_en50221_slot_shutdown.exit.for.end_crit_edge: ; preds = %dvb_ca_en50221_slot_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

dvb_ca_en50221_slot_shutdown.exit.for.body_crit_edge: ; preds = %dvb_ca_en50221_slot_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %dvb_ca_en50221_slot_shutdown.exit.for.end_crit_edge, %do.end3.for.end_crit_edge
  %dvbdev = getelementptr inbounds %struct.dvb_ca_private, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dvbdev, align 4
  tail call void @dvb_remove_device(ptr noundef %19) #12
  tail call fastcc void @dvb_ca_private_put(ptr noundef %1)
  %20 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %private, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_remove_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dvb_ca_private_put(ptr noundef %ca) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ca, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @llvm.prefetch.p0(ptr %ca, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ca, ptr %ca, i32 1, ptr elementtype(i32) %ca) #12, !srcloc !267
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !261

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ca, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !268
  %dvbdev.i.i.i = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 2
  %1 = ptrtoint ptr %dvbdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dvbdev.i.i.i, align 4
  tail call void @dvb_free_device(ptr noundef %2) #12
  %slot_count.i.i.i = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 4
  %3 = ptrtoint ptr %slot_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %slot_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8.not.i.i.i = icmp eq i32 %4, 0
  br i1 %cmp8.not.i.i.i, label %if.then.i.dvb_ca_private_release.exit.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then.i.dvb_ca_private_release.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_private_release.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then.i
  %slot_info.i.i.i = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 5
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.09.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %slot_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slot_info.i.i.i, align 4
  %rx_buffer.i.i.i = getelementptr %struct.dvb_ca_slot, ptr %6, i32 %i.09.i.i.i, i32 8
  %7 = ptrtoint ptr %rx_buffer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_buffer.i.i.i, align 4
  tail call void @vfree(ptr noundef %8) #12
  %inc.i.i.i = add nuw i32 %i.09.i.i.i, 1
  %9 = ptrtoint ptr %slot_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slot_count.i.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %10
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.dvb_ca_private_release.exit.i_crit_edge

for.body.i.i.i.dvb_ca_private_release.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_private_release.exit.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

dvb_ca_private_release.exit.i:                    ; preds = %for.body.i.i.i.dvb_ca_private_release.exit.i_crit_edge, %if.then.i.dvb_ca_private_release.exit.i_crit_edge
  %slot_info1.i.i.i = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 5
  %11 = ptrtoint ptr %slot_info1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slot_info1.i.i.i, align 4
  tail call void @kfree(ptr noundef %12) #12
  tail call void @kfree(ptr noundef %ca) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %dvb_ca_private_release.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_io_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %hdr = alloca [2 x i8], align 1
  %slot = alloca i32, align 4
  %fraglen = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hdr) #12
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %hdr, align 1, !annotation !265
  %5 = getelementptr inbounds [2 x i8], ptr %hdr, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !265
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot) #12
  %7 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %slot, align 4, !annotation !265
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fraglen) #12
  %8 = ptrtoint ptr %fraglen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %fraglen, align 4, !annotation !265
  %9 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp = icmp ult i32 %count, 2
  br i1 %cmp, label %do.end3.cleanup107_crit_edge, label %if.end5

do.end3.cleanup107_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup107

if.end5:                                          ; preds = %do.end3
  %call6 = call fastcc i32 @dvb_ca_en50221_io_read_condition(ptr noundef %3, ptr noundef nonnull %slot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.if.end41_crit_edge

if.end5.if.end41_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then8:                                         ; preds = %if.end5
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %10 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags, align 4
  %and = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %if.then8.cleanup107_crit_edge

if.then8.cleanup107_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup107

if.end11:                                         ; preds = %if.then8
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1630) #12
  %call18 = call fastcc i32 @dvb_ca_en50221_io_read_condition(ptr noundef %3, ptr noundef nonnull %slot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end11.if.end41_crit_edge

if.end11.if.end41_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then20:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %wait_queue = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 6
  %call22187 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call23188 = call fastcc i32 @dvb_ca_en50221_io_read_condition(ptr noundef %3, ptr noundef nonnull %slot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23188)
  %tobool24.not189 = icmp eq i32 %call23188, 0
  br i1 %tobool24.not189, label %if.then20.if.end26_crit_edge, label %if.then20.if.end34.thread165_crit_edge

if.then20.if.end34.thread165_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.thread165

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  br label %if.end26

if.end26:                                         ; preds = %cleanup.if.end26_crit_edge, %if.then20.if.end26_crit_edge
  %call22190 = phi i32 [ %call22, %cleanup.if.end26_crit_edge ], [ %call22187, %if.then20.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22190)
  %tobool27.not = icmp eq i32 %call22190, 0
  br i1 %tobool27.not, label %cleanup, label %if.end34

cleanup:                                          ; preds = %if.end26
  call void @schedule() #12
  %call22 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call23 = call fastcc i32 @dvb_ca_en50221_io_read_condition(ptr noundef %3, ptr noundef nonnull %slot)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup.if.end26_crit_edge, label %cleanup.if.end34.thread165_crit_edge

cleanup.if.end34.thread165_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.thread165

cleanup.if.end26_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end34.thread165:                               ; preds = %cleanup.if.end34.thread165_crit_edge, %if.then20.if.end34.thread165_crit_edge
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end41

if.end34:                                         ; preds = %if.end26
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22190)
  %cmp35 = icmp slt i32 %call22190, 0
  br i1 %cmp35, label %if.end34.cleanup107_crit_edge, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.end34.cleanup107_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup107

if.end41:                                         ; preds = %if.end34.if.end41_crit_edge, %if.end34.thread165, %if.end11.if.end41_crit_edge, %if.end5.if.end41_crit_edge
  %slot_info = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slot_info, align 4
  %15 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slot, align 4
  %rx_buffer = getelementptr %struct.dvb_ca_slot, ptr %14, i32 %16, i32 8
  %call42 = call i32 @dvb_ringbuffer_pkt_next(ptr noundef %rx_buffer, i32 noundef -1, ptr noundef nonnull %fraglen) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call42)
  %cmp44191 = icmp eq i32 %call42, -1
  br i1 %cmp44191, label %if.end41.do.end48_crit_edge, label %if.end41.if.end52_crit_edge

if.end41.if.end52_crit_edge:                      ; preds = %if.end41
  br label %if.end52

if.end41.do.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end48

do.end48:                                         ; preds = %if.end94.do.end48_crit_edge, %if.end41.do.end48_crit_edge
  %dvbdev50 = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %dvbdev50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dvbdev50, align 4
  %adapter = getelementptr inbounds %struct.dvb_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %22) #15
  br label %cleanup107

if.end52:                                         ; preds = %if.end94.if.end52_crit_edge, %if.end41.if.end52_crit_edge
  %pktlen.0194 = phi i32 [ %pktlen.2173, %if.end94.if.end52_crit_edge ], [ 2, %if.end41.if.end52_crit_edge ]
  %idx.0193 = phi i32 [ %call90175, %if.end94.if.end52_crit_edge ], [ %call42, %if.end41.if.end52_crit_edge ]
  %connection_id.0192 = phi i32 [ %connection_id.1, %if.end94.if.end52_crit_edge ], [ -1, %if.end41.if.end52_crit_edge ]
  %call54 = call i32 @dvb_ringbuffer_pkt_read(ptr noundef %rx_buffer, i32 noundef %idx.0193, i32 noundef 0, ptr noundef nonnull %hdr, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %connection_id.0192)
  %cmp55 = icmp eq i32 %connection_id.0192, -1
  br i1 %cmp55, label %if.then56, label %if.end52.if.end58_crit_edge

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hdr, align 1
  %conv = zext i8 %24 to i32
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end52.if.end58_crit_edge
  %connection_id.1 = phi i32 [ %conv, %if.then56 ], [ %connection_id.0192, %if.end52.if.end58_crit_edge ]
  %25 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hdr, align 1
  %conv60 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %connection_id.1, i32 %conv60)
  %cmp61 = icmp eq i32 %connection_id.1, %conv60
  br i1 %cmp61, label %if.then63, label %if.end88

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_cmp4(i32 %pktlen.0194, i32 %count)
  %cmp64 = icmp ult i32 %pktlen.0194, %count
  br i1 %cmp64, label %if.then66, label %if.then63.if.then92_crit_edge

if.then63.if.then92_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then92

if.then66:                                        ; preds = %if.then63
  %27 = ptrtoint ptr %fraglen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fraglen, align 4
  %add = add i32 %28, -2
  %sub = add i32 %add, %pktlen.0194
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count)
  %cmp67 = icmp ugt i32 %sub, %count
  %sub70 = sub i32 %count, %pktlen.0194
  %storemerge = select i1 %cmp67, i32 %sub70, i32 %add
  %29 = ptrtoint ptr %fraglen to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge, ptr %fraglen, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %pktlen.0194
  %call74 = call i32 @dvb_ringbuffer_pkt_read_user(ptr noundef %rx_buffer, i32 noundef %idx.0193, i32 noundef 2, ptr noundef %add.ptr, i32 noundef %storemerge) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then66.cleanup107_crit_edge, label %if.end78

if.then66.cleanup107_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup107

if.end78:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %fraglen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fraglen, align 4
  %add79 = add i32 %31, %pktlen.0194
  br label %if.then92

if.end88:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %call90 = call i32 @dvb_ringbuffer_pkt_next(ptr noundef %rx_buffer, i32 noundef %idx.0193, ptr noundef nonnull %fraglen) #12
  br label %if.end94

if.then92:                                        ; preds = %if.end78, %if.then63.if.then92_crit_edge
  %pktlen.1 = phi i32 [ %add79, %if.end78 ], [ %pktlen.0194, %if.then63.if.then92_crit_edge ]
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp84 = icmp sgt i8 %33, -1
  %call90170 = call i32 @dvb_ringbuffer_pkt_next(ptr noundef %rx_buffer, i32 noundef %idx.0193, ptr noundef nonnull %fraglen) #12
  call void @dvb_ringbuffer_pkt_dispose(ptr noundef %rx_buffer, i32 noundef %idx.0193) #12
  br i1 %cmp84, label %do.end97, label %if.then92.if.end94_crit_edge

if.then92.if.end94_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.end94:                                         ; preds = %if.then92.if.end94_crit_edge, %if.end88
  %call90175 = phi i32 [ %call90170, %if.then92.if.end94_crit_edge ], [ %call90, %if.end88 ]
  %pktlen.2173 = phi i32 [ %pktlen.1, %if.then92.if.end94_crit_edge ], [ %pktlen.0194, %if.end88 ]
  %cmp44 = icmp eq i32 %call90175, -1
  br i1 %cmp44, label %if.end94.do.end48_crit_edge, label %if.end94.if.end52_crit_edge

if.end94.if.end52_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.end94.do.end48_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end48

do.end97:                                         ; preds = %if.then92
  %conv98 = trunc i32 %16 to i8
  %34 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv98, ptr %hdr, align 1
  %conv100 = trunc i32 %connection_id.1 to i8
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv100, ptr %5, align 1
  call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 174) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %do.end97.cleanup107_crit_edge, label %if.end.i.i

do.end97.cleanup107_crit_edge:                    ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup107

if.end.i.i:                                       ; preds = %do.end97
  %36 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 2, i32 -1226833920) #18, !srcloc !269
  %asmresult.i.i = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.cleanup107_crit_edge

if.end.i.i.cleanup107_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup107

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %hdr, i32 noundef 2) #12
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %hdr, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool104.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool104.not, i32 %pktlen.1, i32 -14
  br label %cleanup107

cleanup107:                                       ; preds = %copy_to_user.exit, %if.end.i.i.cleanup107_crit_edge, %do.end97.cleanup107_crit_edge, %if.then66.cleanup107_crit_edge, %do.end48, %if.end34.cleanup107_crit_edge, %if.then8.cleanup107_crit_edge, %do.end3.cleanup107_crit_edge
  %retval.0 = phi i32 [ -22, %do.end3.cleanup107_crit_edge ], [ -11, %if.then8.cleanup107_crit_edge ], [ -5, %do.end48 ], [ %call22190, %if.end34.cleanup107_crit_edge ], [ -14, %do.end97.cleanup107_crit_edge ], [ -14, %if.end.i.i.cleanup107_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ %call74, %if.then66.cleanup107_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fraglen) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hdr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_io_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %slot = alloca i8, align 1
  %connection_id = alloca i8, align 1
  %fragbuf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %slot) #12
  %4 = ptrtoint ptr %slot to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %slot, align 1, !annotation !265
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %connection_id) #12
  %5 = ptrtoint ptr %connection_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %connection_id, align 1, !annotation !265
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %fragbuf) #12
  %6 = call ptr @memset(ptr %fragbuf, i32 255, i32 512)
  %7 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.31) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp = icmp ult i32 %count, 2
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end59.i.i

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end59.i.i:                                     ; preds = %do.end3
  tail call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 1, i32 -1226833920) #18, !srcloc !270
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !261

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %slot, i32 noundef 1) #12
  %9 = call i32 @llvm.read_register.i32(metadata !248) #12
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !271
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %slot, ptr noundef %buf, i32 noundef 1) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !261

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i184 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 1, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 1, %res.0.i.i184
  %add.ptr.i.i = getelementptr i8, ptr %slot, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i184)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  %add.ptr = getelementptr i8, ptr %buf, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #12
  %call.i.i140 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i140, label %if.end9.if.then11.i.i156_crit_edge, label %land.lhs.true.i.i143

if.end9.if.then11.i.i156_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i156

land.lhs.true.i.i143:                             ; preds = %if.end9
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 1, i32 -1226833920) #18, !srcloc !270
  %asmresult.i.i141 = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i141)
  %cmp.i6.i142 = icmp eq i32 %asmresult.i.i141, 0
  br i1 %cmp.i6.i142, label %if.end.i.i153, label %land.lhs.true.i.i143.if.then11.i.i156_crit_edge, !prof !261

land.lhs.true.i.i143.if.then11.i.i156_crit_edge:  ; preds = %land.lhs.true.i.i143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i156

if.end.i.i153:                                    ; preds = %land.lhs.true.i.i143
  %call.i.i.i144 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %connection_id, i32 noundef 1) #12
  %14 = call i32 @llvm.read_register.i32(metadata !248) #12
  %and.i.i.i.i.i.i145 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i145 to ptr
  %cpu_domain.i.i.i.i.i146 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i146) #9, !srcloc !271
  %and.i.i.i.i147 = and i32 %16, -13
  %or.i.i.i.i148 = or i32 %and.i.i.i.i147, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i148) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %call1.i.i.i149 = call i32 @arm_copy_from_user(ptr noundef nonnull %connection_id, ptr noundef %add.ptr, i32 noundef 1) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i149)
  %tobool4.not.i.i152 = icmp eq i32 %call1.i.i.i149, 0
  br i1 %tobool4.not.i.i152, label %if.end13, label %if.end.i.i153.if.then11.i.i156_crit_edge, !prof !261

if.end.i.i153.if.then11.i.i156_crit_edge:         ; preds = %if.end.i.i153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i156

if.then11.i.i156:                                 ; preds = %if.end.i.i153.if.then11.i.i156_crit_edge, %land.lhs.true.i.i143.if.then11.i.i156_crit_edge, %if.end9.if.then11.i.i156_crit_edge
  %res.0.i.i151189 = phi i32 [ %call1.i.i.i149, %if.end.i.i153.if.then11.i.i156_crit_edge ], [ 1, %if.end9.if.then11.i.i156_crit_edge ], [ 1, %land.lhs.true.i.i143.if.then11.i.i156_crit_edge ]
  %sub.i.i154 = sub i32 1, %res.0.i.i151189
  %add.ptr.i.i155 = getelementptr i8, ptr %connection_id, i32 %sub.i.i154
  %17 = call ptr @memset(ptr %add.ptr.i.i155, i32 0, i32 %res.0.i.i151189)
  br label %cleanup

if.end13:                                         ; preds = %if.end.i.i153
  %add.ptr14 = getelementptr i8, ptr %buf, i32 2
  %sub = add i32 %count, -2
  %18 = ptrtoint ptr %slot to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %slot, align 1
  %conv = zext i8 %19 to i32
  %slot_count = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %slot_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slot_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv)
  %cmp15.not = icmp ugt i32 %21, %conv
  br i1 %cmp15.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %22 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 %21) #12, !srcloc !274
  %23 = trunc i32 %22 to i8
  %conv30 = and i8 %19, %23
  %24 = ptrtoint ptr %slot to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv30, ptr %slot, align 1
  %slot_info = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slot_info, align 4
  %idxprom = zext i8 %conv30 to i32
  %arrayidx = getelementptr %struct.dvb_ca_slot, ptr %26, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp31.not = icmp eq i32 %28, 2
  br i1 %cmp31.not, label %while.cond.preheader, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp35209.not = icmp eq i32 %sub, 0
  br i1 %cmp35209.not, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %link_buf_size = getelementptr %struct.dvb_ca_slot, ptr %26, i32 %idxprom, i32 7
  %arrayidx56 = getelementptr inbounds [512 x i8], ptr %fragbuf, i32 0, i32 1
  %add.ptr57 = getelementptr inbounds i8, ptr %fragbuf, i32 2
  %slot_lock = getelementptr %struct.dvb_ca_slot, ptr %26, i32 %idxprom, i32 1
  br label %while.body

while.cond.loopexit:                              ; preds = %if.end73
  br i1 %cmp53, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.cleanup_crit_edge

while.cond.loopexit.cleanup_crit_edge:            ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %fragpos.0210 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %while.cond.loopexit.while.body_crit_edge ]
  %29 = ptrtoint ptr %link_buf_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %link_buf_size, align 4
  %sub37 = add i32 %30, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub37)
  %cmp38 = icmp slt i32 %sub37, 0
  br i1 %cmp38, label %while.body.cleanup_crit_edge, label %if.end41

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end41:                                         ; preds = %while.body
  %31 = call i32 @llvm.smin.i32(i32 %sub37, i32 510)
  %sub46 = sub i32 %sub, %fragpos.0210
  %32 = call i32 @llvm.umin.i32(i32 %sub46, i32 %31)
  %33 = ptrtoint ptr %connection_id to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %connection_id, align 1
  %35 = ptrtoint ptr %fragbuf to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %fragbuf, align 1
  %add = add i32 %32, %fragpos.0210
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp53 = icmp ult i32 %add, %sub
  %conv55 = select i1 %cmp53, i8 -128, i8 0
  %36 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv55, ptr %arrayidx56, align 1
  %add.ptr58 = getelementptr i8, ptr %add.ptr14, i32 %fragpos.0210
  call void @__check_object_size(ptr noundef %add.ptr57, i32 noundef %32, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #12
  %call.i.i163 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i163, label %if.end41.if.end.i.i176_crit_edge, label %land.lhs.true.i.i166

if.end41.if.end.i.i176_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i176

land.lhs.true.i.i166:                             ; preds = %if.end41
  %37 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr58, i32 %32, i32 -1226833920) #18, !srcloc !270
  %asmresult.i.i164 = extractvalue { i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i164)
  %cmp.i6.i165 = icmp eq i32 %asmresult.i.i164, 0
  br i1 %cmp.i6.i165, label %if.then.i7.i173, label %land.lhs.true.i.i166.if.end.i.i176_crit_edge, !prof !261

land.lhs.true.i.i166.if.end.i.i176_crit_edge:     ; preds = %land.lhs.true.i.i166
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i176

if.then.i7.i173:                                  ; preds = %land.lhs.true.i.i166
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i167 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr57, i32 noundef %32) #12
  %38 = call i32 @llvm.read_register.i32(metadata !248) #12
  %and.i.i.i.i.i.i168 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i168 to ptr
  %cpu_domain.i.i.i.i.i169 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i169) #9, !srcloc !271
  %and.i.i.i.i170 = and i32 %40, -13
  %or.i.i.i.i171 = or i32 %and.i.i.i.i170, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i171) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %call1.i.i.i172 = call i32 @arm_copy_from_user(ptr noundef %add.ptr57, ptr noundef %add.ptr58, i32 noundef %32) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  br label %if.end.i.i176

if.end.i.i176:                                    ; preds = %if.then.i7.i173, %land.lhs.true.i.i166.if.end.i.i176_crit_edge, %if.end41.if.end.i.i176_crit_edge
  %res.0.i.i174 = phi i32 [ %32, %if.end41.if.end.i.i176_crit_edge ], [ %call1.i.i.i172, %if.then.i7.i173 ], [ %32, %land.lhs.true.i.i166.if.end.i.i176_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i174)
  %tobool4.not.i.i175 = icmp eq i32 %res.0.i.i174, 0
  br i1 %tobool4.not.i.i175, label %if.end62, label %if.then11.i.i179, !prof !261

if.then11.i.i179:                                 ; preds = %if.end.i.i176
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i177 = sub i32 %32, %res.0.i.i174
  %add.ptr.i.i178 = getelementptr i8, ptr %add.ptr57, i32 %sub.i.i177
  %41 = call ptr @memset(ptr %add.ptr.i.i178, i32 0, i32 %res.0.i.i174)
  br label %cleanup

if.end62:                                         ; preds = %if.end.i.i176
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add63 = add i32 %42, 50
  %43 = load volatile i32, ptr @jiffies, align 128
  %sub65204 = sub i32 %add63, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub65204)
  %cmp66205 = icmp sgt i32 %sub65204, -1
  br i1 %cmp66205, label %while.body68.lr.ph, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body68.lr.ph:                               ; preds = %if.end62
  %add76 = add nuw nsw i32 %32, 2
  br label %while.body68

while.body68:                                     ; preds = %if.end87.while.body68_crit_edge, %while.body68.lr.ph
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp70.not = icmp eq i32 %45, 2
  br i1 %cmp70.not, label %if.end73, label %while.body68.cleanup_crit_edge

while.body68.cleanup_crit_edge:                   ; preds = %while.body68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end73:                                         ; preds = %while.body68
  call void @mutex_lock_nested(ptr noundef %slot_lock, i32 noundef 0) #12
  %46 = ptrtoint ptr %slot to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %slot, align 1
  %conv74 = zext i8 %47 to i32
  %call77 = call fastcc i32 @dvb_ca_en50221_write_data(ptr noundef %3, i32 noundef %conv74, ptr noundef nonnull %fragbuf, i32 noundef %add76)
  call void @mutex_unlock(ptr noundef %slot_lock) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call77, i32 %add76)
  %cmp80 = icmp eq i32 %call77, %add76
  br i1 %cmp80, label %while.cond.loopexit, label %if.end83

if.end83:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call77)
  %cmp84.not = icmp eq i32 %call77, -11
  br i1 %cmp84.not, label %if.end87, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end87:                                         ; preds = %if.end83
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub65 = sub i32 %add63, %48
  %cmp66 = icmp sgt i32 %sub65, -1
  br i1 %cmp66, label %if.end87.while.body68_crit_edge, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end87.while.body68_crit_edge:                  ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body68

cleanup:                                          ; preds = %if.end87.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %while.body68.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.then11.i.i179, %while.body.cleanup_crit_edge, %while.cond.loopexit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then11.i.i156, %if.then11.i.i, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end3.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i156 ], [ -14, %if.then11.i.i179 ], [ 2, %while.cond.preheader.cleanup_crit_edge ], [ -5, %while.body68.cleanup_crit_edge ], [ %call77, %if.end83.cleanup_crit_edge ], [ -5, %if.end87.cleanup_crit_edge ], [ -5, %if.end62.cleanup_crit_edge ], [ %count, %while.body.cleanup_crit_edge ], [ %count, %while.cond.loopexit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %fragbuf) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %connection_id) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %slot) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_io_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  %slot = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot) #12
  %4 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.36) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %wait_queue = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %do.end3.poll_wait.exit_crit_edge, label %land.lhs.true.i

do.end3.poll_wait.exit_crit_edge:                 ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %do.end3
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  %tobool3.not.i = icmp eq ptr %wait_queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %6(ptr noundef %file, ptr noundef nonnull %wait_queue, ptr noundef nonnull %wait) #12
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %do.end3.poll_wait.exit_crit_edge
  %call4 = call fastcc i32 @dvb_ca_en50221_io_read_condition(ptr noundef %3, ptr noundef nonnull %slot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp = icmp eq i32 %call4, 1
  br i1 %cmp, label %poll_wait.exit.cleanup_crit_edge, label %if.end9

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = call fastcc i32 @dvb_ca_en50221_io_read_condition(ptr noundef %3, ptr noundef nonnull %slot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 1
  %spec.select = zext i1 %cmp11 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %poll_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end9 ], [ 1, %poll_wait.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_io_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usercopy(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg, ptr noundef nonnull @dvb_ca_en50221_io_do_ioctl) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_io_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.38) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %pub = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pub, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call4 = tail call zeroext i1 @try_module_get(ptr noundef %8) #12
  br i1 %call4, label %if.end6, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %call7 = tail call i32 @dvb_generic_open(ptr noundef %inode, ptr noundef %file) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end6
  %slot_count = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %slot_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slot_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1239.not = icmp eq i32 %10, 0
  br i1 %cmp1239.not, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %open44 = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %open44 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load45 = load i8, ptr %open44, align 4
  %bf.set46 = or i8 %bf.load45, -128
  store i8 %bf.set46, ptr %open44, align 4
  br label %dvb_ca_en50221_thread_update_delay.exit

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %slot_info = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 5
  br label %for.body

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pub, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void @module_put(ptr noundef %15) #12
  br label %cleanup

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end19.for.body_crit_edge ]
  %16 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slot_info, align 4
  %arrayidx = getelementptr %struct.dvb_ca_slot, ptr %17, i32 %i.040
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp13 = icmp eq i32 %19, 2
  br i1 %cmp13, label %if.then14, label %for.body.if.end19_crit_edge

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then14:                                        ; preds = %for.body
  %rx_buffer = getelementptr %struct.dvb_ca_slot, ptr %17, i32 %i.040, i32 8
  %20 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_buffer, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %if.then16, label %if.then14.if.end19_crit_edge

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dvb_ringbuffer_flush(ptr noundef %rx_buffer) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then14.if.end19_crit_edge, %for.body.if.end19_crit_edge
  %inc = add nuw i32 %i.040, 1
  %22 = ptrtoint ptr %slot_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slot_count, align 4
  %cmp12 = icmp ult i32 %inc, %23
  br i1 %cmp12, label %if.end19.for.body_crit_edge, label %for.end

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end19
  %open = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %open, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp44.not.i = icmp eq i32 %23, 0
  br i1 %cmp44.not.i, label %for.end.dvb_ca_en50221_thread_update_delay.exit_crit_edge, label %for.body.lr.ph.i

for.end.dvb_ca_en50221_thread_update_delay.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %slot_info.i = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %slot_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slot_info.i, align 4
  %flags2.i = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %slot.046.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ]
  %curdelay.045.i = phi i32 [ 100000000, %for.body.lr.ph.i ], [ %38, %sw.epilog.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dvb_ca_slot, ptr %26, i32 %slot.046.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %28, label %sw.bb.i [
    i32 2, label %if.then15.i
    i32 3, label %sw.bb1.i
    i32 1, label %for.body.i.sw.epilog.i_crit_edge
    i32 4, label %for.body.i.sw.epilog.i_crit_edge53
    i32 5, label %for.body.i.sw.epilog.i_crit_edge54
    i32 6, label %for.body.i.sw.epilog.i_crit_edge55
    i32 7, label %for.body.i.sw.epilog.i_crit_edge56
  ]

for.body.i.sw.epilog.i_crit_edge56:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge55:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge54:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge53:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags2.i, align 4
  %and.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 500, i32 6000
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags2.i, align 4
  %and3.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %spec.store.select29.i = select i1 %tobool4.not.i, i32 10, i32 6000
  br label %sw.epilog.i

if.then15.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags2.i, align 4
  %and10.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %da_irq_supported.i = getelementptr %struct.dvb_ca_slot, ptr %26, i32 %slot.046.i, i32 6
  %36 = ptrtoint ptr %da_irq_supported.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load16.i = load i8, ptr %da_irq_supported.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16.i)
  %tobool18.not.i = icmp sgt i8 %bf.load16.i, -1
  %and20.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %or.cond.i = select i1 %tobool18.not.i, i1 true, i1 %tobool21.not.i
  %37 = select i1 %or.cond.i, i1 true, i1 %tobool11.not.i
  %spec.select43.i = select i1 %37, i32 10, i32 6000
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then15.i, %sw.bb1.i, %sw.bb.i, %for.body.i.sw.epilog.i_crit_edge, %for.body.i.sw.epilog.i_crit_edge53, %for.body.i.sw.epilog.i_crit_edge54, %for.body.i.sw.epilog.i_crit_edge55, %for.body.i.sw.epilog.i_crit_edge56
  %delay.0.i = phi i32 [ %spec.store.select.i, %sw.bb.i ], [ %spec.store.select29.i, %sw.bb1.i ], [ 10, %for.body.i.sw.epilog.i_crit_edge ], [ 10, %for.body.i.sw.epilog.i_crit_edge53 ], [ 10, %for.body.i.sw.epilog.i_crit_edge54 ], [ 10, %for.body.i.sw.epilog.i_crit_edge55 ], [ 10, %for.body.i.sw.epilog.i_crit_edge56 ], [ %spec.select43.i, %if.then15.i ]
  %38 = tail call i32 @llvm.smin.i32(i32 %delay.0.i, i32 %curdelay.045.i) #12
  %inc.i = add nuw i32 %slot.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %23
  br i1 %exitcond.not.i, label %sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit

dvb_ca_en50221_thread_update_delay.exit:          ; preds = %sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge, %for.end.dvb_ca_en50221_thread_update_delay.exit_crit_edge, %for.end.thread
  %open48 = phi ptr [ %open, %for.end.dvb_ca_en50221_thread_update_delay.exit_crit_edge ], [ %open44, %for.end.thread ], [ %open, %sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge ]
  %curdelay.0.lcssa.i = phi i32 [ 100000000, %for.end.dvb_ca_en50221_thread_update_delay.exit_crit_edge ], [ 100000000, %for.end.thread ], [ %38, %sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge ]
  %delay28.i = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 9
  %39 = ptrtoint ptr %delay28.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %curdelay.0.lcssa.i, ptr %delay28.i, align 4
  %40 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i36 = icmp eq i32 %40, 0
  br i1 %tobool.not.i36, label %dvb_ca_en50221_thread_update_delay.exit.dvb_ca_en50221_thread_wakeup.exit_crit_edge, label %do.end.i

dvb_ca_en50221_thread_update_delay.exit.dvb_ca_en50221_thread_wakeup.exit_crit_edge: ; preds = %dvb_ca_en50221_thread_update_delay.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_wakeup.exit

do.end.i:                                         ; preds = %dvb_ca_en50221_thread_update_delay.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22) #15
  br label %dvb_ca_en50221_thread_wakeup.exit

dvb_ca_en50221_thread_wakeup.exit:                ; preds = %do.end.i, %dvb_ca_en50221_thread_update_delay.exit.dvb_ca_en50221_thread_wakeup.exit_crit_edge
  %41 = ptrtoint ptr %open48 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i37 = load i8, ptr %open48, align 4
  %bf.set.i = or i8 %bf.load.i37, 64
  store i8 %bf.set.i, ptr %open48, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  tail call void @arm_heavy_mb() #12
  %thread.i = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 7
  %42 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %thread.i, align 4
  %call5.i = tail call i32 @wake_up_process(ptr noundef %43) #12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #12
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #12, !srcloc !275
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %dvb_ca_en50221_thread_wakeup.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !260

dvb_ca_en50221_thread_wakeup.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %dvb_ca_en50221_thread_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %dvb_ca_en50221_thread_wakeup.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %45 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i.i.i = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !261

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %dvb_ca_en50221_thread_wakeup.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %dvb_ca_en50221_thread_wakeup.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef %.sink.i.i.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %if.then8, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then8 ], [ -5, %do.end3.cleanup_crit_edge ], [ 0, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_io_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.39) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %open = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %open, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %open, align 4
  %slot_count.i = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %slot_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp44.not.i = icmp eq i32 %7, 0
  br i1 %cmp44.not.i, label %do.end3.dvb_ca_en50221_thread_update_delay.exit_crit_edge, label %for.body.lr.ph.i

do.end3.dvb_ca_en50221_thread_update_delay.exit_crit_edge: ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit

for.body.lr.ph.i:                                 ; preds = %do.end3
  %slot_info.i = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %slot_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slot_info.i, align 4
  %flags2.i = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %slot.046.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ]
  %curdelay.045.i = phi i32 [ 100000000, %for.body.lr.ph.i ], [ %15, %sw.epilog.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dvb_ca_slot, ptr %9, i32 %slot.046.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %11, label %for.body.i.sw.epilog.i.sink.split_crit_edge [
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb1.i
    i32 1, label %for.body.i.sw.epilog.i_crit_edge
    i32 4, label %for.body.i.sw.epilog.i_crit_edge10
    i32 5, label %for.body.i.sw.epilog.i_crit_edge11
    i32 6, label %for.body.i.sw.epilog.i_crit_edge12
    i32 7, label %for.body.i.sw.epilog.i_crit_edge13
  ]

for.body.i.sw.epilog.i_crit_edge13:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge12:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge11:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge10:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i.sink.split_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.sink.split

sw.bb1.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.sink.split

sw.bb8.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.sink.split

sw.epilog.i.sink.split:                           ; preds = %sw.bb8.i, %sw.bb1.i, %for.body.i.sw.epilog.i.sink.split_crit_edge
  %.sink = phi i32 [ 10, %sw.bb8.i ], [ 10, %sw.bb1.i ], [ 500, %for.body.i.sw.epilog.i.sink.split_crit_edge ]
  %13 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags2.i, align 4
  %and10.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %spec.store.select30.i = select i1 %tobool11.not.i, i32 %.sink, i32 6000
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.i.sink.split, %for.body.i.sw.epilog.i_crit_edge, %for.body.i.sw.epilog.i_crit_edge10, %for.body.i.sw.epilog.i_crit_edge11, %for.body.i.sw.epilog.i_crit_edge12, %for.body.i.sw.epilog.i_crit_edge13
  %delay.0.i = phi i32 [ 10, %for.body.i.sw.epilog.i_crit_edge ], [ 10, %for.body.i.sw.epilog.i_crit_edge10 ], [ 10, %for.body.i.sw.epilog.i_crit_edge11 ], [ 10, %for.body.i.sw.epilog.i_crit_edge12 ], [ 10, %for.body.i.sw.epilog.i_crit_edge13 ], [ %spec.store.select30.i, %sw.epilog.i.sink.split ]
  %15 = tail call i32 @llvm.smin.i32(i32 %delay.0.i, i32 %curdelay.045.i) #12
  %inc.i = add nuw i32 %slot.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit

dvb_ca_en50221_thread_update_delay.exit:          ; preds = %sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge, %do.end3.dvb_ca_en50221_thread_update_delay.exit_crit_edge
  %curdelay.0.lcssa.i = phi i32 [ 100000000, %do.end3.dvb_ca_en50221_thread_update_delay.exit_crit_edge ], [ %15, %sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge ]
  %delay28.i = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %delay28.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %curdelay.0.lcssa.i, ptr %delay28.i, align 4
  %call4 = tail call i32 @dvb_generic_release(ptr noundef %inode, ptr noundef %file) #12
  %pub = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pub, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  tail call void @module_put(ptr noundef %20) #12
  tail call fastcc void @dvb_ca_private_put(ptr noundef %3)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_ca_en50221_io_read_condition(ptr nocapture noundef %ca, ptr nocapture noundef writeonly %_slot) unnamed_addr #0 align 64 {
entry:
  %fraglen = alloca i32, align 4
  %hdr = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fraglen) #12
  %0 = ptrtoint ptr %fraglen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fraglen, align 4, !annotation !265
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hdr) #12
  %1 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %hdr, align 1, !annotation !265
  %2 = getelementptr inbounds [2 x i8], ptr %hdr, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !265
  %next_read_slot = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 10
  %4 = ptrtoint ptr %next_read_slot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_read_slot, align 4
  %slot_count1 = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 4
  %6 = ptrtoint ptr %slot_count1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not = icmp eq i32 %7, 0
  br i1 %cmp13.not, label %entry.while.end29_crit_edge, label %while.body.lr.ph

entry.while.end29_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end29

while.body.lr.ph:                                 ; preds = %entry
  %slot_info = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %connection_id.018 = phi i32 [ -1, %while.body.lr.ph ], [ %connection_id.3, %cleanup.while.body_crit_edge ]
  %slot_count.017 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %slot.014 = phi i32 [ %5, %while.body.lr.ph ], [ %rem, %cleanup.while.body_crit_edge ]
  %8 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slot_info, align 4
  %arrayidx = getelementptr %struct.dvb_ca_slot, ptr %9, i32 %slot.014
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp2.not = icmp eq i32 %11, 2
  br i1 %cmp2.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %while.body
  %rx_buffer = getelementptr %struct.dvb_ca_slot, ptr %9, i32 %slot.014, i32 8
  %12 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_buffer, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %if.end.cleanup31_crit_edge, label %if.end5

if.end.cleanup31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup31

if.end5:                                          ; preds = %if.end
  %call = call i32 @dvb_ringbuffer_pkt_next(ptr noundef %rx_buffer, i32 noundef -1, ptr noundef nonnull %fraglen) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp8.not9 = icmp eq i32 %call, -1
  br i1 %cmp8.not9, label %if.end5.cleanup_crit_edge, label %if.end5.while.body9_crit_edge

if.end5.while.body9_crit_edge:                    ; preds = %if.end5
  br label %while.body9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body9:                                      ; preds = %if.end25.while.body9_crit_edge, %if.end5.while.body9_crit_edge
  %connection_id.111 = phi i32 [ %connection_id.2, %if.end25.while.body9_crit_edge ], [ %connection_id.018, %if.end5.while.body9_crit_edge ]
  %idx.010 = phi i32 [ %call27, %if.end25.while.body9_crit_edge ], [ %call, %if.end5.while.body9_crit_edge ]
  %call11 = call i32 @dvb_ringbuffer_pkt_read(ptr noundef %rx_buffer, i32 noundef %idx.010, i32 noundef 0, ptr noundef nonnull %hdr, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %connection_id.111)
  %cmp12 = icmp eq i32 %connection_id.111, -1
  br i1 %cmp12, label %if.then13, label %while.body9.if.end15_crit_edge

while.body9.if.end15_crit_edge:                   ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hdr, align 1
  %conv = zext i8 %15 to i32
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %while.body9.if.end15_crit_edge
  %connection_id.2 = phi i32 [ %conv, %if.then13 ], [ %connection_id.111, %while.body9.if.end15_crit_edge ]
  %16 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hdr, align 1
  %conv17 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %connection_id.2, i32 %conv17)
  %cmp18 = icmp eq i32 %connection_id.2, %conv17
  br i1 %cmp18, label %land.lhs.true, label %if.end15.if.end25_crit_edge

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end15
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp22 = icmp sgt i8 %19, -1
  br i1 %cmp22, label %cleanup.thread, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

cleanup.thread:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %_slot to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %slot.014, ptr %_slot, align 4
  %add26 = add i32 %slot.014, 1
  %21 = ptrtoint ptr %slot_count1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slot_count1, align 4
  %rem27 = urem i32 %add26, %22
  br label %while.end29

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %call27 = call i32 @dvb_ringbuffer_pkt_next(ptr noundef %rx_buffer, i32 noundef %idx.010, ptr noundef nonnull %fraglen) #12
  %cmp8.not = icmp eq i32 %call27, -1
  br i1 %cmp8.not, label %if.end25.cleanup_crit_edge, label %if.end25.while.body9_crit_edge

if.end25.while.body9_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body9

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end25.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %connection_id.3 = phi i32 [ %connection_id.018, %while.body.cleanup_crit_edge ], [ %connection_id.018, %if.end5.cleanup_crit_edge ], [ %connection_id.2, %if.end25.cleanup_crit_edge ]
  %add = add i32 %slot.014, 1
  %23 = ptrtoint ptr %slot_count1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slot_count1, align 4
  %rem = urem i32 %add, %24
  %inc = add nuw i32 %slot_count.017, 1
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end29_crit_edge

cleanup.while.end29_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end29

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end29:                                      ; preds = %cleanup.while.end29_crit_edge, %cleanup.thread, %entry.while.end29_crit_edge
  %slot.0.lcssa = phi i32 [ %5, %entry.while.end29_crit_edge ], [ %rem27, %cleanup.thread ], [ %rem, %cleanup.while.end29_crit_edge ]
  %found.0.lcssa = phi i32 [ 0, %entry.while.end29_crit_edge ], [ 1, %cleanup.thread ], [ 0, %cleanup.while.end29_crit_edge ]
  %25 = ptrtoint ptr %next_read_slot to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %slot.0.lcssa, ptr %next_read_slot, align 4
  br label %cleanup31

cleanup31:                                        ; preds = %while.end29, %if.end.cleanup31_crit_edge
  %retval.2 = phi i32 [ %found.0.lcssa, %while.end29 ], [ 0, %if.end.cleanup31_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hdr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fraglen) #12
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_pkt_next(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_pkt_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_pkt_read_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_pkt_dispose(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_ca_en50221_write_data(ptr nocapture noundef %ca, i32 noundef %slot, ptr noundef %buf, i32 noundef %bytes_write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_info = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 5
  %0 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot_info, align 4
  %arrayidx = getelementptr %struct.dvb_ca_slot, ptr %1, i32 %slot
  %2 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.32) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %link_buf_size = getelementptr %struct.dvb_ca_slot, ptr %1, i32 %slot, i32 7
  %3 = ptrtoint ptr %link_buf_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %bytes_write)
  %cmp = icmp slt i32 %4, %bytes_write
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end5

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %pub = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 1
  %5 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pub, align 4
  %write_data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %write_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_data, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end5.if.end13_crit_edge, label %land.lhs.true

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp7.not = icmp eq i32 %10, 7
  br i1 %cmp7.not, label %land.lhs.true.if.end13_crit_edge, label %if.then8

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 %8(ptr noundef %6, i32 noundef %slot, ptr noundef %buf, i32 noundef %bytes_write) #12
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %read_cam_control = getelementptr inbounds %struct.dvb_ca_en50221, ptr %6, i32 0, i32 3
  %11 = ptrtoint ptr %read_cam_control to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_cam_control, align 4
  %call16 = tail call i32 %12(ptr noundef %6, i32 noundef %slot, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %and = and i32 %call16, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.end19
  %and22 = and i32 %call16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then21.cleanup_crit_edge, label %if.then24

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then24:                                        ; preds = %if.then21
  %13 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then24.dvb_ca_en50221_thread_wakeup.exit_crit_edge, label %do.end.i

if.then24.dvb_ca_en50221_thread_wakeup.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_wakeup.exit

do.end.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22) #15
  br label %dvb_ca_en50221_thread_wakeup.exit

dvb_ca_en50221_thread_wakeup.exit:                ; preds = %do.end.i, %if.then24.dvb_ca_en50221_thread_wakeup.exit_crit_edge
  %wakeup.i = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 8
  %14 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %wakeup.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %wakeup.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  tail call void @arm_heavy_mb() #12
  %thread.i = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 7
  %15 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %thread.i, align 4
  %call5.i = tail call i32 @wake_up_process(ptr noundef %16) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %17 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pub, align 4
  %write_cam_control = getelementptr inbounds %struct.dvb_ca_en50221, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %write_cam_control to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_cam_control, align 4
  %call29 = tail call i32 %20(ptr noundef %18, i32 noundef %slot, i8 noundef zeroext 1, i8 noundef zeroext -127) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end26.exit_crit_edge

if.end26.exit_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end32:                                         ; preds = %if.end26
  %21 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pub, align 4
  %read_cam_control34 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %read_cam_control34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_cam_control34, align 4
  %call36 = tail call i32 %24(ptr noundef %22, i32 noundef %slot, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end32.exit_crit_edge, label %if.end39

if.end32.exit_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end39:                                         ; preds = %if.end32
  %and40 = and i32 %call36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.exit_crit_edge, label %if.end43

if.end39.exit_crit_edge:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end43:                                         ; preds = %if.end39
  %25 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pub, align 4
  %read_cam_control45 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %read_cam_control45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_cam_control45, align 4
  %call47 = tail call i32 %28(ptr noundef %26, i32 noundef %slot, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end43.exit_crit_edge, label %if.end50

if.end43.exit_crit_edge:                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end50:                                         ; preds = %if.end43
  %and51 = and i32 %call47, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end58, label %if.then53

if.then53:                                        ; preds = %if.end50
  %and54 = and i32 %call47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.then53.exit_crit_edge, label %if.then56

if.then53.exit_crit_edge:                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dvb_ca_en50221_thread_wakeup(ptr noundef %ca)
  br label %exit

if.end58:                                         ; preds = %if.end50
  %29 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pub, align 4
  %write_cam_control60 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %write_cam_control60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_cam_control60, align 4
  %33 = lshr i32 %bytes_write, 8
  %conv = trunc i32 %33 to i8
  %call62 = tail call i32 %32(ptr noundef %30, i32 noundef %slot, i8 noundef zeroext 3, i8 noundef zeroext %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end58.exit_crit_edge

if.end58.exit_crit_edge:                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end65:                                         ; preds = %if.end58
  %34 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pub, align 4
  %write_cam_control67 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %write_cam_control67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_cam_control67, align 4
  %conv70 = trunc i32 %bytes_write to i8
  %call71 = tail call i32 %37(ptr noundef %35, i32 noundef %slot, i8 noundef zeroext 2, i8 noundef zeroext %conv70) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %for.cond.preheader, label %if.end65.exit_crit_edge

if.end65.exit_crit_edge:                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

for.cond.preheader:                               ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_write)
  %cmp75183 = icmp sgt i32 %bytes_write, 0
  br i1 %cmp75183, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0184, 1
  %exitcond.not = icmp eq i32 %inc, %bytes_write
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0184 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %38 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pub, align 4
  %write_cam_control78 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %write_cam_control78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_cam_control78, align 4
  %arrayidx80 = getelementptr i8, ptr %buf, i32 %i.0184
  %42 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx80, align 1
  %call81 = tail call i32 %41(ptr noundef %39, i32 noundef %slot, i8 noundef zeroext 0, i8 noundef zeroext %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %for.cond, label %for.body.exit_crit_edge

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %44 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pub, align 4
  %read_cam_control86 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %read_cam_control86 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read_cam_control86, align 4
  %call88 = tail call i32 %47(ptr noundef %45, i32 noundef %slot, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %for.end.exit_crit_edge, label %if.end92

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end92:                                         ; preds = %for.end
  %and93 = and i32 %call88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end97, label %if.then95

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 7, ptr %arrayidx, align 4
  br label %exit

if.end97:                                         ; preds = %if.end92
  %49 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool99.not = icmp eq i32 %49, 0
  br i1 %tobool99.not, label %if.end97.exit_crit_edge, label %do.end103

if.end97.exit_crit_edge:                          ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.end103:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %buf, align 1
  %conv106 = zext i8 %51 to i32
  %arrayidx107 = getelementptr i8, ptr %buf, i32 1
  %52 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx107, align 1
  %54 = xor i8 %53, -1
  %55 = lshr i8 %54, 7
  %.not = zext i8 %55 to i32
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef %slot, i32 noundef %conv106, i32 noundef %.not, i32 noundef %bytes_write) #15
  br label %exit

exit:                                             ; preds = %do.end103, %if.end97.exit_crit_edge, %if.then95, %for.end.exit_crit_edge, %for.body.exit_crit_edge, %if.end65.exit_crit_edge, %if.end58.exit_crit_edge, %if.then56, %if.then53.exit_crit_edge, %if.end43.exit_crit_edge, %if.end39.exit_crit_edge, %if.end32.exit_crit_edge, %if.end26.exit_crit_edge
  %status.0 = phi i32 [ %call29, %if.end26.exit_crit_edge ], [ %call36, %if.end32.exit_crit_edge ], [ %call47, %if.end43.exit_crit_edge ], [ %call62, %if.end58.exit_crit_edge ], [ %call71, %if.end65.exit_crit_edge ], [ %call88, %for.end.exit_crit_edge ], [ -5, %if.then95 ], [ %bytes_write, %do.end103 ], [ %bytes_write, %if.end97.exit_crit_edge ], [ -11, %if.end39.exit_crit_edge ], [ -11, %if.then56 ], [ -11, %if.then53.exit_crit_edge ], [ %call81, %for.body.exit_crit_edge ]
  %56 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pub, align 4
  %write_cam_control117 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %write_cam_control117 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_cam_control117, align 4
  %call119 = tail call i32 %59(ptr noundef %57, i32 noundef %slot, i8 noundef zeroext 1, i8 noundef zeroext -128) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %dvb_ca_en50221_thread_wakeup.exit, %if.then21.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then8, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then8 ], [ -22, %do.end3.cleanup_crit_edge ], [ %call16, %if.end13.cleanup_crit_edge ], [ %status.0, %exit ], [ -11, %dvb_ca_en50221_thread_wakeup.exit ], [ -11, %if.then21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usercopy(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_ca_en50221_io_do_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr nocapture noundef %parg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.37) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %ioctl_mutex = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 11
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ioctl_mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end3.cleanup52_crit_edge

do.end3.cleanup52_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup52

if.end7:                                          ; preds = %do.end3
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %cmd, label %if.end7.out_unlock_crit_edge [
    i32 28544, label %for.cond.preheader
    i32 -2146406527, label %sw.bb16
    i32 -2146668670, label %sw.bb18
  ]

if.end7.out_unlock_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

for.cond.preheader:                               ; preds = %if.end7
  %slot_count = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %slot_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp95.not = icmp eq i32 %7, 0
  br i1 %cmp95.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %slot_info = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 5
  %pub.i = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 1
  %wait_queue.i = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 6
  %flags = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %slot.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end14.for.body_crit_edge ]
  %8 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slot_info, align 4
  %arrayidx = getelementptr %struct.dvb_ca_slot, ptr %9, i32 %slot.096
  %slot_lock = getelementptr %struct.dvb_ca_slot, ptr %9, i32 %slot.096, i32 1
  tail call void @mutex_lock_nested(ptr noundef %slot_lock, i32 noundef 0) #12
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8.not = icmp eq i32 %11, 0
  br i1 %cmp8.not, label %for.body.if.end14_crit_edge, label %if.then9

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then9:                                         ; preds = %for.body
  %12 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then9.do.end2.i_crit_edge, label %do.end.i

if.then9.do.end2.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end2.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.115) #15
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %if.then9.do.end2.i_crit_edge
  %13 = ptrtoint ptr %pub.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pub.i, align 4
  %slot_shutdown.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %slot_shutdown.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slot_shutdown.i, align 4
  %call4.i = tail call i32 %16(ptr noundef %14, i32 noundef %slot.096) #12
  %17 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %slot_info, align 4
  %arrayidx.i = getelementptr %struct.dvb_ca_slot, ptr %18, i32 %slot.096
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx.i, align 4
  tail call void @__wake_up(ptr noundef %wait_queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %20 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not.i = icmp eq i32 %20, 0
  br i1 %tobool6.not.i, label %do.end2.i.dvb_ca_en50221_slot_shutdown.exit_crit_edge, label %do.end9.i

do.end2.i.dvb_ca_en50221_slot_shutdown.exit_crit_edge: ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_slot_shutdown.exit

do.end9.i:                                        ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.115, i32 noundef %slot.096) #15
  br label %dvb_ca_en50221_slot_shutdown.exit

dvb_ca_en50221_slot_shutdown.exit:                ; preds = %do.end9.i, %do.end2.i.dvb_ca_en50221_slot_shutdown.exit_crit_edge
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %dvb_ca_en50221_slot_shutdown.exit.if.end14_crit_edge, label %if.then12

dvb_ca_en50221_slot_shutdown.exit.if.end14_crit_edge: ; preds = %dvb_ca_en50221_slot_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then12:                                        ; preds = %dvb_ca_en50221_slot_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %pub.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pub.i, align 4
  tail call void @dvb_ca_en50221_camchange_irq(ptr noundef %24, i32 noundef %slot.096, i32 noundef 1)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %dvb_ca_en50221_slot_shutdown.exit.if.end14_crit_edge, %for.body.if.end14_crit_edge
  tail call void @mutex_unlock(ptr noundef %slot_lock) #12
  %inc = add nuw i32 %slot.096, 1
  %25 = ptrtoint ptr %slot_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %slot_count, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %if.end14.for.body_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %next_read_slot = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 10
  %27 = ptrtoint ptr %next_read_slot to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %next_read_slot, align 4
  %28 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i91 = icmp eq i32 %28, 0
  br i1 %tobool.not.i91, label %for.end.dvb_ca_en50221_thread_wakeup.exit_crit_edge, label %do.end.i93

for.end.dvb_ca_en50221_thread_wakeup.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_wakeup.exit

do.end.i93:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22) #15
  br label %dvb_ca_en50221_thread_wakeup.exit

dvb_ca_en50221_thread_wakeup.exit:                ; preds = %do.end.i93, %for.end.dvb_ca_en50221_thread_wakeup.exit_crit_edge
  %wakeup.i = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 8
  %29 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %wakeup.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %wakeup.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  tail call void @arm_heavy_mb() #12
  %thread.i = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 7
  %30 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %thread.i, align 4
  %call5.i = tail call i32 @wake_up_process(ptr noundef %31) #12
  br label %out_unlock

sw.bb16:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %slot_count17 = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 4
  %32 = ptrtoint ptr %slot_count17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %slot_count17, align 4
  %34 = ptrtoint ptr %parg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %parg, align 4
  %slot_type = getelementptr inbounds %struct.ca_caps, ptr %parg, i32 0, i32 1
  %35 = ptrtoint ptr %slot_type to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %slot_type, align 4
  %descr_num = getelementptr inbounds %struct.ca_caps, ptr %parg, i32 0, i32 2
  %36 = ptrtoint ptr %descr_num to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %descr_num, align 4
  %descr_type = getelementptr inbounds %struct.ca_caps, ptr %parg, i32 0, i32 3
  %37 = ptrtoint ptr %descr_type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %descr_type, align 4
  br label %out_unlock

sw.bb18:                                          ; preds = %if.end7
  %38 = ptrtoint ptr %parg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %parg, align 4
  %slot_count20 = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %slot_count20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %slot_count20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp21.not = icmp uge i32 %39, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp22 = icmp slt i32 %39, 0
  %or.cond = or i1 %cmp22, %cmp21.not
  br i1 %or.cond, label %sw.bb18.out_unlock_crit_edge, label %if.end24

sw.bb18.out_unlock_crit_edge:                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end24:                                         ; preds = %sw.bb18
  %42 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %39, i32 %41) #12, !srcloc !274
  %and34 = and i32 %42, %39
  %type = getelementptr inbounds %struct.ca_slot_info, ptr %parg, i32 0, i32 1
  %43 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %type, align 4
  %flags35 = getelementptr inbounds %struct.ca_slot_info, ptr %parg, i32 0, i32 2
  %44 = ptrtoint ptr %flags35 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %flags35, align 4
  %slot_info36 = getelementptr inbounds %struct.dvb_ca_private, ptr %3, i32 0, i32 5
  %45 = ptrtoint ptr %slot_info36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %slot_info36, align 4
  %arrayidx37 = getelementptr %struct.dvb_ca_slot, ptr %46, i32 %and34
  %47 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx37, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %48, label %if.then42 [
    i32 0, label %if.end24.if.end44_crit_edge
    i32 3, label %if.end24.if.end44_crit_edge99
  ]

if.end24.if.end44_crit_edge99:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end24.if.end44_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then42:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %flags35 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %flags35, align 4
  %51 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load i32, ptr %arrayidx37, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end24.if.end44_crit_edge, %if.end24.if.end44_crit_edge99
  %52 = phi i32 [ %48, %if.end24.if.end44_crit_edge ], [ %48, %if.end24.if.end44_crit_edge99 ], [ %.pr, %if.then42 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp46 = icmp eq i32 %52, 2
  br i1 %cmp46, label %if.then47, label %if.end44.out_unlock_crit_edge

if.end44.out_unlock_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags35, align 4
  %or = or i32 %54, 2
  store i32 %or, ptr %flags35, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then47, %if.end44.out_unlock_crit_edge, %sw.bb18.out_unlock_crit_edge, %sw.bb16, %dvb_ca_en50221_thread_wakeup.exit, %if.end7.out_unlock_crit_edge
  %err.1 = phi i32 [ 0, %sw.bb16 ], [ 0, %dvb_ca_en50221_thread_wakeup.exit ], [ -22, %if.end7.out_unlock_crit_edge ], [ -22, %sw.bb18.out_unlock_crit_edge ], [ 0, %if.then47 ], [ 0, %if.end44.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ioctl_mutex) #12
  br label %cleanup52

cleanup52:                                        ; preds = %out_unlock, %do.end3.cleanup52_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_unlock ], [ -512, %do.end3.cleanup52_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dvb_ca_en50221_thread_update_delay(ptr nocapture noundef %ca) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_count = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 4
  %0 = ptrtoint ptr %slot_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp44.not = icmp eq i32 %1, 0
  br i1 %cmp44.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %slot_info = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 5
  %2 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slot_info, align 4
  %flags2 = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 3
  %open = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %slot.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %curdelay.045 = phi i32 [ 100000000, %for.body.lr.ph ], [ %15, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dvb_ca_slot, ptr %3, i32 %slot.046
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %5, label %sw.bb [
    i32 2, label %sw.bb8
    i32 3, label %sw.bb1
    i32 1, label %for.body.sw.epilog_crit_edge
    i32 4, label %for.body.sw.epilog_crit_edge48
    i32 5, label %for.body.sw.epilog_crit_edge49
    i32 6, label %for.body.sw.epilog_crit_edge50
    i32 7, label %for.body.sw.epilog_crit_edge51
  ]

for.body.sw.epilog_crit_edge51:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.sw.epilog_crit_edge50:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.sw.epilog_crit_edge49:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.sw.epilog_crit_edge48:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags2, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i32 500, i32 6000
  br label %sw.epilog

sw.bb1:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags2, align 4
  %and3 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %spec.store.select29 = select i1 %tobool4.not, i32 10, i32 6000
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body
  %11 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags2, align 4
  %and10 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %spec.store.select30 = select i1 %tobool11.not, i32 10, i32 6000
  %13 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool14.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool14.not, label %sw.bb8.sw.epilog_crit_edge, label %if.then15

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then15:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %da_irq_supported = getelementptr %struct.dvb_ca_slot, ptr %3, i32 %slot.046, i32 6
  %14 = ptrtoint ptr %da_irq_supported to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load16 = load i8, ptr %da_irq_supported, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16)
  %tobool18.not = icmp sgt i8 %bf.load16, -1
  %and20 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool21.not
  %spec.select43 = select i1 %or.cond, i32 10, i32 %spec.store.select30
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then15, %sw.bb8.sw.epilog_crit_edge, %sw.bb1, %sw.bb, %for.body.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge48, %for.body.sw.epilog_crit_edge49, %for.body.sw.epilog_crit_edge50, %for.body.sw.epilog_crit_edge51
  %delay.0 = phi i32 [ %spec.store.select, %sw.bb ], [ %spec.store.select29, %sw.bb1 ], [ %spec.store.select30, %sw.bb8.sw.epilog_crit_edge ], [ 10, %for.body.sw.epilog_crit_edge ], [ 10, %for.body.sw.epilog_crit_edge48 ], [ 10, %for.body.sw.epilog_crit_edge49 ], [ 10, %for.body.sw.epilog_crit_edge50 ], [ 10, %for.body.sw.epilog_crit_edge51 ], [ %spec.select43, %if.then15 ]
  %15 = tail call i32 @llvm.smin.i32(i32 %delay.0, i32 %curdelay.045)
  %inc = add nuw i32 %slot.046, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  %curdelay.0.lcssa = phi i32 [ 100000000, %entry.for.end_crit_edge ], [ %15, %sw.epilog.for.end_crit_edge ]
  %delay28 = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 9
  %16 = ptrtoint ptr %delay28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %curdelay.0.lcssa, ptr %delay28, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_ca_en50221_check_camstatus(ptr nocapture noundef readonly %ca, i32 noundef %slot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_info = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 5
  %0 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot_info, align 4
  %arrayidx = getelementptr %struct.dvb_ca_slot, ptr %1, i32 %slot
  %flags = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %camchange_count = getelementptr %struct.dvb_ca_slot, ptr %1, i32 %slot, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %camchange_count, i32 noundef 4) #12
  %4 = ptrtoint ptr %camchange_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %camchange_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp ne i32 %5, 0
  %phi.cast = zext i1 %cmp to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %pub = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 1
  %6 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pub, align 4
  %poll_slot_status = getelementptr inbounds %struct.dvb_ca_en50221, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %poll_slot_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %poll_slot_status, align 4
  %open = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 8
  %10 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %open, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %call2 = tail call i32 %9(ptr noundef %7, i32 noundef %slot, i32 noundef %bf.cast) #12
  %and3 = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %and5 = and i32 %call2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end14, label %if.end.if.then16_crit_edge

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end14:                                         ; preds = %if.end
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10 = icmp eq i32 %12, 0
  %cmp12 = xor i1 %tobool4.not, %cmp10
  br i1 %cmp12, label %if.end14.if.then16_crit_edge, label %if.else22

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %if.end14.if.then16_crit_edge, %if.end.if.then16_crit_edge
  %not.tobool4.not = xor i1 %tobool4.not, true
  %spec.select = zext i1 %not.tobool4.not to i32
  %13 = getelementptr %struct.dvb_ca_slot, ptr %1, i32 %slot, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %13, align 4
  %camchange_count21 = getelementptr %struct.dvb_ca_slot, ptr %1, i32 %slot, i32 2
  %call.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %camchange_count21, i32 noundef 4) #12
  %15 = ptrtoint ptr %camchange_count21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %camchange_count21, align 4
  br label %cleanup

if.else22:                                        ; preds = %if.end14
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp24 = icmp ne i32 %17, 4
  %and26 = and i32 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %or.cond = select i1 %cmp24, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %if.else22.cleanup_crit_edge, label %if.then28

if.else22.cleanup_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then28:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.else22.cleanup_crit_edge, %if.then16, %if.then
  %retval.0.in = phi i32 [ %phi.cast, %if.then ], [ 0, %if.else22.cleanup_crit_edge ], [ 0, %if.then28 ], [ 1, %if.then16 ]
  ret i32 %retval.0.in
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_ca_en50221_poll_cam_gone(ptr nocapture noundef %ca, i32 noundef %slot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %pub = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 1
  %2 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pub, align 4
  %poll_slot_status = getelementptr inbounds %struct.dvb_ca_en50221, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %poll_slot_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %poll_slot_status, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end8_crit_edge, label %if.then

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %5(ptr noundef %3, i32 noundef %slot, i32 noundef 0) #12
  %and5 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then7, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %if.then
  %slot_info = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 5
  %6 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slot_info, align 4
  %arrayidx = getelementptr %struct.dvb_ca_slot, ptr %7, i32 %slot
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx, align 4
  %slot_count.i = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 4
  %9 = ptrtoint ptr %slot_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp44.not.i = icmp eq i32 %10, 0
  br i1 %cmp44.not.i, label %if.then7.dvb_ca_en50221_thread_update_delay.exit_crit_edge, label %for.body.lr.ph.i

if.then7.dvb_ca_en50221_thread_update_delay.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit

for.body.lr.ph.i:                                 ; preds = %if.then7
  %11 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slot_info, align 4
  %open.i = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %slot.046.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ]
  %curdelay.045.i = phi i32 [ 100000000, %for.body.lr.ph.i ], [ %24, %sw.epilog.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dvb_ca_slot, ptr %12, i32 %slot.046.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %14, label %sw.bb.i [
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb1.i
    i32 1, label %for.body.i.sw.epilog.i_crit_edge
    i32 4, label %for.body.i.sw.epilog.i_crit_edge15
    i32 5, label %for.body.i.sw.epilog.i_crit_edge16
    i32 6, label %for.body.i.sw.epilog.i_crit_edge17
    i32 7, label %for.body.i.sw.epilog.i_crit_edge18
  ]

for.body.i.sw.epilog.i_crit_edge18:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge17:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge16:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge15:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 500, i32 6000
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and3.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %spec.store.select29.i = select i1 %tobool4.not.i, i32 10, i32 6000
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %for.body.i
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and10.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %spec.store.select30.i = select i1 %tobool11.not.i, i32 10, i32 6000
  %22 = ptrtoint ptr %open.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %open.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool14.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool14.not.i, label %sw.bb8.i.sw.epilog.i_crit_edge, label %if.then15.i

sw.bb8.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then15.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  %da_irq_supported.i = getelementptr %struct.dvb_ca_slot, ptr %12, i32 %slot.046.i, i32 6
  %23 = ptrtoint ptr %da_irq_supported.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load16.i = load i8, ptr %da_irq_supported.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16.i)
  %tobool18.not.i = icmp sgt i8 %bf.load16.i, -1
  %and20.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %or.cond.i = select i1 %tobool18.not.i, i1 true, i1 %tobool21.not.i
  %spec.select43.i = select i1 %or.cond.i, i32 10, i32 %spec.store.select30.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then15.i, %sw.bb8.i.sw.epilog.i_crit_edge, %sw.bb1.i, %sw.bb.i, %for.body.i.sw.epilog.i_crit_edge, %for.body.i.sw.epilog.i_crit_edge15, %for.body.i.sw.epilog.i_crit_edge16, %for.body.i.sw.epilog.i_crit_edge17, %for.body.i.sw.epilog.i_crit_edge18
  %delay.0.i = phi i32 [ %spec.store.select.i, %sw.bb.i ], [ %spec.store.select29.i, %sw.bb1.i ], [ %spec.store.select30.i, %sw.bb8.i.sw.epilog.i_crit_edge ], [ 10, %for.body.i.sw.epilog.i_crit_edge ], [ 10, %for.body.i.sw.epilog.i_crit_edge15 ], [ 10, %for.body.i.sw.epilog.i_crit_edge16 ], [ 10, %for.body.i.sw.epilog.i_crit_edge17 ], [ 10, %for.body.i.sw.epilog.i_crit_edge18 ], [ %spec.select43.i, %if.then15.i ]
  %24 = tail call i32 @llvm.smin.i32(i32 %delay.0.i, i32 %curdelay.045.i) #12
  %inc.i = add nuw i32 %slot.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_ca_en50221_thread_update_delay.exit

dvb_ca_en50221_thread_update_delay.exit:          ; preds = %sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge, %if.then7.dvb_ca_en50221_thread_update_delay.exit_crit_edge
  %curdelay.0.lcssa.i = phi i32 [ 100000000, %if.then7.dvb_ca_en50221_thread_update_delay.exit_crit_edge ], [ %24, %sw.epilog.i.dvb_ca_en50221_thread_update_delay.exit_crit_edge ]
  %delay28.i = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 9
  %25 = ptrtoint ptr %delay28.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %curdelay.0.lcssa.i, ptr %delay28.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %dvb_ca_en50221_thread_update_delay.exit, %if.then.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %changed.0 = phi i32 [ 0, %entry.if.end8_crit_edge ], [ 0, %if.then.if.end8_crit_edge ], [ 1, %dvb_ca_en50221_thread_update_delay.exit ], [ 0, %land.lhs.true.if.end8_crit_edge ]
  ret i32 %changed.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_ca_en50221_read_data(ptr noundef %ca, i32 noundef %slot, ptr noundef writeonly %ebuf, i32 noundef %ecount) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_info = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 5
  %0 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot_info, align 4
  %arrayidx = getelementptr %struct.dvb_ca_slot, ptr %1, i32 %slot
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #12
  %2 = call ptr @memset(ptr %buf, i32 255, i32 512)
  %3 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.102) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %tobool4.not = icmp eq ptr %ebuf, null
  br i1 %tobool4.not, label %if.then5, label %do.end3.if.end13_crit_edge

do.end3.if.end13_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then5:                                         ; preds = %do.end3
  %rx_buffer = getelementptr %struct.dvb_ca_slot, ptr %1, i32 %slot, i32 8
  %4 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_buffer, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.then5.cleanup158_crit_edge, label %if.end8

if.then5.cleanup158_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup158

if.end8:                                          ; preds = %if.then5
  %call10 = tail call i32 @dvb_ringbuffer_free(ptr noundef %rx_buffer) #12
  %link_buf_size = getelementptr %struct.dvb_ca_slot, ptr %1, i32 %slot, i32 7
  %6 = ptrtoint ptr %link_buf_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_buf_size, align 4
  %add = add i32 %7, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %add)
  %cmp = icmp slt i32 %call10, %add
  br i1 %cmp, label %if.end8.cleanup158_crit_edge, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end8.cleanup158_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup158

if.end13:                                         ; preds = %if.end8.if.end13_crit_edge, %do.end3.if.end13_crit_edge
  %pub = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 1
  %8 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pub, align 4
  %read_data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %read_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_data, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.end13.if.else35_crit_edge, label %land.lhs.true

if.end13.if.else35_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else35

land.lhs.true:                                    ; preds = %if.end13
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp15.not = icmp eq i32 %13, 7
  br i1 %cmp15.not, label %land.lhs.true.if.else35_crit_edge, label %if.then16

land.lhs.true.if.else35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else35

if.then16:                                        ; preds = %land.lhs.true
  %.ecount = select i1 %tobool4.not, i32 512, i32 %ecount
  %call27 = call i32 %11(ptr noundef %9, i32 noundef %slot, ptr noundef nonnull %buf, i32 noundef %.ecount) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp29 = icmp slt i32 %call27, 0
  br i1 %cmp29, label %if.then16.cleanup158_crit_edge, label %if.end31

if.then16.cleanup158_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup158

if.end31:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp32 = icmp eq i32 %call27, 0
  br i1 %cmp32, label %if.end31.cleanup158_crit_edge, label %if.end31.if.end119_crit_edge

if.end31.if.end119_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.end31.cleanup158_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup158

if.else35:                                        ; preds = %land.lhs.true.if.else35_crit_edge, %if.end13.if.else35_crit_edge
  %read_cam_control = getelementptr inbounds %struct.dvb_ca_en50221, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %read_cam_control to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_cam_control, align 4
  %call38 = tail call i32 %15(ptr noundef %9, i32 noundef %slot, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.else35.cleanup158_crit_edge, label %if.end41

if.else35.cleanup158_crit_edge:                   ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup158

if.end41:                                         ; preds = %if.else35
  %and = and i32 %call38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end41.cleanup158_crit_edge, label %if.end44

if.end41.cleanup158_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup158

if.end44:                                         ; preds = %if.end41
  %16 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pub, align 4
  %read_cam_control46 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %read_cam_control46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_cam_control46, align 4
  %call48 = tail call i32 %19(ptr noundef %17, i32 noundef %slot, i8 noundef zeroext 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end44.cleanup158_crit_edge, label %if.end51

if.end44.cleanup158_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup158

if.end51:                                         ; preds = %if.end44
  %20 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pub, align 4
  %read_cam_control53 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %read_cam_control53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_cam_control53, align 4
  %call55 = tail call i32 %23(ptr noundef %21, i32 noundef %slot, i8 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end51.cleanup158_crit_edge, label %if.end58

if.end51.cleanup158_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup158

if.end58:                                         ; preds = %if.end51
  %shl = shl i32 %call48, 8
  %or = or i32 %call55, %shl
  br i1 %tobool4.not, label %if.then60, label %if.else84

if.then60:                                        ; preds = %if.end58
  %link_buf_size61 = getelementptr %struct.dvb_ca_slot, ptr %1, i32 %slot, i32 7
  %24 = ptrtoint ptr %link_buf_size61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_buf_size61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %25)
  %cmp62 = icmp sgt i32 %or, %25
  br i1 %cmp62, label %do.end66, label %if.end71

do.end66:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  %dvbdev = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 2
  %26 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dvbdev, align 4
  %adapter = getelementptr inbounds %struct.dvb_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %31, i32 noundef %or, i32 noundef %25) #15
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 7, ptr %arrayidx, align 4
  br label %cleanup158

if.end71:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or)
  %cmp72 = icmp slt i32 %or, 2
  br i1 %cmp72, label %do.end76, label %if.end71.for.body.preheader_crit_edge

if.end71.for.body.preheader_crit_edge:            ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

do.end76:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %dvbdev78 = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 2
  %33 = ptrtoint ptr %dvbdev78 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dvbdev78, align 4
  %adapter79 = getelementptr inbounds %struct.dvb_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %adapter79 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter79, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %38) #15
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 7, ptr %arrayidx, align 4
  br label %cleanup158

if.else84:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %ecount)
  %cmp85 = icmp sgt i32 %or, %ecount
  br i1 %cmp85, label %do.end89, label %if.end96

do.end89:                                         ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #14
  %dvbdev91 = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 2
  %40 = ptrtoint ptr %dvbdev91 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dvbdev91, align 4
  %adapter92 = getelementptr inbounds %struct.dvb_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %adapter92 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter92, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %45) #15
  br label %cleanup158

if.end96:                                         ; preds = %if.else84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp97235 = icmp sgt i32 %or, 0
  br i1 %cmp97235, label %if.end96.for.body.preheader_crit_edge, label %if.end96.for.end_crit_edge

if.end96.for.end_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end96.for.body.preheader_crit_edge:            ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end96.for.body.preheader_crit_edge, %if.end71.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end104.for.body_crit_edge, %for.body.preheader
  %i.0236 = phi i32 [ %inc, %if.end104.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %46 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pub, align 4
  %read_cam_control99 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %read_cam_control99 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_cam_control99, align 4
  %call101 = tail call i32 %49(ptr noundef %47, i32 noundef %slot, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %for.body.cleanup158_crit_edge, label %if.end104

for.body.cleanup158_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup158

if.end104:                                        ; preds = %for.body
  %conv = trunc i32 %call101 to i8
  %arrayidx105 = getelementptr [512 x i8], ptr %buf, i32 0, i32 %i.0236
  %50 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv, ptr %arrayidx105, align 1
  %inc = add nuw nsw i32 %i.0236, 1
  %exitcond.not = icmp eq i32 %inc, %or
  br i1 %exitcond.not, label %if.end104.for.end_crit_edge, label %if.end104.for.body_crit_edge

if.end104.for.body_crit_edge:                     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end104.for.end_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end104.for.end_crit_edge, %if.end96.for.end_crit_edge
  %51 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pub, align 4
  %read_cam_control107 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %read_cam_control107 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_cam_control107, align 4
  %call109 = tail call i32 %54(ptr noundef %52, i32 noundef %slot, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %for.end.cleanup158_crit_edge, label %if.end113

for.end.cleanup158_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup158

if.end113:                                        ; preds = %for.end
  %and114 = and i32 %call109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.if.end119_crit_edge, label %if.then116

if.end113.if.end119_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 7, ptr %arrayidx, align 4
  br label %cleanup158

if.end119:                                        ; preds = %if.end113.if.end119_crit_edge, %if.end31.if.end119_crit_edge
  %bytes_read.0 = phi i32 [ %call27, %if.end31.if.end119_crit_edge ], [ %or, %if.end113.if.end119_crit_edge ]
  br i1 %tobool4.not, label %if.then121, label %if.else130

if.then121:                                       ; preds = %if.end119
  %rx_buffer122 = getelementptr %struct.dvb_ca_slot, ptr %1, i32 %slot, i32 8
  %56 = ptrtoint ptr %rx_buffer122 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rx_buffer122, align 4
  %tobool124.not = icmp eq ptr %57, null
  br i1 %tobool124.not, label %if.then121.cleanup158_crit_edge, label %if.end126

if.then121.cleanup158_crit_edge:                  ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup158

if.end126:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  %call129 = call i32 @dvb_ringbuffer_pkt_write(ptr noundef %rx_buffer122, ptr noundef nonnull %buf, i32 noundef %bytes_read.0) #12
  br label %do.body133

if.else130:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  %58 = call ptr @memcpy(ptr %ebuf, ptr %buf, i32 %bytes_read.0)
  br label %do.body133

do.body133:                                       ; preds = %if.else130, %if.end126
  %59 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool134.not = icmp eq i32 %59, 0
  br i1 %tobool134.not, label %do.body133.do.end150_crit_edge, label %do.end138

do.body133.do.end150_crit_edge:                   ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end150

do.end138:                                        ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %buf, align 1
  %conv141 = zext i8 %61 to i32
  %arrayidx142 = getelementptr inbounds [512 x i8], ptr %buf, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx142, align 1
  %64 = xor i8 %63, -1
  %65 = lshr i8 %64, 7
  %.not = zext i8 %65 to i32
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.102, i32 noundef %slot, i32 noundef %conv141, i32 noundef %.not, i32 noundef %bytes_read.0) #15
  br label %do.end150

do.end150:                                        ; preds = %do.end138, %do.body133.do.end150_crit_edge
  %arrayidx151 = getelementptr inbounds [512 x i8], ptr %buf, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx151, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %cmp154 = icmp sgt i8 %67, -1
  br i1 %cmp154, label %if.then156, label %do.end150.cleanup158_crit_edge

do.end150.cleanup158_crit_edge:                   ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup158

if.then156:                                       ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #14
  %wait_queue = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 6
  call void @__wake_up(ptr noundef %wait_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %cleanup158

cleanup158:                                       ; preds = %if.then156, %do.end150.cleanup158_crit_edge, %if.then121.cleanup158_crit_edge, %if.then116, %for.end.cleanup158_crit_edge, %for.body.cleanup158_crit_edge, %do.end89, %do.end76, %do.end66, %if.end51.cleanup158_crit_edge, %if.end44.cleanup158_crit_edge, %if.end41.cleanup158_crit_edge, %if.else35.cleanup158_crit_edge, %if.end31.cleanup158_crit_edge, %if.then16.cleanup158_crit_edge, %if.end8.cleanup158_crit_edge, %if.then5.cleanup158_crit_edge
  %retval.0 = phi i32 [ %call27, %if.then16.cleanup158_crit_edge ], [ 0, %if.end31.cleanup158_crit_edge ], [ %call38, %if.else35.cleanup158_crit_edge ], [ %call48, %if.end44.cleanup158_crit_edge ], [ %call55, %if.end51.cleanup158_crit_edge ], [ -5, %do.end89 ], [ %call109, %for.end.cleanup158_crit_edge ], [ -5, %if.then116 ], [ -5, %do.end66 ], [ -5, %do.end76 ], [ 0, %if.end41.cleanup158_crit_edge ], [ -5, %if.then121.cleanup158_crit_edge ], [ %bytes_read.0, %if.then156 ], [ %bytes_read.0, %do.end150.cleanup158_crit_edge ], [ -5, %if.then5.cleanup158_crit_edge ], [ -11, %if.end8.cleanup158_crit_edge ], [ %call101, %for.body.cleanup158_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_ca_en50221_read_tuple(ptr nocapture noundef readonly %ca, i32 noundef %slot, ptr nocapture noundef %address, ptr nocapture noundef writeonly %tuple_type, ptr nocapture noundef writeonly %tuple_length, ptr nocapture noundef writeonly %tuple) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %address, align 4
  %pub = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 1
  %2 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pub, align 4
  %read_attribute_mem = getelementptr inbounds %struct.dvb_ca_en50221, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %read_attribute_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_attribute_mem, align 4
  %call = tail call i32 %5(ptr noundef %3, i32 noundef %slot, i32 noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call)
  %cmp2 = icmp eq i32 %call, 255
  br i1 %cmp2, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  %6 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef 255) #15
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %address, align 4
  %add = add i32 %8, 2
  store i32 %add, ptr %address, align 4
  %9 = ptrtoint ptr %tuple_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 255, ptr %tuple_type, align 4
  %10 = ptrtoint ptr %tuple_length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tuple_length, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %11 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pub, align 4
  %read_attribute_mem12 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %read_attribute_mem12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_attribute_mem12, align 4
  %add14 = add i32 %1, 2
  %call15 = tail call i32 %14(ptr noundef %12, i32 noundef %slot, i32 noundef %add14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end10.cleanup_crit_edge, label %if.end18

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %add19 = add i32 %1, 4
  %15 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %if.end18.do.end30_crit_edge, label %do.end25

if.end18.do.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80, i32 noundef %call, i32 noundef %call15) #15
  br label %do.end30

do.end30:                                         ; preds = %do.end25, %if.end18.do.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp31104.not = icmp eq i32 %call15, 0
  br i1 %cmp31104.not, label %do.end30.for.end_crit_edge, label %do.end30.for.body_crit_edge

do.end30.for.body_crit_edge:                      ; preds = %do.end30
  br label %for.body

do.end30.for.end_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end30.for.body_crit_edge
  %i.0105 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end30.for.body_crit_edge ]
  %16 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pub, align 4
  %read_attribute_mem33 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %read_attribute_mem33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_attribute_mem33, align 4
  %mul = shl nuw i32 %i.0105, 1
  %add35 = add i32 %mul, %add19
  %call36 = tail call i32 %19(ptr noundef %17, i32 noundef %slot, i32 noundef %add35) #12
  %conv = trunc i32 %call36 to i8
  %arrayidx = getelementptr i8, ptr %tuple, i32 %i.0105
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %arrayidx, align 1
  %21 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool38.not = icmp eq i32 %21, 0
  br i1 %tobool38.not, label %for.body.for.inc_crit_edge, label %do.end42

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end42:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv45 = and i32 %call36, 255
  %22 = add nsw i32 %conv45, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %22)
  %23 = icmp ult i32 %22, 95
  %cond = select i1 %23, i32 %conv45, i32 46
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.80, i32 noundef %i.0105, i32 noundef %conv45, i32 noundef %cond) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end42, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, %call15
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end30.for.end_crit_edge
  %mul60 = shl i32 %call15, 1
  %add61 = add i32 %mul60, %add19
  %24 = ptrtoint ptr %tuple_type to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call, ptr %tuple_type, align 4
  %25 = ptrtoint ptr %tuple_length to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call15, ptr %tuple_length, align 4
  %26 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add61, ptr %address, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end10.cleanup_crit_edge, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end9 ], [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ], [ %call15, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @findstr(ptr noundef readonly %haystack, i32 noundef %hlen, ptr nocapture noundef readonly %needle, i32 noundef %nlen) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %hlen, i32 %nlen)
  %cmp = icmp slt i32 %hlen, %nlen
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %sub = sub i32 %hlen, %nlen
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1.not12 = icmp slt i32 %sub, 0
  br i1 %cmp1.not12, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.013, 1
  %cmp1.not = icmp sgt i32 %inc, %sub
  br i1 %cmp1.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %haystack, i32 %i.013
  %call = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef %needle, i32 noundef %nlen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ %add.ptr, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_ca_en50221_wait_if_status(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %waitfor, i32 noundef %timeout_hz) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.95) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, %timeout_hz
  %pub = getelementptr inbounds %struct.dvb_ca_private, ptr %ca, i32 0, i32 1
  %3 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pub, align 4
  %read_cam_control49 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %read_cam_control49 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_cam_control49, align 4
  %call550 = tail call i32 %6(ptr noundef %4, i32 noundef %slot, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call550)
  %cmp51 = icmp slt i32 %call550, 0
  br i1 %cmp51, label %do.end3.cleanup39_crit_edge, label %if.end7.lr.ph

do.end3.cleanup39_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

if.end7.lr.ph:                                    ; preds = %do.end3
  %conv = zext i8 %waitfor to i32
  br label %if.end7

if.end7:                                          ; preds = %cleanup.if.end7_crit_edge, %if.end7.lr.ph
  %call552 = phi i32 [ %call550, %if.end7.lr.ph ], [ %call5, %cleanup.if.end7_crit_edge ]
  %and = and i32 %call552, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end21, label %do.body10

do.body10:                                        ; preds = %if.end7
  %7 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %do.body10.cleanup39_crit_edge, label %do.body10.cleanup39.sink.split_crit_edge

do.body10.cleanup39.sink.split_crit_edge:         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39.sink.split

do.body10.cleanup39_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

if.end21:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub22 = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub22)
  %cmp23 = icmp slt i32 %sub22, 0
  br i1 %cmp23, label %do.body27, label %cleanup

cleanup:                                          ; preds = %if.end21
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #12
  %9 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pub, align 4
  %read_cam_control = getelementptr inbounds %struct.dvb_ca_en50221, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %read_cam_control to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_cam_control, align 4
  %call5 = tail call i32 %12(ptr noundef %10, i32 noundef %slot, i8 noundef zeroext 1) #12
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %cleanup.cleanup39_crit_edge, label %cleanup.if.end7_crit_edge

cleanup.if.end7_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

cleanup.cleanup39_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

do.body27:                                        ; preds = %if.end21
  %13 = load i32, ptr @dvb_ca_en50221_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool28.not = icmp eq i32 %13, 0
  br i1 %tobool28.not, label %do.body27.cleanup39_crit_edge, label %do.body27.cleanup39.sink.split_crit_edge

do.body27.cleanup39.sink.split_crit_edge:         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39.sink.split

do.body27.cleanup39_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

cleanup39.sink.split:                             ; preds = %do.body27.cleanup39.sink.split_crit_edge, %do.body10.cleanup39.sink.split_crit_edge
  %.str.97.sink = phi ptr [ @.str.97, %do.body10.cleanup39.sink.split_crit_edge ], [ @.str.100, %do.body27.cleanup39.sink.split_crit_edge ]
  %retval.2.ph = phi i32 [ 0, %do.body10.cleanup39.sink.split_crit_edge ], [ -110, %do.body27.cleanup39.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %14, %1
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.97.sink, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.95, i32 noundef %sub) #15
  br label %cleanup39

cleanup39:                                        ; preds = %cleanup39.sink.split, %do.body27.cleanup39_crit_edge, %cleanup.cleanup39_crit_edge, %do.body10.cleanup39_crit_edge, %do.end3.cleanup39_crit_edge
  %retval.2 = phi i32 [ -110, %do.body27.cleanup39_crit_edge ], [ 0, %do.body10.cleanup39_crit_edge ], [ -5, %do.end3.cleanup39_crit_edge ], [ %retval.2.ph, %cleanup39.sink.split ], [ -5, %cleanup.cleanup39_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_pkt_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !16, !17, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !41, !42, !44, !45, !47, !49, !50, !51, !53, !55, !56, !57, !59, !61, !62, !64, !65, !66, !68, !70, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !162, !164, !165, !166, !167, !169, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247}
!llvm.named.register.sp = !{!248}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254, !255, !256}
!llvm.ident = !{!257}

!0 = !{ptr @__param_cam_debug, !1, !"__param_cam_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_cam_debugtype225, !1, !"__UNIQUE_ID_cam_debugtype225", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_cam_debug226, !4, !"__UNIQUE_ID_cam_debug226", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 36, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 937, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dvb_ca_en50221_camchange_irq._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @dvb_ca_en50221_camchange_irq._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_dvb_ca_en50221_camchange_irq, !12, !"__ksymtab_dvb_ca_en50221_camchange_irq", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 952, i32 1}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 965, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @dvb_ca_en50221_camready_irq._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @dvb_ca_en50221_camready_irq._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_dvb_ca_en50221_camready_irq, !19, !"__ksymtab_dvb_ca_en50221_camready_irq", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 972, i32 1}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 986, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dvb_ca_en50221_frda_irq._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @dvb_ca_en50221_frda_irq._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 992, i32 4}
!27 = !{ptr @dvb_ca_en50221_frda_irq._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @dvb_ca_en50221_frda_irq._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_dvb_ca_en50221_frda_irq, !30, !"__ksymtab_dvb_ca_en50221_frda_irq", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1003, i32 1}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1849, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @dvb_ca_en50221_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @dvb_ca_en50221_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @dvb_ca_en50221_init.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1870, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dvb_ca_en50221_init.__key.13, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1890, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dvb_ca_en50221_init.__key.15, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1893, i32 2}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1902, i32 15}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1906, i32 3}
!49 = !{ptr @dvb_ca_en50221_init._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @dvb_ca_en50221_init._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @__ksymtab_dvb_ca_en50221_init, !52, !"__ksymtab_dvb_ca_en50221_init", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1922, i32 1}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1934, i32 2}
!55 = !{ptr @dvb_ca_en50221_release._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @dvb_ca_en50221_release._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @__ksymtab_dvb_ca_en50221_release, !58, !"__ksymtab_dvb_ca_en50221_release", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1946, i32 1}
!59 = !{ptr @dvb_ca_en50221_debug, !60, !"dvb_ca_en50221_debug", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 33, i32 12}
!61 = !{ptr @__param_str_cam_debug, !1, !"__param_str_cam_debug", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1015, i32 2}
!64 = !{ptr @dvb_ca_en50221_thread_wakeup._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @dvb_ca_en50221_thread_wakeup._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1824, i32 10}
!68 = !{ptr @dvbdev_ca, !69, !"dvbdev_ca", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1818, i32 32}
!70 = !{ptr @dvb_ca_fops, !71, !"dvb_ca_fops", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1807, i32 37}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1611, i32 2}
!74 = !{ptr @dvb_ca_en50221_io_read._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @dvb_ca_en50221_io_read._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1643, i32 4}
!78 = !{ptr @dvb_ca_en50221_io_read._entry.25, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @dvb_ca_en50221_io_read._entry_ptr.27, !77, !"_entry_ptr", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!82 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1453, i32 2}
!89 = !{ptr @dvb_ca_en50221_io_write._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @dvb_ca_en50221_io_write._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 791, i32 2}
!93 = !{ptr @dvb_ca_en50221_write_data._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @dvb_ca_en50221_write_data._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 886, i32 2}
!97 = !{ptr @dvb_ca_en50221_write_data._entry.33, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @dvb_ca_en50221_write_data._entry_ptr.35, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1790, i32 2}
!101 = !{ptr @dvb_ca_en50221_io_poll._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @dvb_ca_en50221_io_poll._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1346, i32 2}
!105 = !{ptr @dvb_ca_en50221_io_do_ioctl._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @dvb_ca_en50221_io_do_ioctl._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1710, i32 2}
!109 = !{ptr @dvb_ca_en50221_io_open._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @dvb_ca_en50221_io_open._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1759, i32 2}
!113 = !{ptr @dvb_ca_en50221_io_release._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @dvb_ca_en50221_io_release._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1300, i32 2}
!117 = !{ptr @dvb_ca_en50221_thread._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @dvb_ca_en50221_thread._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1309, i32 4}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1158, i32 4}
!123 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @dvb_ca_en50221_thread_state_machine._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @dvb_ca_en50221_thread_state_machine._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1175, i32 4}
!128 = !{ptr @dvb_ca_en50221_thread_state_machine._entry.43, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.45, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1182, i32 4}
!132 = !{ptr @dvb_ca_en50221_thread_state_machine._entry.46, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.48, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1191, i32 4}
!136 = !{ptr @dvb_ca_en50221_thread_state_machine._entry.49, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.51, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1197, i32 3}
!140 = !{ptr @dvb_ca_en50221_thread_state_machine._entry.52, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.54, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1206, i32 4}
!144 = !{ptr @dvb_ca_en50221_thread_state_machine._entry.55, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.57, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1225, i32 4}
!148 = !{ptr @dvb_ca_en50221_thread_state_machine._entry.58, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.60, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1235, i32 5}
!152 = !{ptr @dvb_ca_en50221_thread_state_machine._entry.61, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.63, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 1248, i32 3}
!156 = !{ptr @dvb_ca_en50221_thread_state_machine._entry.64, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @dvb_ca_en50221_thread_state_machine._entry_ptr.66, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 522, i32 49}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 529, i32 27}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 530, i32 3}
!164 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @dvb_ca_en50221_parse_attributes._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @dvb_ca_en50221_parse_attributes._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 557, i32 10}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 559, i32 10}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 573, i32 4}
!173 = !{ptr @dvb_ca_en50221_parse_attributes._entry.73, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @dvb_ca_en50221_parse_attributes._entry_ptr.75, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 582, i32 2}
!177 = !{ptr @dvb_ca_en50221_parse_attributes._entry.76, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @dvb_ca_en50221_parse_attributes._entry_ptr.78, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 410, i32 3}
!181 = !{ptr @.str.80, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @dvb_ca_en50221_read_tuple._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @dvb_ca_en50221_read_tuple._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 422, i32 2}
!186 = !{ptr @dvb_ca_en50221_read_tuple._entry.81, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @dvb_ca_en50221_read_tuple._entry_ptr.83, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.85, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 428, i32 3}
!190 = !{ptr @dvb_ca_en50221_read_tuple._entry.84, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @dvb_ca_en50221_read_tuple._entry_ptr.86, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.87, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 600, i32 2}
!194 = !{ptr @dvb_ca_en50221_set_configoption._entry, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @dvb_ca_en50221_set_configoption._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.89, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 609, i32 2}
!198 = !{ptr @dvb_ca_en50221_set_configoption._entry.88, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @dvb_ca_en50221_set_configoption._entry_ptr.90, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.91, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 327, i32 2}
!202 = !{ptr @dvb_ca_en50221_link_init._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @dvb_ca_en50221_link_init._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 363, i32 2}
!206 = !{ptr @dvb_ca_en50221_link_init._entry.92, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @dvb_ca_en50221_link_init._entry_ptr.94, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 278, i32 2}
!210 = !{ptr @dvb_ca_en50221_wait_if_status._entry, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @dvb_ca_en50221_wait_if_status._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.97, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 293, i32 4}
!214 = !{ptr @dvb_ca_en50221_wait_if_status._entry.96, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @dvb_ca_en50221_wait_if_status._entry_ptr.98, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.100, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 306, i32 2}
!218 = !{ptr @dvb_ca_en50221_wait_if_status._entry.99, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @dvb_ca_en50221_wait_if_status._entry_ptr.101, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 640, i32 2}
!222 = !{ptr @dvb_ca_en50221_read_data._entry, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @dvb_ca_en50221_read_data._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.104, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 698, i32 5}
!226 = !{ptr @dvb_ca_en50221_read_data._entry.103, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @dvb_ca_en50221_read_data._entry_ptr.105, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.107, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 706, i32 5}
!230 = !{ptr @dvb_ca_en50221_read_data._entry.106, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @dvb_ca_en50221_read_data._entry_ptr.108, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.110, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 714, i32 5}
!234 = !{ptr @dvb_ca_en50221_read_data._entry.109, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @dvb_ca_en50221_read_data._entry_ptr.111, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 759, i32 2}
!238 = !{ptr @dvb_ca_en50221_read_data._entry.112, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @dvb_ca_en50221_read_data._entry_ptr.114, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.115, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 907, i32 2}
!242 = !{ptr @dvb_ca_en50221_slot_shutdown._entry, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @dvb_ca_en50221_slot_shutdown._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.117, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/dvb-core/dvb_ca_en50221.c", i32 918, i32 2}
!246 = !{ptr @dvb_ca_en50221_slot_shutdown._entry.116, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @dvb_ca_en50221_slot_shutdown._entry_ptr.118, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{!"sp"}
!249 = !{i32 1, !"wchar_size", i32 2}
!250 = !{i32 1, !"min_enum_size", i32 4}
!251 = !{i32 8, !"branch-target-enforcement", i32 0}
!252 = !{i32 8, !"sign-return-address", i32 0}
!253 = !{i32 8, !"sign-return-address-all", i32 0}
!254 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!255 = !{i32 7, !"uwtable", i32 1}
!256 = !{i32 7, !"frame-pointer", i32 2}
!257 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!258 = !{i64 2148628055, i64 2148628081, i64 2148628110, i64 2148628144, i64 2148628175, i64 2148628198}
!259 = !{i64 2153664098}
!260 = !{!"branch_weights", i32 1, i32 2000}
!261 = !{!"branch_weights", i32 2000, i32 1}
!262 = !{i64 2153713750}
!263 = !{i64 2153689037}
!264 = !{i64 2148630520, i64 2148630546, i64 2148630575, i64 2148630609, i64 2148630640, i64 2148630663}
!265 = !{!"auto-init"}
!266 = !{i64 2148717610}
!267 = !{i64 2148632050, i64 2148632082, i64 2148632111, i64 2148632145, i64 2148632176, i64 2148632199}
!268 = !{i64 2149913845}
!269 = !{i64 2152585986, i64 2152586011}
!270 = !{i64 2152585305, i64 2152585330}
!271 = !{i64 5080860}
!272 = !{i64 5081057}
!273 = !{i64 2152566290}
!274 = !{i64 892375, i64 892392}
!275 = !{i64 2148629585, i64 2148629617, i64 2148629646, i64 2148629680, i64 2148629711, i64 2148629734}
