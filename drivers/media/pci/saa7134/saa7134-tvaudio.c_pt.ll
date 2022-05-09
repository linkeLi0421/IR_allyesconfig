; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7134/saa7134-tvaudio.c_pt.bc'
source_filename = "../drivers/media/pci/saa7134/saa7134-tvaudio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+saa_dsp_writel\22, \22a\22\09"
module asm "\09.weak\09__crc_saa_dsp_writel\09\09\09\09"
module asm "\09.long\09__crc_saa_dsp_writel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa_dsp_writel:\09\09\09\09\09"
module asm "\09.asciz \09\22saa_dsp_writel\22\09\09\09\09\09"
module asm "__kstrtabns_saa_dsp_writel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+saa7134_tvaudio_setmute\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7134_tvaudio_setmute\09\09\09\09"
module asm "\09.long\09__crc_saa7134_tvaudio_setmute\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7134_tvaudio_setmute:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7134_tvaudio_setmute\22\09\09\09\09\09"
module asm "__kstrtabns_saa7134_tvaudio_setmute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.saa7134_board = type { ptr, i32, i32, [8 x %struct.saa7134_input], %struct.saa7134_input, %struct.saa7134_input, i32, i32, i8, i8, i8, i8, i32, %struct.tda829x_config, i32, i32, i32, i32, i8 }
%struct.saa7134_input = type { i32, i32, i32, i32 }
%struct.tda829x_config = type { i32, i8, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mainscan = type { ptr, i64, i32 }
%struct.saa7134_tvaudio = type { ptr, i64, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.saa7134_dev = type { %struct.list_head, %struct.mutex, %struct.spinlock, %struct.v4l2_device, %struct.work_struct, i32, i32, ptr, ptr, ptr, %struct.saa7134_dmasound, i32, ptr, [32 x i8], i32, ptr, i8, i8, ptr, ptr, i32, i32, i32, i8, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, [256 x i8], i32, %struct.v4l2_framebuffer, ptr, i32, i32, %struct.v4l2_window, [8 x %struct.v4l2_clip], i32, ptr, %struct.saa7134_dmaqueue, %struct.vb2_queue, %struct.saa7134_dmaqueue, %struct.vb2_queue, i32, ptr, i32, i32, i32, i32, %struct.pm_qos_request, %struct.saa7134_ts, %struct.saa7134_dmaqueue, i32, i32, ptr, ptr, ptr, %struct.vb2_queue, %struct.work_struct, i32, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, %struct.saa7134_thread, ptr, ptr, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, %struct.IR_i2c_init_data, ptr, [9 x %struct.media_entity], [9 x %struct.media_pad], %struct.media_entity, [2 x %struct.media_pad], %struct.media_pad, %struct.media_pad, ptr, %struct.vb2_dvb_frontends, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.saa7134_dmasound = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.saa7134_pgtable, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.saa7134_pgtable = type { i32, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.143 }
%struct.anon.143 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.saa7134_ts = type { i32, i32 }
%struct.saa7134_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list, i32, i32, %struct.saa7134_pgtable }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.saa7134_thread = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.128 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.162, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.162 = type { ptr }
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
%struct.saa7134_tvnorm = type { ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__param_str_audio_debug = internal constant [20 x i8] c"saa7134.audio_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@audio_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_audio_debug = internal constant %struct.kernel_param { ptr @__param_str_audio_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @audio_debug } }, section "__param", align 4
@__UNIQUE_ID_audio_debugtype387 = internal constant [33 x i8] c"saa7134.parmtype=audio_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_audio_debug388 = internal constant [58 x i8] c"saa7134.parm=audio_debug:enable debug messages [tv audio]\00", section ".modinfo", align 1
@__param_str_audio_ddep = internal constant [19 x i8] c"saa7134.audio_ddep\00", align 1
@audio_ddep = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_audio_ddep = internal constant %struct.kernel_param { ptr @__param_str_audio_ddep, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @audio_ddep } }, section "__param", align 4
@__UNIQUE_ID_audio_ddeptype389 = internal constant [32 x i8] c"saa7134.parmtype=audio_ddep:int\00", section ".modinfo", align 1
@__UNIQUE_ID_audio_ddep390 = internal constant [45 x i8] c"saa7134.parm=audio_ddep:audio ddep overwrite\00", section ".modinfo", align 1
@__param_str_audio_clock_override = internal constant [29 x i8] c"saa7134.audio_clock_override\00", align 1
@audio_clock_override = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_audio_clock_override = internal constant %struct.kernel_param { ptr @__param_str_audio_clock_override, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @audio_clock_override } }, section "__param", align 4
@__UNIQUE_ID_audio_clock_overridetype391 = internal constant [42 x i8] c"saa7134.parmtype=audio_clock_override:int\00", section ".modinfo", align 1
@__param_str_audio_clock_tweak = internal constant [26 x i8] c"saa7134.audio_clock_tweak\00", align 1
@audio_clock_tweak = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_audio_clock_tweak = internal constant %struct.kernel_param { ptr @__param_str_audio_clock_tweak, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @audio_clock_tweak } }, section "__param", align 4
@__UNIQUE_ID_audio_clock_tweaktype392 = internal constant [39 x i8] c"saa7134.parmtype=audio_clock_tweak:int\00", section ".modinfo", align 1
@__UNIQUE_ID_audio_clock_tweak393 = internal constant [133 x i8] c"saa7134.parm=audio_clock_tweak:Audio clock tick fine tuning for cards with audio crystal that's slightly off (range [-1024 .. 1024])\00", section ".modinfo", align 1
@saa_dsp_writel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017saa7134: audio: dsp write reg 0x%x = 0x%06x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"saa_dsp_writel\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/pci/saa7134/saa7134-tvaudio.c\00", [52 x i8] zeroinitializer }, align 32
@saa_dsp_writel._entry_ptr = internal global ptr @saa_dsp_writel._entry, section ".printk_index", align 4
@saa7134_boards = external dso_local global [0 x %struct.saa7134_board], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@saa7134_tvaudio_init2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014saa7134: %s: kernel_thread() failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7134_tvaudio_init2\00", [42 x i8] zeroinitializer }, align 32
@saa7134_tvaudio_init2._entry_ptr = internal global ptr @saa7134_tvaudio_init2._entry, section ".printk_index", align 4
@saa7134_tvaudio_do_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017saa7134: audio: sound IF not in use, skipping scan\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa7134_tvaudio_do_scan\00", [40 x i8] zeroinitializer }, align 32
@saa7134_tvaudio_do_scan._entry_ptr = internal global ptr @saa7134_tvaudio_do_scan._entry, section ".printk_index", align 4
@__kstrtab_saa_dsp_writel = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa_dsp_writel = external dso_local constant [0 x i8], align 1
@__ksymtab_saa_dsp_writel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa_dsp_writel to i32), ptr @__kstrtab_saa_dsp_writel, ptr @__kstrtabns_saa_dsp_writel }, section "___ksymtab+saa_dsp_writel", align 4
@__kstrtab_saa7134_tvaudio_setmute = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7134_tvaudio_setmute = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7134_tvaudio_setmute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7134_tvaudio_setmute to i32), ptr @__kstrtab_saa7134_tvaudio_setmute, ptr @__kstrtabns_saa7134_tvaudio_setmute }, section "___ksymtab+saa7134_tvaudio_setmute", align 4
@saa_dsp_wait_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014saa7134: %s: dsp access error\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa_dsp_wait_bit\00", [47 x i8] zeroinitializer }, align 32
@saa_dsp_wait_bit._entry_ptr = internal global ptr @saa_dsp_wait_bit._entry, section ".printk_index", align 4
@saa_dsp_wait_bit._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013saa7134: dsp access wait timeout [bit=%s]\0A\00", [51 x i8] zeroinitializer }, align 32
@saa_dsp_wait_bit._entry_ptr.12 = internal global ptr @saa_dsp_wait_bit._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WRR\00", [28 x i8] zeroinitializer }, align 32
@saa_dsp_reset_error_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017saa7134: audio: %s: resetting error bit\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa_dsp_reset_error_bit\00", [40 x i8] zeroinitializer }, align 32
@saa_dsp_reset_error_bit._entry_ptr = internal global ptr @saa_dsp_reset_error_bit._entry, section ".printk_index", align 4
@mute_input_7134._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017saa7134: audio: mute/input: nothing to do [mute=%d,input=%s]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mute_input_7134\00", [16 x i8] zeroinitializer }, align 32
@mute_input_7134._entry_ptr = internal global ptr @mute_input_7134._entry, section ".printk_index", align 4
@saa7134_input_name = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@mute_input_7134._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017saa7134: audio: ctl_mute=%d automute=%d input=%s  =>  mute=%d input=%s\0A\00", [54 x i8] zeroinitializer }, align 32
@mute_input_7134._entry_ptr.23 = internal global ptr @mute_input_7134._entry.21, section ".printk_index", align 4
@tvaudio_getstereo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017saa7134: audio: getstereo: fm/stereo: idp=0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tvaudio_getstereo\00", [46 x i8] zeroinitializer }, align 32
@tvaudio_getstereo._entry_ptr = internal global ptr @tvaudio_getstereo._entry, section ".printk_index", align 4
@tvaudio_getstereo._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017saa7134: audio: getstereo: nicam=0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@tvaudio_getstereo._entry_ptr.28 = internal global ptr @tvaudio_getstereo._entry.26, section ".printk_index", align 4
@tvaudio_getstereo._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017saa7134: audio: getstereo: nicam_status=0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@tvaudio_getstereo._entry_ptr.31 = internal global ptr @tvaudio_getstereo._entry.29, section ".printk_index", align 4
@tvaudio_getstereo._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017saa7134: audio: found audio subchannels:%s%s%s%s\0A\00", [44 x i8] zeroinitializer }, align 32
@tvaudio_getstereo._entry_ptr.34 = internal global ptr @tvaudio_getstereo._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" mono\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" stereo\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" lang1\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" lang2\00", [25 x i8] zeroinitializer }, align 32
@tvaudio_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017saa7134: audio: tvaudio thread scan start [%d]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tvaudio_thread\00", [17 x i8] zeroinitializer }, align 32
@tvaudio_thread._entry_ptr = internal global ptr @tvaudio_thread._entry, section ".printk_index", align 4
@mainscan = internal constant { [4 x %struct.mainscan], [32 x i8] } { [4 x %struct.mainscan] [%struct.mainscan { ptr @.str.57, i64 46848, i32 4500 }, %struct.mainscan { ptr @.str.58, i64 851983, i32 5500 }, %struct.mainscan { ptr @.str.59, i64 16, i32 6000 }, %struct.mainscan { ptr @.str.60, i64 15859936, i32 6500 }], [32 x i8] zeroinitializer }, align 32
@tvaudio_thread._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017saa7134: audio: only one main carrier candidate - skipping scan\0A\00", [61 x i8] zeroinitializer }, align 32
@tvaudio_thread._entry_ptr.44 = internal global ptr @tvaudio_thread._entry.42, section ".printk_index", align 4
@tvaudio = internal global { [11 x %struct.saa7134_tvaudio], [64 x i8] } { [11 x %struct.saa7134_tvaudio] [%struct.saa7134_tvaudio { ptr @.str.63, i64 7, i32 2, i32 5500, i32 5742 }, %struct.saa7134_tvaudio { ptr @.str.64, i64 224, i32 2, i32 6500, i32 6258 }, %struct.saa7134_tvaudio { ptr @.str.65, i64 224, i32 2, i32 6500, i32 6742 }, %struct.saa7134_tvaudio { ptr @.str.66, i64 224, i32 2, i32 6500, i32 5742 }, %struct.saa7134_tvaudio { ptr @.str.67, i64 7, i32 6, i32 5500, i32 5850 }, %struct.saa7134_tvaudio { ptr @.str.68, i64 16, i32 6, i32 6000, i32 6552 }, %struct.saa7134_tvaudio { ptr @.str.69, i64 224, i32 6, i32 6500, i32 5850 }, %struct.saa7134_tvaudio { ptr @.str.70, i64 4194304, i32 5, i32 6500, i32 5850 }, %struct.saa7134_tvaudio { ptr @.str.71, i64 3276800, i32 6, i32 6500, i32 5850 }, %struct.saa7134_tvaudio { ptr @.str.72, i64 45056, i32 4, i32 4500, i32 4724 }, %struct.saa7134_tvaudio { ptr @.str.73, i64 45056, i32 1, i32 4500, i32 -1 }], [64 x i8] zeroinitializer }, align 32
@tvaudio_thread._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017saa7134: audio: found %s main sound carrier @ %d.%03d MHz [%d/%d]\0A\00", [59 x i8] zeroinitializer }, align 32
@tvaudio_thread._entry_ptr.47 = internal global ptr @tvaudio_thread._entry.45, section ".printk_index", align 4
@tvaudio_thread._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\017saa7134: audio: audio carrier scan failed, using %d.%03d MHz [last detected]\0A\00", [48 x i8] zeroinitializer }, align 32
@tvaudio_thread._entry_ptr.50 = internal global ptr @tvaudio_thread._entry.48, section ".printk_index", align 4
@tvaudio_thread._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017saa7134: audio: audio carrier scan failed, using %d.%03d MHz [default]\0A\00", [54 x i8] zeroinitializer }, align 32
@tvaudio_thread._entry_ptr.53 = internal global ptr @tvaudio_thread._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trying\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"using\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MN\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BGH\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DKL\00", [28 x i8] zeroinitializer }, align 32
@tvaudio_setmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017saa7134: audio: tvaudio_setmode: %s %s [%d.%03d/%d.%03d MHz] acpf=%d%+d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tvaudio_setmode\00", [16 x i8] zeroinitializer }, align 32
@tvaudio_setmode._entry_ptr = internal global ptr @tvaudio_setmode._entry, section ".printk_index", align 4
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PAL-B/G FM-stereo\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PAL-D/K1 FM-stereo\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PAL-D/K2 FM-stereo\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PAL-D/K3 FM-stereo\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PAL-B/G NICAM\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PAL-I NICAM\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PAL-D/K NICAM\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SECAM-L NICAM\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SECAM-D/K NICAM\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NTSC-A2 FM-stereo\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTSC-M\00", [25 x i8] zeroinitializer }, align 32
@tvaudio_checkcarrier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017saa7134: audio: skipping %d.%03d MHz [%4s]\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tvaudio_checkcarrier\00", [43 x i8] zeroinitializer }, align 32
@tvaudio_checkcarrier._entry_ptr = internal global ptr @tvaudio_checkcarrier._entry, section ".printk_index", align 4
@tvaudio_checkcarrier._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017saa7134: audio: debug %d:\00", [36 x i8] zeroinitializer }, align 32
@tvaudio_checkcarrier._entry_ptr.78 = internal global ptr @tvaudio_checkcarrier._entry.76, section ".printk_index", align 4
@tvaudio_checkcarrier._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c  #  %6d  # \00", [17 x i8] zeroinitializer }, align 32
@tvaudio_checkcarrier._entry_ptr.81 = internal global ptr @tvaudio_checkcarrier._entry.79, section ".printk_index", align 4
@tvaudio_checkcarrier._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c %6d\00", [25 x i8] zeroinitializer }, align 32
@tvaudio_checkcarrier._entry_ptr.84 = internal global ptr @tvaudio_checkcarrier._entry.82, section ".printk_index", align 4
@tvaudio_checkcarrier._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@tvaudio_checkcarrier._entry_ptr.87 = internal global ptr @tvaudio_checkcarrier._entry.85, section ".printk_index", align 4
@tvaudio_checkcarrier._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.75, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017saa7134: audio: scanning %d.%03d MHz [%4s] =>  dc is %5d [%d/%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@tvaudio_checkcarrier._entry_ptr.90 = internal global ptr @tvaudio_checkcarrier._entry.88, section ".printk_index", align 4
@tvaudio_setstereo.name = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mono\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stereo\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lang2\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lang1\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lang1+lang2\00", [20 x i8] zeroinitializer }, align 32
@tvaudio_setstereo.fm = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 128, i32 1, i32 0, i32 128], [44 x i8] zeroinitializer }, align 32
@tvaudio_setstereo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017saa7134: audio: setstereo [fm] => %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tvaudio_setstereo\00", [46 x i8] zeroinitializer }, align 32
@tvaudio_setstereo._entry_ptr = internal global ptr @tvaudio_setstereo._entry, section ".printk_index", align 4
@tvaudio_thread_ddep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.98, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tvaudio_thread_ddep\00", [44 x i8] zeroinitializer }, align 32
@tvaudio_thread_ddep._entry_ptr = internal global ptr @tvaudio_thread_ddep._entry, section ".printk_index", align 4
@tvaudio_thread_ddep._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017saa7134: audio: ddep override: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@tvaudio_thread_ddep._entry_ptr.101 = internal global ptr @tvaudio_thread_ddep._entry.99, section ".printk_index", align 4
@stdres = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.154, ptr @.str.154, ptr @.str.154, ptr @.str.154, ptr @.str.154, ptr @.str.154, ptr @.str.154, ptr @.str.154, ptr @.str.154, ptr @.str.154, ptr @.str.154, ptr @.str.155], [32 x i8] zeroinitializer }, align 32
@tvaudio_thread_ddep._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.98, ptr @.str.2, i32 783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017saa7134: audio: FM Radio\0A\00", [36 x i8] zeroinitializer }, align 32
@tvaudio_thread_ddep._entry_ptr.104 = internal global ptr @tvaudio_thread_ddep._entry.102, section ".printk_index", align 4
@tvaudio_thread_ddep._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.98, ptr @.str.2, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017saa7134: audio: scanning:%s%s%s%s%s\0A\00", [57 x i8] zeroinitializer }, align 32
@tvaudio_thread_ddep._entry_ptr.107 = internal global ptr @tvaudio_thread_ddep._entry.105, section ".printk_index", align 4
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" B/G\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" D/K\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" L/L'\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" I\00", [29 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" M\00", [29 x i8] zeroinitializer }, align 32
@tvaudio_thread_ddep._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.98, ptr @.str.2, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017saa7134: audio: tvaudio thread status: 0x%x [%s%s%s]\0A\00", [40 x i8] zeroinitializer }, align 32
@tvaudio_thread_ddep._entry_ptr.115 = internal global ptr @tvaudio_thread_ddep._entry.113, section ".printk_index", align 4
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",stereo\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",dual\00", [26 x i8] zeroinitializer }, align 32
@tvaudio_thread_ddep._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.98, ptr @.str.2, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017saa7134: audio: detailed status: %s#%s#%s#%s#%s#%s#%s#%s#%s#%s#%s#%s#%s#%s\0A\00", [50 x i8] zeroinitializer }, align 32
@tvaudio_thread_ddep._entry_ptr.120 = internal global ptr @tvaudio_thread_ddep._entry.118, section ".printk_index", align 4
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" A2/EIAJ pilot tone \00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" A2/EIAJ dual \00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" A2/EIAJ stereo \00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" A2/EIAJ noise mute \00", [43 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" BTSC/FM radio pilot \00", [42 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" SAP carrier \00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" BTSC stereo noise mute \00", [39 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" SAP noise mute \00", [47 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" VDSP \00", [25 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" NICST \00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" NICDU \00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" NICAM muted \00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" NICAM reserve sound \00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" init done \00", [20 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no standard detected\00", [43 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"B/G (in progress)\00", [46 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"D/K (in progress)\00", [46 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"M (in progress)\00", [16 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"B/G A2\00", [25 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"B/G NICAM\00", [22 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"D/K A2 (1)\00", [21 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"D/K A2 (2)\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"D/K A2 (3)\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"D/K NICAM\00", [22 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"L NICAM\00", [24 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I NICAM\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"M Korea\00", [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"M BTSC \00", [24 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M EIAJ\00", [25 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FM radio / IF 10.7 / 50 deemp\00", [34 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FM radio / IF 10.7 / 75 deemp\00", [34 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FM radio / IF sel / 50 deemp\00", [35 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FM radio / IF sel / 75 deemp\00", [35 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"??? [in progress]\00", [46 x i8] zeroinitializer }, align 32
@switch.table.mute_input_7133 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 3, i32 3, i32 3], [16 x i8] zeroinitializer }, align 32
@switch.table.mute_input_7133.156 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 33554432, i32 0, i32 150994944, i32 150994944], [16 x i8] zeroinitializer }, align 32
@switch.table.saa7134_tvaudio_init2 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @tvaudio_thread_ddep, ptr @tvaudio_thread, ptr @tvaudio_thread_ddep], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 28979, i64 28980, i64 28981]
@__sancov_gen_cov_switch_values.157 = internal global [6 x i64] [i64 4, i64 16, i64 28976, i64 28979, i64 28980, i64 28981]
@__sancov_gen_cov_switch_values.158 = internal global [6 x i64] [i64 4, i64 16, i64 28976, i64 28979, i64 28980, i64 28981]
@__sancov_gen_cov_switch_values.159 = internal global [5 x i64] [i64 3, i64 16, i64 28979, i64 28980, i64 28981]
@__sancov_gen_cov_switch_values.160 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.161 = internal global [5 x i64] [i64 3, i64 16, i64 28979, i64 28980, i64 28981]
@__sancov_gen_cov_switch_values.162 = internal global [6 x i64] [i64 4, i64 16, i64 28976, i64 28979, i64 28980, i64 28981]
@__sancov_gen_cov_switch_values.163 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.164 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.165 = internal global [6 x i64] [i64 4, i64 16, i64 28976, i64 28979, i64 28980, i64 28981]
@__sancov_gen_cov_switch_values.166 = internal global [6 x i64] [i64 4, i64 16, i64 28976, i64 28979, i64 28980, i64 28981]
@__sancov_gen_cov_switch_values.167 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6]
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"audio_debug\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 24, i32 21 }
@___asan_gen_.171 = private unnamed_addr constant [11 x i8] c"audio_ddep\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 28, i32 21 }
@___asan_gen_.174 = private unnamed_addr constant [21 x i8] c"audio_clock_override\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 32, i32 12 }
@___asan_gen_.177 = private unnamed_addr constant [18 x i8] c"audio_clock_tweak\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 35, i32 12 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 686, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1019, i32 24 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1021, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1051, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 661, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 667, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 649, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 193, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 198, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 377, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 391, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 394, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 413, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 478, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [9 x i8] c"mainscan\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 56, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 509, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant [8 x i8] c"tvaudio\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 76, i32 31 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 534, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 543, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 550, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 567, i32 36 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 578, i32 39 }
@___asan_gen_.343 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 57, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 58, i32 11 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 62, i32 11 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 66, i32 11 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 70, i32 11 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 254, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 78, i32 20 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 84, i32 20 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 90, i32 20 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 96, i32 20 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 102, i32 20 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 108, i32 20 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 114, i32 20 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 120, i32 20 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 126, i32 20 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 132, i32 20 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 138, i32 20 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 322, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 329, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 337, i32 5 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 339, i32 5 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 341, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 359, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 424, i32 15 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 425, i32 32 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 426, i32 32 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 428, i32 32 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 427, i32 32 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 429, i32 38 }
@___asan_gen_.456 = private unnamed_addr constant [3 x i8] c"fm\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 431, i32 13 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 448, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 774, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 780, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant [7 x i8] c"stdres\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 613, i32 14 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 783, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 806, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 826, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 830, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 614, i32 11 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 615, i32 11 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 616, i32 11 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 617, i32 11 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 619, i32 11 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 620, i32 11 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 621, i32 11 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 622, i32 11 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 623, i32 11 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 624, i32 11 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 625, i32 11 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 626, i32 11 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 628, i32 11 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 629, i32 11 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 630, i32 11 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 632, i32 11 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 633, i32 11 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 634, i32 11 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 635, i32 11 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 637, i32 21 }
@___asan_gen_.630 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.631 = private constant [47 x i8] c"../drivers/media/pci/saa7134/saa7134-tvaudio.c\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 638, i32 11 }
@___asan_gen_.633 = private unnamed_addr constant [29 x i8] c"switch.table.mute_input_7133\00", align 1
@___asan_gen_.634 = private unnamed_addr constant [33 x i8] c"switch.table.mute_input_7133.156\00", align 1
@___asan_gen_.635 = private unnamed_addr constant [35 x i8] c"switch.table.saa7134_tvaudio_init2\00", align 1
@llvm.compiler.used = appending global [202 x ptr] [ptr @__UNIQUE_ID_audio_clock_overridetype391, ptr @__UNIQUE_ID_audio_clock_tweak393, ptr @__UNIQUE_ID_audio_clock_tweaktype392, ptr @__UNIQUE_ID_audio_ddep390, ptr @__UNIQUE_ID_audio_ddeptype389, ptr @__UNIQUE_ID_audio_debug388, ptr @__UNIQUE_ID_audio_debugtype387, ptr @__ksymtab_saa7134_tvaudio_setmute, ptr @__ksymtab_saa_dsp_writel, ptr @__param_audio_clock_override, ptr @__param_audio_clock_tweak, ptr @__param_audio_ddep, ptr @__param_audio_debug, ptr @mute_input_7134._entry, ptr @mute_input_7134._entry.21, ptr @mute_input_7134._entry_ptr, ptr @mute_input_7134._entry_ptr.23, ptr @saa7134_tvaudio_do_scan._entry, ptr @saa7134_tvaudio_do_scan._entry_ptr, ptr @saa7134_tvaudio_init2._entry, ptr @saa7134_tvaudio_init2._entry_ptr, ptr @saa_dsp_reset_error_bit._entry, ptr @saa_dsp_reset_error_bit._entry_ptr, ptr @saa_dsp_wait_bit._entry, ptr @saa_dsp_wait_bit._entry.10, ptr @saa_dsp_wait_bit._entry_ptr, ptr @saa_dsp_wait_bit._entry_ptr.12, ptr @saa_dsp_writel._entry, ptr @saa_dsp_writel._entry_ptr, ptr @tvaudio_checkcarrier._entry, ptr @tvaudio_checkcarrier._entry.76, ptr @tvaudio_checkcarrier._entry.79, ptr @tvaudio_checkcarrier._entry.82, ptr @tvaudio_checkcarrier._entry.85, ptr @tvaudio_checkcarrier._entry.88, ptr @tvaudio_checkcarrier._entry_ptr, ptr @tvaudio_checkcarrier._entry_ptr.78, ptr @tvaudio_checkcarrier._entry_ptr.81, ptr @tvaudio_checkcarrier._entry_ptr.84, ptr @tvaudio_checkcarrier._entry_ptr.87, ptr @tvaudio_checkcarrier._entry_ptr.90, ptr @tvaudio_getstereo._entry, ptr @tvaudio_getstereo._entry.26, ptr @tvaudio_getstereo._entry.29, ptr @tvaudio_getstereo._entry.32, ptr @tvaudio_getstereo._entry_ptr, ptr @tvaudio_getstereo._entry_ptr.28, ptr @tvaudio_getstereo._entry_ptr.31, ptr @tvaudio_getstereo._entry_ptr.34, ptr @tvaudio_setmode._entry, ptr @tvaudio_setmode._entry_ptr, ptr @tvaudio_setstereo._entry, ptr @tvaudio_setstereo._entry_ptr, ptr @tvaudio_thread._entry, ptr @tvaudio_thread._entry.42, ptr @tvaudio_thread._entry.45, ptr @tvaudio_thread._entry.48, ptr @tvaudio_thread._entry.51, ptr @tvaudio_thread._entry_ptr, ptr @tvaudio_thread._entry_ptr.44, ptr @tvaudio_thread._entry_ptr.47, ptr @tvaudio_thread._entry_ptr.50, ptr @tvaudio_thread._entry_ptr.53, ptr @tvaudio_thread_ddep._entry, ptr @tvaudio_thread_ddep._entry.102, ptr @tvaudio_thread_ddep._entry.105, ptr @tvaudio_thread_ddep._entry.113, ptr @tvaudio_thread_ddep._entry.118, ptr @tvaudio_thread_ddep._entry.99, ptr @tvaudio_thread_ddep._entry_ptr, ptr @tvaudio_thread_ddep._entry_ptr.101, ptr @tvaudio_thread_ddep._entry_ptr.104, ptr @tvaudio_thread_ddep._entry_ptr.107, ptr @tvaudio_thread_ddep._entry_ptr.115, ptr @tvaudio_thread_ddep._entry_ptr.120, ptr @audio_debug, ptr @audio_ddep, ptr @audio_clock_override, ptr @audio_clock_tweak, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @mainscan, ptr @.str.43, ptr @tvaudio, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @tvaudio_setstereo.name, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @tvaudio_setstereo.fm, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @stdres, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @switch.table.mute_input_7133, ptr @switch.table.mute_input_7133.156, ptr @switch.table.saa7134_tvaudio_init2], section "llvm.metadata"
@0 = internal global [158 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_ddep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_clock_override to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_clock_tweak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa_dsp_writel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_tvaudio_init2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_tvaudio_do_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa_dsp_wait_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa_dsp_wait_bit._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa_dsp_reset_error_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mute_input_7134._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mute_input_7134._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_getstereo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_getstereo._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_getstereo._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_getstereo._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mainscan to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_thread._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_thread._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_thread._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_thread._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_setmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_checkcarrier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_checkcarrier._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_checkcarrier._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_checkcarrier._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_checkcarrier._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_checkcarrier._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_setstereo.name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_setstereo.fm to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_setstereo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_thread_ddep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_thread_ddep._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdres to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_thread_ddep._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_thread_ddep._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_thread_ddep._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_thread_ddep._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mute_input_7133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mute_input_7133.156 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.saa7134_tvaudio_init2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa_dsp_writel(ptr noundef %dev, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i32 %reg, 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %shl, i32 noundef %value) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %bmmio.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 1408
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !313
  %conv.i = zext i8 %3 to i32
  %and.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.preheader.i, label %do.end.i, !prof !314

while.cond.preheader.i:                           ; preds = %do.end3
  %and71.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %cmp2.i = icmp eq i32 %and71.i, 0
  br i1 %cmp2.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.do.body8_crit_edge

while.cond.preheader.i.do.body8_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i) #12
  tail call fastcc void @saa_dsp_reset_error_bit(ptr noundef %dev) #9
  br label %cleanup

while.body.i:                                     ; preds = %if.end34.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %count.03.i = phi i32 [ %dec.i, %if.end34.i.while.body.i_crit_edge ], [ 32, %while.cond.preheader.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.03.i)
  %cmp9.i = icmp eq i32 %count.03.i, 0
  br i1 %cmp9.i, label %cond.end31.i, label %if.end34.i, !prof !315

cond.end31.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end34.i:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 3435968) #9
  %5 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bmmio.i, align 8
  %add.ptr38.i = getelementptr i8, ptr %6, i32 1408
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr38.i) #9, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !316
  %dec.i = add nsw i32 %count.03.i, -1
  %8 = and i8 %7, 1
  %cmp.i = icmp eq i8 %8, 0
  br i1 %cmp.i, label %if.end34.i.while.body.i_crit_edge, label %if.end34.i.do.body8_crit_edge

if.end34.i.do.body8_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

if.end34.i.while.body.i_crit_edge:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.body8:                                         ; preds = %if.end34.i.do.body8_crit_edge, %while.cond.preheader.i.do.body8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !317
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %value)
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %11, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #9, !srcloc !318
  %12 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i23 = getelementptr i8, ptr %13, i32 1408
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i23) #9, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !313
  %conv.i24 = zext i8 %14 to i32
  %and.i25 = and i32 %conv.i24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i26 = icmp eq i32 %and.i25, 0
  br i1 %tobool.not.i26, label %while.cond.preheader.i29, label %do.end.i32, !prof !314

while.cond.preheader.i29:                         ; preds = %do.body8
  %and71.i27 = and i32 %conv.i24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i27)
  %cmp2.i28 = icmp eq i32 %and71.i27, 0
  br i1 %cmp2.i28, label %while.cond.preheader.i29.while.body.i35_crit_edge, label %while.cond.preheader.i29.cleanup_crit_edge

while.cond.preheader.i29.cleanup_crit_edge:       ; preds = %while.cond.preheader.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader.i29.while.body.i35_crit_edge: ; preds = %while.cond.preheader.i29
  br label %while.body.i35

do.end.i32:                                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %name.i30 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call5.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i30) #12
  tail call fastcc void @saa_dsp_reset_error_bit(ptr noundef %dev) #9
  br label %cleanup

while.body.i35:                                   ; preds = %if.end34.i41.while.body.i35_crit_edge, %while.cond.preheader.i29.while.body.i35_crit_edge
  %count.03.i33 = phi i32 [ %dec.i39, %if.end34.i41.while.body.i35_crit_edge ], [ 32, %while.cond.preheader.i29.while.body.i35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.03.i33)
  %cmp9.i34 = icmp eq i32 %count.03.i33, 0
  br i1 %cmp9.i34, label %cond.end31.i37, label %if.end34.i41, !prof !315

cond.end31.i37:                                   ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #11
  %call33.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end34.i41:                                     ; preds = %while.body.i35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 3435968) #9
  %16 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bmmio.i, align 8
  %add.ptr38.i38 = getelementptr i8, ptr %17, i32 1408
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr38.i38) #9, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !316
  %dec.i39 = add nsw i32 %count.03.i33, -1
  %19 = and i8 %18, 1
  %cmp.i40 = icmp eq i8 %19, 0
  br i1 %cmp.i40, label %if.end34.i41.while.body.i35_crit_edge, label %if.end34.i41.cleanup_crit_edge

if.end34.i41.cleanup_crit_edge:                   ; preds = %if.end34.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34.i41.while.body.i35_crit_edge:            ; preds = %if.end34.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i35

cleanup:                                          ; preds = %if.end34.i41.cleanup_crit_edge, %cond.end31.i37, %do.end.i32, %while.cond.preheader.i29.cleanup_crit_edge, %cond.end31.i, %do.end.i
  %retval.0 = phi i32 [ 0, %while.cond.preheader.i29.cleanup_crit_edge ], [ -5, %do.end.i32 ], [ -5, %cond.end31.i37 ], [ -5, %do.end.i ], [ -5, %cond.end31.i ], [ 0, %if.end34.i41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7134_enable_i2s(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %board, align 4
  %mpeg = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %1, i32 15
  %2 = ptrtoint ptr %mpeg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mpeg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28976, i16 %7)
  %cmp1 = icmp eq i16 %7, 28976
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !319
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %9, i32 108
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !321
  %11 = and i32 %10, -15
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %add.ptr7 = getelementptr i32, ptr %13, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %11) #9, !srcloc !318
  %14 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci, align 4
  %device9 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %device9 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device9, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i16 %17, label %do.body.cleanup_crit_edge [
    i16 28979, label %do.body.do.body11_crit_edge
    i16 28981, label %do.body.do.body11_crit_edge55
    i16 28980, label %sw.bb20
  ]

do.body.do.body11_crit_edge55:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

do.body.do.body11_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body11:                                        ; preds = %do.body.do.body11_crit_edge, %do.body.do.body11_crit_edge55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !322
  tail call void @arm_heavy_mb() #9
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %19 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bmmio, align 8
  %add.ptr14 = getelementptr i8, ptr %20, i32 1425
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 0) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmmio, align 8
  %add.ptr19 = getelementptr i8, ptr %22, i32 448
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 17) #9, !srcloc !323
  br label %cleanup

sw.bb20:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %input = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 81
  %23 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input, align 4
  %amux = getelementptr inbounds %struct.saa7134_input, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %amux to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %amux, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp21 = icmp ne i32 %26, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !325
  tail call void @arm_heavy_mb() #9
  %bmmio26 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %27 = ptrtoint ptr %bmmio26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bmmio26, align 8
  %add.ptr27 = getelementptr i8, ptr %28, i32 361
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 -128) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  tail call void @arm_heavy_mb() #9
  %conv31 = zext i1 %cmp21 to i8
  %29 = ptrtoint ptr %bmmio26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bmmio26, align 8
  %add.ptr33 = getelementptr i8, ptr %30, i32 360
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33, i8 %conv31) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !327
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %bmmio26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bmmio26, align 8
  %add.ptr38 = getelementptr i8, ptr %32, i32 362
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 15) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %bmmio26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bmmio26, align 8
  %add.ptr43 = getelementptr i8, ptr %34, i32 448
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43, i8 1) #9, !srcloc !323
  br label %cleanup

cleanup:                                          ; preds = %sw.bb20, %do.body11, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @saa7134_tvaudio_rx2mode(i32 noundef %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %rx, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.else:                                          ; preds = %entry
  %and1 = and i32 %rx, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else4, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %and5 = lshr i32 %rx, 1
  %0 = and i32 %and5, 2
  br label %if.end9

if.end9:                                          ; preds = %if.else4, %if.else.if.end9_crit_edge, %entry.if.end9_crit_edge
  %mode.0 = phi i32 [ 1, %entry.if.end9_crit_edge ], [ 3, %if.else.if.end9_crit_edge ], [ %0, %if.else4 ]
  ret i32 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7134_tvaudio_setmute(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.157)
  switch i16 %3, label %entry.sw.epilog_crit_edge [
    i16 28976, label %entry.sw.bb_crit_edge
    i16 28980, label %entry.sw.bb_crit_edge4
    i16 28979, label %entry.sw.bb1_crit_edge
    i16 28981, label %entry.sw.bb1_crit_edge5
  ]

entry.sw.bb1_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb_crit_edge4:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge4
  tail call fastcc void @mute_input_7134(ptr noundef %dev)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge5
  tail call fastcc void @mute_input_7133(ptr noundef %dev)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mute_input_7134(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 81
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %ctl_mute = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 69
  %2 = ptrtoint ptr %ctl_mute to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctl_mute, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end.thread

lor.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %board2238 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %board2238 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %board2238, align 4
  %mute4239 = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %5, i32 5
  %6 = ptrtoint ptr %mute4239 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mute4239, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not240 = icmp eq i32 %7, 0
  br label %16

lor.rhs:                                          ; preds = %entry
  %automute = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 79
  %8 = ptrtoint ptr %automute to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %automute, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  %board2251 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %board2251 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %board2251, align 4
  br i1 %tobool1.not, label %lor.end.thread249, label %lor.end

lor.end.thread249:                                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %mute4252 = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %11, i32 5
  %12 = ptrtoint ptr %mute4252 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mute4252, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not253 = icmp eq i32 %13, 0
  br label %17

lor.end:                                          ; preds = %lor.rhs
  %radio = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %11, i32 4
  %cmp.not = icmp eq ptr %radio, %1
  %mute4 = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %11, i32 5
  %14 = ptrtoint ptr %mute4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mute4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %lor.end._crit_edge, label %lor.end._crit_edge260

lor.end._crit_edge260:                            ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %16

lor.end._crit_edge:                               ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %17

16:                                               ; preds = %lor.end._crit_edge260, %lor.end.thread
  %tobool5.not248 = phi i1 [ %tobool5.not240, %lor.end.thread ], [ %tobool5.not, %lor.end._crit_edge260 ]
  %mute4246 = phi ptr [ %mute4239, %lor.end.thread ], [ %mute4, %lor.end._crit_edge260 ]
  %board2245 = phi ptr [ %board2238, %lor.end.thread ], [ %board2251, %lor.end._crit_edge260 ]
  br label %17

17:                                               ; preds = %16, %lor.end._crit_edge, %lor.end.thread249
  %tobool5.not247 = phi i1 [ %tobool5.not248, %16 ], [ %tobool5.not, %lor.end._crit_edge ], [ %tobool5.not253, %lor.end.thread249 ]
  %board2244 = phi ptr [ %board2245, %16 ], [ %board2251, %lor.end._crit_edge ], [ %board2251, %lor.end.thread249 ]
  %lor.ext241 = phi i32 [ 1, %16 ], [ 0, %lor.end._crit_edge ], [ 0, %lor.end.thread249 ]
  %18 = phi i8 [ -1, %16 ], [ -69, %lor.end._crit_edge ], [ -69, %lor.end.thread249 ]
  %19 = phi ptr [ %mute4246, %16 ], [ %1, %lor.end._crit_edge ], [ %1, %lor.end.thread249 ]
  %in.0 = select i1 %tobool5.not247, ptr %1, ptr %19
  %hw_mute = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 83
  %20 = ptrtoint ptr %hw_mute to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_mute, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %lor.ext241)
  %cmp12 = icmp eq i32 %21, %lor.ext241
  br i1 %cmp12, label %land.lhs.true, label %.do.body26_crit_edge

.do.body26_crit_edge:                             ; preds = %17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

land.lhs.true:                                    ; preds = %17
  %hw_input = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 82
  %22 = ptrtoint ptr %hw_input to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_input, align 8
  %cmp13 = icmp eq ptr %23, %in.0
  br i1 %cmp13, label %land.lhs.true14, label %land.lhs.true.do.body26_crit_edge

land.lhs.true.do.body26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

land.lhs.true14:                                  ; preds = %land.lhs.true
  %insuspend = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 86
  %24 = ptrtoint ptr %insuspend to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %insuspend, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool15.not = icmp eq i32 %25, 0
  br i1 %tobool15.not, label %do.body, label %land.lhs.true14.do.body26_crit_edge

land.lhs.true14.do.body26_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

do.body:                                          ; preds = %land.lhs.true14
  %26 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp17.not = icmp eq i32 %26, 0
  br i1 %cmp17.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %in.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %in.0, align 4
  %arrayidx21 = getelementptr [0 x ptr], ptr @saa7134_input_name, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx21, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %lor.ext241, ptr noundef %30) #12
  br label %cleanup

do.body26:                                        ; preds = %land.lhs.true14.do.body26_crit_edge, %land.lhs.true.do.body26_crit_edge, %.do.body26_crit_edge
  %31 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp27.not = icmp eq i32 %31, 0
  br i1 %cmp27.not, label %do.body26.do.end43_crit_edge, label %do.end31

do.body26.do.end43_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

do.end31:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %automute34 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 79
  %32 = ptrtoint ptr %automute34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %automute34, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %arrayidx37 = getelementptr [0 x ptr], ptr @saa7134_input_name, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx37, align 4
  %38 = ptrtoint ptr %in.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %in.0, align 4
  %arrayidx39 = getelementptr [0 x ptr], ptr @saa7134_input_name, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx39, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %3, i32 noundef %33, ptr noundef %37, i32 noundef %lor.ext241, ptr noundef %41) #12
  br label %do.end43

do.end43:                                         ; preds = %do.end31, %do.body26.do.end43_crit_edge
  %42 = ptrtoint ptr %hw_mute to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %lor.ext241, ptr %hw_mute, align 4
  %hw_input45 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 82
  %43 = ptrtoint ptr %hw_input45 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %in.0, ptr %hw_input45, align 8
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %44 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28980, i16 %47)
  %cmp46 = icmp eq i16 %47, 28980
  br i1 %cmp46, label %do.body49, label %do.end43.if.end54_crit_edge

do.end43.if.end54_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.body49:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !329
  tail call void @arm_heavy_mb() #9
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %48 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %49, i32 364
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %18) #9, !srcloc !323
  br label %if.end54

if.end54:                                         ; preds = %do.body49, %do.end43.if.end54_crit_edge
  %amux = getelementptr inbounds %struct.saa7134_input, ptr %in.0, i32 0, i32 2
  %50 = ptrtoint ptr %amux to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %amux, align 4
  %switch.tableidx = add i32 %51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %52 = icmp ult i32 %switch.tableidx, 4
  br i1 %52, label %switch.lookup, label %if.end54.do.body58_crit_edge

if.end54.do.body58_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body58

switch.lookup:                                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 83951618, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %switch.shiftamt254 = shl i32 %switch.tableidx, 3
  %switch.downshift255 = lshr i32 134742016, %switch.shiftamt254
  %switch.masked256 = trunc i32 %switch.downshift255 to i8
  %switch.shiftamt257 = shl i32 %switch.tableidx, 3
  %switch.downshift258 = lshr i32 -2139062080, %switch.shiftamt257
  %switch.masked259 = trunc i32 %switch.downshift258 to i8
  br label %do.body58

do.body58:                                        ; preds = %switch.lookup, %if.end54.do.body58_crit_edge
  %ocs.0 = phi i8 [ 0, %if.end54.do.body58_crit_edge ], [ %switch.masked, %switch.lookup ]
  %ics.0 = phi i8 [ 0, %if.end54.do.body58_crit_edge ], [ %switch.masked256, %switch.lookup ]
  %ausel.0 = phi i8 [ 0, %if.end54.do.body58_crit_edge ], [ %switch.masked259, %switch.lookup ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !330
  tail call void @arm_heavy_mb() #9
  %bmmio61 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %53 = ptrtoint ptr %bmmio61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bmmio61, align 8
  %add.ptr62 = getelementptr i8, ptr %54, i32 347
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr62) #9, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %56 = and i8 %55, 63
  %or = or i8 %56, %ausel.0
  %57 = ptrtoint ptr %bmmio61 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bmmio61, align 8
  %add.ptr70 = getelementptr i8, ptr %58, i32 347
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr70, i8 %or) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !332
  tail call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %bmmio61 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bmmio61, align 8
  %add.ptr77 = getelementptr i8, ptr %60, i32 366
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr77) #9, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !333
  %62 = and i8 %61, -9
  %or84 = or i8 %62, %ics.0
  %63 = ptrtoint ptr %bmmio61 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bmmio61, align 8
  %add.ptr87 = getelementptr i8, ptr %64, i32 366
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87, i8 %or84) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  tail call void @arm_heavy_mb() #9
  %65 = ptrtoint ptr %bmmio61 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bmmio61, align 8
  %add.ptr94 = getelementptr i8, ptr %66, i32 366
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr94) #9, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  %68 = and i8 %67, -8
  %or101 = or i8 %68, %ocs.0
  %69 = ptrtoint ptr %bmmio61 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bmmio61, align 8
  %add.ptr104 = getelementptr i8, ptr %70, i32 366
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr104, i8 %or101) #9, !srcloc !323
  %71 = ptrtoint ptr %amux to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %amux, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp106 = icmp eq i32 %72, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %73 = ptrtoint ptr %bmmio61 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bmmio61, align 8
  %add.ptr115 = getelementptr i8, ptr %74, i32 365
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr115) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %76 = and i8 %75, -4
  br i1 %cmp106, label %do.body109, label %do.body125

do.body109:                                       ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %bmmio61 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bmmio61, align 8
  %add.ptr124 = getelementptr i8, ptr %78, i32 365
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr124, i8 %76) #9, !srcloc !323
  br label %if.end141

do.body125:                                       ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  %79 = or i8 %76, 1
  %80 = ptrtoint ptr %bmmio61 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bmmio61, align 8
  %add.ptr140 = getelementptr i8, ptr %81, i32 365
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr140, i8 %79) #9, !srcloc !323
  br label %if.end141

if.end141:                                        ; preds = %do.body125, %do.body109
  %82 = ptrtoint ptr %board2244 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %board2244, align 4
  %gpiomask = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %83, i32 2
  %84 = ptrtoint ptr %gpiomask to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %gpiomask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp144 = icmp eq i32 %85, 0
  br i1 %cmp144, label %if.end141.cleanup_crit_edge, label %if.end147

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end147:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !336
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %86 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lmmio, align 4
  %add.ptr156 = getelementptr i32, ptr %87, i32 108
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr156) #9, !srcloc !320
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %neg = xor i32 %85, -1
  %or162 = or i32 %89, %85
  %90 = tail call i32 @llvm.bswap.i32(i32 %or162)
  %91 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lmmio, align 4
  %add.ptr164 = getelementptr i32, ptr %92, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 %90) #9, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %93 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lmmio, align 4
  %add.ptr171 = getelementptr i32, ptr %94, i32 109
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr171) #9, !srcloc !320
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  %and176 = and i32 %96, %neg
  %gpio = getelementptr inbounds %struct.saa7134_input, ptr %in.0, i32 0, i32 3
  %97 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %gpio, align 4
  %and177 = and i32 %98, %85
  %or178 = or i32 %and177, %and176
  %99 = tail call i32 @llvm.bswap.i32(i32 %or178)
  %100 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lmmio, align 4
  %add.ptr180 = getelementptr i32, ptr %101, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180, i32 %99) #9, !srcloc !318
  %102 = ptrtoint ptr %in.0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %in.0, align 4
  %arrayidx182 = getelementptr [0 x ptr], ptr @saa7134_input_name, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx182, align 4
  tail call void @saa7134_track_gpio(ptr noundef %dev, ptr noundef %105) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end147, %if.end141.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mute_input_7133(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 81
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %amux = getelementptr inbounds %struct.saa7134_input, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %amux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %amux, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 4
  br i1 %4, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mute_input_7133, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep1 = getelementptr inbounds [4 x i32], ptr @switch.table.mute_input_7133.156, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load2 = load i32, ptr %switch.gep1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %xbarin.0 = phi i32 [ 3, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %reg.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load2, %switch.lookup ]
  %call = tail call i32 @saa_dsp_writel(ptr noundef %dev, i32 noundef 281, i32 noundef %xbarin.0)
  %ctl_mute = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 69
  %7 = ptrtoint ptr %ctl_mute to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctl_mute, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %. = select i1 %tobool.not, i32 12303120, i32 12303291
  %reg.0. = select i1 %tobool.not, i32 %reg.0, i32 117440512
  %call3 = tail call i32 @saa_dsp_writel(ptr noundef %dev, i32 noundef 283, i32 noundef %.)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !340
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %10, i32 357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %reg.0.) #9, !srcloc !318
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %11 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %board, align 4
  %gpiomask = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %12, i32 2
  %13 = ptrtoint ptr %gpiomask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpiomask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %sw.epilog.if.end48_crit_edge, label %if.then4

sw.epilog.if.end48_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then4:                                         ; preds = %sw.epilog
  %mute = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %12, i32 5
  %15 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mute, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %if.then4.if.else17_crit_edge, label %land.lhs.true

if.then4.if.else17_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else17

land.lhs.true:                                    ; preds = %if.then4
  %17 = ptrtoint ptr %ctl_mute to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctl_mute, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not = icmp eq i32 %18, 0
  br i1 %tobool12.not, label %land.lhs.true.if.else17_crit_edge, label %land.lhs.true.do.body20_crit_edge

land.lhs.true.do.body20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

land.lhs.true.if.else17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else17

if.else17:                                        ; preds = %land.lhs.true.if.else17_crit_edge, %if.then4.if.else17_crit_edge
  %19 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input, align 4
  br label %do.body20

do.body20:                                        ; preds = %if.else17, %land.lhs.true.do.body20_crit_edge
  %in.0 = phi ptr [ %20, %if.else17 ], [ %mute, %land.lhs.true.do.body20_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !341
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio, align 4
  %add.ptr24 = getelementptr i32, ptr %22, i32 108
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #9, !srcloc !320
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !342
  %neg = xor i32 %14, -1
  %or = or i32 %24, %14
  %25 = tail call i32 @llvm.bswap.i32(i32 %or)
  %26 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio, align 4
  %add.ptr29 = getelementptr i32, ptr %27, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %25) #9, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !343
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio, align 4
  %add.ptr36 = getelementptr i32, ptr %29, i32 109
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #9, !srcloc !320
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !344
  %and41 = and i32 %31, %neg
  %gpio = getelementptr inbounds %struct.saa7134_input, ptr %in.0, i32 0, i32 3
  %32 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpio, align 4
  %and42 = and i32 %33, %14
  %or43 = or i32 %and42, %and41
  %34 = tail call i32 @llvm.bswap.i32(i32 %or43)
  %35 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio, align 4
  %add.ptr45 = getelementptr i32, ptr %36, i32 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %34) #9, !srcloc !318
  %37 = ptrtoint ptr %in.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %in.0, align 4
  %arrayidx47 = getelementptr [0 x ptr], ptr @saa7134_input_name, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx47, align 4
  tail call void @saa7134_track_gpio(ptr noundef %dev, ptr noundef %40) #9
  br label %if.end48

if.end48:                                         ; preds = %do.body20, %sw.epilog.if.end48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7134_tvaudio_setinput(ptr noundef %dev, ptr noundef %in) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 81
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %in, ptr %input, align 4
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.158)
  switch i16 %4, label %entry.sw.epilog_crit_edge [
    i16 28976, label %entry.sw.bb_crit_edge
    i16 28980, label %entry.sw.bb_crit_edge6
    i16 28979, label %entry.sw.bb1_crit_edge
    i16 28981, label %entry.sw.bb1_crit_edge7
  ]

entry.sw.bb1_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge6
  tail call fastcc void @mute_input_7134(ptr noundef %dev)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge7
  tail call fastcc void @mute_input_7133(ptr noundef %dev)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  tail call void @saa7134_enable_i2s(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7134_tvaudio_setvolume(ptr nocapture noundef readonly %dev, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28980, i16 %3)
  %cond = icmp eq i16 %3, 28980
  br i1 %cond, label %do.body, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void @arm_heavy_mb() #9
  %4 = trunc i32 %level to i8
  %conv1 = and i8 %4, 31
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 355
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv1) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !346
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bmmio, align 8
  %add.ptr7 = getelementptr i8, ptr %8, i32 356
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 %conv1) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !347
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bmmio, align 8
  %add.ptr13 = getelementptr i8, ptr %10, i32 358
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 %conv1) #9, !srcloc !323
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_tvaudio_getstereo(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.159)
  switch i16 %3, label %entry.sw.epilog_crit_edge [
    i16 28980, label %sw.bb
    i16 28979, label %entry.sw.bb3_crit_edge
    i16 28981, label %entry.sw.bb3_crit_edge9
  ]

entry.sw.bb3_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %tvaudio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 62
  %5 = ptrtoint ptr %tvaudio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tvaudio, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @tvaudio_getstereo(ptr noundef %dev, ptr noundef nonnull %6)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge9
  %lmmio.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %8, i32 330
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !320
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !348
  %and.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 3
  %and3.i = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %retval1.1.i = select i1 %tobool4.not.i, i32 %spec.select.i, i32 12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %retval1.0 = phi i32 [ 1, %entry.sw.epilog_crit_edge ], [ %retval1.1.i, %sw.bb3 ], [ %call, %if.then ], [ 1, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tvaudio_getstereo(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %audio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.saa7134_tvaudio, ptr %audio, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %1, label %entry.sw.epilog74.thread122_crit_edge [
    i32 1, label %entry.cleanup_crit_edge
    i32 4, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge127
    i32 5, label %entry.sw.bb26_crit_edge
    i32 6, label %entry.sw.bb26_crit_edge128
  ]

entry.sw.bb26_crit_edge128:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb26

entry.sw.bb26_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb26

entry.sw.bb2_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.sw.epilog74.thread122_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog74.thread122

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge127
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 325
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  %6 = lshr i8 %5, 5
  %7 = zext i8 %6 to i32
  %8 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %sw.bb2.do.end9_crit_edge, label %do.end

sw.bb2.do.end9_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %7) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %sw.bb2.do.end9_crit_edge
  %and10 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 3
  br i1 %cmp11, label %do.end9.do.body78_crit_edge, label %if.else

do.end9.do.body78_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body78

if.else:                                          ; preds = %do.end9
  %and14 = and i32 %7, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 5
  br i1 %cmp15, label %if.else.do.body78_crit_edge, label %sw.epilog74

if.else.do.body78_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body78

sw.bb26:                                          ; preds = %entry.sw.bb26_crit_edge, %entry.sw.bb26_crit_edge128
  %bmmio29 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %bmmio29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bmmio29, align 8
  %add.ptr30 = getelementptr i8, ptr %10, i32 323
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr30) #9, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !350
  %conv34 = zext i8 %11 to i32
  %12 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp36.not = icmp eq i32 %12, 0
  br i1 %cmp36.not, label %sw.bb26.do.end46_crit_edge, label %do.end41

sw.bb26.do.end46_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

do.end41:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv34) #12
  br label %do.end46

do.end46:                                         ; preds = %do.end41, %sw.bb26.do.end46_crit_edge
  %and47 = and i32 %conv34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool.not = icmp eq i32 %and47, 0
  br i1 %tobool.not, label %do.end46.sw.epilog74.thread122_crit_edge, label %if.then48

do.end46.sw.epilog74.thread122_crit_edge:         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog74.thread122

if.then48:                                        ; preds = %do.end46
  %13 = ptrtoint ptr %bmmio29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bmmio29, align 8
  %add.ptr52 = getelementptr i8, ptr %14, i32 322
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr52) #9, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !351
  %conv56 = zext i8 %15 to i32
  %16 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp58.not = icmp eq i32 %16, 0
  br i1 %cmp58.not, label %if.then48.do.end68_crit_edge, label %do.end63

if.then48.do.end68_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

do.end63:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv56) #12
  br label %do.end68

do.end68:                                         ; preds = %do.end63, %if.then48.do.end68_crit_edge
  %and69 = and i32 %conv56, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and69)
  %switch.selectcmp = icmp eq i32 %and69, 2
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and69)
  %switch.selectcmp125 = icmp eq i32 %and69, 1
  %switch.select126 = select i1 %switch.selectcmp125, i32 12, i32 %switch.select
  br label %do.body78

sw.epilog74.thread122:                            ; preds = %do.end46.sw.epilog74.thread122_crit_edge, %entry.sw.epilog74.thread122_crit_edge
  br label %cleanup

sw.epilog74:                                      ; preds = %if.else
  %and19 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20.not = icmp eq i32 %and19, 0
  br i1 %cmp20.not, label %sw.epilog74.cleanup_crit_edge, label %sw.epilog74.do.body78_crit_edge

sw.epilog74.do.body78_crit_edge:                  ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body78

sw.epilog74.cleanup_crit_edge:                    ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body78:                                        ; preds = %sw.epilog74.do.body78_crit_edge, %do.end68, %if.else.do.body78_crit_edge, %do.end9.do.body78_crit_edge
  %retval1.0120 = phi i32 [ 1, %sw.epilog74.do.body78_crit_edge ], [ 3, %if.else.do.body78_crit_edge ], [ 12, %do.end9.do.body78_crit_edge ], [ %switch.select126, %do.end68 ]
  %17 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp79.not = icmp eq i32 %17, 0
  br i1 %cmp79.not, label %do.body78.cleanup_crit_edge, label %do.end84

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end84:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  %and86 = and i32 %retval1.0120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  %cond = select i1 %tobool87.not, ptr @.str.36, ptr @.str.35
  %and88 = and i32 %retval1.0120, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %cond90 = select i1 %tobool89.not, ptr @.str.36, ptr @.str.37
  %and91 = and i32 %retval1.0120, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  %cond93 = select i1 %tobool92.not, ptr @.str.36, ptr @.str.38
  %and94 = and i32 %retval1.0120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  %cond96 = select i1 %tobool95.not, ptr @.str.36, ptr @.str.39
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %cond, ptr noundef nonnull %cond90, ptr noundef nonnull %cond93, ptr noundef nonnull %cond96) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %do.body78.cleanup_crit_edge, %sw.epilog74.cleanup_crit_edge, %sw.epilog74.thread122, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %entry.cleanup_crit_edge ], [ %retval1.0120, %do.body78.cleanup_crit_edge ], [ %retval1.0120, %do.end84 ], [ -1, %sw.epilog74.cleanup_crit_edge ], [ -1, %sw.epilog74.thread122 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7134_tvaudio_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %board, align 4
  %audio_clock = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %1, i32 1
  %2 = ptrtoint ptr %audio_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audio_clock, align 4
  %4 = load i32, ptr @audio_clock_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.not = icmp eq i32 %4, -1
  %spec.select = select i1 %cmp.not, i32 %3, i32 %4
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %5 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.161)
  switch i16 %8, label %entry.sw.epilog_crit_edge [
    i16 28980, label %do.body
    i16 28979, label %entry.do.body40_crit_edge
    i16 28981, label %entry.do.body40_crit_edge60
  ]

entry.do.body40_crit_edge60:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body40

entry.do.body40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body40

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !352
  tail call void @arm_heavy_mb() #9
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 371
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #9, !srcloc !323
  %12 = tail call i32 @llvm.read_register.i32(metadata !302) #9
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 16384
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @schedule() #9
  br label %do.body3

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #9
  br label %do.body3

do.body3:                                         ; preds = %if.else, %if.then1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  tail call void @arm_heavy_mb() #9
  %conv6 = trunc i32 %spec.select to i8
  %18 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmmio, align 8
  %add.ptr8 = getelementptr i8, ptr %19, i32 368
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 %conv6) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !354
  tail call void @arm_heavy_mb() #9
  %20 = lshr i32 %spec.select, 8
  %conv13 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmmio, align 8
  %add.ptr15 = getelementptr i8, ptr %22, i32 369
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 %conv13) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %23 = lshr i32 %spec.select, 16
  %conv21 = trunc i32 %23 to i8
  %24 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bmmio, align 8
  %add.ptr23 = getelementptr i8, ptr %25, i32 370
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23, i8 %conv21) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bmmio, align 8
  %add.ptr28 = getelementptr i8, ptr %27, i32 371
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 1) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !357
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bmmio, align 8
  %add.ptr33 = getelementptr i8, ptr %29, i32 328
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33, i8 20) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bmmio, align 8
  %add.ptr38 = getelementptr i8, ptr %31, i32 329
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 80) #9, !srcloc !323
  br label %sw.epilog

do.body40:                                        ; preds = %entry.do.body40_crit_edge, %entry.do.body40_crit_edge60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %33 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio, align 4
  %add.ptr43 = getelementptr i32, ptr %34, i32 358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %32) #9, !srcloc !318
  %call44 = tail call i32 @saa_dsp_writel(ptr noundef %dev, i32 noundef 285, i32 noundef 0)
  %call45 = tail call i32 @saa_dsp_writel(ptr noundef %dev, i32 noundef 276, i32 noundef 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body40, %do.body3, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_tvaudio_init2(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %switch.tableidx = add i16 %3, -28979
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %4 = icmp ult i16 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %sw.epilog

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %thread = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 80
  %5 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %thread, align 8
  %scan2 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 80, i32 2
  %6 = ptrtoint ptr %scan2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %scan2, align 8
  %scan1 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 80, i32 1
  %7 = ptrtoint ptr %scan1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %scan1, align 4
  br label %if.end19

switch.lookup:                                    ; preds = %entry
  %8 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.saa7134_tvaudio_init2, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %thread36 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 80
  %10 = ptrtoint ptr %thread36 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %thread36, align 8
  %scan237 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 80, i32 2
  %11 = ptrtoint ptr %scan237 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %scan237, align 8
  %scan138 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 80, i32 1
  %12 = ptrtoint ptr %scan138 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %scan138, align 4
  tail call void @saa7134_tvaudio_init(ptr noundef %dev)
  %name = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull %switch.load, ptr noundef %dev, i32 noundef -1, ptr noundef nonnull @.str.3, ptr noundef %name) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

if.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @wake_up_process(ptr noundef %call) #9
  %13 = ptrtoint ptr %thread36 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %thread36, align 8
  br label %if.end19

do.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %thread36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %thread36, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name) #12
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end, %sw.epilog
  tail call void @saa7134_enable_i2s(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvaudio_thread(ptr noundef %data) #0 align 64 {
entry:
  %carr_vals = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %carr_vals) #9
  %0 = getelementptr inbounds [4 x i32], ptr %carr_vals, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %carr_vals, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %carr_vals, i32 0, i32 3
  %3 = call ptr @memset(ptr %carr_vals, i32 255, i32 16)
  %call = tail call zeroext i1 @set_freezable() #9
  %call1429 = tail call fastcc i32 @tvaudio_sleep(ptr noundef %data, i32 noundef -1)
  %call2430 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call2430, label %entry.done_crit_edge, label %restart.preheader.lr.ph

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

restart.preheader.lr.ph:                          ; preds = %entry
  %scan2 = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 80, i32 2
  %scan1 = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 80, i32 1
  %tvaudio = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 62
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 19
  %ctl_automute = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 75
  %automute = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 79
  %tvnorm = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 61
  %lmmio.i.i = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 18
  %last_carrier110 = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 84
  %pci.i = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 15
  %mode232 = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 80, i32 3
  br label %restart

for.cond.backedge:                                ; preds = %if.end227.for.cond.backedge_crit_edge, %do.body197.for.cond.backedge_crit_edge
  %call1 = tail call fastcc i32 @tvaudio_sleep(ptr noundef %data, i32 noundef -1)
  %call2 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call2, label %for.cond.backedge.done_crit_edge, label %for.cond.backedge.restart.backedge_crit_edge

for.cond.backedge.restart.backedge_crit_edge:     ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.backedge

for.cond.backedge.done_crit_edge:                 ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

restart.backedge:                                 ; preds = %tvaudio_sleep.exit397.restart.backedge_crit_edge, %tvaudio_sleep.exit365.restart.backedge_crit_edge, %tvaudio_checkcarrier.exit.restart.backedge_crit_edge, %tvaudio_sleep.exit.restart.backedge_crit_edge, %for.cond.backedge.restart.backedge_crit_edge
  br label %restart

restart:                                          ; preds = %restart.backedge, %restart.preheader.lr.ph
  %4 = tail call i32 @llvm.read_register.i32(metadata !302) #9
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %restart.if.end.i_crit_edge

restart.if.end.i_crit_edge:                       ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_check_no_locks_held() #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %restart.if.end.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.56, i32 noundef 57) #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !302) #9
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %14 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !314

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %13) #9
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !315

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #9
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  %15 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan2, align 8
  %17 = ptrtoint ptr %scan1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %scan1, align 4
  %18 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %try_to_freeze.exit.do.end12_crit_edge, label %do.end

try_to_freeze.exit.do.end12_crit_edge:            ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end:                                           ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %16) #12
  br label %do.end12

do.end12:                                         ; preds = %do.end, %try_to_freeze.exit.do.end12_crit_edge
  %19 = ptrtoint ptr %tvaudio to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %tvaudio, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !360
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %21, i32 352
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -96) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmmio, align 8
  %add.ptr20 = getelementptr i8, ptr %23, i32 354
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 -128) #9, !srcloc !323
  %24 = ptrtoint ptr %ctl_automute to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctl_automute, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %do.end12.if.end22_crit_edge, label %if.then21

do.end12.if.end22_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %automute to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %automute, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %do.end12.if.end22_crit_edge
  tail call fastcc void @mute_input_7134(ptr noundef %data)
  %27 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %scan1, align 4
  %29 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.i = icmp eq i32 %28, %30
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end22.tvaudio_sleep.exit_crit_edge

if.end22.tvaudio_sleep.exit_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_sleep.exit

land.lhs.true.i:                                  ; preds = %if.end22
  %call.i = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call.i, label %land.lhs.true.i.tvaudio_sleep.exit_crit_edge, label %if.then.i348

land.lhs.true.i.tvaudio_sleep.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_sleep.exit

if.then.i348:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call66.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 100) #9
  br label %tvaudio_sleep.exit

tvaudio_sleep.exit:                               ; preds = %if.then.i348, %land.lhs.true.i.tvaudio_sleep.exit_crit_edge, %if.end22.tvaudio_sleep.exit_crit_edge
  %31 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scan1, align 4
  %33 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp73.i.not = icmp eq i32 %32, %34
  br i1 %cmp73.i.not, label %for.cond27.preheader, label %tvaudio_sleep.exit.restart.backedge_crit_edge

tvaudio_sleep.exit.restart.backedge_crit_edge:    ; preds = %tvaudio_sleep.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.backedge

for.cond27.preheader:                             ; preds = %tvaudio_sleep.exit
  %35 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tvnorm, align 4
  %id = getelementptr inbounds %struct.saa7134_tvnorm, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %id, align 8
  %and = and i64 %38, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool29.not = icmp eq i64 %and, 0
  %and.1438 = and i64 %38, 851983
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1438)
  %tobool29.not.1439 = icmp eq i64 %and.1438, 0
  br i1 %tobool29.not, label %for.inc.thread, label %for.inc

for.inc:                                          ; preds = %for.cond27.preheader
  br i1 %tobool29.not.1439, label %for.inc.for.inc.1_crit_edge, label %for.inc.if.end35.1_crit_edge

for.inc.if.end35.1_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

for.inc.thread:                                   ; preds = %for.cond27.preheader
  br i1 %tobool29.not.1439, label %for.inc.1.thread, label %for.inc.thread.if.end35.1_crit_edge

for.inc.thread.if.end35.1_crit_edge:              ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.1

if.end35.1:                                       ; preds = %for.inc.thread.if.end35.1_crit_edge, %for.inc.if.end35.1_crit_edge
  %nscan.1441445 = phi i32 [ 2, %for.inc.if.end35.1_crit_edge ], [ 1, %for.inc.thread.if.end35.1_crit_edge ]
  %default_carrier.1.1 = phi i32 [ 4500, %for.inc.if.end35.1_crit_edge ], [ 5500, %for.inc.thread.if.end35.1_crit_edge ]
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end35.1, %for.inc.for.inc.1_crit_edge
  %default_carrier.2.1 = phi i32 [ %default_carrier.1.1, %if.end35.1 ], [ 4500, %for.inc.for.inc.1_crit_edge ]
  %nscan.1.1 = phi i32 [ %nscan.1441445, %if.end35.1 ], [ 1, %for.inc.for.inc.1_crit_edge ]
  %and.2 = and i64 %38, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2)
  %tobool29.not.2 = icmp eq i64 %and.2, 0
  br i1 %tobool29.not.2, label %for.inc.1.for.inc.2_crit_edge, label %for.inc.1.if.end35.2_crit_edge

for.inc.1.if.end35.2_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

for.inc.1.thread:                                 ; preds = %for.inc.thread
  %and.2449 = and i64 %38, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2449)
  %tobool29.not.2450 = icmp eq i64 %and.2449, 0
  br i1 %tobool29.not.2450, label %for.inc.2.thread, label %for.inc.1.thread.if.end35.2_crit_edge

for.inc.1.thread.if.end35.2_crit_edge:            ; preds = %for.inc.1.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.2

if.end35.2:                                       ; preds = %for.inc.1.thread.if.end35.2_crit_edge, %for.inc.1.if.end35.2_crit_edge
  %nscan.1.1452456 = phi i32 [ %nscan.1.1, %for.inc.1.if.end35.2_crit_edge ], [ 0, %for.inc.1.thread.if.end35.2_crit_edge ]
  %default_carrier.1.2 = phi i32 [ %default_carrier.2.1, %for.inc.1.if.end35.2_crit_edge ], [ 6000, %for.inc.1.thread.if.end35.2_crit_edge ]
  %inc.2 = add nuw nsw i32 %nscan.1.1452456, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end35.2, %for.inc.1.for.inc.2_crit_edge
  %default_carrier.2.2 = phi i32 [ %default_carrier.1.2, %if.end35.2 ], [ %default_carrier.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %nscan.1.2 = phi i32 [ %inc.2, %if.end35.2 ], [ %nscan.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %and.3 = and i64 %38, 15859936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.3)
  %tobool29.not.3 = icmp eq i64 %and.3, 0
  br i1 %tobool29.not.3, label %for.inc.2.for.inc.3_crit_edge, label %for.inc.2.if.end35.3_crit_edge

for.inc.2.if.end35.3_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

for.inc.2.thread:                                 ; preds = %for.inc.1.thread
  %and.3460 = and i64 %38, 15859936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.3460)
  %tobool29.not.3461 = icmp eq i64 %and.3460, 0
  br i1 %tobool29.not.3461, label %for.inc.2.thread.do.body50_crit_edge, label %for.inc.2.thread.if.end35.3_crit_edge

for.inc.2.thread.if.end35.3_crit_edge:            ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.3

for.inc.2.thread.do.body50_crit_edge:             ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50

if.end35.3:                                       ; preds = %for.inc.2.thread.if.end35.3_crit_edge, %for.inc.2.if.end35.3_crit_edge
  %nscan.1.2463467 = phi i32 [ %nscan.1.2, %for.inc.2.if.end35.3_crit_edge ], [ 0, %for.inc.2.thread.if.end35.3_crit_edge ]
  %default_carrier.1.3 = phi i32 [ %default_carrier.2.2, %for.inc.2.if.end35.3_crit_edge ], [ 6500, %for.inc.2.thread.if.end35.3_crit_edge ]
  %inc.3 = add nuw nsw i32 %nscan.1.2463467, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end35.3, %for.inc.2.for.inc.3_crit_edge
  %default_carrier.2.3 = phi i32 [ %default_carrier.1.3, %if.end35.3 ], [ %default_carrier.2.2, %for.inc.2.for.inc.3_crit_edge ]
  %nscan.1.3 = phi i32 [ %inc.3, %if.end35.3 ], [ %nscan.1.2, %for.inc.2.for.inc.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nscan.1.3)
  %cmp37 = icmp eq i32 %nscan.1.3, 1
  br i1 %cmp37, label %do.body39, label %for.inc.3.do.body50_crit_edge

for.inc.3.do.body50_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50

do.body39:                                        ; preds = %for.inc.3
  %39 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp40.not = icmp eq i32 %39, 0
  br i1 %cmp40.not, label %do.body39.if.end90_crit_edge, label %do.end44

do.body39.if.end90_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

do.end44:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #12
  br label %if.end90

do.body50:                                        ; preds = %for.inc.3.do.body50_crit_edge, %for.inc.2.thread.do.body50_crit_edge
  %default_carrier.2.3473 = phi i32 [ %default_carrier.2.3, %for.inc.3.do.body50_crit_edge ], [ 0, %for.inc.2.thread.do.body50_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !362
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bmmio, align 8
  %add.ptr54 = getelementptr i8, ptr %41, i32 352
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr54, i8 0) #9, !srcloc !323
  tail call fastcc void @tvaudio_setmode(ptr noundef %data, ptr noundef nonnull @tvaudio, ptr noundef null)
  br label %for.body57

for.cond55:                                       ; preds = %tvaudio_checkcarrier.exit
  %inc69 = add nuw nsw i32 %i.1418, 1
  %exitcond.not = icmp eq i32 %inc69, 4
  br i1 %exitcond.not, label %for.body73.preheader, label %for.cond55.for.body57_crit_edge

for.cond55.for.body57_crit_edge:                  ; preds = %for.cond55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57

for.body73.preheader:                             ; preds = %for.cond55
  %42 = ptrtoint ptr %carr_vals to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %carr_vals, align 4
  %44 = call i32 @llvm.smax.i32(i32 %43, i32 0)
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %0, align 4
  %47 = call i32 @llvm.smax.i32(i32 %44, i32 %46)
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 4
  %50 = call i32 @llvm.smax.i32(i32 %47, i32 %49)
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp75.3 = icmp slt i32 %50, %52
  br i1 %cmp75.3, label %for.body73.preheader.if.end90_crit_edge, label %if.else80.3

for.body73.preheader.if.end90_crit_edge:          ; preds = %for.body73.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

for.body57:                                       ; preds = %for.cond55.for.body57_crit_edge, %do.body50
  %i.1418 = phi i32 [ 0, %do.body50 ], [ %inc69, %for.cond55.for.body57_crit_edge ]
  %add.ptr58 = getelementptr %struct.mainscan, ptr @mainscan, i32 %i.1418
  %53 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tvnorm, align 4
  %id.i = getelementptr inbounds %struct.saa7134_tvnorm, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %id.i, align 8
  %std.i = getelementptr %struct.mainscan, ptr @mainscan, i32 %i.1418, i32 1
  %57 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %std.i, align 8
  %and.i350 = and i64 %58, %56
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i350)
  %tobool.not.i351 = icmp eq i64 %and.i350, 0
  %59 = load i32, ptr @audio_debug, align 4
  br i1 %tobool.not.i351, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %for.body57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.not.i = icmp eq i32 %59, 0
  br i1 %cmp.not.i, label %do.body.i.tvaudio_checkcarrier.exit_crit_edge, label %do.end.i

do.body.i.tvaudio_checkcarrier.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_checkcarrier.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %carr.i = getelementptr %struct.mainscan, ptr @mainscan, i32 %i.1418, i32 2
  %60 = ptrtoint ptr %carr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %carr.i, align 8
  %.frozen = freeze i32 %61
  %div.i = sdiv i32 %.frozen, 1000
  %62 = mul i32 %div.i, 1000
  %rem.i.decomposed = sub i32 %.frozen, %62
  %63 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr58, align 8
  %call.i352 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %div.i, i32 noundef %rem.i.decomposed, ptr noundef %64) #12
  br label %tvaudio_checkcarrier.exit

if.end6.i:                                        ; preds = %for.body57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp7.i = icmp ugt i32 %59, 1
  br i1 %cmp7.i, label %do.end14.i, label %if.end6.i.if.end59.i_crit_edge

if.end6.i.if.end59.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

do.end14.i:                                       ; preds = %if.end6.i
  %carr16.i = getelementptr %struct.mainscan, ptr @mainscan, i32 %i.1418, i32 2
  %65 = ptrtoint ptr %carr16.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %carr16.i, align 8
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %66) #12
  %67 = ptrtoint ptr %carr16.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %carr16.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end31.i.for.body.i_crit_edge, %do.end14.i
  %i.0209.i = phi i32 [ -150, %do.end14.i ], [ %add53.i, %if.end31.i.for.body.i_crit_edge ]
  %add.i = add i32 %68, %i.0209.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @arm_heavy_mb() #9
  %conv.i.i.i = zext i32 %add.i to i64
  %div82.i.i.i = shl nuw nsw i64 %conv.i.i.i, 12
  %69 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div82.i.i.i, i64 6148914691236517205) #13, !srcloc !364
  %70 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div82.i.i.i, i64 %69) #13, !srcloc !365
  %conv183.i.i.i = trunc i64 %70 to i32
  %71 = tail call i32 @llvm.bswap.i32(i32 %conv183.i.i.i) #9
  %72 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %73, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %71) #9, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  tail call void @arm_heavy_mb() #9
  %74 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr5.i.i = getelementptr i32, ptr %75, i32 85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %71) #9, !srcloc !318
  %76 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i = getelementptr i32, ptr %77, i32 81
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !367
  %79 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %scan1, align 4
  %81 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp.i168.i = icmp eq i32 %80, %82
  br i1 %cmp.i168.i, label %land.lhs.true.i.i, label %for.body.i.tvaudio_sleep.exit.i_crit_edge

for.body.i.tvaudio_sleep.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_sleep.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %call.i.i = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call.i.i, label %land.lhs.true.i.i.tvaudio_sleep.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.tvaudio_sleep.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_sleep.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call66.i.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 20) #9
  br label %tvaudio_sleep.exit.i

tvaudio_sleep.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.tvaudio_sleep.exit.i_crit_edge, %for.body.i.tvaudio_sleep.exit.i_crit_edge
  %83 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %scan1, align 4
  %85 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp73.i.not.i = icmp eq i32 %84, %86
  br i1 %cmp73.i.not.i, label %if.end31.i, label %tvaudio_sleep.exit.i.tvaudio_checkcarrier.exit_crit_edge

tvaudio_sleep.exit.i.tvaudio_checkcarrier.exit_crit_edge: ; preds = %tvaudio_sleep.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_checkcarrier.exit

if.end31.i:                                       ; preds = %tvaudio_sleep.exit.i
  %87 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr35.i = getelementptr i32, ptr %88, i32 81
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #9, !srcloc !320
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0209.i)
  %cmp39.i = icmp eq i32 %i.0209.i, 0
  %shr.i = ashr i32 %90, 16
  %.str.80..str.83.i = select i1 %cmp39.i, ptr @.str.80, ptr @.str.83
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.80..str.83.i, i32 noundef %shr.i) #12
  %add53.i = add nsw i32 %i.0209.i, 30
  %cmp21.i = icmp slt i32 %i.0209.i, 121
  br i1 %cmp21.i, label %if.end31.i.for.body.i_crit_edge, label %do.end56.i

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end56.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %call58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #12
  br label %if.end59.i

if.end59.i:                                       ; preds = %do.end56.i, %if.end6.i.if.end59.i_crit_edge
  %carr60.i = getelementptr %struct.mainscan, ptr @mainscan, i32 %i.1418, i32 2
  %91 = ptrtoint ptr %carr60.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %carr60.i, align 8
  %sub.i = add i32 %92, -90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @arm_heavy_mb() #9
  %conv.i.i170.i = zext i32 %sub.i to i64
  %div82.i.i171.i = shl nuw nsw i64 %conv.i.i170.i, 12
  %93 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div82.i.i171.i, i64 6148914691236517205) #13, !srcloc !364
  %94 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div82.i.i171.i, i64 %93) #13, !srcloc !365
  %conv183.i.i172.i = trunc i64 %94 to i32
  %95 = tail call i32 @llvm.bswap.i32(i32 %conv183.i.i172.i) #9
  %96 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i174.i = getelementptr i32, ptr %97, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174.i, i32 %95) #9, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  tail call void @arm_heavy_mb() #9
  %98 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr5.i178.i = getelementptr i32, ptr %99, i32 85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i178.i, i32 %95) #9, !srcloc !318
  %100 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr66.i = getelementptr i32, ptr %101, i32 81
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66.i) #9, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !369
  %103 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %scan1, align 4
  %105 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp.i181.i = icmp eq i32 %104, %106
  br i1 %cmp.i181.i, label %land.lhs.true.i183.i, label %if.end59.i.tvaudio_sleep.exit188.i_crit_edge

if.end59.i.tvaudio_sleep.exit188.i_crit_edge:     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_sleep.exit188.i

land.lhs.true.i183.i:                             ; preds = %if.end59.i
  %call.i182.i = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call.i182.i, label %land.lhs.true.i183.i.tvaudio_sleep.exit188.i_crit_edge, label %if.then.i184.i

land.lhs.true.i183.i.tvaudio_sleep.exit188.i_crit_edge: ; preds = %land.lhs.true.i183.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_sleep.exit188.i

if.then.i184.i:                                   ; preds = %land.lhs.true.i183.i
  call void @__sanitizer_cov_trace_pc() #11
  %call66.i185.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 20) #9
  br label %tvaudio_sleep.exit188.i

tvaudio_sleep.exit188.i:                          ; preds = %if.then.i184.i, %land.lhs.true.i183.i.tvaudio_sleep.exit188.i_crit_edge, %if.end59.i.tvaudio_sleep.exit188.i_crit_edge
  %107 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %scan1, align 4
  %109 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %110)
  %cmp73.i186.not.i = icmp eq i32 %108, %110
  br i1 %cmp73.i186.not.i, label %if.end73.i, label %tvaudio_sleep.exit188.i.tvaudio_checkcarrier.exit_crit_edge

tvaudio_sleep.exit188.i.tvaudio_checkcarrier.exit_crit_edge: ; preds = %tvaudio_sleep.exit188.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_checkcarrier.exit

if.end73.i:                                       ; preds = %tvaudio_sleep.exit188.i
  %111 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr77.i = getelementptr i32, ptr %112, i32 81
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77.i) #9, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  %114 = ptrtoint ptr %carr60.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %carr60.i, align 8
  %add82.i = add i32 %115, 90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @arm_heavy_mb() #9
  %conv.i.i190.i = zext i32 %add82.i to i64
  %div82.i.i191.i = shl nuw nsw i64 %conv.i.i190.i, 12
  %116 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div82.i.i191.i, i64 6148914691236517205) #13, !srcloc !364
  %117 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div82.i.i191.i, i64 %116) #13, !srcloc !365
  %conv183.i.i192.i = trunc i64 %117 to i32
  %118 = tail call i32 @llvm.bswap.i32(i32 %conv183.i.i192.i) #9
  %119 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i194.i = getelementptr i32, ptr %120, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194.i, i32 %118) #9, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  tail call void @arm_heavy_mb() #9
  %121 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr5.i198.i = getelementptr i32, ptr %122, i32 85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i198.i, i32 %118) #9, !srcloc !318
  %123 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr88.i = getelementptr i32, ptr %124, i32 81
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88.i) #9, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !371
  %126 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %scan1, align 4
  %128 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %129)
  %cmp.i201.i = icmp eq i32 %127, %129
  br i1 %cmp.i201.i, label %land.lhs.true.i203.i, label %if.end73.i.tvaudio_sleep.exit208.i_crit_edge

if.end73.i.tvaudio_sleep.exit208.i_crit_edge:     ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_sleep.exit208.i

land.lhs.true.i203.i:                             ; preds = %if.end73.i
  %call.i202.i = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call.i202.i, label %land.lhs.true.i203.i.tvaudio_sleep.exit208.i_crit_edge, label %if.then.i204.i

land.lhs.true.i203.i.tvaudio_sleep.exit208.i_crit_edge: ; preds = %land.lhs.true.i203.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_sleep.exit208.i

if.then.i204.i:                                   ; preds = %land.lhs.true.i203.i
  call void @__sanitizer_cov_trace_pc() #11
  %call66.i205.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 20) #9
  br label %tvaudio_sleep.exit208.i

tvaudio_sleep.exit208.i:                          ; preds = %if.then.i204.i, %land.lhs.true.i203.i.tvaudio_sleep.exit208.i_crit_edge, %if.end73.i.tvaudio_sleep.exit208.i_crit_edge
  %130 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %scan1, align 4
  %132 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %133)
  %cmp73.i206.not.i = icmp eq i32 %131, %133
  br i1 %cmp73.i206.not.i, label %if.end95.i, label %tvaudio_sleep.exit208.i.tvaudio_checkcarrier.exit_crit_edge

tvaudio_sleep.exit208.i.tvaudio_checkcarrier.exit_crit_edge: ; preds = %tvaudio_sleep.exit208.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_checkcarrier.exit

if.end95.i:                                       ; preds = %tvaudio_sleep.exit208.i
  %134 = tail call i32 @llvm.bswap.i32(i32 %113) #9
  %135 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr99.i = getelementptr i32, ptr %136, i32 81
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99.i) #9, !srcloc !320
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !372
  %shr103.i = ashr i32 %134, 16
  %shr104.i = ashr i32 %138, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr103.i, i32 %shr104.i)
  %cmp105.i = icmp sgt i32 %shr103.i, %shr104.i
  %sub106.i = sub nsw i32 %shr103.i, %shr104.i
  %sub107.i = sub nsw i32 %shr104.i, %shr103.i
  %cond.i = select i1 %cmp105.i, i32 %sub106.i, i32 %sub107.i
  %139 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp109.not.i = icmp eq i32 %139, 0
  br i1 %cmp109.not.i, label %if.end95.i.tvaudio_checkcarrier.exit_crit_edge, label %do.end113.i

if.end95.i.tvaudio_checkcarrier.exit_crit_edge:   ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_checkcarrier.exit

do.end113.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %carr60.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %carr60.i, align 8
  %.frozen484 = freeze i32 %141
  %div116.i = sdiv i32 %.frozen484, 1000
  %142 = mul i32 %div116.i, 1000
  %rem118.i.decomposed = sub i32 %.frozen484, %142
  %143 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr58, align 8
  %call120.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %div116.i, i32 noundef %rem118.i.decomposed, ptr noundef %144, i32 noundef %cond.i, i32 noundef %shr103.i, i32 noundef %shr104.i) #12
  br label %tvaudio_checkcarrier.exit

tvaudio_checkcarrier.exit:                        ; preds = %do.end113.i, %if.end95.i.tvaudio_checkcarrier.exit_crit_edge, %tvaudio_sleep.exit208.i.tvaudio_checkcarrier.exit_crit_edge, %tvaudio_sleep.exit188.i.tvaudio_checkcarrier.exit_crit_edge, %tvaudio_sleep.exit.i.tvaudio_checkcarrier.exit_crit_edge, %do.end.i, %do.body.i.tvaudio_checkcarrier.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %do.end.i ], [ 0, %do.body.i.tvaudio_checkcarrier.exit_crit_edge ], [ -1, %tvaudio_sleep.exit188.i.tvaudio_checkcarrier.exit_crit_edge ], [ -1, %tvaudio_sleep.exit208.i.tvaudio_checkcarrier.exit_crit_edge ], [ %cond.i, %do.end113.i ], [ %cond.i, %if.end95.i.tvaudio_checkcarrier.exit_crit_edge ], [ -1, %tvaudio_sleep.exit.i.tvaudio_checkcarrier.exit_crit_edge ]
  %arrayidx60 = getelementptr [4 x i32], ptr %carr_vals, i32 0, i32 %i.1418
  %145 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %retval.1.i, ptr %arrayidx60, align 4
  %146 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %scan1, align 4
  %148 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %149)
  %cmp65.not = icmp eq i32 %147, %149
  br i1 %cmp65.not, label %for.cond55, label %tvaudio_checkcarrier.exit.restart.backedge_crit_edge

tvaudio_checkcarrier.exit.restart.backedge_crit_edge: ; preds = %tvaudio_checkcarrier.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.backedge

if.else80.3:                                      ; preds = %for.body73.preheader
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp75.2 = icmp slt i32 %47, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp75.1 = icmp slt i32 %44, %46
  %minmaxop = select i1 %cmp75.1, i32 %43, i32 %46
  %max2.1.1 = call i32 @llvm.smax.i32(i32 %minmaxop, i32 %49)
  %150 = call i32 @llvm.smax.i32(i32 %max2.1.1, i32 0)
  %max2.1.2 = select i1 %cmp75.2, i32 %47, i32 %150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp75 = icmp sgt i32 %43, 0
  %spec.select = select i1 %cmp75, i32 4500, i32 0
  %carrier.1.1 = select i1 %cmp75.1, i32 5500, i32 %spec.select
  %carrier.1.2 = select i1 %cmp75.2, i32 6000, i32 %carrier.1.1
  %151 = tail call i32 @llvm.smax.i32(i32 %max2.1.2, i32 %52)
  br label %if.end90

if.end90:                                         ; preds = %if.else80.3, %for.body73.preheader.if.end90_crit_edge, %do.end44, %do.body39.if.end90_crit_edge
  %default_carrier.2.3472 = phi i32 [ %default_carrier.2.3, %do.end44 ], [ %default_carrier.2.3, %do.body39.if.end90_crit_edge ], [ %default_carrier.2.3473, %if.else80.3 ], [ %default_carrier.2.3473, %for.body73.preheader.if.end90_crit_edge ]
  %carrier.2 = phi i32 [ %default_carrier.2.3, %do.end44 ], [ %default_carrier.2.3, %do.body39.if.end90_crit_edge ], [ %carrier.1.2, %if.else80.3 ], [ 6500, %for.body73.preheader.if.end90_crit_edge ]
  %max2.2 = phi i32 [ 0, %do.end44 ], [ 0, %do.body39.if.end90_crit_edge ], [ %151, %if.else80.3 ], [ %50, %for.body73.preheader.if.end90_crit_edge ]
  %max1.2 = phi i32 [ 12345, %do.end44 ], [ 12345, %do.body39.if.end90_crit_edge ], [ %50, %if.else80.3 ], [ %52, %for.body73.preheader.if.end90_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %carrier.2)
  %cmp91.not = icmp ne i32 %carrier.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %max1.2)
  %cmp92 = icmp sgt i32 %max1.2, 2000
  %or.cond = select i1 %cmp91.not, i1 %cmp92, i1 false
  %mul = mul i32 %max2.2, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %max1.2, i32 %mul)
  %cmp94 = icmp sgt i32 %max1.2, %mul
  %or.cond346 = select i1 %or.cond, i1 %cmp94, i1 false
  br i1 %or.cond346, label %do.body96, label %if.else109

do.body96:                                        ; preds = %if.end90
  %152 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp97.not = icmp eq i32 %152, 0
  br i1 %cmp97.not, label %do.body96.do.end107_crit_edge, label %do.end101

do.body96.do.end107_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end107

do.end101:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #11
  %153 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tvnorm, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 8
  %carrier.2.frozen = freeze i32 %carrier.2
  %div = sdiv i32 %carrier.2.frozen, 1000
  %157 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %carrier.2.frozen, %157
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %156, i32 noundef %div, i32 noundef %rem.decomposed, i32 noundef %max1.2, i32 noundef %max2.2) #12
  br label %do.end107

do.end107:                                        ; preds = %do.end101, %do.body96.do.end107_crit_edge
  %158 = ptrtoint ptr %last_carrier110 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %carrier.2, ptr %last_carrier110, align 8
  br label %if.end144

if.else109:                                       ; preds = %if.end90
  %159 = ptrtoint ptr %last_carrier110 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %last_carrier110, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp111.not = icmp eq i32 %160, 0
  %161 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp130.not = icmp eq i32 %161, 0
  br i1 %cmp111.not, label %if.else128, label %if.then112

if.then112:                                       ; preds = %if.else109
  br i1 %cmp130.not, label %if.then112.if.end144_crit_edge, label %do.end119

if.then112.if.end144_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

do.end119:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  %.frozen485 = freeze i32 %160
  %div121 = sdiv i32 %.frozen485, 1000
  %162 = mul i32 %div121, 1000
  %rem122.decomposed = sub i32 %.frozen485, %162
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %div121, i32 noundef %rem122.decomposed) #12
  br label %if.end144

if.else128:                                       ; preds = %if.else109
  br i1 %cmp130.not, label %if.else128.if.end144_crit_edge, label %do.end134

if.else128.if.end144_crit_edge:                   ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

do.end134:                                        ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #11
  %default_carrier.2.3472.frozen = freeze i32 %default_carrier.2.3472
  %div136 = sdiv i32 %default_carrier.2.3472.frozen, 1000
  %163 = mul i32 %div136, 1000
  %rem137.decomposed = sub i32 %default_carrier.2.3472.frozen, %163
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %div136, i32 noundef %rem137.decomposed) #12
  br label %if.end144

if.end144:                                        ; preds = %do.end134, %if.else128.if.end144_crit_edge, %do.end119, %if.then112.if.end144_crit_edge, %do.end107
  %.sink = phi i32 [ 0, %do.end107 ], [ 1, %do.end119 ], [ 1, %if.then112.if.end144_crit_edge ], [ 1, %do.end134 ], [ 1, %if.else128.if.end144_crit_edge ]
  %carrier.3 = phi i32 [ %carrier.2, %do.end107 ], [ %160, %do.end119 ], [ %160, %if.then112.if.end144_crit_edge ], [ %default_carrier.2.3472, %do.end134 ], [ %default_carrier.2.3472, %if.else128.if.end144_crit_edge ]
  %164 = ptrtoint ptr %automute to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %.sink, ptr %automute, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @arm_heavy_mb() #9
  %conv.i.i = zext i32 %carrier.3 to i64
  %div82.i.i = shl nuw nsw i64 %conv.i.i, 12
  %165 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div82.i.i, i64 6148914691236517205) #13, !srcloc !364
  %166 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div82.i.i, i64 %165) #13, !srcloc !365
  %conv183.i.i = trunc i64 %166 to i32
  %167 = tail call i32 @llvm.bswap.i32(i32 %conv183.i.i) #9
  %168 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr.i354 = getelementptr i32, ptr %169, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i354, i32 %167) #9, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  tail call void @arm_heavy_mb() #9
  %170 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %lmmio.i.i, align 4
  %add.ptr5.i = getelementptr i32, ptr %171, i32 85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %167) #9, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !373
  tail call void @arm_heavy_mb() #9
  %172 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %bmmio, align 8
  %add.ptr149 = getelementptr i8, ptr %173, i32 359
  %174 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr149) #9, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !374
  %175 = and i8 %174, -49
  %176 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %bmmio, align 8
  %add.ptr156 = getelementptr i8, ptr %177, i32 359
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr156, i8 %175) #9, !srcloc !323
  %178 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pci.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 8
  %180 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %device.i, align 2
  %182 = zext i16 %181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values.162)
  switch i16 %181, label %if.end144.for.body160.preheader_crit_edge [
    i16 28976, label %if.end144.sw.bb.i_crit_edge
    i16 28980, label %if.end144.sw.bb.i_crit_edge486
    i16 28979, label %if.end144.sw.bb1.i_crit_edge
    i16 28981, label %if.end144.sw.bb1.i_crit_edge487
  ]

if.end144.sw.bb1.i_crit_edge487:                  ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

if.end144.sw.bb1.i_crit_edge:                     ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

if.end144.sw.bb.i_crit_edge486:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end144.sw.bb.i_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end144.for.body160.preheader_crit_edge:        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body160.preheader

sw.bb.i:                                          ; preds = %if.end144.sw.bb.i_crit_edge, %if.end144.sw.bb.i_crit_edge486
  tail call fastcc void @mute_input_7134(ptr noundef %data) #9
  br label %for.body160.preheader

sw.bb1.i:                                         ; preds = %if.end144.sw.bb1.i_crit_edge, %if.end144.sw.bb1.i_crit_edge487
  tail call fastcc void @mute_input_7133(ptr noundef %data) #9
  br label %for.body160.preheader

for.body160.preheader:                            ; preds = %sw.bb1.i, %sw.bb.i, %if.end144.for.body160.preheader_crit_edge
  br label %for.body160

for.body160:                                      ; preds = %for.inc194.for.body160_crit_edge, %for.body160.preheader
  %i.3427 = phi i32 [ %inc195, %for.inc194.for.body160_crit_edge ], [ 0, %for.body160.preheader ]
  %audio.0426 = phi i32 [ %audio.2, %for.inc194.for.body160_crit_edge ], [ -1, %for.body160.preheader ]
  %183 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %tvnorm, align 4
  %id162 = getelementptr inbounds %struct.saa7134_tvnorm, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %id162 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %id162, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %186)
  %cmp163.not = icmp eq i64 %186, 4294967295
  br i1 %cmp163.not, label %for.body160.if.end173_crit_edge, label %land.lhs.true165

for.body160.if.end173_crit_edge:                  ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end173

land.lhs.true165:                                 ; preds = %for.body160
  %std169 = getelementptr [11 x %struct.saa7134_tvaudio], ptr @tvaudio, i32 0, i32 %i.3427, i32 1
  %187 = ptrtoint ptr %std169 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %std169, align 8
  %and170 = and i64 %188, %186
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and170)
  %tobool171.not = icmp eq i64 %and170, 0
  br i1 %tobool171.not, label %land.lhs.true165.for.inc194_crit_edge, label %land.lhs.true165.if.end173_crit_edge

land.lhs.true165.if.end173_crit_edge:             ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end173

land.lhs.true165.for.inc194_crit_edge:            ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc194

if.end173:                                        ; preds = %land.lhs.true165.if.end173_crit_edge, %for.body160.if.end173_crit_edge
  %arrayidx174 = getelementptr [11 x %struct.saa7134_tvaudio], ptr @tvaudio, i32 0, i32 %i.3427
  %carr1 = getelementptr [11 x %struct.saa7134_tvaudio], ptr @tvaudio, i32 0, i32 %i.3427, i32 3
  %189 = ptrtoint ptr %carr1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %carr1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %carrier.3)
  %cmp175.not = icmp eq i32 %190, %carrier.3
  br i1 %cmp175.not, label %if.end178, label %if.end173.for.inc194_crit_edge

if.end173.for.inc194_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc194

if.end178:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %audio.0426)
  %cmp179 = icmp eq i32 %audio.0426, -1
  %spec.select347 = select i1 %cmp179, i32 %i.3427, i32 %audio.0426
  tail call fastcc void @tvaudio_setmode(ptr noundef %data, ptr noundef %arrayidx174, ptr noundef nonnull @.str.54)
  %191 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %scan1, align 4
  %193 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %194)
  %cmp.i357 = icmp eq i32 %192, %194
  br i1 %cmp.i357, label %land.lhs.true.i359, label %if.end178.tvaudio_sleep.exit365_crit_edge

if.end178.tvaudio_sleep.exit365_crit_edge:        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_sleep.exit365

land.lhs.true.i359:                               ; preds = %if.end178
  %call.i358 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call.i358, label %land.lhs.true.i359.tvaudio_sleep.exit365_crit_edge, label %if.then.i360

land.lhs.true.i359.tvaudio_sleep.exit365_crit_edge: ; preds = %land.lhs.true.i359
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_sleep.exit365

if.then.i360:                                     ; preds = %land.lhs.true.i359
  call void @__sanitizer_cov_trace_pc() #11
  %call66.i362 = tail call i32 @schedule_timeout_interruptible(i32 noundef 200) #9
  br label %tvaudio_sleep.exit365

tvaudio_sleep.exit365:                            ; preds = %if.then.i360, %land.lhs.true.i359.tvaudio_sleep.exit365_crit_edge, %if.end178.tvaudio_sleep.exit365_crit_edge
  %195 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %scan1, align 4
  %197 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %198)
  %cmp73.i363.not = icmp eq i32 %196, %198
  br i1 %cmp73.i363.not, label %if.end187, label %tvaudio_sleep.exit365.restart.backedge_crit_edge

tvaudio_sleep.exit365.restart.backedge_crit_edge: ; preds = %tvaudio_sleep.exit365
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.backedge

if.end187:                                        ; preds = %tvaudio_sleep.exit365
  %call189 = tail call fastcc i32 @tvaudio_getstereo(ptr noundef %data, ptr noundef %arrayidx174)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call189)
  %cmp190.not = icmp eq i32 %call189, -1
  br i1 %cmp190.not, label %if.end187.for.inc194_crit_edge, label %if.end187.do.body197_crit_edge

if.end187.do.body197_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body197

if.end187.for.inc194_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc194

for.inc194:                                       ; preds = %if.end187.for.inc194_crit_edge, %if.end173.for.inc194_crit_edge, %land.lhs.true165.for.inc194_crit_edge
  %audio.2 = phi i32 [ %audio.0426, %if.end173.for.inc194_crit_edge ], [ %spec.select347, %if.end187.for.inc194_crit_edge ], [ %audio.0426, %land.lhs.true165.for.inc194_crit_edge ]
  %inc195 = add nuw nsw i32 %i.3427, 1
  %exitcond435.not = icmp eq i32 %inc195, 11
  br i1 %exitcond435.not, label %for.inc194.do.body197_crit_edge, label %for.inc194.for.body160_crit_edge

for.inc194.for.body160_crit_edge:                 ; preds = %for.inc194
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body160

for.inc194.do.body197_crit_edge:                  ; preds = %for.inc194
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body197

do.body197:                                       ; preds = %for.inc194.do.body197_crit_edge, %if.end187.do.body197_crit_edge
  %audio.3 = phi i32 [ %audio.2, %for.inc194.do.body197_crit_edge ], [ %i.3427, %if.end187.do.body197_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !375
  tail call void @arm_heavy_mb() #9
  %199 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %bmmio, align 8
  %add.ptr203 = getelementptr i8, ptr %200, i32 359
  %201 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr203) #9, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !376
  %202 = or i8 %201, 48
  %203 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %bmmio, align 8
  %add.ptr212 = getelementptr i8, ptr %204, i32 359
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr212, i8 %202) #9, !srcloc !323
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %audio.3)
  %cmp213 = icmp eq i32 %audio.3, -1
  br i1 %cmp213, label %do.body197.for.cond.backedge_crit_edge, label %if.end216

do.body197.for.cond.backedge_crit_edge:           ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

if.end216:                                        ; preds = %do.body197
  %arrayidx217 = getelementptr [11 x %struct.saa7134_tvaudio], ptr @tvaudio, i32 0, i32 %audio.3
  tail call fastcc void @tvaudio_setmode(ptr noundef %data, ptr noundef %arrayidx217, ptr noundef nonnull @.str.55)
  %mode1.i = getelementptr [11 x %struct.saa7134_tvaudio], ptr @tvaudio, i32 0, i32 %audio.3, i32 2
  %205 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %mode1.i, align 8
  %207 = zext i32 %206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %207, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %206, label %if.end216.tvaudio_setstereo.exit_crit_edge [
    i32 6, label %if.end216.do.body.i367_crit_edge
    i32 4, label %if.end216.do.body.i367_crit_edge488
    i32 2, label %if.end216.do.body.i367_crit_edge489
    i32 5, label %if.end216.do.body.i367_crit_edge490
  ]

if.end216.do.body.i367_crit_edge490:              ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i367

if.end216.do.body.i367_crit_edge489:              ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i367

if.end216.do.body.i367_crit_edge488:              ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i367

if.end216.do.body.i367_crit_edge:                 ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i367

if.end216.tvaudio_setstereo.exit_crit_edge:       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_setstereo.exit

do.body.i367:                                     ; preds = %if.end216.do.body.i367_crit_edge, %if.end216.do.body.i367_crit_edge488, %if.end216.do.body.i367_crit_edge489, %if.end216.do.body.i367_crit_edge490
  %208 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp.not.i366 = icmp eq i32 %208, 0
  br i1 %cmp.not.i366, label %do.body.i367.do.end4.i_crit_edge, label %do.end.i369

do.body.i367.do.end4.i_crit_edge:                 ; preds = %do.body.i367
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4.i

do.end.i369:                                      ; preds = %do.body.i367
  call void @__sanitizer_cov_trace_pc() #11
  %call.i368 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.91) #12
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i369, %do.body.i367.do.end4.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !377
  tail call void @arm_heavy_mb() #9
  %209 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %bmmio, align 8
  %add.ptr.i370 = getelementptr i8, ptr %210, i32 354
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i370, i8 0) #9, !srcloc !323
  br label %tvaudio_setstereo.exit

tvaudio_setstereo.exit:                           ; preds = %do.end4.i, %if.end216.tvaudio_setstereo.exit_crit_edge
  %211 = ptrtoint ptr %tvaudio to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %arrayidx217, ptr %tvaudio, align 8
  br label %for.cond222.outer

for.cond222.outer:                                ; preds = %for.cond222.outer.backedge, %tvaudio_setstereo.exit
  %lastmode.0.ph = phi i32 [ 42, %tvaudio_setstereo.exit ], [ %mode.0, %for.cond222.outer.backedge ]
  br label %for.cond222

for.cond222:                                      ; preds = %if.end242.for.cond222_crit_edge, %for.cond222.outer
  %212 = tail call i32 @llvm.read_register.i32(metadata !302) #9
  %and.i.i371 = and i32 %212, -16384
  %213 = inttoptr i32 %and.i.i371 to ptr
  %task.i372 = getelementptr inbounds %struct.thread_info, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %task.i372 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %task.i372, align 8
  %flags.i373 = getelementptr inbounds %struct.task_struct, ptr %215, i32 0, i32 3
  %216 = ptrtoint ptr %flags.i373 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %flags.i373, align 4
  %and.i374 = and i32 %217, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i374)
  %tobool.not.i375 = icmp eq i32 %and.i374, 0
  br i1 %tobool.not.i375, label %if.then.i376, label %for.cond222.if.end.i381_crit_edge

for.cond222.if.end.i381_crit_edge:                ; preds = %for.cond222
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i381

if.then.i376:                                     ; preds = %for.cond222
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_check_no_locks_held() #9
  br label %if.end.i381

if.end.i381:                                      ; preds = %if.then.i376, %for.cond222.if.end.i381_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.56, i32 noundef 57) #9
  %218 = tail call i32 @llvm.read_register.i32(metadata !302) #9
  %and.i.i.i377 = and i32 %218, -16384
  %219 = inttoptr i32 %and.i.i.i377 to ptr
  %task.i.i378 = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 2
  %220 = ptrtoint ptr %task.i.i378 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %task.i.i378, align 8
  %call.i.i.i.i.i379 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %222 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool.not.i.i.i380 = icmp eq i32 %222, 0
  br i1 %tobool.not.i.i.i380, label %if.end.i381.try_to_freeze.exit386_crit_edge, label %freezing.exit.i.i383, !prof !314

if.end.i381.try_to_freeze.exit386_crit_edge:      ; preds = %if.end.i381
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_to_freeze.exit386

freezing.exit.i.i383:                             ; preds = %if.end.i381
  %call4.i.i.i382 = tail call zeroext i1 @freezing_slow_path(ptr noundef %221) #9
  br i1 %call4.i.i.i382, label %if.end.i.i385, label %freezing.exit.i.i383.try_to_freeze.exit386_crit_edge, !prof !315

freezing.exit.i.i383.try_to_freeze.exit386_crit_edge: ; preds = %freezing.exit.i.i383
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_to_freeze.exit386

if.end.i.i385:                                    ; preds = %freezing.exit.i.i383
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i384 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #9
  br label %try_to_freeze.exit386

try_to_freeze.exit386:                            ; preds = %if.end.i.i385, %freezing.exit.i.i383.try_to_freeze.exit386_crit_edge, %if.end.i381.try_to_freeze.exit386_crit_edge
  %223 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %scan1, align 4
  %225 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %224, i32 %226)
  %cmp.i389 = icmp eq i32 %224, %226
  br i1 %cmp.i389, label %land.lhs.true.i391, label %try_to_freeze.exit386.tvaudio_sleep.exit397_crit_edge

try_to_freeze.exit386.tvaudio_sleep.exit397_crit_edge: ; preds = %try_to_freeze.exit386
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_sleep.exit397

land.lhs.true.i391:                               ; preds = %try_to_freeze.exit386
  %call.i390 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call.i390, label %land.lhs.true.i391.tvaudio_sleep.exit397_crit_edge, label %if.then.i392

land.lhs.true.i391.tvaudio_sleep.exit397_crit_edge: ; preds = %land.lhs.true.i391
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_sleep.exit397

if.then.i392:                                     ; preds = %land.lhs.true.i391
  call void @__sanitizer_cov_trace_pc() #11
  %call66.i394 = tail call i32 @schedule_timeout_interruptible(i32 noundef 500) #9
  br label %tvaudio_sleep.exit397

tvaudio_sleep.exit397:                            ; preds = %if.then.i392, %land.lhs.true.i391.tvaudio_sleep.exit397_crit_edge, %try_to_freeze.exit386.tvaudio_sleep.exit397_crit_edge
  %227 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %scan1, align 4
  %229 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %230)
  %cmp73.i395.not = icmp eq i32 %228, %230
  br i1 %cmp73.i395.not, label %if.end227, label %tvaudio_sleep.exit397.restart.backedge_crit_edge

tvaudio_sleep.exit397.restart.backedge_crit_edge: ; preds = %tvaudio_sleep.exit397
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.backedge

if.end227:                                        ; preds = %tvaudio_sleep.exit397
  %call228 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call228, label %if.end227.for.cond.backedge_crit_edge, label %if.end230

if.end227.for.cond.backedge_crit_edge:            ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

if.end230:                                        ; preds = %if.end227
  %231 = ptrtoint ptr %mode232 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %mode232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %232)
  %cmp233 = icmp eq i32 %232, -1
  br i1 %cmp233, label %if.then235, label %if.end230.if.end242_crit_edge

if.end230.if.end242_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end242

if.then235:                                       ; preds = %if.end230
  %call237 = tail call fastcc i32 @tvaudio_getstereo(ptr noundef %data, ptr noundef %arrayidx217), !range !378
  %and.i398 = and i32 %call237, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i398)
  %tobool.not.i399 = icmp eq i32 %and.i398, 0
  br i1 %tobool.not.i399, label %if.else.i, label %if.then235.if.end242_crit_edge

if.then235.if.end242_crit_edge:                   ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end242

if.else.i:                                        ; preds = %if.then235
  %and1.i = and i32 %call237, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else4.i, label %if.else.i.if.end242_crit_edge

if.else.i.if.end242_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end242

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i = lshr i32 %call237, 1
  %233 = and i32 %and5.i, 2
  br label %if.end242

if.end242:                                        ; preds = %if.else4.i, %if.else.i.if.end242_crit_edge, %if.then235.if.end242_crit_edge, %if.end230.if.end242_crit_edge
  %mode.0 = phi i32 [ %232, %if.end230.if.end242_crit_edge ], [ 1, %if.then235.if.end242_crit_edge ], [ 3, %if.else.i.if.end242_crit_edge ], [ %233, %if.else4.i ]
  %cmp243.not = icmp eq i32 %lastmode.0.ph, %mode.0
  br i1 %cmp243.not, label %if.end242.for.cond222_crit_edge, label %if.then245

if.end242.for.cond222_crit_edge:                  ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond222

if.then245:                                       ; preds = %if.end242
  %234 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %mode1.i, align 8
  %236 = zext i32 %235 to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %235, label %if.then245.for.cond222.outer.backedge_crit_edge [
    i32 6, label %if.then245.do.body.i402_crit_edge
    i32 4, label %if.then245.do.body.i402_crit_edge491
    i32 2, label %if.then245.do.body.i402_crit_edge492
    i32 5, label %if.then245.do.body.i402_crit_edge493
  ]

if.then245.do.body.i402_crit_edge493:             ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i402

if.then245.do.body.i402_crit_edge492:             ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i402

if.then245.do.body.i402_crit_edge491:             ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i402

if.then245.do.body.i402_crit_edge:                ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i402

if.then245.for.cond222.outer.backedge_crit_edge:  ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond222.outer.backedge

for.cond222.outer.backedge:                       ; preds = %do.end4.i408, %if.then245.for.cond222.outer.backedge_crit_edge
  br label %for.cond222.outer

do.body.i402:                                     ; preds = %if.then245.do.body.i402_crit_edge, %if.then245.do.body.i402_crit_edge491, %if.then245.do.body.i402_crit_edge492, %if.then245.do.body.i402_crit_edge493
  %237 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %cmp.not.i401 = icmp eq i32 %237, 0
  %.pre.i = urem i32 %mode.0, 5
  br i1 %cmp.not.i401, label %do.body.i402.do.end4.i408_crit_edge, label %do.end.i404

do.body.i402.do.end4.i408_crit_edge:              ; preds = %do.body.i402
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4.i408

do.end.i404:                                      ; preds = %do.body.i402
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [5 x ptr], ptr @tvaudio_setstereo.name, i32 0, i32 %.pre.i
  %238 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx.i, align 4
  %call.i403 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %239) #12
  br label %do.end4.i408

do.end4.i408:                                     ; preds = %do.end.i404, %do.body.i402.do.end4.i408_crit_edge
  %arrayidx6.i = getelementptr [5 x i32], ptr @tvaudio_setstereo.fm, i32 0, i32 %.pre.i
  %240 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx6.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !377
  tail call void @arm_heavy_mb() #9
  %conv.i405 = trunc i32 %241 to i8
  %242 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %bmmio, align 8
  %add.ptr.i407 = getelementptr i8, ptr %243, i32 354
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i407, i8 %conv.i405) #9, !srcloc !323
  br label %for.cond222.outer.backedge

done:                                             ; preds = %for.cond.backedge.done_crit_edge, %entry.done_crit_edge
  %stopped = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 80, i32 4
  %244 = ptrtoint ptr %stopped to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 1, ptr %stopped, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %carr_vals) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvaudio_thread_ddep(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @set_freezable() #9
  %call1244 = tail call fastcc i32 @tvaudio_sleep(ptr noundef %data, i32 noundef -1)
  %call2245 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call2245, label %entry.done_crit_edge, label %restart.preheader.lr.ph

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

restart.preheader.lr.ph:                          ; preds = %entry
  %scan2 = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 80, i32 2
  %scan1 = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 80, i32 1
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 20
  %input = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 81
  %tvnorm = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 61
  %tuner_type = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 21
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 18
  br label %restart

restart:                                          ; preds = %restart.backedge, %restart.preheader.lr.ph
  %0 = tail call i32 @llvm.read_register.i32(metadata !302) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %restart.if.end.i_crit_edge

restart.if.end.i_crit_edge:                       ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_check_no_locks_held() #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %restart.if.end.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.56, i32 noundef 57) #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !302) #9
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %10 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !314

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %9) #9
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !315

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #9
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  %11 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scan2, align 8
  %13 = ptrtoint ptr %scan1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %scan1, align 4
  %14 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %try_to_freeze.exit.do.end12_crit_edge, label %do.end

try_to_freeze.exit.do.end12_crit_edge:            ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end:                                           ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %12) #12
  br label %do.end12

do.end12:                                         ; preds = %do.end, %try_to_freeze.exit.do.end12_crit_edge
  %15 = load i32, ptr @audio_ddep, align 4
  %16 = add i32 %15, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %16)
  %17 = icmp ult i32 %16, 11
  br i1 %17, label %if.then15, label %if.else

if.then15:                                        ; preds = %do.end12
  %shl = shl nuw nsw i32 %15, 2
  %or = or i32 %shl, 1
  %18 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp17.not = icmp eq i32 %18, 0
  br i1 %cmp17.not, label %if.then15.if.end107_crit_edge, label %do.end21

if.then15.if.end107_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

do.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [32 x ptr], ptr @stdres, i32 0, i32 %15
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %20) #12
  br label %if.end107

if.else:                                          ; preds = %do.end12
  %21 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %board, align 4
  %radio = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %22, i32 4
  %23 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input, align 4
  %cmp28 = icmp eq ptr %radio, %24
  br i1 %cmp28, label %do.body30, label %if.else46

do.body30:                                        ; preds = %if.else
  %25 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp31.not = icmp eq i32 %25, 0
  br i1 %cmp31.not, label %do.body30.do.end40_crit_edge, label %do.end35

do.body30.do.end40_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

do.end35:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #12
  br label %do.end40

do.end40:                                         ; preds = %do.end35, %do.body30.do.end40_crit_edge
  %26 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %27)
  %cmp41 = icmp eq i32 %27, 54
  br i1 %cmp41, label %if.then42, label %do.end40.if.end107_crit_edge

do.end40.if.end107_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then42:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 @saa_dsp_writel(ptr noundef %data, i32 noundef 267, i32 noundef 7509333)
  br label %if.end107

if.else46:                                        ; preds = %if.else
  %28 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tvnorm, align 4
  %id = getelementptr inbounds %struct.saa7134_tvnorm, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %id, align 8
  %and = and i64 %31, 851983
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 4
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %32, 1
  %34 = and i32 %33, 32
  %35 = or i32 %34, %spec.select
  %and59 = and i64 %31, 3277024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and59)
  %tobool60.not = icmp eq i64 %and59, 0
  %or62 = or i32 %35, 8
  %norms.2 = select i1 %tobool60.not, i32 %35, i32 %or62
  %and66 = and i64 %31, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and66)
  %tobool67.not = icmp eq i64 %and66, 0
  %or69 = or i32 %norms.2, 64
  %norms.3 = select i1 %tobool67.not, i32 %norms.2, i32 %or69
  %and73 = and i64 %31, 12582912
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and73)
  %tobool74.not = icmp eq i64 %and73, 0
  %or76 = or i32 %norms.3, 16
  %norms.4 = select i1 %tobool74.not, i32 %norms.3, i32 %or76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %norms.4)
  %cmp78 = icmp eq i32 %norms.4, 0
  %norms.5 = select i1 %cmp78, i32 124, i32 %norms.4
  %36 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp82.not = icmp eq i32 %36, 0
  br i1 %cmp82.not, label %if.else46.if.end107_crit_edge, label %do.end86

if.else46.if.end107_crit_edge:                    ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

do.end86:                                         ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #11
  %and88 = and i32 %norms.5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %cond = select i1 %tobool89.not, ptr @.str.36, ptr @.str.108
  %and90 = and i32 %norms.5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %cond92 = select i1 %tobool91.not, ptr @.str.36, ptr @.str.109
  %and93 = and i32 %norms.5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  %cond95 = select i1 %tobool94.not, ptr @.str.36, ptr @.str.110
  %and96 = and i32 %norms.5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  %cond98 = select i1 %tobool97.not, ptr @.str.36, ptr @.str.111
  %and99 = and i32 %norms.5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %cond101 = select i1 %tobool100.not, ptr @.str.36, ptr @.str.112
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull %cond, ptr noundef nonnull %cond92, ptr noundef nonnull %cond95, ptr noundef nonnull %cond98, ptr noundef nonnull %cond101) #12
  br label %if.end107

if.end107:                                        ; preds = %do.end86, %if.else46.if.end107_crit_edge, %if.then42, %do.end40.if.end107_crit_edge, %do.end21, %if.then15.if.end107_crit_edge
  %norms.6 = phi i32 [ %or, %do.end21 ], [ %or, %if.then15.if.end107_crit_edge ], [ 69, %if.then42 ], [ %norms.5, %do.end86 ], [ %norms.5, %if.else46.if.end107_crit_edge ], [ 61, %do.end40.if.end107_crit_edge ]
  %call108 = tail call i32 @saa_dsp_writel(ptr noundef %data, i32 noundef 277, i32 noundef 0)
  %or109 = or i32 %norms.6, 128
  %call110 = tail call i32 @saa_dsp_writel(ptr noundef %data, i32 noundef 277, i32 noundef %or109)
  %call111 = tail call i32 @saa_dsp_writel(ptr noundef %data, i32 noundef 281, i32 noundef 0)
  %call112 = tail call i32 @saa_dsp_writel(ptr noundef %data, i32 noundef 284, i32 noundef 1052688)
  %37 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %scan1, align 4
  %39 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i = icmp eq i32 %38, %40
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end107.tvaudio_sleep.exit_crit_edge

if.end107.tvaudio_sleep.exit_crit_edge:           ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_sleep.exit

land.lhs.true.i:                                  ; preds = %if.end107
  %call.i = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call.i, label %land.lhs.true.i.tvaudio_sleep.exit_crit_edge, label %if.then.i241

land.lhs.true.i.tvaudio_sleep.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tvaudio_sleep.exit

if.then.i241:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call66.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 300) #9
  br label %tvaudio_sleep.exit

tvaudio_sleep.exit:                               ; preds = %if.then.i241, %land.lhs.true.i.tvaudio_sleep.exit_crit_edge, %if.end107.tvaudio_sleep.exit_crit_edge
  %41 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scan1, align 4
  %43 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp73.i.not = icmp eq i32 %42, %44
  br i1 %cmp73.i.not, label %if.end116, label %tvaudio_sleep.exit.restart.backedge_crit_edge

tvaudio_sleep.exit.restart.backedge_crit_edge:    ; preds = %tvaudio_sleep.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.backedge

restart.backedge:                                 ; preds = %do.end192.restart.backedge_crit_edge, %tvaudio_sleep.exit.restart.backedge_crit_edge
  br label %restart

if.end116:                                        ; preds = %tvaudio_sleep.exit
  %45 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %46, i32 330
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !379
  %48 = and i32 %47, -256
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp122.not = icmp eq i32 %50, 0
  br i1 %cmp122.not, label %if.end116.do.end192_crit_edge, label %do.body140

if.end116.do.end192_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end192

do.body140:                                       ; preds = %if.end116
  %and128 = and i32 %49, 31
  %arrayidx129 = getelementptr [32 x ptr], ptr @stdres, i32 0, i32 %and128
  %51 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx129, align 4
  %and130 = and i32 %49, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  %cond132 = select i1 %tobool131.not, ptr @.str.36, ptr @.str.116
  %and133 = and i32 %49, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  %cond135 = select i1 %tobool134.not, ptr @.str.36, ptr @.str.117
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %49, ptr noundef %52, ptr noundef nonnull %cond132, ptr noundef nonnull %cond135) #12
  %.pr = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp141.not = icmp eq i32 %.pr, 0
  br i1 %cmp141.not, label %do.body140.do.end192_crit_edge, label %do.end145

do.body140.do.end192_crit_edge:                   ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end192

do.end145:                                        ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #11
  %and147 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  %cond149 = select i1 %tobool148.not, ptr @.str.36, ptr @.str.121
  %and150 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  %cond152 = select i1 %tobool151.not, ptr @.str.36, ptr @.str.122
  %and153 = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  %cond155 = select i1 %tobool154.not, ptr @.str.36, ptr @.str.123
  %and156 = and i32 %49, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  %cond158 = select i1 %tobool157.not, ptr @.str.36, ptr @.str.124
  %and159 = and i32 %49, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  %cond161 = select i1 %tobool160.not, ptr @.str.36, ptr @.str.125
  %and162 = and i32 %49, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  %cond164 = select i1 %tobool163.not, ptr @.str.36, ptr @.str.126
  %and165 = and i32 %49, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  %cond167 = select i1 %tobool166.not, ptr @.str.36, ptr @.str.127
  %and168 = and i32 %49, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  %cond170 = select i1 %tobool169.not, ptr @.str.36, ptr @.str.128
  %and171 = and i32 %49, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  %cond173 = select i1 %tobool172.not, ptr @.str.36, ptr @.str.129
  %and174 = and i32 %49, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  %cond176 = select i1 %tobool175.not, ptr @.str.36, ptr @.str.130
  %and177 = and i32 %49, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  %cond179 = select i1 %tobool178.not, ptr @.str.36, ptr @.str.131
  %and180 = and i32 %49, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  %cond182 = select i1 %tobool181.not, ptr @.str.36, ptr @.str.132
  %and183 = and i32 %49, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  %cond185 = select i1 %tobool184.not, ptr @.str.36, ptr @.str.133
  %and186 = and i32 %49, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  %cond188 = select i1 %tobool187.not, ptr @.str.36, ptr @.str.134
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull %cond149, ptr noundef nonnull %cond152, ptr noundef nonnull %cond155, ptr noundef nonnull %cond158, ptr noundef nonnull %cond161, ptr noundef nonnull %cond164, ptr noundef nonnull %cond167, ptr noundef nonnull %cond170, ptr noundef nonnull %cond173, ptr noundef nonnull %cond176, ptr noundef nonnull %cond179, ptr noundef nonnull %cond182, ptr noundef nonnull %cond185, ptr noundef nonnull %cond188) #12
  br label %do.end192

do.end192:                                        ; preds = %do.end145, %do.body140.do.end192_crit_edge, %if.end116.do.end192_crit_edge
  %call1 = tail call fastcc i32 @tvaudio_sleep(ptr noundef %data, i32 noundef -1)
  %call2 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call2, label %do.end192.done_crit_edge, label %do.end192.restart.backedge_crit_edge

do.end192.restart.backedge_crit_edge:             ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.backedge

do.end192.done_crit_edge:                         ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

done:                                             ; preds = %do.end192.done_crit_edge, %entry.done_crit_edge
  %stopped = getelementptr inbounds %struct.saa7134_dev, ptr %data, i32 0, i32 80, i32 4
  %53 = ptrtoint ptr %stopped to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %stopped, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @saa7134_tvaudio_close(ptr nocapture noundef writeonly %dev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %automute = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 79
  %0 = ptrtoint ptr %automute to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %automute, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_tvaudio_fini(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %thread = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 80
  %0 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %stopped = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 80, i32 4
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @kthread_stop(ptr noundef nonnull %1) #9
  br label %do.body

do.body:                                          ; preds = %if.then, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !380
  tail call void @arm_heavy_mb() #9
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 366
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !381
  %7 = and i8 %6, -8
  %8 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio, align 8
  %add.ptr10 = getelementptr i8, ptr %9, i32 366
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 %7) #9, !srcloc !323
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_tvaudio_do_scan(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 81
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %amux = getelementptr inbounds %struct.saa7134_input, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %amux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %amux, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %4 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not = icmp eq i32 %4, 0
  br i1 %cmp1.not, label %do.body.do.end4_crit_edge, label %do.end

do.body.do.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %do.body.do.end4_crit_edge
  %automute = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 79
  %5 = ptrtoint ptr %automute to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %automute, align 4
  %pci.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %6 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device.i, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.165)
  switch i16 %9, label %do.end4.if.end20_crit_edge [
    i16 28976, label %do.end4.sw.bb.i_crit_edge
    i16 28980, label %do.end4.sw.bb.i_crit_edge36
    i16 28979, label %do.end4.sw.bb1.i_crit_edge
    i16 28981, label %do.end4.sw.bb1.i_crit_edge37
  ]

do.end4.sw.bb1.i_crit_edge37:                     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

do.end4.sw.bb1.i_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

do.end4.sw.bb.i_crit_edge36:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

do.end4.sw.bb.i_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

do.end4.if.end20_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

sw.bb.i:                                          ; preds = %do.end4.sw.bb.i_crit_edge, %do.end4.sw.bb.i_crit_edge36
  tail call fastcc void @mute_input_7134(ptr noundef %dev) #9
  br label %if.end20

sw.bb1.i:                                         ; preds = %do.end4.sw.bb1.i_crit_edge, %do.end4.sw.bb1.i_crit_edge37
  tail call fastcc void @mute_input_7133(ptr noundef %dev) #9
  br label %if.end20

if.else:                                          ; preds = %entry
  %thread = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 80
  %11 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %thread, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.else17, label %if.then6

if.then6:                                         ; preds = %if.else
  %mode = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 80, i32 3
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %mode, align 4
  %scan2 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 80, i32 2
  %14 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scan2, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %scan2, align 8
  %insuspend = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 86
  %16 = ptrtoint ptr %insuspend to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %insuspend, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not = icmp eq i32 %17, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.then6.if.end20_crit_edge

if.then6.if.end20_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true:                                    ; preds = %if.then6
  %stopped = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 80, i32 4
  %18 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 @wake_up_process(ptr noundef nonnull %12) #9
  br label %if.end20

if.else17:                                        ; preds = %if.else
  %automute18 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 79
  %20 = ptrtoint ptr %automute18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %automute18, align 4
  %pci.i31 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %21 = ptrtoint ptr %pci.i31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci.i31, align 4
  %device.i32 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %device.i32 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %device.i32, align 2
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.166)
  switch i16 %24, label %if.else17.if.end20_crit_edge [
    i16 28976, label %if.else17.sw.bb.i33_crit_edge
    i16 28980, label %if.else17.sw.bb.i33_crit_edge38
    i16 28979, label %if.else17.sw.bb1.i34_crit_edge
    i16 28981, label %if.else17.sw.bb1.i34_crit_edge39
  ]

if.else17.sw.bb1.i34_crit_edge39:                 ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i34

if.else17.sw.bb1.i34_crit_edge:                   ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i34

if.else17.sw.bb.i33_crit_edge38:                  ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i33

if.else17.sw.bb.i33_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i33

if.else17.if.end20_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

sw.bb.i33:                                        ; preds = %if.else17.sw.bb.i33_crit_edge, %if.else17.sw.bb.i33_crit_edge38
  tail call fastcc void @mute_input_7134(ptr noundef %dev) #9
  br label %if.end20

sw.bb1.i34:                                       ; preds = %if.else17.sw.bb1.i34_crit_edge, %if.else17.sw.bb1.i34_crit_edge39
  tail call fastcc void @mute_input_7133(ptr noundef %dev) #9
  br label %if.end20

if.end20:                                         ; preds = %sw.bb1.i34, %sw.bb.i33, %if.else17.if.end20_crit_edge, %if.then12, %land.lhs.true.if.end20_crit_edge, %if.then6.if.end20_crit_edge, %sw.bb1.i, %sw.bb.i, %do.end4.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa_dsp_reset_error_bit(ptr noundef %dev) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1408
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  %3 = and i8 %2, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %do.body, !prof !314

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.body:                                          ; preds = %entry
  %4 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %do.end, label %do.body.do.body11_crit_edge

do.body.do.body11_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name) #12
  br label %do.body11

do.body11:                                        ; preds = %do.end, %do.body.do.body11_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bmmio, align 8
  %add.ptr15 = getelementptr i8, ptr %6, i32 1414
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 1) #9, !srcloc !323
  br label %if.end16

if.end16:                                         ; preds = %do.body11, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_track_gpio(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tvaudio_sleep(ptr nocapture noundef readonly %dev, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scan1 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 80, i32 1
  %0 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scan1, align 4
  %scan2 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 80, i32 2
  %2 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end68_crit_edge

entry.if.end68_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call, label %land.lhs.true.if.end68_crit_edge, label %if.then

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp2 = icmp slt i32 %timeout, 0
  br i1 %cmp2, label %__here, label %if.else.i

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !302) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@tvaudio_sleep, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !384
  tail call void @schedule() #9
  br label %if.end68

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #9
  %call66 = tail call i32 @schedule_timeout_interruptible(i32 noundef %call2.i) #9
  br label %if.end68

if.end68:                                         ; preds = %if.else.i, %__here, %land.lhs.true.if.end68_crit_edge, %entry.if.end68_crit_edge
  %11 = ptrtoint ptr %scan1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scan1, align 4
  %13 = ptrtoint ptr %scan2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scan2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp73 = icmp ne i32 %12, %14
  %conv = zext i1 %cmp73 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tvaudio_setmode(ptr noundef readonly %dev, ptr nocapture noundef readonly %audio, ptr noundef %note) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tvnorm = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 61
  %0 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tvnorm, align 4
  %id = getelementptr inbounds %struct.saa7134_tvnorm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 45056, i64 %3)
  %cmp = icmp eq i64 %3, 45056
  %. = select i1 %cmp, i32 102502, i32 122880
  %4 = load i32, ptr @audio_clock_tweak, align 4
  %5 = add i32 %4, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %5)
  %6 = icmp ult i32 %5, 2047
  %tweak.0 = select i1 %6, i32 %4, i32 0
  %tobool.not = icmp eq ptr %note, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %do.body

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.body:                                          ; preds = %entry
  %7 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.not = icmp eq i32 %7, 0
  br i1 %cmp6.not, label %do.body.if.end16_crit_edge, label %do.end

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %audio, align 8
  %carr1 = getelementptr inbounds %struct.saa7134_tvaudio, ptr %audio, i32 0, i32 3
  %10 = ptrtoint ptr %carr1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %carr1, align 4
  %.frozen = freeze i32 %11
  %div = sdiv i32 %.frozen, 1000
  %12 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %.frozen, %12
  %carr2 = getelementptr inbounds %struct.saa7134_tvaudio, ptr %audio, i32 0, i32 4
  %13 = ptrtoint ptr %carr2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %carr2, align 8
  %.frozen178 = freeze i32 %14
  %div10 = sdiv i32 %.frozen178, 1000
  %15 = mul i32 %div10, 1000
  %rem12.decomposed = sub i32 %.frozen178, %15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull %note, ptr noundef %9, i32 noundef %div, i32 noundef %rem.decomposed, i32 noundef %div10, i32 noundef %rem12.decomposed, i32 noundef %., i32 noundef %tweak.0) #12
  br label %if.end16

if.end16:                                         ; preds = %do.end, %do.body.if.end16_crit_edge, %entry.if.end16_crit_edge
  %add = add nsw i32 %tweak.0, %.
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %add to i8
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %16 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %17, i32 372
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call void @arm_heavy_mb() #9
  %and23 = lshr i32 %add, 8
  %conv25 = trunc i32 %and23 to i8
  %18 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmmio, align 8
  %add.ptr27 = getelementptr i8, ptr %19, i32 373
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 %conv25) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %and31 = lshr i32 %add, 16
  %20 = trunc i32 %and31 to i8
  %21 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmmio, align 8
  %add.ptr35 = getelementptr i8, ptr %22, i32 374
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 %20) #9, !srcloc !323
  %carr136 = getelementptr inbounds %struct.saa7134_tvaudio, ptr %audio, i32 0, i32 3
  %23 = ptrtoint ptr %carr136 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %carr136, align 4
  %carr237 = getelementptr inbounds %struct.saa7134_tvaudio, ptr %audio, i32 0, i32 4
  %25 = ptrtoint ptr %carr237 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %carr237, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i = icmp eq i32 %26, -1
  %spec.select.i = select i1 %cmp.i, i32 %24, i32 %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @arm_heavy_mb() #9
  %conv.i.i = zext i32 %24 to i64
  %div82.i.i = shl nuw nsw i64 %conv.i.i, 12
  %27 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div82.i.i, i64 6148914691236517205) #13, !srcloc !364
  %28 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div82.i.i, i64 %27) #13, !srcloc !365
  %conv183.i.i = trunc i64 %28 to i32
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv183.i.i) #9
  %lmmio.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %30 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %31, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %29) #9, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  tail call void @arm_heavy_mb() #9
  %conv.i9.i = zext i32 %spec.select.i to i64
  %div82.i10.i = shl nuw nsw i64 %conv.i9.i, 12
  %32 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div82.i10.i, i64 6148914691236517205) #13, !srcloc !364
  %33 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div82.i10.i, i64 %32) #13, !srcloc !365
  %conv183.i11.i = trunc i64 %33 to i32
  %34 = tail call i32 @llvm.bswap.i32(i32 %conv183.i11.i) #9
  %35 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio.i, align 4
  %add.ptr5.i = getelementptr i32, ptr %36, i32 85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %34) #9, !srcloc !318
  %mode = getelementptr inbounds %struct.saa7134_tvaudio, ptr %audio, i32 0, i32 2
  %37 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode, align 8
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %38, label %if.end16.sw.epilog_crit_edge [
    i32 1, label %if.end16.do.body38_crit_edge
    i32 2, label %if.end16.do.body38_crit_edge179
    i32 4, label %do.body64
    i32 6, label %do.body90
    i32 5, label %do.body116
  ]

if.end16.do.body38_crit_edge179:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

if.end16.do.body38_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body38:                                        ; preds = %if.end16.do.body38_crit_edge, %if.end16.do.body38_crit_edge179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !388
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bmmio, align 8
  %add.ptr42 = getelementptr i8, ptr %41, i32 331
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42, i8 0) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bmmio, align 8
  %add.ptr47 = getelementptr i8, ptr %43, i32 330
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr47, i8 0) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bmmio, align 8
  %add.ptr52 = getelementptr i8, ptr %45, i32 353
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr52, i8 34) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !391
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bmmio, align 8
  %add.ptr57 = getelementptr i8, ptr %47, i32 354
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr57, i8 -128) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !392
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bmmio, align 8
  %add.ptr62 = getelementptr i8, ptr %49, i32 359
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr62, i8 -96) #9, !srcloc !323
  br label %sw.epilog

do.body64:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  tail call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bmmio, align 8
  %add.ptr68 = getelementptr i8, ptr %51, i32 331
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr68, i8 0) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bmmio, align 8
  %add.ptr73 = getelementptr i8, ptr %53, i32 330
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr73, i8 1) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !395
  tail call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bmmio, align 8
  %add.ptr78 = getelementptr i8, ptr %55, i32 353
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr78, i8 34) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !396
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bmmio, align 8
  %add.ptr83 = getelementptr i8, ptr %57, i32 354
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr83, i8 -128) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !397
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bmmio, align 8
  %add.ptr88 = getelementptr i8, ptr %59, i32 359
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr88, i8 -96) #9, !srcloc !323
  br label %sw.epilog

do.body90:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !398
  tail call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bmmio, align 8
  %add.ptr94 = getelementptr i8, ptr %61, i32 331
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr94, i8 16) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !399
  tail call void @arm_heavy_mb() #9
  %62 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bmmio, align 8
  %add.ptr99 = getelementptr i8, ptr %63, i32 330
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr99, i8 0) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !400
  tail call void @arm_heavy_mb() #9
  %64 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bmmio, align 8
  %add.ptr104 = getelementptr i8, ptr %65, i32 353
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr104, i8 68) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !401
  tail call void @arm_heavy_mb() #9
  %66 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bmmio, align 8
  %add.ptr109 = getelementptr i8, ptr %67, i32 359
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr109, i8 -95) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !402
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bmmio, align 8
  %add.ptr114 = getelementptr i8, ptr %69, i32 357
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr114, i8 0) #9, !srcloc !323
  br label %sw.epilog

do.body116:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  tail call void @arm_heavy_mb() #9
  %70 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bmmio, align 8
  %add.ptr120 = getelementptr i8, ptr %71, i32 331
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr120, i8 18) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %72 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bmmio, align 8
  %add.ptr125 = getelementptr i8, ptr %73, i32 330
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr125, i8 0) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  %74 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bmmio, align 8
  %add.ptr130 = getelementptr i8, ptr %75, i32 353
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr130, i8 68) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !406
  tail call void @arm_heavy_mb() #9
  %76 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bmmio, align 8
  %add.ptr135 = getelementptr i8, ptr %77, i32 359
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr135, i8 -95) #9, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !407
  tail call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bmmio, align 8
  %add.ptr140 = getelementptr i8, ptr %79, i32 357
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr140, i8 0) #9, !srcloc !323
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body116, %do.body90, %do.body64, %do.body38, %if.end16.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !198, !200, !202, !204, !206, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !231, !232, !233, !234, !236, !237, !238, !239, !240, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300}
!llvm.named.register.sp = !{!302}
!llvm.module.flags = !{!303, !304, !305, !306, !307, !308, !309, !310}
!llvm.ident = !{!311}

!0 = !{ptr @__param_audio_debug, !1, !"__param_audio_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_audio_debugtype387, !1, !"__UNIQUE_ID_audio_debugtype387", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_audio_debug388, !4, !"__UNIQUE_ID_audio_debug388", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 26, i32 1}
!5 = !{ptr @__param_audio_ddep, !6, !"__param_audio_ddep", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 29, i32 1}
!7 = !{ptr @__UNIQUE_ID_audio_ddeptype389, !6, !"__UNIQUE_ID_audio_ddeptype389", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_audio_ddep390, !9, !"__UNIQUE_ID_audio_ddep390", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 30, i32 1}
!10 = !{ptr @__param_audio_clock_override, !11, !"__param_audio_clock_override", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 33, i32 1}
!12 = !{ptr @__UNIQUE_ID_audio_clock_overridetype391, !11, !"__UNIQUE_ID_audio_clock_overridetype391", i1 false, i1 false}
!13 = !{ptr @__param_audio_clock_tweak, !14, !"__param_audio_clock_tweak", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 36, i32 1}
!15 = !{ptr @__UNIQUE_ID_audio_clock_tweaktype392, !14, !"__UNIQUE_ID_audio_clock_tweaktype392", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_audio_clock_tweak393, !17, !"__UNIQUE_ID_audio_clock_tweak393", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 37, i32 1}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 686, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @saa_dsp_writel._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @saa_dsp_writel._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 1019, i32 24}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 1021, i32 4}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @saa7134_tvaudio_init2._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @saa7134_tvaudio_init2._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 1051, i32 3}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @saa7134_tvaudio_do_scan._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @saa7134_tvaudio_do_scan._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_saa_dsp_writel, !37, !"__ksymtab_saa_dsp_writel", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 1067, i32 1}
!38 = !{ptr @__ksymtab_saa7134_tvaudio_setmute, !39, !"__ksymtab_saa7134_tvaudio_setmute", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 1068, i32 1}
!40 = !{ptr @audio_debug, !41, !"audio_debug", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 24, i32 21}
!42 = !{ptr @audio_ddep, !43, !"audio_ddep", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 28, i32 21}
!44 = !{ptr @audio_clock_tweak, !45, !"audio_clock_tweak", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 35, i32 12}
!46 = !{ptr @__param_str_audio_debug, !1, !"__param_str_audio_debug", i1 false, i1 false}
!47 = !{ptr @__param_str_audio_ddep, !6, !"__param_str_audio_ddep", i1 false, i1 false}
!48 = !{ptr @__param_str_audio_clock_override, !11, !"__param_str_audio_clock_override", i1 false, i1 false}
!49 = !{ptr @audio_clock_override, !50, !"audio_clock_override", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 32, i32 12}
!51 = !{ptr @__param_str_audio_clock_tweak, !14, !"__param_str_audio_clock_tweak", i1 false, i1 false}
!52 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 661, i32 3}
!54 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @saa_dsp_wait_bit._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @saa_dsp_wait_bit._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 667, i32 4}
!59 = !{ptr @saa_dsp_wait_bit._entry.10, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @saa_dsp_wait_bit._entry_ptr.12, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 649, i32 3}
!67 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @saa_dsp_reset_error_bit._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @saa_dsp_reset_error_bit._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 193, i32 3}
!72 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mute_input_7134._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @mute_input_7134._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 198, i32 2}
!77 = !{ptr @mute_input_7134._entry.21, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @mute_input_7134._entry_ptr.23, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 377, i32 3}
!81 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @tvaudio_getstereo._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @tvaudio_getstereo._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 391, i32 3}
!86 = !{ptr @tvaudio_getstereo._entry.26, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @tvaudio_getstereo._entry_ptr.28, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 394, i32 4}
!90 = !{ptr @tvaudio_getstereo._entry.29, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @tvaudio_getstereo._entry_ptr.31, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 413, i32 3}
!94 = !{ptr @tvaudio_getstereo._entry.32, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @tvaudio_getstereo._entry_ptr.34, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 478, i32 3}
!103 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @tvaudio_thread._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @tvaudio_thread._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 509, i32 4}
!108 = !{ptr @tvaudio_thread._entry.42, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @tvaudio_thread._entry_ptr.44, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 534, i32 4}
!112 = !{ptr @tvaudio_thread._entry.45, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @tvaudio_thread._entry_ptr.47, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 543, i32 4}
!116 = !{ptr @tvaudio_thread._entry.48, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @tvaudio_thread._entry_ptr.50, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 550, i32 4}
!120 = !{ptr @tvaudio_thread._entry.51, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @tvaudio_thread._entry_ptr.53, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 567, i32 36}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 578, i32 39}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 307, i32 4}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 58, i32 11}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 62, i32 11}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 66, i32 11}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 70, i32 11}
!138 = !{ptr @mainscan, !139, !"mainscan", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 56, i32 3}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 254, i32 3}
!142 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @tvaudio_setmode._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @tvaudio_setmode._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 78, i32 20}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 84, i32 20}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 90, i32 20}
!151 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 96, i32 20}
!153 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 102, i32 20}
!155 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 108, i32 20}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 114, i32 20}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 120, i32 20}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 126, i32 20}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 132, i32 20}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 138, i32 20}
!167 = !{ptr @tvaudio, !168, !"tvaudio", i1 false, i1 false}
!168 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 76, i32 31}
!169 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 322, i32 3}
!171 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @tvaudio_checkcarrier._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @tvaudio_checkcarrier._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 329, i32 3}
!176 = !{ptr @tvaudio_checkcarrier._entry.76, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @tvaudio_checkcarrier._entry_ptr.78, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 337, i32 5}
!180 = !{ptr @tvaudio_checkcarrier._entry.79, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @tvaudio_checkcarrier._entry_ptr.81, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 339, i32 5}
!184 = !{ptr @tvaudio_checkcarrier._entry.82, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @tvaudio_checkcarrier._entry_ptr.84, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 341, i32 3}
!188 = !{ptr @tvaudio_checkcarrier._entry.85, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @tvaudio_checkcarrier._entry_ptr.87, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 359, i32 2}
!192 = !{ptr @tvaudio_checkcarrier._entry.88, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @tvaudio_checkcarrier._entry_ptr.90, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 425, i32 32}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 426, i32 32}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 428, i32 32}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 427, i32 32}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 429, i32 38}
!204 = !{ptr @tvaudio_setstereo.name, !205, !"name", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 424, i32 15}
!206 = !{ptr @tvaudio_setstereo.fm, !207, !"fm", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 431, i32 13}
!208 = !{ptr @.str.96, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 448, i32 3}
!210 = !{ptr @.str.97, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @tvaudio_setstereo._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @tvaudio_setstereo._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.98, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 774, i32 3}
!215 = !{ptr @tvaudio_thread_ddep._entry, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @tvaudio_thread_ddep._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.100, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 780, i32 4}
!219 = !{ptr @tvaudio_thread_ddep._entry.99, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @tvaudio_thread_ddep._entry_ptr.101, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 783, i32 4}
!223 = !{ptr @tvaudio_thread_ddep._entry.102, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @tvaudio_thread_ddep._entry_ptr.104, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 806, i32 4}
!227 = !{ptr @tvaudio_thread_ddep._entry.105, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @tvaudio_thread_ddep._entry_ptr.107, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.109, !226, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.110, !226, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.111, !226, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.114, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 826, i32 3}
!236 = !{ptr @tvaudio_thread_ddep._entry.113, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @tvaudio_thread_ddep._entry_ptr.115, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.116, !235, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.119, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 830, i32 3}
!242 = !{ptr @tvaudio_thread_ddep._entry.118, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @tvaudio_thread_ddep._entry_ptr.120, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.121, !241, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.122, !241, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.123, !241, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.124, !241, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.125, !241, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.126, !241, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.127, !241, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.128, !241, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.129, !241, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.130, !241, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.131, !241, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.132, !241, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.133, !241, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.134, !241, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.135, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 614, i32 11}
!260 = !{ptr @.str.136, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 615, i32 11}
!262 = !{ptr @.str.137, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 616, i32 11}
!264 = !{ptr @.str.138, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 617, i32 11}
!266 = !{ptr @.str.139, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 619, i32 11}
!268 = !{ptr @.str.140, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 620, i32 11}
!270 = !{ptr @.str.141, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 621, i32 11}
!272 = !{ptr @.str.142, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 622, i32 11}
!274 = !{ptr @.str.143, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 623, i32 11}
!276 = !{ptr @.str.144, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 624, i32 11}
!278 = !{ptr @.str.145, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 625, i32 11}
!280 = !{ptr @.str.146, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 626, i32 11}
!282 = !{ptr @.str.147, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 628, i32 11}
!284 = !{ptr @.str.148, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 629, i32 11}
!286 = !{ptr @.str.149, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 630, i32 11}
!288 = !{ptr @.str.150, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 632, i32 11}
!290 = !{ptr @.str.151, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 633, i32 11}
!292 = !{ptr @.str.152, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 634, i32 11}
!294 = !{ptr @.str.153, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 635, i32 11}
!296 = !{ptr @.str.154, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 637, i32 21}
!298 = !{ptr @.str.155, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 638, i32 11}
!300 = !{ptr @stdres, !301, !"stdres", i1 false, i1 false}
!301 = !{!"../drivers/media/pci/saa7134/saa7134-tvaudio.c", i32 613, i32 14}
!302 = !{!"sp"}
!303 = !{i32 1, !"wchar_size", i32 2}
!304 = !{i32 1, !"min_enum_size", i32 4}
!305 = !{i32 8, !"branch-target-enforcement", i32 0}
!306 = !{i32 8, !"sign-return-address", i32 0}
!307 = !{i32 8, !"sign-return-address-all", i32 0}
!308 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!309 = !{i32 7, !"uwtable", i32 1}
!310 = !{i32 7, !"frame-pointer", i32 2}
!311 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!312 = !{i64 5038413}
!313 = !{i64 2158910080}
!314 = !{!"branch_weights", i32 2000, i32 1}
!315 = !{!"branch_weights", i32 1, i32 2000}
!316 = !{i64 2158914885}
!317 = !{i64 2158917078}
!318 = !{i64 5038215}
!319 = !{i64 2158940358}
!320 = !{i64 5038633}
!321 = !{i64 2158941407}
!322 = !{i64 2158941769}
!323 = !{i64 5038018}
!324 = !{i64 2158942110}
!325 = !{i64 2158942458}
!326 = !{i64 2158942811}
!327 = !{i64 2158943158}
!328 = !{i64 2158943499}
!329 = !{i64 2158841211}
!330 = !{i64 2158842085}
!331 = !{i64 2158842264}
!332 = !{i64 2158843128}
!333 = !{i64 2158843307}
!334 = !{i64 2158844169}
!335 = !{i64 2158844348}
!336 = !{i64 2158847748}
!337 = !{i64 2158848761}
!338 = !{i64 2158849984}
!339 = !{i64 2158851005}
!340 = !{i64 2158918161}
!341 = !{i64 2158919653}
!342 = !{i64 2158920666}
!343 = !{i64 2158921889}
!344 = !{i64 2158922910}
!345 = !{i64 2158943968}
!346 = !{i64 2158944333}
!347 = !{i64 2158944698}
!348 = !{i64 2158917853}
!349 = !{i64 2158880133}
!350 = !{i64 2158882305}
!351 = !{i64 2158884376}
!352 = !{i64 2158945088}
!353 = !{i64 2158946001}
!354 = !{i64 2158946389}
!355 = !{i64 2158946778}
!356 = !{i64 2158947135}
!357 = !{i64 2158947476}
!358 = !{i64 2158947817}
!359 = !{i64 2158948178}
!360 = !{i64 2158894216}
!361 = !{i64 2158894557}
!362 = !{i64 2158897234}
!363 = !{i64 2158835453}
!364 = !{i64 1083024, i64 1083051}
!365 = !{i64 1083364, i64 1083391, i64 1083425, i64 1083446}
!366 = !{i64 2158836050}
!367 = !{i64 2158870611}
!368 = !{i64 2158871184}
!369 = !{i64 2158875923}
!370 = !{i64 2158876496}
!371 = !{i64 2158877065}
!372 = !{i64 2158877638}
!373 = !{i64 2158905263}
!374 = !{i64 2158905442}
!375 = !{i64 2158906691}
!376 = !{i64 2158906870}
!377 = !{i64 2158891615}
!378 = !{i32 -1, i32 13}
!379 = !{i64 2158932323}
!380 = !{i64 2158951255}
!381 = !{i64 2158951434}
!382 = !{i64 2158907422}
!383 = !{i64 2158909568}
!384 = !{i64 2158866388}
!385 = !{i64 2158853946}
!386 = !{i64 2158854341}
!387 = !{i64 2158854738}
!388 = !{i64 2158855098}
!389 = !{i64 2158855439}
!390 = !{i64 2158855780}
!391 = !{i64 2158856121}
!392 = !{i64 2158856462}
!393 = !{i64 2158856803}
!394 = !{i64 2158857144}
!395 = !{i64 2158857485}
!396 = !{i64 2158857826}
!397 = !{i64 2158858167}
!398 = !{i64 2158858508}
!399 = !{i64 2158858849}
!400 = !{i64 2158859190}
!401 = !{i64 2158859531}
!402 = !{i64 2158859872}
!403 = !{i64 2158860213}
!404 = !{i64 2158860554}
!405 = !{i64 2158860895}
!406 = !{i64 2158861236}
!407 = !{i64 2158861577}
