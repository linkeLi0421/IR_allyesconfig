; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx88/cx88-tvaudio.c_pt.bc'
source_filename = "../drivers/media/pci/cx88/cx88-tvaudio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx88_set_tvaudio\22, \22a\22\09"
module asm "\09.weak\09__crc_cx88_set_tvaudio\09\09\09\09"
module asm "\09.long\09__crc_cx88_set_tvaudio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx88_set_tvaudio:\09\09\09\09\09"
module asm "\09.asciz \09\22cx88_set_tvaudio\22\09\09\09\09\09"
module asm "__kstrtabns_cx88_set_tvaudio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cx88_newstation\22, \22a\22\09"
module asm "\09.weak\09__crc_cx88_newstation\09\09\09\09"
module asm "\09.long\09__crc_cx88_newstation\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx88_newstation:\09\09\09\09\09"
module asm "\09.asciz \09\22cx88_newstation\22\09\09\09\09\09"
module asm "__kstrtabns_cx88_newstation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cx88_get_stereo\22, \22a\22\09"
module asm "\09.weak\09__crc_cx88_get_stereo\09\09\09\09"
module asm "\09.long\09__crc_cx88_get_stereo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx88_get_stereo:\09\09\09\09\09"
module asm "\09.asciz \09\22cx88_get_stereo\22\09\09\09\09\09"
module asm "__kstrtabns_cx88_get_stereo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cx88_set_stereo\22, \22a\22\09"
module asm "\09.weak\09__crc_cx88_set_stereo\09\09\09\09"
module asm "\09.long\09__crc_cx88_set_stereo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx88_set_stereo:\09\09\09\09\09"
module asm "\09.asciz \09\22cx88_set_stereo\22\09\09\09\09\09"
module asm "__kstrtabns_cx88_set_stereo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cx88_audio_thread\22, \22a\22\09"
module asm "\09.weak\09__crc_cx88_audio_thread\09\09\09\09"
module asm "\09.long\09__crc_cx88_audio_thread\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx88_audio_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22cx88_audio_thread\22\09\09\09\09\09"
module asm "__kstrtabns_cx88_audio_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rlist = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.cx88_core = type { %struct.list_head, %struct.refcount_struct, i32, [32 x i8], i32, i32, i32, ptr, ptr, [3 x i32], i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, i32, %struct.cx88_board, i32, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.IR_i2c_init_data, %struct.wm8775_platform_data, %struct.mutex, i32, ptr, ptr, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx88_board = type { ptr, i32, i32, i8, i8, i32, [8 x %struct.cx88_input], %struct.cx88_input, i32, i32, i32, i32 }
%struct.cx88_input = type { i32, i32, i32, i32, i32, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.wm8775_platform_data = type { i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.82, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.82 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_audio_debug = internal constant [19 x i8] c"cx88xx.audio_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@audio_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_audio_debug = internal constant %struct.kernel_param { ptr @__param_str_audio_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @audio_debug } }, section "__param", align 4
@__UNIQUE_ID_audio_debugtype385 = internal constant [32 x i8] c"cx88xx.parmtype=audio_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_audio_debug386 = internal constant [54 x i8] c"cx88xx.parm=audio_debug:enable debug messages [audio]\00", section ".modinfo", align 1
@__param_str_always_analog = internal constant [21 x i8] c"cx88xx.always_analog\00", align 1
@always_analog = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_always_analog = internal constant %struct.kernel_param { ptr @__param_str_always_analog, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @always_analog } }, section "__param", align 4
@__UNIQUE_ID_always_analogtype387 = internal constant [34 x i8] c"cx88xx.parmtype=always_analog:int\00", section ".modinfo", align 1
@__UNIQUE_ID_always_analog388 = internal constant [49 x i8] c"cx88xx.parm=always_analog:force analog audio out\00", section ".modinfo", align 1
@__param_str_radio_deemphasis = internal constant [24 x i8] c"cx88xx.radio_deemphasis\00", align 1
@radio_deemphasis = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_radio_deemphasis = internal constant %struct.kernel_param { ptr @__param_str_radio_deemphasis, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @radio_deemphasis } }, section "__param", align 4
@__UNIQUE_ID_radio_deemphasistype389 = internal constant [37 x i8] c"cx88xx.parmtype=radio_deemphasis:int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_deemphasis390 = internal constant [102 x i8] c"cx88xx.parm=radio_deemphasis:Radio deemphasis time constant, 0=None, 1=50us (elsewhere), 2=75us (USA)\00", section ".modinfo", align 1
@cx88_set_tvaudio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016cx88xx: unknown tv audio mode [%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx88_set_tvaudio\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/cx88/cx88-tvaudio.c\00", [58 x i8] zeroinitializer }, align 32
@cx88_set_tvaudio._entry_ptr = internal global ptr @cx88_set_tvaudio._entry, section ".printk_index", align 4
@__kstrtab_cx88_set_tvaudio = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx88_set_tvaudio = external dso_local constant [0 x i8], align 1
@__ksymtab_cx88_set_tvaudio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx88_set_tvaudio to i32), ptr @__kstrtab_cx88_set_tvaudio, ptr @__kstrtabns_cx88_set_tvaudio }, section "___ksymtab+cx88_set_tvaudio", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_cx88_newstation = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx88_newstation = external dso_local constant [0 x i8], align 1
@__ksymtab_cx88_newstation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx88_newstation to i32), ptr @__kstrtab_cx88_newstation, ptr @__kstrtabns_cx88_newstation }, section "___ksymtab+cx88_newstation", align 4
@cx88_get_stereo.m = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stereo\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dual mono\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mono\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sap\00", [28 x i8] zeroinitializer }, align 32
@cx88_get_stereo.p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no pilot\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pilot c1\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pilot c2\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@cx88_get_stereo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017cx88xx: %s: tvaudio:AUD_STATUS: 0x%x [%s/%s] ctl=%s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx88_get_stereo\00", [16 x i8] zeroinitializer }, align 32
@cx88_get_stereo._entry_ptr = internal global ptr @cx88_get_stereo._entry, section ".printk_index", align 4
@__kstrtab_cx88_get_stereo = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx88_get_stereo = external dso_local constant [0 x i8], align 1
@__ksymtab_cx88_get_stereo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx88_get_stereo to i32), ptr @__kstrtab_cx88_get_stereo, ptr @__kstrtabns_cx88_get_stereo }, section "___ksymtab+cx88_get_stereo", align 4
@cx88_set_stereo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\017cx88xx: %s: tvaudio:cx88_set_stereo: mask 0x%x, ctl 0x%x [status=0x%x,ctl=0x%x,vol=0x%x]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx88_set_stereo\00", [16 x i8] zeroinitializer }, align 32
@cx88_set_stereo._entry_ptr = internal global ptr @cx88_set_stereo._entry, section ".printk_index", align 4
@__kstrtab_cx88_set_stereo = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx88_set_stereo = external dso_local constant [0 x i8], align 1
@__ksymtab_cx88_set_stereo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx88_set_stereo to i32), ptr @__kstrtab_cx88_set_stereo, ptr @__kstrtabns_cx88_set_stereo }, section "___ksymtab+cx88_set_stereo", align 4
@cx88_audio_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017cx88xx: %s: tvaudio:cx88: tvaudio thread started\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx88_audio_thread\00", [46 x i8] zeroinitializer }, align 32
@cx88_audio_thread._entry_ptr = internal global ptr @cx88_audio_thread._entry, section ".printk_index", align 4
@cx88_audio_thread._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017cx88xx: %s: tvaudio:cx88: tvaudio thread exiting\0A\00", [44 x i8] zeroinitializer }, align 32
@cx88_audio_thread._entry_ptr.19 = internal global ptr @cx88_audio_thread._entry.17, section ".printk_index", align 4
@__kstrtab_cx88_audio_thread = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx88_audio_thread = external dso_local constant [0 x i8], align 1
@__ksymtab_cx88_audio_thread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx88_audio_thread to i32), ptr @__kstrtab_cx88_audio_thread, ptr @__kstrtabns_cx88_audio_thread }, section "___ksymtab+cx88_audio_thread", align 4
@set_audio_standard_BTSC.btsc = internal constant { [35 x %struct.rlist], [72 x i8] } { [35 x %struct.rlist] [%struct.rlist { i32 3278376, i32 1 }, %struct.rlist { i32 3277976, i32 19 }, %struct.rlist { i32 3277980, i32 0 }, %struct.rlist { i32 3277424, i32 1179916 }, %struct.rlist { i32 3278268, i32 12838826 }, %struct.rlist { i32 3278080, i32 18228 }, %struct.rlist { i32 3278084, i32 17984 }, %struct.rlist { i32 3278088, i32 36145 }, %struct.rlist { i32 3277600, i32 26 }, %struct.rlist { i32 3277168, i32 33 }, %struct.rlist { i32 3277648, i32 3 }, %struct.rlist { i32 3277608, i32 10 }, %struct.rlist { i32 3277612, i32 8 }, %struct.rlist { i32 3277624, i32 10 }, %struct.rlist { i32 3277628, i32 8 }, %struct.rlist { i32 3277428, i32 10299 }, %struct.rlist { i32 3277464, i32 8 }, %struct.rlist { i32 3277452, i32 12288 }, %struct.rlist { i32 3277460, i32 2 }, %struct.rlist { i32 3277468, i32 0 }, %struct.rlist { i32 3277216, i32 32 }, %struct.rlist { i32 3277220, i32 0 }, %struct.rlist { i32 3277224, i32 31 }, %struct.rlist { i32 3277228, i32 0 }, %struct.rlist { i32 3277580, i32 974 }, %struct.rlist { i32 3277584, i32 0 }, %struct.rlist { i32 3277588, i32 7 }, %struct.rlist { i32 3277616, i32 27 }, %struct.rlist { i32 3277620, i32 0 }, %struct.rlist { i32 3277984, i32 8 }, %struct.rlist { i32 3277992, i32 8 }, %struct.rlist { i32 3277988, i32 0 }, %struct.rlist { i32 3277996, i32 0 }, %struct.rlist { i32 3278264, i32 3 }, %struct.rlist zeroinitializer], [72 x i8] zeroinitializer }, align 32
@set_audio_standard_BTSC.btsc_sap = internal constant { [52 x %struct.rlist], [96 x i8] } { [52 x %struct.rlist] [%struct.rlist { i32 3278376, i32 1 }, %struct.rlist { i32 3278080, i32 29184 }, %struct.rlist { i32 3278084, i32 25088 }, %struct.rlist { i32 3278088, i32 25088 }, %struct.rlist { i32 3277144, i32 0 }, %struct.rlist { i32 3277160, i32 1 }, %struct.rlist { i32 3277444, i32 7 }, %struct.rlist { i32 3277180, i32 6 }, %struct.rlist { i32 3277212, i32 0 }, %struct.rlist { i32 3277220, i32 0 }, %struct.rlist { i32 3277252, i32 0 }, %struct.rlist { i32 3277260, i32 0 }, %struct.rlist { i32 3277248, i32 13 }, %struct.rlist { i32 3277256, i32 14 }, %struct.rlist { i32 3277916, i32 20 }, %struct.rlist { i32 3277920, i32 0 }, %struct.rlist { i32 3277924, i32 16384 }, %struct.rlist { i32 3277928, i32 0 }, %struct.rlist { i32 3277932, i32 0 }, %struct.rlist { i32 3277936, i32 0 }, %struct.rlist { i32 3277940, i32 0 }, %struct.rlist { i32 3277968, i32 63 }, %struct.rlist { i32 3277976, i32 63 }, %struct.rlist { i32 3277440, i32 2 }, %struct.rlist { i32 3277608, i32 10 }, %struct.rlist { i32 3277612, i32 8 }, %struct.rlist { i32 3277624, i32 10 }, %struct.rlist { i32 3277628, i32 8 }, %struct.rlist { i32 3277136, i32 29 }, %struct.rlist { i32 3277152, i32 30 }, %struct.rlist { i32 3277208, i32 2 }, %struct.rlist { i32 3277216, i32 4 }, %struct.rlist { i32 3277264, i32 15 }, %struct.rlist { i32 3277636, i32 1 }, %struct.rlist { i32 3277268, i32 1 }, %struct.rlist { i32 3277888, i32 20 }, %struct.rlist { i32 3277588, i32 6 }, %struct.rlist { i32 3277424, i32 937394 }, %struct.rlist { i32 3278268, i32 16160486 }, %struct.rlist { i32 3277224, i32 37 }, %struct.rlist { i32 3277168, i32 33 }, %struct.rlist { i32 3277432, i32 51557 }, %struct.rlist { i32 3277648, i32 3 }, %struct.rlist { i32 3277600, i32 26 }, %struct.rlist { i32 3277616, i32 27 }, %struct.rlist { i32 3277620, i32 0 }, %struct.rlist { i32 3277984, i32 9 }, %struct.rlist { i32 3277992, i32 9 }, %struct.rlist { i32 3277988, i32 0 }, %struct.rlist { i32 3277996, i32 0 }, %struct.rlist { i32 3278264, i32 3 }, %struct.rlist zeroinitializer], [96 x i8] zeroinitializer }, align 32
@set_audio_standard_BTSC._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017cx88xx: %s: tvaudio:%s SAP (status: unknown)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set_audio_standard_BTSC\00", [40 x i8] zeroinitializer }, align 32
@set_audio_standard_BTSC._entry_ptr = internal global ptr @set_audio_standard_BTSC._entry, section ".printk_index", align 4
@set_audio_standard_BTSC._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017cx88xx: %s: tvaudio:%s (status: known-good)\0A\00", [49 x i8] zeroinitializer }, align 32
@set_audio_standard_BTSC._entry_ptr.24 = internal global ptr @set_audio_standard_BTSC._entry.22, section ".printk_index", align 4
@set_audio_standard_A2.a2_bgdk_common = internal constant { [55 x %struct.rlist], [104 x i8] } { [55 x %struct.rlist] [%struct.rlist { i32 3278156, i32 100 }, %struct.rlist { i32 3278160, i32 4095 }, %struct.rlist { i32 3278164, i32 31 }, %struct.rlist { i32 3278168, i32 15 }, %struct.rlist { i32 3280129, i32 6 }, %struct.rlist { i32 3280130, i32 130 }, %struct.rlist { i32 3280131, i32 18 }, %struct.rlist { i32 3280132, i32 5 }, %struct.rlist { i32 3280170, i32 52 }, %struct.rlist { i32 3280171, i32 76 }, %struct.rlist { i32 3278296, i32 256 }, %struct.rlist { i32 3278300, i32 512 }, %struct.rlist { i32 3278304, i32 768 }, %struct.rlist { i32 3278308, i32 1024 }, %struct.rlist { i32 3278312, i32 1280 }, %struct.rlist { i32 3277760, i32 0 }, %struct.rlist { i32 3277108, i32 26 }, %struct.rlist { i32 3277696, i32 30043 }, %struct.rlist { i32 3277700, i32 5575488 }, %struct.rlist { i32 3277704, i32 7155902 }, %struct.rlist { i32 3277708, i32 -2911057 }, %struct.rlist { i32 3277712, i32 4194304 }, %struct.rlist { i32 3277716, i32 262144 }, %struct.rlist { i32 3277720, i32 2771009 }, %struct.rlist { i32 3277724, i32 4194304 }, %struct.rlist { i32 3277728, i32 0 }, %struct.rlist { i32 3277732, i32 0 }, %struct.rlist { i32 3278260, i32 64 }, %struct.rlist { i32 3278376, i32 1 }, %struct.rlist { i32 3277576, i32 7 }, %struct.rlist { i32 3277588, i32 7 }, %struct.rlist { i32 3277896, i32 896 }, %struct.rlist { i32 3277924, i32 896 }, %struct.rlist { i32 3277600, i32 26 }, %struct.rlist { i32 3277604, i32 0 }, %struct.rlist { i32 3277608, i32 10 }, %struct.rlist { i32 3277612, i32 8 }, %struct.rlist { i32 3277648, i32 3 }, %struct.rlist { i32 3277248, i32 33 }, %struct.rlist { i32 3277460, i32 2 }, %struct.rlist { i32 3277616, i32 27 }, %struct.rlist { i32 3277620, i32 0 }, %struct.rlist { i32 3277624, i32 10 }, %struct.rlist { i32 3277628, i32 8 }, %struct.rlist { i32 3277256, i32 35 }, %struct.rlist { i32 3277984, i32 23 }, %struct.rlist { i32 3277988, i32 0 }, %struct.rlist { i32 3277992, i32 23 }, %struct.rlist { i32 3277996, i32 0 }, %struct.rlist { i32 3278344, i32 30 }, %struct.rlist { i32 3278340, i32 0 }, %struct.rlist { i32 3278348, i32 58690 }, %struct.rlist { i32 3278264, i32 1 }, %struct.rlist { i32 3278256, i32 0 }, %struct.rlist zeroinitializer], [104 x i8] zeroinitializer }, align 32
@set_audio_standard_A2.a2_bg = internal constant { [6 x %struct.rlist], [48 x i8] } { [6 x %struct.rlist] [%struct.rlist { i32 3278268, i32 2772783 }, %struct.rlist { i32 3277776, i32 28672 }, %struct.rlist { i32 3277780, i32 21504 }, %struct.rlist { i32 3277784, i32 21504 }, %struct.rlist { i32 3277788, i32 12288 }, %struct.rlist zeroinitializer], [48 x i8] zeroinitializer }, align 32
@set_audio_standard_A2.a2_dk = internal constant { [8 x %struct.rlist], [32 x i8] } { [8 x %struct.rlist] [%struct.rlist { i32 3278268, i32 2772783 }, %struct.rlist { i32 3277776, i32 28672 }, %struct.rlist { i32 3277780, i32 21504 }, %struct.rlist { i32 3277784, i32 21504 }, %struct.rlist { i32 3277788, i32 12288 }, %struct.rlist { i32 3277428, i32 14876 }, %struct.rlist { i32 3277452, i32 53984 }, %struct.rlist zeroinitializer], [32 x i8] zeroinitializer }, align 32
@set_audio_standard_A2.a1_i = internal constant { [66 x %struct.rlist], [144 x i8] } { [66 x %struct.rlist] [%struct.rlist { i32 3278156, i32 100 }, %struct.rlist { i32 3278160, i32 4095 }, %struct.rlist { i32 3278164, i32 31 }, %struct.rlist { i32 3278168, i32 15 }, %struct.rlist { i32 3280129, i32 6 }, %struct.rlist { i32 3280130, i32 130 }, %struct.rlist { i32 3280131, i32 18 }, %struct.rlist { i32 3280132, i32 5 }, %struct.rlist { i32 3280170, i32 58 }, %struct.rlist { i32 3280171, i32 147 }, %struct.rlist { i32 3278268, i32 2772783 }, %struct.rlist { i32 3278344, i32 30 }, %struct.rlist { i32 3278340, i32 4 }, %struct.rlist { i32 3278348, i32 58690 }, %struct.rlist { i32 3278296, i32 256 }, %struct.rlist { i32 3278300, i32 512 }, %struct.rlist { i32 3278304, i32 768 }, %struct.rlist { i32 3278308, i32 1024 }, %struct.rlist { i32 3278312, i32 1280 }, %struct.rlist { i32 3277760, i32 0 }, %struct.rlist { i32 3277696, i32 30043 }, %struct.rlist { i32 3277700, i32 5575488 }, %struct.rlist { i32 3277704, i32 7155902 }, %struct.rlist { i32 3277708, i32 -2911057 }, %struct.rlist { i32 3277712, i32 4194304 }, %struct.rlist { i32 3277716, i32 262144 }, %struct.rlist { i32 3277720, i32 2771009 }, %struct.rlist { i32 3277724, i32 4194304 }, %struct.rlist { i32 3277728, i32 0 }, %struct.rlist { i32 3277732, i32 0 }, %struct.rlist { i32 3278260, i32 96 }, %struct.rlist { i32 3278376, i32 1 }, %struct.rlist { i32 3277108, i32 10 }, %struct.rlist { i32 3277576, i32 7 }, %struct.rlist { i32 3277588, i32 7 }, %struct.rlist { i32 3277776, i32 28672 }, %struct.rlist { i32 3277780, i32 21504 }, %struct.rlist { i32 3277784, i32 21504 }, %struct.rlist { i32 3277788, i32 12288 }, %struct.rlist { i32 3277600, i32 26 }, %struct.rlist { i32 3277604, i32 0 }, %struct.rlist { i32 3277608, i32 10 }, %struct.rlist { i32 3277612, i32 8 }, %struct.rlist { i32 3277648, i32 3 }, %struct.rlist { i32 3277248, i32 33 }, %struct.rlist { i32 3277460, i32 2 }, %struct.rlist { i32 3277616, i32 27 }, %struct.rlist { i32 3277620, i32 0 }, %struct.rlist { i32 3277624, i32 10 }, %struct.rlist { i32 3277628, i32 8 }, %struct.rlist { i32 3277256, i32 35 }, %struct.rlist { i32 3277428, i32 13731 }, %struct.rlist { i32 3277452, i32 10695 }, %struct.rlist { i32 3277568, i32 1297 }, %struct.rlist { i32 3277136, i32 1 }, %struct.rlist { i32 3277144, i32 0 }, %struct.rlist { i32 3277264, i32 3 }, %struct.rlist { i32 3277268, i32 0 }, %struct.rlist { i32 3277248, i32 2 }, %struct.rlist { i32 3277200, i32 33 }, %struct.rlist { i32 3277204, i32 2 }, %struct.rlist { i32 3277888, i32 11 }, %struct.rlist { i32 3277916, i32 11 }, %struct.rlist { i32 3278264, i32 1 }, %struct.rlist { i32 3278256, i32 0 }, %struct.rlist zeroinitializer], [144 x i8] zeroinitializer }, align 32
@set_audio_standard_A2.am_l = internal constant { [66 x %struct.rlist], [144 x i8] } { [66 x %struct.rlist] [%struct.rlist { i32 3278156, i32 100 }, %struct.rlist { i32 3278160, i32 4095 }, %struct.rlist { i32 3278164, i32 31 }, %struct.rlist { i32 3278168, i32 15 }, %struct.rlist { i32 3280129, i32 72 }, %struct.rlist { i32 3280130, i32 61 }, %struct.rlist { i32 3280132, i32 0 }, %struct.rlist { i32 3280131, i32 245 }, %struct.rlist { i32 3280170, i32 58 }, %struct.rlist { i32 3280171, i32 74 }, %struct.rlist { i32 3278136, i32 26240 }, %struct.rlist { i32 3278140, i32 218078 }, %struct.rlist { i32 3278144, i32 433 }, %struct.rlist { i32 3278148, i32 62416 }, %struct.rlist { i32 3278152, i32 0 }, %struct.rlist { i32 3277400, i32 7 }, %struct.rlist { i32 3278264, i32 3 }, %struct.rlist { i32 3278376, i32 1 }, %struct.rlist { i32 3277112, i32 0 }, %struct.rlist { i32 3277108, i32 24 }, %struct.rlist { i32 3277116, i32 32 }, %struct.rlist { i32 3277428, i32 0 }, %struct.rlist { i32 3277424, i32 937394 }, %struct.rlist { i32 3277600, i32 33 }, %struct.rlist { i32 3277136, i32 0 }, %struct.rlist { i32 3277140, i32 7 }, %struct.rlist { i32 3277144, i32 2 }, %struct.rlist { i32 3277148, i32 0 }, %struct.rlist { i32 3277616, i32 3 }, %struct.rlist { i32 3277620, i32 0 }, %struct.rlist { i32 3277648, i32 0 }, %struct.rlist { i32 3277152, i32 35 }, %struct.rlist { i32 3277156, i32 0 }, %struct.rlist { i32 3277160, i32 4 }, %struct.rlist { i32 3277164, i32 7 }, %struct.rlist { i32 3277168, i32 5 }, %struct.rlist { i32 3277180, i32 7 }, %struct.rlist { i32 3277248, i32 7 }, %struct.rlist { i32 3277252, i32 0 }, %struct.rlist { i32 3277888, i32 17 }, %struct.rlist { i32 3277892, i32 0 }, %struct.rlist { i32 3277896, i32 28672 }, %struct.rlist { i32 3277900, i32 0 }, %struct.rlist { i32 3277904, i32 0 }, %struct.rlist { i32 3277908, i32 0 }, %struct.rlist { i32 3277912, i32 0 }, %struct.rlist { i32 3277916, i32 17 }, %struct.rlist { i32 3277920, i32 0 }, %struct.rlist { i32 3277924, i32 28672 }, %struct.rlist { i32 3277928, i32 0 }, %struct.rlist { i32 3277932, i32 0 }, %struct.rlist { i32 3277936, i32 0 }, %struct.rlist { i32 3277940, i32 0 }, %struct.rlist { i32 3277968, i32 63 }, %struct.rlist { i32 3277976, i32 63 }, %struct.rlist { i32 3278268, i32 16106117 }, %struct.rlist { i32 3278344, i32 30 }, %struct.rlist { i32 3278340, i32 0 }, %struct.rlist { i32 3278348, i32 58690 }, %struct.rlist { i32 3278296, i32 256 }, %struct.rlist { i32 3278300, i32 512 }, %struct.rlist { i32 3278304, i32 768 }, %struct.rlist { i32 3278308, i32 1024 }, %struct.rlist { i32 3278312, i32 1280 }, %struct.rlist { i32 3278288, i32 192 }, %struct.rlist zeroinitializer], [144 x i8] zeroinitializer }, align 32
@set_audio_standard_A2.a2_deemph50 = internal constant { [6 x %struct.rlist], [48 x i8] } { [6 x %struct.rlist] [%struct.rlist { i32 3277896, i32 896 }, %struct.rlist { i32 3277924, i32 896 }, %struct.rlist { i32 3278136, i32 4577 }, %struct.rlist { i32 3278140, i32 174012 }, %struct.rlist { i32 3278144, i32 197180 }, %struct.rlist zeroinitializer], [48 x i8] zeroinitializer }, align 32
@set_audio_standard_A2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017cx88xx: %s: tvaudio:%s PAL-BG A1/2 (status: known-good)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set_audio_standard_A2\00", [42 x i8] zeroinitializer }, align 32
@set_audio_standard_A2._entry_ptr = internal global ptr @set_audio_standard_A2._entry, section ".printk_index", align 4
@set_audio_standard_A2._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017cx88xx: %s: tvaudio:%s PAL-DK A1/2 (status: known-good)\0A\00", [37 x i8] zeroinitializer }, align 32
@set_audio_standard_A2._entry_ptr.29 = internal global ptr @set_audio_standard_A2._entry.27, section ".printk_index", align 4
@set_audio_standard_A2._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017cx88xx: %s: tvaudio:%s PAL-I A1 (status: known-good)\0A\00", [40 x i8] zeroinitializer }, align 32
@set_audio_standard_A2._entry_ptr.32 = internal global ptr @set_audio_standard_A2._entry.30, section ".printk_index", align 4
@set_audio_standard_A2._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.2, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017cx88xx: %s: tvaudio:%s AM-L (status: devel)\0A\00", [49 x i8] zeroinitializer }, align 32
@set_audio_standard_A2._entry_ptr.35 = internal global ptr @set_audio_standard_A2._entry.33, section ".printk_index", align 4
@set_audio_standard_A2._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.2, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017cx88xx: %s: tvaudio:%s Warning: wrong value\0A\00", [49 x i8] zeroinitializer }, align 32
@set_audio_standard_A2._entry_ptr.38 = internal global ptr @set_audio_standard_A2._entry.36, section ".printk_index", align 4
@set_audio_standard_NICAM.nicam_l = internal constant { [29 x %struct.rlist], [56 x i8] } { [29 x %struct.rlist] [%struct.rlist { i32 3278376, i32 1 }, %struct.rlist { i32 3278296, i32 96 }, %struct.rlist { i32 3278300, i32 249 }, %struct.rlist { i32 3278304, i32 460 }, %struct.rlist { i32 3278308, i32 691 }, %struct.rlist { i32 3278312, i32 1830 }, %struct.rlist { i32 3278148, i32 62416 }, %struct.rlist { i32 3278152, i32 0 }, %struct.rlist { i32 3278156, i32 100 }, %struct.rlist { i32 3278160, i32 4095 }, %struct.rlist { i32 3278164, i32 31 }, %struct.rlist { i32 3278168, i32 15 }, %struct.rlist { i32 3278264, i32 3 }, %struct.rlist { i32 3278268, i32 12582912 }, %struct.rlist { i32 3278344, i32 30 }, %struct.rlist { i32 3278340, i32 0 }, %struct.rlist { i32 3278348, i32 58690 }, %struct.rlist { i32 3278256, i32 0 }, %struct.rlist { i32 3278140, i32 218078 }, %struct.rlist { i32 3278144, i32 433 }, %struct.rlist { i32 3280129, i32 6 }, %struct.rlist { i32 3280130, i32 130 }, %struct.rlist { i32 3280131, i32 18 }, %struct.rlist { i32 3280132, i32 5 }, %struct.rlist { i32 3280170, i32 52 }, %struct.rlist { i32 3280171, i32 76 }, %struct.rlist { i32 3278136, i32 26240 }, %struct.rlist { i32 3278288, i32 192 }, %struct.rlist zeroinitializer], [56 x i8] zeroinitializer }, align 32
@set_audio_standard_NICAM.nicam_bgdki_common = internal constant { [20 x %struct.rlist], [32 x i8] } { [20 x %struct.rlist] [%struct.rlist { i32 3278376, i32 1 }, %struct.rlist { i32 3278296, i32 16 }, %struct.rlist { i32 3278300, i32 64 }, %struct.rlist { i32 3278304, i32 256 }, %struct.rlist { i32 3278308, i32 1024 }, %struct.rlist { i32 3278312, i32 4096 }, %struct.rlist { i32 3278156, i32 4095 }, %struct.rlist { i32 3278160, i32 1023 }, %struct.rlist { i32 3278164, i32 255 }, %struct.rlist { i32 3278168, i32 63 }, %struct.rlist { i32 3278264, i32 3 }, %struct.rlist { i32 3278136, i32 9154 }, %struct.rlist { i32 3278140, i32 174012 }, %struct.rlist { i32 3278144, i32 197182 }, %struct.rlist { i32 3278148, i32 62416 }, %struct.rlist { i32 3278152, i32 0 }, %struct.rlist { i32 3280129, i32 6 }, %struct.rlist { i32 3280130, i32 130 }, %struct.rlist { i32 3280132, i32 5 }, %struct.rlist zeroinitializer], [32 x i8] zeroinitializer }, align 32
@set_audio_standard_NICAM.nicam_i = internal constant { [4 x %struct.rlist], [32 x i8] } { [4 x %struct.rlist] [%struct.rlist { i32 3280131, i32 18 }, %struct.rlist { i32 3280170, i32 58 }, %struct.rlist { i32 3280171, i32 147 }, %struct.rlist zeroinitializer], [32 x i8] zeroinitializer }, align 32
@set_audio_standard_NICAM.nicam_default = internal constant { [4 x %struct.rlist], [32 x i8] } { [4 x %struct.rlist] [%struct.rlist { i32 3280131, i32 22 }, %struct.rlist { i32 3280170, i32 52 }, %struct.rlist { i32 3280171, i32 76 }, %struct.rlist zeroinitializer], [32 x i8] zeroinitializer }, align 32
@set_audio_standard_NICAM._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017cx88xx: %s: tvaudio:%s SECAM-L NICAM (status: devel)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set_audio_standard_NICAM\00", [39 x i8] zeroinitializer }, align 32
@set_audio_standard_NICAM._entry_ptr = internal global ptr @set_audio_standard_NICAM._entry, section ".printk_index", align 4
@set_audio_standard_NICAM._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017cx88xx: %s: tvaudio:%s PAL-I NICAM (status: known-good)\0A\00", [37 x i8] zeroinitializer }, align 32
@set_audio_standard_NICAM._entry_ptr.43 = internal global ptr @set_audio_standard_NICAM._entry.41, section ".printk_index", align 4
@set_audio_standard_NICAM._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017cx88xx: %s: tvaudio:%s PAL-BGDK NICAM (status: known-good)\0A\00", [34 x i8] zeroinitializer }, align 32
@set_audio_standard_NICAM._entry_ptr.46 = internal global ptr @set_audio_standard_NICAM._entry.44, section ".printk_index", align 4
@cx88_detect_nicam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017cx88xx: %s: tvaudio:start nicam autodetect.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx88_detect_nicam\00", [46 x i8] zeroinitializer }, align 32
@cx88_detect_nicam._entry_ptr = internal global ptr @cx88_detect_nicam._entry, section ".printk_index", align 4
@cx88_detect_nicam._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017cx88xx: %s: tvaudio:nicam is detected.\0A\00", [54 x i8] zeroinitializer }, align 32
@cx88_detect_nicam._entry_ptr.51 = internal global ptr @cx88_detect_nicam._entry.49, section ".printk_index", align 4
@cx88_detect_nicam._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017cx88xx: %s: tvaudio:nicam is not detected.\0A\00", [50 x i8] zeroinitializer }, align 32
@cx88_detect_nicam._entry_ptr.54 = internal global ptr @cx88_detect_nicam._entry.52, section ".printk_index", align 4
@set_audio_standard_EIAJ.eiaj = internal constant { [1 x %struct.rlist], [24 x i8] } zeroinitializer, align 32
@set_audio_standard_EIAJ._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx88xx: %s: tvaudio:%s (status: unknown)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set_audio_standard_EIAJ\00", [40 x i8] zeroinitializer }, align 32
@set_audio_standard_EIAJ._entry_ptr = internal global ptr @set_audio_standard_EIAJ._entry, section ".printk_index", align 4
@set_audio_standard_FM.fm_deemph_50 = internal constant { [12 x %struct.rlist], [32 x i8] } { [12 x %struct.rlist] [%struct.rlist { i32 3277896, i32 3141 }, %struct.rlist { i32 3277900, i32 25186 }, %struct.rlist { i32 3277904, i32 7209 }, %struct.rlist { i32 3277908, i32 261222 }, %struct.rlist { i32 3277912, i32 14746 }, %struct.rlist { i32 3277924, i32 3456 }, %struct.rlist { i32 3277928, i32 25186 }, %struct.rlist { i32 3277932, i32 7209 }, %struct.rlist { i32 3277936, i32 261222 }, %struct.rlist { i32 3277940, i32 14746 }, %struct.rlist { i32 3278264, i32 3 }, %struct.rlist zeroinitializer], [32 x i8] zeroinitializer }, align 32
@set_audio_standard_FM.fm_deemph_75 = internal constant { [12 x %struct.rlist], [32 x i8] } { [12 x %struct.rlist] [%struct.rlist { i32 3277896, i32 2331 }, %struct.rlist { i32 3277900, i32 27496 }, %struct.rlist { i32 3277904, i32 4588 }, %struct.rlist { i32 3277908, i32 261222 }, %struct.rlist { i32 3277912, i32 14746 }, %struct.rlist { i32 3277924, i32 2720 }, %struct.rlist { i32 3277928, i32 27496 }, %struct.rlist { i32 3277932, i32 4588 }, %struct.rlist { i32 3277936, i32 261222 }, %struct.rlist { i32 3277940, i32 14746 }, %struct.rlist { i32 3278264, i32 3 }, %struct.rlist zeroinitializer], [32 x i8] zeroinitializer }, align 32
@set_audio_standard_FM.fm_no_deemph = internal constant { [2 x %struct.rlist], [16 x i8] } { [2 x %struct.rlist] [%struct.rlist { i32 3278264, i32 3 }, %struct.rlist zeroinitializer], [16 x i8] zeroinitializer }, align 32
@set_audio_standard_FM._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.57, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set_audio_standard_FM\00", [42 x i8] zeroinitializer }, align 32
@set_audio_standard_FM._entry_ptr = internal global ptr @set_audio_standard_FM._entry, section ".printk_index", align 4
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BTSC_FORCE_MONO\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BTSC_FORCE_STEREO\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BTSC_FORCE_SAP\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BTSC_AUTO_STEREO\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BTSC_AUTO_SAP\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"A2_FORCE_MONO1\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"A2_FORCE_MONO2\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A2_FORCE_STEREO\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"A2_AUTO_MONO2\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"A2_AUTO_STEREO\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EIAJ_FORCE_MONO1\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EIAJ_FORCE_MONO2\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EIAJ_FORCE_STEREO\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EIAJ_AUTO_MONO2\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EIAJ_AUTO_STEREO\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FMRADIO_FORCE_MONO\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FMRADIO_FORCE_STEREO\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FMRADIO_AUTO_STEREO\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NICAM_FORCE_MONO1\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NICAM_FORCE_MONO2\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NICAM_FORCE_STEREO\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NICAM_AUTO_MONO2\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NICAM_AUTO_STEREO\00", [46 x i8] zeroinitializer }, align 32
@aud_ctl_names = internal constant { <{ [37 x ptr], [27 x ptr] }>, [64 x i8] } { <{ [37 x ptr], [27 x ptr] }> <{ [37 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr null, ptr null, ptr null, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr null, ptr null, ptr null, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr null, ptr null, ptr null, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80], [27 x ptr] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@switch.table.cx88_get_stereo = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 0, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.cx88_set_stereo = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 10, i32 9, i32 8, i32 10], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.83 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.84 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.85 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 7, i64 11]
@__sancov_gen_cov_switch_values.86 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 9, i64 11]
@__sancov_gen_cov_switch_values.87 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.88 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.90 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 5, i64 6, i64 11]
@__sancov_gen_cov_switch_values.91 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 3280129, i64 3280130, i64 3280131, i64 3280132, i64 3280170, i64 3280171]
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"audio_debug\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 41, i32 21 }
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"always_analog\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 45, i32 21 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"radio_deemphasis\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 49, i32 21 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 795, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 810, i32 28 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 810, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 810, i32 46 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 811, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 811, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 812, i32 28 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 812, i32 36 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 812, i32 48 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 813, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 813, i32 20 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 821, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 979, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 993, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1043, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [5 x i8] c"btsc\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 165, i32 28 }
@___asan_gen_.179 = private unnamed_addr constant [9 x i8] c"btsc_sap\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 202, i32 28 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 260, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 265, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [15 x i8] c"a2_bgdk_common\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 375, i32 28 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"a2_bg\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 433, i32 28 }
@___asan_gen_.203 = private unnamed_addr constant [6 x i8] c"a2_dk\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 442, i32 28 }
@___asan_gen_.206 = private unnamed_addr constant [5 x i8] c"a1_i\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 453, i32 28 }
@___asan_gen_.209 = private unnamed_addr constant [5 x i8] c"am_l\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 522, i32 28 }
@___asan_gen_.212 = private unnamed_addr constant [12 x i8] c"a2_deemph50\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 591, i32 28 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 603, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 609, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 615, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 620, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 630, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [8 x i8] c"nicam_l\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 274, i32 28 }
@___asan_gen_.251 = private unnamed_addr constant [19 x i8] c"nicam_bgdki_common\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 306, i32 28 }
@___asan_gen_.254 = private unnamed_addr constant [8 x i8] c"nicam_i\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 329, i32 28 }
@___asan_gen_.257 = private unnamed_addr constant [14 x i8] c"nicam_default\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 336, i32 28 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 346, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 350, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 363, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 728, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 735, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 743, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [5 x i8] c"eiaj\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 640, i32 28 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 645, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [13 x i8] c"fm_deemph_50\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 655, i32 28 }
@___asan_gen_.317 = private unnamed_addr constant [13 x i8] c"fm_deemph_75\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 671, i32 28 }
@___asan_gen_.320 = private unnamed_addr constant [13 x i8] c"fm_no_deemph\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 696, i32 28 }
@___asan_gen_.323 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 701, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 62, i32 25 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 63, i32 27 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 64, i32 24 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 65, i32 26 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 66, i32 23 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 67, i32 24 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 68, i32 24 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 69, i32 25 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 70, i32 23 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 71, i32 24 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 72, i32 26 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 73, i32 26 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 74, i32 27 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 75, i32 25 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 76, i32 26 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 82, i32 28 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 83, i32 30 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 84, i32 29 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 77, i32 27 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 78, i32 27 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 79, i32 28 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 80, i32 26 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 81, i32 27 }
@___asan_gen_.398 = private unnamed_addr constant [14 x i8] c"aud_ctl_names\00", align 1
@___asan_gen_.399 = private constant [41 x i8] c"../drivers/media/pci/cx88/cx88-tvaudio.c\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 61, i32 27 }
@___asan_gen_.401 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 57, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant [29 x i8] c"switch.table.cx88_get_stereo\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [29 x i8] c"switch.table.cx88_set_stereo\00", align 1
@llvm.compiler.used = appending global [140 x ptr] [ptr @__UNIQUE_ID_always_analog388, ptr @__UNIQUE_ID_always_analogtype387, ptr @__UNIQUE_ID_audio_debug386, ptr @__UNIQUE_ID_audio_debugtype385, ptr @__UNIQUE_ID_radio_deemphasis390, ptr @__UNIQUE_ID_radio_deemphasistype389, ptr @__ksymtab_cx88_audio_thread, ptr @__ksymtab_cx88_get_stereo, ptr @__ksymtab_cx88_newstation, ptr @__ksymtab_cx88_set_stereo, ptr @__ksymtab_cx88_set_tvaudio, ptr @__param_always_analog, ptr @__param_audio_debug, ptr @__param_radio_deemphasis, ptr @cx88_audio_thread._entry, ptr @cx88_audio_thread._entry.17, ptr @cx88_audio_thread._entry_ptr, ptr @cx88_audio_thread._entry_ptr.19, ptr @cx88_detect_nicam._entry, ptr @cx88_detect_nicam._entry.49, ptr @cx88_detect_nicam._entry.52, ptr @cx88_detect_nicam._entry_ptr, ptr @cx88_detect_nicam._entry_ptr.51, ptr @cx88_detect_nicam._entry_ptr.54, ptr @cx88_get_stereo._entry, ptr @cx88_get_stereo._entry_ptr, ptr @cx88_set_stereo._entry, ptr @cx88_set_stereo._entry_ptr, ptr @cx88_set_tvaudio._entry, ptr @cx88_set_tvaudio._entry_ptr, ptr @set_audio_standard_A2._entry, ptr @set_audio_standard_A2._entry.27, ptr @set_audio_standard_A2._entry.30, ptr @set_audio_standard_A2._entry.33, ptr @set_audio_standard_A2._entry.36, ptr @set_audio_standard_A2._entry_ptr, ptr @set_audio_standard_A2._entry_ptr.29, ptr @set_audio_standard_A2._entry_ptr.32, ptr @set_audio_standard_A2._entry_ptr.35, ptr @set_audio_standard_A2._entry_ptr.38, ptr @set_audio_standard_BTSC._entry, ptr @set_audio_standard_BTSC._entry.22, ptr @set_audio_standard_BTSC._entry_ptr, ptr @set_audio_standard_BTSC._entry_ptr.24, ptr @set_audio_standard_EIAJ._entry, ptr @set_audio_standard_EIAJ._entry_ptr, ptr @set_audio_standard_FM._entry, ptr @set_audio_standard_FM._entry_ptr, ptr @set_audio_standard_NICAM._entry, ptr @set_audio_standard_NICAM._entry.41, ptr @set_audio_standard_NICAM._entry.44, ptr @set_audio_standard_NICAM._entry_ptr, ptr @set_audio_standard_NICAM._entry_ptr.43, ptr @set_audio_standard_NICAM._entry_ptr.46, ptr @audio_debug, ptr @always_analog, ptr @radio_deemphasis, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cx88_get_stereo.m, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cx88_get_stereo.p, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @set_audio_standard_BTSC.btsc, ptr @set_audio_standard_BTSC.btsc_sap, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @set_audio_standard_A2.a2_bgdk_common, ptr @set_audio_standard_A2.a2_bg, ptr @set_audio_standard_A2.a2_dk, ptr @set_audio_standard_A2.a1_i, ptr @set_audio_standard_A2.am_l, ptr @set_audio_standard_A2.a2_deemph50, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @set_audio_standard_NICAM.nicam_l, ptr @set_audio_standard_NICAM.nicam_bgdki_common, ptr @set_audio_standard_NICAM.nicam_i, ptr @set_audio_standard_NICAM.nicam_default, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @set_audio_standard_EIAJ.eiaj, ptr @.str.55, ptr @.str.56, ptr @set_audio_standard_FM.fm_deemph_50, ptr @set_audio_standard_FM.fm_deemph_75, ptr @set_audio_standard_FM.fm_no_deemph, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @aud_ctl_names, ptr @.str.82, ptr @switch.table.cx88_get_stereo, ptr @switch.table.cx88_set_stereo], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @always_analog to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_deemphasis to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_set_tvaudio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_get_stereo.m to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_get_stereo.p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_get_stereo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_set_stereo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_audio_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_audio_thread._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_BTSC.btsc to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_BTSC.btsc_sap to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_BTSC._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_BTSC._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_A2.a2_bgdk_common to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_A2.a2_bg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_A2.a2_dk to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_A2.a1_i to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_A2.am_l to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_A2.a2_deemph50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_A2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_A2._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_A2._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_A2._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_A2._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_NICAM.nicam_l to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_NICAM.nicam_bgdki_common to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_NICAM.nicam_i to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_NICAM.nicam_default to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_NICAM._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_NICAM._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_NICAM._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_detect_nicam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_detect_nicam._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_detect_nicam._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_EIAJ.eiaj to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_EIAJ._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_FM.fm_deemph_50 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_FM.fm_deemph_75 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_FM.fm_no_deemph to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_standard_FM._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_ctl_names to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx88_get_stereo to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx88_set_stereo to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx88_set_tvaudio(ptr noundef %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tvaudio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 32
  %0 = ptrtoint ptr %tvaudio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tvaudio, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %entry.sw.bb1_crit_edge
    i32 4, label %entry.sw.bb1_crit_edge54
    i32 11, label %entry.sw.bb1_crit_edge55
    i32 5, label %entry.sw.bb1_crit_edge56
    i32 6, label %entry.sw.bb1_crit_edge57
    i32 7, label %sw.bb3
    i32 9, label %sw.bb4
    i32 10, label %sw.bb5
    i32 1, label %entry.do.end12_crit_edge
    i32 8, label %entry.do.end12_crit_edge58
  ]

entry.do.end12_crit_edge58:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

entry.sw.bb1_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_audio_standard_BTSC(ptr noundef %core, i32 noundef 0, i32 noundef 3)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge54, %entry.sw.bb1_crit_edge55, %entry.sw.bb1_crit_edge56, %entry.sw.bb1_crit_edge57
  tail call fastcc void @set_audio_standard_A2(ptr noundef %core)
  tail call fastcc void @set_audio_standard_NICAM(ptr noundef %core, i32 noundef 36)
  %3 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %sw.bb1.do.end3.i_crit_edge, label %do.end.i

sw.bb1.do.end3.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %sw.bb1.do.end3.i_crit_edge
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %4 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %5, i32 819544
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  %7 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not.i = icmp eq i32 %7, 0
  br i1 %cmp7.not.i, label %if.end20.i, label %do.end3.i.do.body9.i_crit_edge

do.end3.i.do.body9.i_crit_edge:                   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

do.body9.i:                                       ; preds = %if.end20.4.i.do.body9.i_crit_edge, %if.end20.3.i.do.body9.i_crit_edge, %if.end20.2.i.do.body9.i_crit_edge, %if.end20.1.i.do.body9.i_crit_edge, %if.end20.i.do.body9.i_crit_edge, %do.end3.i.do.body9.i_crit_edge
  %8 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not.i = icmp eq i32 %8, 0
  br i1 %tobool10.not.i, label %do.body9.i.if.else_crit_edge, label %cx88_detect_nicam.exit

do.body9.i.if.else_crit_edge:                     ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end20.i:                                       ; preds = %do.end3.i
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %9 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.1.i = getelementptr i32, ptr %10, i32 819544
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #7, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  %12 = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7.not.1.i = icmp eq i32 %12, 0
  br i1 %cmp7.not.1.i, label %if.end20.1.i, label %if.end20.i.do.body9.i_crit_edge

if.end20.i.do.body9.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

if.end20.1.i:                                     ; preds = %if.end20.i
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %13 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.2.i = getelementptr i32, ptr %14, i32 819544
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #7, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  %16 = and i32 %15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7.not.2.i = icmp eq i32 %16, 0
  br i1 %cmp7.not.2.i, label %if.end20.2.i, label %if.end20.1.i.do.body9.i_crit_edge

if.end20.1.i.do.body9.i_crit_edge:                ; preds = %if.end20.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

if.end20.2.i:                                     ; preds = %if.end20.1.i
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %17 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.3.i = getelementptr i32, ptr %18, i32 819544
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i) #7, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  %20 = and i32 %19, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp7.not.3.i = icmp eq i32 %20, 0
  br i1 %cmp7.not.3.i, label %if.end20.3.i, label %if.end20.2.i.do.body9.i_crit_edge

if.end20.2.i.do.body9.i_crit_edge:                ; preds = %if.end20.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

if.end20.3.i:                                     ; preds = %if.end20.2.i
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %21 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.4.i = getelementptr i32, ptr %22, i32 819544
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i) #7, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  %24 = and i32 %23, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp7.not.4.i = icmp eq i32 %24, 0
  br i1 %cmp7.not.4.i, label %if.end20.4.i, label %if.end20.3.i.do.body9.i_crit_edge

if.end20.3.i.do.body9.i_crit_edge:                ; preds = %if.end20.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

if.end20.4.i:                                     ; preds = %if.end20.3.i
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %25 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.5.i = getelementptr i32, ptr %26, i32 819544
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i) #7, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  %28 = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp7.not.5.i = icmp eq i32 %28, 0
  br i1 %cmp7.not.5.i, label %if.end20.5.i, label %if.end20.4.i.do.body9.i_crit_edge

if.end20.4.i.do.body9.i_crit_edge:                ; preds = %if.end20.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

if.end20.5.i:                                     ; preds = %if.end20.4.i
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %29 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool22.not.i = icmp eq i32 %29, 0
  br i1 %tobool22.not.i, label %if.end20.5.i.if.then_crit_edge, label %cx88_detect_nicam.exit.thread49

if.end20.5.i.if.then_crit_edge:                   ; preds = %if.end20.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

cx88_detect_nicam.exit.thread49:                  ; preds = %if.end20.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call28.i52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.48) #10
  br label %if.then

cx88_detect_nicam.exit:                           ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48) #10
  br label %if.else

if.then:                                          ; preds = %cx88_detect_nicam.exit.thread49, %if.end20.5.i.if.then_crit_edge
  tail call fastcc void @set_audio_standard_A2(ptr noundef %core)
  %audiomode_current = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 34
  %30 = ptrtoint ptr %audiomode_current to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %audiomode_current, align 4
  %use_nicam = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 38
  %31 = ptrtoint ptr %use_nicam to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %use_nicam, align 4
  br label %sw.epilog

if.else:                                          ; preds = %cx88_detect_nicam.exit, %do.body9.i.if.else_crit_edge
  %use_nicam2 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 38
  %32 = ptrtoint ptr %use_nicam2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %use_nicam2, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %33 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i31 = icmp eq i32 %33, 0
  br i1 %tobool.not.i31, label %sw.bb3.set_audio_standard_EIAJ.exit_crit_edge, label %do.end.i33

sw.bb3.set_audio_standard_EIAJ.exit_crit_edge:    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_audio_standard_EIAJ.exit

do.end.i33:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.56) #10
  br label %set_audio_standard_EIAJ.exit

set_audio_standard_EIAJ.exit:                     ; preds = %do.end.i33, %sw.bb3.set_audio_standard_EIAJ.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %lmmio.i.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %34 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %35, i32 819557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1073741824) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr4.i.i = getelementptr i32, ptr %37, i32 819264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 33554432) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr8.i.i = getelementptr i32, ptr %39, i32 819265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 16777216) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr12.i.i = getelementptr i32, ptr %41, i32 819266
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 16777216) #7, !srcloc !239
  tail call fastcc void @set_audio_registers(ptr noundef %core, ptr noundef nonnull @set_audio_standard_EIAJ.eiaj) #7
  tail call fastcc void @set_audio_finish(ptr noundef %core, i32 noundef 20) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %42 = load i32, ptr @radio_deemphasis, align 4
  %43 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i34 = icmp eq i32 %43, 0
  br i1 %tobool.not.i34, label %sw.bb4.set_audio_standard_FM.exit_crit_edge, label %do.end.i36

sw.bb4.set_audio_standard_FM.exit_crit_edge:      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_audio_standard_FM.exit

do.end.i36:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.57) #10
  br label %set_audio_standard_FM.exit

set_audio_standard_FM.exit:                       ; preds = %do.end.i36, %sw.bb4.set_audio_standard_FM.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %lmmio.i.i37 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %44 = ptrtoint ptr %lmmio.i.i37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lmmio.i.i37, align 4
  %add.ptr.i.i38 = getelementptr i32, ptr %45, i32 819557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38, i32 1073741824) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %lmmio.i.i37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lmmio.i.i37, align 4
  %add.ptr4.i.i39 = getelementptr i32, ptr %47, i32 819264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i39, i32 536870912) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %lmmio.i.i37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lmmio.i.i37, align 4
  %add.ptr8.i.i40 = getelementptr i32, ptr %49, i32 819265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i40, i32 16777216) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %lmmio.i.i37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lmmio.i.i37, align 4
  %add.ptr12.i.i41 = getelementptr i32, ptr %51, i32 819266
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i41, i32 16777216) #7, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %switch.selectcmp.i = icmp eq i32 %42, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @set_audio_standard_FM.fm_deemph_50, ptr @set_audio_standard_FM.fm_no_deemph
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %switch.selectcmp9.i = icmp eq i32 %42, 2
  %switch.select10.i = select i1 %switch.selectcmp9.i, ptr @set_audio_standard_FM.fm_deemph_75, ptr %switch.select.i
  tail call fastcc void @set_audio_registers(ptr noundef %core, ptr noundef nonnull %switch.select10.i) #7
  tail call fastcc void @set_audio_finish(ptr noundef %core, i32 noundef 26) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %lmmio.i42 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %52 = ptrtoint ptr %lmmio.i42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lmmio.i42, align 4
  %add.ptr.i43 = getelementptr i32, ptr %53, i32 819557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 1073741824) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %lmmio.i42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lmmio.i42, align 4
  %add.ptr4.i = getelementptr i32, ptr %55, i32 819264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 16777216) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %lmmio.i42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lmmio.i42, align 4
  %add.ptr8.i = getelementptr i32, ptr %57, i32 819265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 16777216) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %lmmio.i42 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lmmio.i42, align 4
  %add.ptr12.i = getelementptr i32, ptr %59, i32 819266
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 16777216) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !243
  tail call void @arm_heavy_mb() #7
  %i2sinputcntl = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 11
  %60 = ptrtoint ptr %i2sinputcntl to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i2sinputcntl, align 8
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %63 = ptrtoint ptr %lmmio.i42 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lmmio.i42, align 4
  %add.ptr = getelementptr i32, ptr %64, i32 819272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %62) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  tail call void @arm_heavy_mb() #7
  %65 = ptrtoint ptr %lmmio.i42 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lmmio.i42, align 4
  %add.ptr9 = getelementptr i32, ptr %66, i32 819579
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 16777216) #7, !srcloc !239
  tail call fastcc void @set_audio_finish(ptr noundef %core, i32 noundef 32768)
  br label %sw.epilog

do.end12:                                         ; preds = %entry.do.end12_crit_edge, %entry.do.end12_crit_edge58
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end12, %sw.bb5, %set_audio_standard_FM.exit, %set_audio_standard_EIAJ.exit, %if.else, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_audio_standard_BTSC(ptr noundef %core, i32 noundef %sap, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sap)
  %tobool.not = icmp eq i32 %sap, 0
  %0 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool6.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body5, label %do.body

do.body:                                          ; preds = %entry
  br i1 %tobool6.not, label %do.body.do.end4_crit_edge, label %do.end

do.body.do.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.21) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %do.body.do.end4_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %1 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %2, i32 819557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1073741824) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %4, i32 819264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 134217728) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio.i, align 4
  %add.ptr8.i = getelementptr i32, ptr %6, i32 819265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 16777216) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio.i, align 4
  %add.ptr12.i = getelementptr i32, ptr %8, i32 819266
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 16777216) #7, !srcloc !239
  br label %if.end14

do.body5:                                         ; preds = %entry
  br i1 %tobool6.not, label %do.body5.do.end13_crit_edge, label %do.end9

do.body5.do.end13_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end9:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.21) #10
  br label %do.end13

do.end13:                                         ; preds = %do.end9, %do.body5.do.end13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %lmmio.i22 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %9 = ptrtoint ptr %lmmio.i22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio.i22, align 4
  %add.ptr.i23 = getelementptr i32, ptr %10, i32 819557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 1073741824) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %lmmio.i22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio.i22, align 4
  %add.ptr4.i24 = getelementptr i32, ptr %12, i32 819264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i24, i32 16777216) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %lmmio.i22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio.i22, align 4
  %add.ptr8.i25 = getelementptr i32, ptr %14, i32 819265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i25, i32 16777216) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %lmmio.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio.i22, align 4
  %add.ptr12.i26 = getelementptr i32, ptr %16, i32 819266
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i26, i32 16777216) #7, !srcloc !239
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %do.end4
  %set_audio_standard_BTSC.btsc.sink = phi ptr [ @set_audio_standard_BTSC.btsc, %do.end13 ], [ @set_audio_standard_BTSC.btsc_sap, %do.end4 ]
  %or = or i32 %mode, 512
  tail call fastcc void @set_audio_registers(ptr noundef %core, ptr noundef nonnull %set_audio_standard_BTSC.btsc.sink)
  tail call fastcc void @set_audio_finish(ptr noundef %core, i32 noundef %or)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_audio_standard_A2(ptr noundef %core) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %0 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %1, i32 819557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1073741824) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %3, i32 819264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 67108864) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio.i, align 4
  %add.ptr8.i = getelementptr i32, ptr %5, i32 819265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 16777216) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio.i, align 4
  %add.ptr12.i = getelementptr i32, ptr %7, i32 819266
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 16777216) #7, !srcloc !239
  %tvaudio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 32
  %8 = ptrtoint ptr %tvaudio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tvaudio, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %9, label %entry.sw.epilog_crit_edge [
    i32 3, label %do.body
    i32 4, label %do.body4
    i32 5, label %do.body14
    i32 6, label %do.body24
    i32 1, label %entry.do.body34_crit_edge
    i32 2, label %entry.do.body34_crit_edge1
    i32 7, label %entry.do.body34_crit_edge2
    i32 8, label %entry.do.body34_crit_edge3
    i32 9, label %entry.do.body34_crit_edge4
    i32 10, label %entry.do.body34_crit_edge5
    i32 11, label %entry.do.body34_crit_edge6
  ]

entry.do.body34_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

entry.do.body34_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

entry.do.body34_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

entry.do.body34_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

entry.do.body34_crit_edge2:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

entry.do.body34_crit_edge1:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

entry.do.body34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %11 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %do.body.do.end2_crit_edge, label %do.end

do.body.do.end2_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %do.body.do.end2_crit_edge
  tail call fastcc void @set_audio_registers(ptr noundef %core, ptr noundef nonnull @set_audio_standard_A2.a2_bgdk_common)
  tail call fastcc void @set_audio_registers(ptr noundef %core, ptr noundef nonnull @set_audio_standard_A2.a2_bg)
  br label %sw.epilog.sink.split

do.body4:                                         ; preds = %entry
  %12 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %do.body4.do.end12_crit_edge, label %do.end8

do.body4.do.end12_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end8:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end8, %do.body4.do.end12_crit_edge
  tail call fastcc void @set_audio_registers(ptr noundef %core, ptr noundef nonnull @set_audio_standard_A2.a2_bgdk_common)
  tail call fastcc void @set_audio_registers(ptr noundef %core, ptr noundef nonnull @set_audio_standard_A2.a2_dk)
  br label %sw.epilog.sink.split

do.body14:                                        ; preds = %entry
  %13 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not = icmp eq i32 %13, 0
  br i1 %tobool15.not, label %do.body14.do.end22_crit_edge, label %do.end18

do.body14.do.end22_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

do.end18:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26) #10
  br label %do.end22

do.end22:                                         ; preds = %do.end18, %do.body14.do.end22_crit_edge
  tail call fastcc void @set_audio_registers(ptr noundef %core, ptr noundef nonnull @set_audio_standard_A2.a1_i)
  br label %sw.epilog.sink.split

do.body24:                                        ; preds = %entry
  %14 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool25.not = icmp eq i32 %14, 0
  br i1 %tobool25.not, label %do.body24.sw.epilog.sink.split_crit_edge, label %do.end28

do.body24.sw.epilog.sink.split_crit_edge:         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

do.end28:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26) #10
  br label %sw.epilog.sink.split

do.body34:                                        ; preds = %entry.do.body34_crit_edge, %entry.do.body34_crit_edge1, %entry.do.body34_crit_edge2, %entry.do.body34_crit_edge3, %entry.do.body34_crit_edge4, %entry.do.body34_crit_edge5, %entry.do.body34_crit_edge6
  %15 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool35.not = icmp eq i32 %15, 0
  br i1 %tobool35.not, label %do.body34.return_crit_edge, label %do.end38

do.body34.return_crit_edge:                       ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end38:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26) #10
  br label %return

sw.epilog.sink.split:                             ; preds = %do.end28, %do.body24.sw.epilog.sink.split_crit_edge, %do.end22, %do.end12, %do.end2
  %set_audio_standard_A2.am_l.sink = phi ptr [ @set_audio_standard_A2.a2_deemph50, %do.end22 ], [ @set_audio_standard_A2.a2_deemph50, %do.end12 ], [ @set_audio_standard_A2.a2_deemph50, %do.end2 ], [ @set_audio_standard_A2.am_l, %do.body24.sw.epilog.sink.split_crit_edge ], [ @set_audio_standard_A2.am_l, %do.end28 ]
  tail call fastcc void @set_audio_registers(ptr noundef %core, ptr noundef nonnull %set_audio_standard_A2.am_l.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  tail call fastcc void @set_audio_finish(ptr noundef %core, i32 noundef 520)
  br label %return

return:                                           ; preds = %sw.epilog, %do.end38, %do.body34.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_audio_standard_NICAM(ptr noundef %core, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %0 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %1, i32 819557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1073741824) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %3, i32 819264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 268435456) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio.i, align 4
  %add.ptr8.i = getelementptr i32, ptr %5, i32 819265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 16777216) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio.i, align 4
  %add.ptr12.i = getelementptr i32, ptr %7, i32 819266
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 16777216) #7, !srcloc !239
  %tvaudio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 32
  %8 = ptrtoint ptr %tvaudio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tvaudio, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %9, label %entry.sw.epilog_crit_edge [
    i32 6, label %do.body
    i32 5, label %do.body4
    i32 1, label %entry.do.body14_crit_edge
    i32 2, label %entry.do.body14_crit_edge31
    i32 3, label %entry.do.body14_crit_edge32
    i32 4, label %entry.do.body14_crit_edge33
    i32 7, label %entry.do.body14_crit_edge34
    i32 8, label %entry.do.body14_crit_edge35
    i32 9, label %entry.do.body14_crit_edge36
    i32 10, label %entry.do.body14_crit_edge37
    i32 11, label %entry.do.body14_crit_edge38
  ]

entry.do.body14_crit_edge38:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

entry.do.body14_crit_edge37:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

entry.do.body14_crit_edge36:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

entry.do.body14_crit_edge35:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

entry.do.body14_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

entry.do.body14_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

entry.do.body14_crit_edge32:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

entry.do.body14_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %11 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %do.body.sw.epilog.sink.split_crit_edge, label %do.end

do.body.sw.epilog.sink.split_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.40) #10
  br label %sw.epilog.sink.split

do.body4:                                         ; preds = %entry
  %12 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %do.body4.do.end12_crit_edge, label %do.end8

do.body4.do.end12_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end8:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.40) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end8, %do.body4.do.end12_crit_edge
  tail call fastcc void @set_audio_registers(ptr noundef %core, ptr noundef nonnull @set_audio_standard_NICAM.nicam_bgdki_common)
  br label %sw.epilog.sink.split

do.body14:                                        ; preds = %entry.do.body14_crit_edge, %entry.do.body14_crit_edge31, %entry.do.body14_crit_edge32, %entry.do.body14_crit_edge33, %entry.do.body14_crit_edge34, %entry.do.body14_crit_edge35, %entry.do.body14_crit_edge36, %entry.do.body14_crit_edge37, %entry.do.body14_crit_edge38
  %13 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not = icmp eq i32 %13, 0
  br i1 %tobool15.not, label %do.body14.do.end22_crit_edge, label %do.end18

do.body14.do.end22_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

do.end18:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.40) #10
  br label %do.end22

do.end22:                                         ; preds = %do.end18, %do.body14.do.end22_crit_edge
  tail call fastcc void @set_audio_registers(ptr noundef %core, ptr noundef nonnull @set_audio_standard_NICAM.nicam_bgdki_common)
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end22, %do.end12, %do.end, %do.body.sw.epilog.sink.split_crit_edge
  %set_audio_standard_NICAM.nicam_default.sink = phi ptr [ @set_audio_standard_NICAM.nicam_default, %do.end22 ], [ @set_audio_standard_NICAM.nicam_i, %do.end12 ], [ @set_audio_standard_NICAM.nicam_l, %do.body.sw.epilog.sink.split_crit_edge ], [ @set_audio_standard_NICAM.nicam_l, %do.end ]
  tail call fastcc void @set_audio_registers(ptr noundef %core, ptr noundef nonnull %set_audio_standard_NICAM.nicam_default.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %or = or i32 %mode, 2304
  tail call fastcc void @set_audio_finish(ptr noundef %core, i32 noundef %or)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_audio_finish(ptr noundef %core, i32 noundef %ctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cx88_stop_audio_dma(ptr noundef %core) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 819572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1073741824) #7, !srcloc !239
  %call1 = tail call i32 @cx88_start_audio_dma(ptr noundef %core) #7
  %mpeg = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 23, i32 8
  %2 = ptrtoint ptr %mpeg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mpeg, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr6 = getelementptr i32, ptr %5, i32 819272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 67108864) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %7, i32 819273
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 16777216) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr16 = getelementptr i32, ptr %9, i32 819555
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  %11 = or i32 %10, 2097152
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %add.ptr21 = getelementptr i32, ptr %13, i32 819555
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %11) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr26 = getelementptr i32, ptr %15, i32 819274
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 16777216) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio, align 4
  %add.ptr31 = getelementptr i32, ptr %17, i32 819579
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #7, !srcloc !239
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  %18 = load i32, ptr @always_analog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool32.not = icmp eq i32 %18, 0
  br i1 %tobool32.not, label %lor.lhs.false, label %if.end.if.then37_crit_edge

if.end.if.then37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.end
  %19 = ptrtoint ptr %mpeg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mpeg, align 4
  %and35 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %lor.lhs.false.if.then37_crit_edge, label %lor.lhs.false.do.body45_crit_edge

lor.lhs.false.do.body45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body45

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %if.end.if.then37_crit_edge
  %or38 = or i32 %ctl, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or38)
  %22 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio, align 4
  %add.ptr43 = getelementptr i32, ptr %23, i32 819555
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %21) #7, !srcloc !239
  br label %do.body45

do.body45:                                        ; preds = %if.then37, %lor.lhs.false.do.body45_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !253
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr49 = getelementptr i32, ptr %25, i32 819266
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #7, !srcloc !239
  %arrayidx = getelementptr %struct.cx88_core, ptr %core, i32 0, i32 9, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio, align 4
  %add.ptr58 = getelementptr i32, ptr %30, i32 819557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %28) #7, !srcloc !239
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %last_change = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 39
  %32 = ptrtoint ptr %last_change to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %last_change, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cx88_newstation(ptr nocapture noundef writeonly %core) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %audiomode_manual = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 33
  %0 = ptrtoint ptr %audiomode_manual to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %audiomode_manual, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %last_change = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 39
  %2 = ptrtoint ptr %last_change to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %last_change, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx88_get_stereo(ptr noundef %core, ptr nocapture noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 819556
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !236
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !255
  %and = and i32 %3, 3
  %shr = lshr i32 %3, 2
  %and2 = and i32 %shr, 3
  %astat = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 37
  %4 = ptrtoint ptr %astat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %astat, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not = icmp eq i32 %5, %3
  br i1 %cmp.not, label %entry.if.end19_crit_edge, label %do.body

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.body:                                          ; preds = %entry
  %6 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body.if.end19_crit_edge, label %do.end

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [4 x ptr], ptr @cx88_get_stereo.m, i32 0, i32 %and
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr [4 x ptr], ptr @cx88_get_stereo.p, i32 0, i32 %and2
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6, align 4
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %add.ptr10 = getelementptr i32, ptr %12, i32 819555
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !236
  %14 = lshr i32 %13, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  %and14 = and i32 %14, 63
  %arrayidx15 = getelementptr [64 x ptr], ptr @aud_ctl_names, i32 0, i32 %and14
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx15, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %3, ptr noundef %8, ptr noundef %10, ptr noundef %16) #10
  br label %if.end19

if.end19:                                         ; preds = %do.end, %do.body.if.end19_crit_edge, %entry.if.end19_crit_edge
  %17 = ptrtoint ptr %astat to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %3, ptr %astat, align 8
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 3
  %18 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 112, ptr %capability, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %19 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %rxsubchans, align 4
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.cx88_get_stereo, i32 0, i32 %and
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  %21 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %switch.load, ptr %audmode, align 4
  %tvaudio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 32
  %22 = ptrtoint ptr %tvaudio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tvaudio, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %23, label %if.end19.sw.epilog35thread-pre-split_crit_edge [
    i32 2, label %if.end19.sw.bb28_crit_edge
    i32 3, label %if.end19.sw.bb28_crit_edge68
    i32 4, label %if.end19.sw.bb28_crit_edge69
    i32 11, label %if.end19.sw.bb28_crit_edge70
    i32 7, label %if.end19.sw.bb28_crit_edge71
  ]

if.end19.sw.bb28_crit_edge71:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end19.sw.bb28_crit_edge70:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end19.sw.bb28_crit_edge69:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end19.sw.bb28_crit_edge68:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end19.sw.bb28_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end19.sw.epilog35thread-pre-split_crit_edge:   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog35thread-pre-split

sw.bb28:                                          ; preds = %if.end19.sw.bb28_crit_edge, %if.end19.sw.bb28_crit_edge68, %if.end19.sw.bb28_crit_edge69, %if.end19.sw.bb28_crit_edge70, %if.end19.sw.bb28_crit_edge71
  %use_nicam = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 38
  %25 = ptrtoint ptr %use_nicam to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %use_nicam, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool29.not = icmp eq i32 %26, 0
  br i1 %tobool29.not, label %if.then30, label %sw.bb28.sw.epilog35thread-pre-split_crit_edge

sw.bb28.sw.epilog35thread-pre-split_crit_edge:    ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog35thread-pre-split

if.then30:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 @cx88_dsp_detect_stereo_sap(ptr noundef %core) #7
  %27 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call31, ptr %rxsubchans, align 4
  br label %sw.epilog35

sw.epilog35thread-pre-split:                      ; preds = %sw.bb28.sw.epilog35thread-pre-split_crit_edge, %if.end19.sw.epilog35thread-pre-split_crit_edge
  %28 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %rxsubchans, align 4
  br label %sw.epilog35

sw.epilog35:                                      ; preds = %sw.epilog35thread-pre-split, %if.then30
  %29 = phi i32 [ %.pr, %sw.epilog35thread-pre-split ], [ %call31, %if.then30 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp37 = icmp eq i32 %29, -1
  br i1 %cmp37, label %if.then38, label %sw.epilog35.if.end45_crit_edge

sw.epilog35.if.end45_crit_edge:                   ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then38:                                        ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp41 = icmp eq i32 %31, 1
  %spec.store.select = select i1 %cmp41, i32 3, i32 1
  %32 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.store.select, ptr %rxsubchans, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %sw.epilog35.if.end45_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_dsp_detect_stereo_sap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx88_set_stereo(ptr noundef %core, i32 noundef %mode, i32 noundef %manual) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %manual)
  %tobool.not = icmp eq i32 %manual, 0
  %audiomode_manual1 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 33
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %audiomode_manual1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mode, ptr %audiomode_manual1, align 8
  br label %if.end3

if.else:                                          ; preds = %entry
  %1 = ptrtoint ptr %audiomode_manual1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %audiomode_manual1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.not = icmp eq i32 %2, -1
  br i1 %cmp.not, label %if.else.if.end3_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end3:                                          ; preds = %if.else.if.end3_crit_edge, %if.then
  %audiomode_current = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 34
  %3 = ptrtoint ptr %audiomode_current to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mode, ptr %audiomode_current, align 4
  %tvaudio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 32
  %4 = ptrtoint ptr %tvaudio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tvaudio, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %5, label %if.end3.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %if.end3.sw.bb8_crit_edge
    i32 4, label %if.end3.sw.bb8_crit_edge99
    i32 11, label %if.end3.sw.bb8_crit_edge100
    i32 5, label %if.end3.sw.bb8_crit_edge101
    i32 6, label %if.end3.sw.bb8_crit_edge102
    i32 9, label %sw.bb28
  ]

if.end3.sw.bb8_crit_edge102:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end3.sw.bb8_crit_edge101:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end3.sw.bb8_crit_edge100:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end3.sw.bb8_crit_edge99:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end3.sw.bb8_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  %7 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %mode, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb4
    i32 3, label %sw.bb5
    i32 2, label %sw.bb6
    i32 1, label %sw.bb.sw.bb7_crit_edge
    i32 4, label %sw.bb.sw.bb7_crit_edge103
  ]

sw.bb.sw.bb7_crit_edge103:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

sw.bb.sw.bb7_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_audio_standard_BTSC(ptr noundef %core, i32 noundef 0, i32 noundef 0)
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_audio_standard_BTSC(ptr noundef %core, i32 noundef 0, i32 noundef 3)
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_audio_standard_BTSC(ptr noundef %core, i32 noundef 1, i32 noundef 2)
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb.sw.bb7_crit_edge, %sw.bb.sw.bb7_crit_edge103
  tail call fastcc void @set_audio_standard_BTSC(ptr noundef %core, i32 noundef 0, i32 noundef 1)
  br label %cleanup

sw.bb8:                                           ; preds = %if.end3.sw.bb8_crit_edge, %if.end3.sw.bb8_crit_edge99, %if.end3.sw.bb8_crit_edge100, %if.end3.sw.bb8_crit_edge101, %if.end3.sw.bb8_crit_edge102
  %use_nicam = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 38
  %8 = ptrtoint ptr %use_nicam to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %use_nicam, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp9 = icmp eq i32 %9, 1
  br i1 %cmp9, label %if.then10, label %if.else15

if.then10:                                        ; preds = %sw.bb8
  %10 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %mode, label %if.then10.cleanup_crit_edge [
    i32 0, label %if.then10.sw.bb11_crit_edge
    i32 3, label %if.then10.sw.bb11_crit_edge104
    i32 2, label %sw.bb12
    i32 1, label %if.then10.sw.bb13_crit_edge
    i32 4, label %if.then10.sw.bb13_crit_edge105
  ]

if.then10.sw.bb13_crit_edge105:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.then10.sw.bb13_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.then10.sw.bb11_crit_edge104:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

if.then10.sw.bb11_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb11:                                          ; preds = %if.then10.sw.bb11_crit_edge, %if.then10.sw.bb11_crit_edge104
  tail call fastcc void @set_audio_standard_NICAM(ptr noundef %core, i32 noundef 32)
  br label %cleanup

sw.bb12:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_audio_standard_NICAM(ptr noundef %core, i32 noundef 33)
  br label %cleanup

sw.bb13:                                          ; preds = %if.then10.sw.bb13_crit_edge, %if.then10.sw.bb13_crit_edge105
  tail call fastcc void @set_audio_standard_NICAM(ptr noundef %core, i32 noundef 34)
  br label %cleanup

if.else15:                                        ; preds = %sw.bb8
  %.off = add nsw i32 %5, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_audio_standard_A2(ptr noundef %core)
  br label %cleanup

if.else21:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mode)
  %11 = icmp ult i32 %mode, 5
  br i1 %11, label %switch.lookup, label %if.else21.cleanup_crit_edge

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb28:                                          ; preds = %if.end3
  %12 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %mode, label %sw.bb28.cleanup_crit_edge [
    i32 0, label %sw.bb28.do.body_crit_edge
    i32 1, label %sw.bb30
  ]

sw.bb28.do.body_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb30:                                          ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

switch.lookup:                                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.cx88_set_stereo, i32 0, i32 %mode
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body

do.body:                                          ; preds = %switch.lookup, %sw.bb30, %sw.bb28.do.body_crit_edge
  %ctl.0 = phi i32 [ 26, %sw.bb30 ], [ 24, %sw.bb28.do.body_crit_edge ], [ %switch.load, %switch.lookup ]
  %14 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool36.not = icmp eq i32 %14, 0
  br i1 %tobool36.not, label %do.body.do.body52_crit_edge, label %do.end

do.body.do.body52_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body52

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %16, i32 819556
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !236
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  %19 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio, align 4
  %add.ptr44 = getelementptr i32, ptr %20, i32 819555
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #7, !srcloc !236
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !258
  %arrayidx = getelementptr %struct.cx88_core, ptr %core, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 63, i32 noundef %ctl.0, i32 noundef %18, i32 noundef %22, i32 noundef %24) #10
  br label %do.body52

do.body52:                                        ; preds = %do.end, %do.body.do.body52_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !259
  tail call void @arm_heavy_mb() #7
  %lmmio57 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %25 = ptrtoint ptr %lmmio57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio57, align 4
  %add.ptr58 = getelementptr i32, ptr %26, i32 819555
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #7, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  %28 = and i32 %27, -1056964609
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %or = or i32 %29, %ctl.0
  %30 = tail call i32 @llvm.bswap.i32(i32 %or)
  %31 = ptrtoint ptr %lmmio57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lmmio57, align 4
  %add.ptr64 = getelementptr i32, ptr %32, i32 819555
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %30) #7, !srcloc !239
  br label %cleanup

cleanup:                                          ; preds = %do.body52, %sw.bb28.cleanup_crit_edge, %if.else21.cleanup_crit_edge, %if.then20, %sw.bb13, %sw.bb12, %sw.bb11, %if.then10.cleanup_crit_edge, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx88_audio_thread(ptr noundef %data) #0 align 64 {
entry:
  %t = alloca %struct.v4l2_tuner, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %t) #7
  %0 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call zeroext i1 @set_freezable() #7
  %call539 = tail call i32 @msleep_interruptible(i32 noundef 1000) #7
  %call640 = tail call zeroext i1 @kthread_should_stop() #7
  br i1 %call640, label %do.end3.do.body22_crit_edge, label %if.end8.lr.ph

do.end3.do.body22_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

if.end8.lr.ph:                                    ; preds = %do.end3
  %tvaudio = getelementptr inbounds %struct.cx88_core, ptr %data, i32 0, i32 32
  %use_nicam = getelementptr inbounds %struct.cx88_core, ptr %data, i32 0, i32 38
  %audiomode_manual = getelementptr inbounds %struct.cx88_core, ptr %data, i32 0, i32 33
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %audiomode_current = getelementptr inbounds %struct.cx88_core, ptr %data, i32 0, i32 34
  br label %if.end8

if.end8:                                          ; preds = %for.cond.backedge.if.end8_crit_edge, %if.end8.lr.ph
  %1 = tail call i32 @llvm.read_register.i32(metadata !226) #7
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end8.if.end.i_crit_edge

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_check_no_locks_held() #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end8.if.end.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.82, i32 noundef 57) #7
  %7 = tail call i32 @llvm.read_register.i32(metadata !226) #7
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %11 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !261

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %10) #7
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !262

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #7
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  %12 = ptrtoint ptr %tvaudio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tvaudio, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %13, label %try_to_freeze.exit.for.cond.backedge_crit_edge [
    i32 3, label %try_to_freeze.exit.sw.bb_crit_edge
    i32 4, label %try_to_freeze.exit.sw.bb_crit_edge41
    i32 11, label %try_to_freeze.exit.sw.bb_crit_edge42
    i32 5, label %try_to_freeze.exit.sw.bb_crit_edge43
    i32 6, label %try_to_freeze.exit.sw.bb_crit_edge44
  ]

try_to_freeze.exit.sw.bb_crit_edge44:             ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

try_to_freeze.exit.sw.bb_crit_edge43:             ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

try_to_freeze.exit.sw.bb_crit_edge42:             ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

try_to_freeze.exit.sw.bb_crit_edge41:             ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

try_to_freeze.exit.sw.bb_crit_edge:               ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

try_to_freeze.exit.for.cond.backedge_crit_edge:   ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

sw.bb:                                            ; preds = %try_to_freeze.exit.sw.bb_crit_edge, %try_to_freeze.exit.sw.bb_crit_edge41, %try_to_freeze.exit.sw.bb_crit_edge42, %try_to_freeze.exit.sw.bb_crit_edge43, %try_to_freeze.exit.sw.bb_crit_edge44
  %15 = ptrtoint ptr %use_nicam to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %use_nicam, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb.for.cond.backedge_crit_edge

sw.bb.for.cond.backedge_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.end12:                                         ; preds = %sw.bb
  %17 = call ptr @memset(ptr %t, i32 0, i32 84)
  call void @cx88_get_stereo(ptr noundef %data, ptr noundef nonnull %t)
  %18 = ptrtoint ptr %audiomode_manual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %audiomode_manual, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.not = icmp eq i32 %19, -1
  br i1 %cmp.not, label %if.end14, label %if.end12.for.cond.backedge_crit_edge

if.end12.for.cond.backedge_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.end14:                                         ; preds = %if.end12
  %20 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rxsubchans, align 4
  %and = lshr i32 %21, 1
  %and.lobit = and i32 %and, 1
  %22 = ptrtoint ptr %audiomode_current to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %audiomode_current, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %23)
  %cmp18 = icmp eq i32 %and.lobit, %23
  br i1 %cmp18, label %if.end14.for.cond.backedge_crit_edge, label %if.end20

if.end14.for.cond.backedge_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cx88_set_stereo(ptr noundef %data, i32 noundef %and.lobit, i32 noundef 0)
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end20, %if.end14.for.cond.backedge_crit_edge, %if.end12.for.cond.backedge_crit_edge, %sw.bb.for.cond.backedge_crit_edge, %try_to_freeze.exit.for.cond.backedge_crit_edge
  %call5 = tail call i32 @msleep_interruptible(i32 noundef 1000) #7
  %call6 = tail call zeroext i1 @kthread_should_stop() #7
  br i1 %call6, label %for.cond.backedge.do.body22_crit_edge, label %for.cond.backedge.if.end8_crit_edge

for.cond.backedge.if.end8_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.cond.backedge.do.body22_crit_edge:            ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

do.body22:                                        ; preds = %for.cond.backedge.do.body22_crit_edge, %do.end3.do.body22_crit_edge
  %24 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool23.not = icmp eq i32 %24, 0
  br i1 %tobool23.not, label %do.body22.do.end32_crit_edge, label %do.end27

do.body22.do.end32_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

do.end27:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #10
  br label %do.end32

do.end32:                                         ; preds = %do.end27, %do.body22.do.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %t) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_audio_registers(ptr nocapture noundef readonly %core, ptr nocapture noundef readonly %l) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 8
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %arrayidx = getelementptr %struct.rlist, ptr %l, i32 %i.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %1, label %do.body6 [
    i32 0, label %for.end
    i32 3280129, label %for.cond.do.body_crit_edge
    i32 3280130, label %for.cond.do.body_crit_edge26
    i32 3280131, label %for.cond.do.body_crit_edge27
    i32 3280132, label %for.cond.do.body_crit_edge28
    i32 3280170, label %for.cond.do.body_crit_edge29
    i32 3280171, label %for.cond.do.body_crit_edge30
  ]

for.cond.do.body_crit_edge30:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.do.body_crit_edge29:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.do.body_crit_edge28:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.do.body_crit_edge27:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.do.body_crit_edge26:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %for.cond.do.body_crit_edge26, %for.cond.do.body_crit_edge27, %for.cond.do.body_crit_edge28, %for.cond.do.body_crit_edge29, %for.cond.do.body_crit_edge30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %val = getelementptr %struct.rlist, ptr %l, i32 %i.0, i32 1
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %conv = trunc i32 %4 to i8
  %5 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bmmio, align 8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #7, !srcloc !264
  br label %for.inc

do.body6:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !265
  tail call void @arm_heavy_mb() #7
  %val10 = getelementptr %struct.rlist, ptr %l, i32 %i.0, i32 1
  %9 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val10, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %15, 2
  %add.ptr13 = getelementptr i32, ptr %13, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %11) #7, !srcloc !239
  br label %for.inc

for.inc:                                          ; preds = %do.body6, %do.body
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_stop_audio_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_start_audio_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !77, !78, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !163, !164, !165, !166, !168, !170, !172, !174, !175, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224}
!llvm.named.register.sp = !{!226}
!llvm.module.flags = !{!227, !228, !229, !230, !231, !232, !233, !234}
!llvm.ident = !{!235}

!0 = !{ptr @__param_audio_debug, !1, !"__param_audio_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_audio_debugtype385, !1, !"__UNIQUE_ID_audio_debugtype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_audio_debug386, !4, !"__UNIQUE_ID_audio_debug386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 43, i32 1}
!5 = !{ptr @__param_always_analog, !6, !"__param_always_analog", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 46, i32 1}
!7 = !{ptr @__UNIQUE_ID_always_analogtype387, !6, !"__UNIQUE_ID_always_analogtype387", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_always_analog388, !9, !"__UNIQUE_ID_always_analog388", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 47, i32 1}
!10 = !{ptr @__param_radio_deemphasis, !11, !"__param_radio_deemphasis", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 50, i32 1}
!12 = !{ptr @__UNIQUE_ID_radio_deemphasistype389, !11, !"__UNIQUE_ID_radio_deemphasistype389", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_radio_deemphasis390, !14, !"__UNIQUE_ID_radio_deemphasis390", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 51, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 795, i32 3}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cx88_set_tvaudio._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @cx88_set_tvaudio._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_cx88_set_tvaudio, !22, !"__ksymtab_cx88_set_tvaudio", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 799, i32 1}
!23 = !{ptr @__ksymtab_cx88_newstation, !24, !"__ksymtab_cx88_newstation", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 806, i32 1}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 810, i32 36}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 810, i32 46}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 811, i32 8}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 811, i32 18}
!33 = !{ptr @cx88_get_stereo.m, !34, !"m", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 810, i32 28}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 812, i32 36}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 812, i32 48}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 813, i32 8}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 813, i32 20}
!43 = !{ptr @cx88_get_stereo.p, !44, !"p", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 812, i32 28}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 821, i32 3}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cx88_get_stereo._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @cx88_get_stereo._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @__ksymtab_cx88_get_stereo, !51, !"__ksymtab_cx88_get_stereo", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 878, i32 1}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 979, i32 3}
!54 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @cx88_set_stereo._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @cx88_set_stereo._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @__ksymtab_cx88_set_stereo, !58, !"__ksymtab_cx88_set_stereo", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 985, i32 1}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 993, i32 2}
!61 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cx88_audio_thread._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @cx88_audio_thread._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 1043, i32 2}
!66 = !{ptr @cx88_audio_thread._entry.17, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cx88_audio_thread._entry_ptr.19, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @__ksymtab_cx88_audio_thread, !69, !"__ksymtab_cx88_audio_thread", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 1046, i32 1}
!70 = !{ptr @audio_debug, !71, !"audio_debug", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 41, i32 21}
!72 = !{ptr @always_analog, !73, !"always_analog", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 45, i32 21}
!74 = !{ptr @radio_deemphasis, !75, !"radio_deemphasis", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 49, i32 21}
!76 = !{ptr @__param_str_audio_debug, !1, !"__param_str_audio_debug", i1 false, i1 false}
!77 = !{ptr @__param_str_always_analog, !6, !"__param_str_always_analog", i1 false, i1 false}
!78 = !{ptr @__param_str_radio_deemphasis, !11, !"__param_str_radio_deemphasis", i1 false, i1 false}
!79 = !{ptr @set_audio_standard_BTSC.btsc, !80, !"btsc", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 165, i32 28}
!81 = !{ptr @set_audio_standard_BTSC.btsc_sap, !82, !"btsc_sap", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 202, i32 28}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 260, i32 3}
!85 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @set_audio_standard_BTSC._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @set_audio_standard_BTSC._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 265, i32 3}
!90 = !{ptr @set_audio_standard_BTSC._entry.22, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @set_audio_standard_BTSC._entry_ptr.24, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @set_audio_standard_A2.a2_bgdk_common, !93, !"a2_bgdk_common", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 375, i32 28}
!94 = !{ptr @set_audio_standard_A2.a2_bg, !95, !"a2_bg", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 433, i32 28}
!96 = !{ptr @set_audio_standard_A2.a2_dk, !97, !"a2_dk", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 442, i32 28}
!98 = !{ptr @set_audio_standard_A2.a1_i, !99, !"a1_i", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 453, i32 28}
!100 = !{ptr @set_audio_standard_A2.am_l, !101, !"am_l", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 522, i32 28}
!102 = !{ptr @set_audio_standard_A2.a2_deemph50, !103, !"a2_deemph50", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 591, i32 28}
!104 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 603, i32 3}
!106 = !{ptr @.str.26, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @set_audio_standard_A2._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @set_audio_standard_A2._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.28, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 609, i32 3}
!111 = !{ptr @set_audio_standard_A2._entry.27, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @set_audio_standard_A2._entry_ptr.29, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.31, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 615, i32 3}
!115 = !{ptr @set_audio_standard_A2._entry.30, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @set_audio_standard_A2._entry_ptr.32, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.34, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 620, i32 3}
!119 = !{ptr @set_audio_standard_A2._entry.33, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @set_audio_standard_A2._entry_ptr.35, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 630, i32 3}
!123 = !{ptr @set_audio_standard_A2._entry.36, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @set_audio_standard_A2._entry_ptr.38, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @set_audio_standard_NICAM.nicam_l, !126, !"nicam_l", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 274, i32 28}
!127 = !{ptr @set_audio_standard_NICAM.nicam_bgdki_common, !128, !"nicam_bgdki_common", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 306, i32 28}
!129 = !{ptr @set_audio_standard_NICAM.nicam_i, !130, !"nicam_i", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 329, i32 28}
!131 = !{ptr @set_audio_standard_NICAM.nicam_default, !132, !"nicam_default", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 336, i32 28}
!133 = !{ptr @.str.39, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 346, i32 3}
!135 = !{ptr @.str.40, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @set_audio_standard_NICAM._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @set_audio_standard_NICAM._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.42, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 350, i32 3}
!140 = !{ptr @set_audio_standard_NICAM._entry.41, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @set_audio_standard_NICAM._entry_ptr.43, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 363, i32 3}
!144 = !{ptr @set_audio_standard_NICAM._entry.44, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @set_audio_standard_NICAM._entry_ptr.46, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 728, i32 2}
!148 = !{ptr @.str.48, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @cx88_detect_nicam._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @cx88_detect_nicam._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.50, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 735, i32 4}
!153 = !{ptr @cx88_detect_nicam._entry.49, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @cx88_detect_nicam._entry_ptr.51, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.53, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 743, i32 2}
!157 = !{ptr @cx88_detect_nicam._entry.52, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @cx88_detect_nicam._entry_ptr.54, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @set_audio_standard_EIAJ.eiaj, !160, !"eiaj", i1 false, i1 false}
!160 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 640, i32 28}
!161 = !{ptr @.str.55, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 645, i32 2}
!163 = !{ptr @.str.56, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @set_audio_standard_EIAJ._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @set_audio_standard_EIAJ._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @set_audio_standard_FM.fm_deemph_50, !167, !"fm_deemph_50", i1 false, i1 false}
!167 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 655, i32 28}
!168 = !{ptr @set_audio_standard_FM.fm_deemph_75, !169, !"fm_deemph_75", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 671, i32 28}
!170 = !{ptr @set_audio_standard_FM.fm_no_deemph, !171, !"fm_no_deemph", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 696, i32 28}
!172 = !{ptr @.str.57, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 701, i32 2}
!174 = !{ptr @set_audio_standard_FM._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @set_audio_standard_FM._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.58, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 62, i32 25}
!178 = !{ptr @.str.59, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 63, i32 27}
!180 = !{ptr @.str.60, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 64, i32 24}
!182 = !{ptr @.str.61, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 65, i32 26}
!184 = !{ptr @.str.62, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 66, i32 23}
!186 = !{ptr @.str.63, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 67, i32 24}
!188 = !{ptr @.str.64, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 68, i32 24}
!190 = !{ptr @.str.65, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 69, i32 25}
!192 = !{ptr @.str.66, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 70, i32 23}
!194 = !{ptr @.str.67, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 71, i32 24}
!196 = !{ptr @.str.68, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 72, i32 26}
!198 = !{ptr @.str.69, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 73, i32 26}
!200 = !{ptr @.str.70, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 74, i32 27}
!202 = !{ptr @.str.71, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 75, i32 25}
!204 = !{ptr @.str.72, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 76, i32 26}
!206 = !{ptr @.str.73, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 82, i32 28}
!208 = !{ptr @.str.74, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 83, i32 30}
!210 = !{ptr @.str.75, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 84, i32 29}
!212 = !{ptr @.str.76, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 77, i32 27}
!214 = !{ptr @.str.77, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 78, i32 27}
!216 = !{ptr @.str.78, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 79, i32 28}
!218 = !{ptr @.str.79, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 80, i32 26}
!220 = !{ptr @.str.80, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 81, i32 27}
!222 = !{ptr @aud_ctl_names, !223, !"aud_ctl_names", i1 false, i1 false}
!223 = !{!"../drivers/media/pci/cx88/cx88-tvaudio.c", i32 61, i32 27}
!224 = !{ptr @.str.82, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!226 = !{!"sp"}
!227 = !{i32 1, !"wchar_size", i32 2}
!228 = !{i32 1, !"min_enum_size", i32 4}
!229 = !{i32 8, !"branch-target-enforcement", i32 0}
!230 = !{i32 8, !"sign-return-address", i32 0}
!231 = !{i32 8, !"sign-return-address-all", i32 0}
!232 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!233 = !{i32 7, !"uwtable", i32 1}
!234 = !{i32 7, !"frame-pointer", i32 2}
!235 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!236 = !{i64 5029164}
!237 = !{i64 2158679277}
!238 = !{i64 2158641930}
!239 = !{i64 5028746}
!240 = !{i64 2158642450}
!241 = !{i64 2158642962}
!242 = !{i64 2158643480}
!243 = !{i64 2158683283}
!244 = !{i64 2158683849}
!245 = !{i64 2158644006}
!246 = !{i64 2158644526}
!247 = !{i64 2158645019}
!248 = !{i64 2158646608}
!249 = !{i64 2158647727}
!250 = !{i64 2158648104}
!251 = !{i64 2158648597}
!252 = !{i64 2158649105}
!253 = !{i64 2158649614}
!254 = !{i64 2158650214}
!255 = !{i64 2158689242}
!256 = !{i64 2158691950}
!257 = !{i64 2158696696}
!258 = !{i64 2158697298}
!259 = !{i64 2158698549}
!260 = !{i64 2158699590}
!261 = !{!"branch_weights", i32 2000, i32 1}
!262 = !{!"branch_weights", i32 1, i32 2000}
!263 = !{i64 2158641030}
!264 = !{i64 5028549}
!265 = !{i64 2158641402}
