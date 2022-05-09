; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-core/dvb_demux.c_pt.bc'
source_filename = "../drivers/media/dvb-core/dvb_demux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dvb_dmx_swfilter_packets\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_dmx_swfilter_packets\09\09\09\09"
module asm "\09.long\09__crc_dvb_dmx_swfilter_packets\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmx_swfilter_packets:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmx_swfilter_packets\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmx_swfilter_packets:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_dmx_swfilter\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_dmx_swfilter\09\09\09\09"
module asm "\09.long\09__crc_dvb_dmx_swfilter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmx_swfilter:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmx_swfilter\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmx_swfilter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_dmx_swfilter_204\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_dmx_swfilter_204\09\09\09\09"
module asm "\09.long\09__crc_dvb_dmx_swfilter_204\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmx_swfilter_204:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmx_swfilter_204\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmx_swfilter_204:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_dmx_swfilter_raw\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_dmx_swfilter_raw\09\09\09\09"
module asm "\09.long\09__crc_dvb_dmx_swfilter_raw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmx_swfilter_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmx_swfilter_raw\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmx_swfilter_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_dmx_init\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_dmx_init\09\09\09\09"
module asm "\09.long\09__crc_dvb_dmx_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmx_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmx_init\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmx_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_dmx_release\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_dmx_release\09\09\09\09"
module asm "\09.long\09__crc_dvb_dmx_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmx_release:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmx_release\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmx_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dvb_demux_feed = type { %union.anon.68, %union.anon.69, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.68 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.dvb_demux_filter = type { %struct.dmx_section_filter, [18 x i8], [18 x i8], i8, ptr, ptr, i32, i32, i32, i16 }
%struct.dmx_section_filter = type { [18 x i8], [18 x i8], [18 x i8], ptr, ptr }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dmx_ts_feed = type { i32, ptr, ptr, ptr, ptr, ptr }

@__param_str_dvb_demux_tscheck = internal constant [27 x i8] c"dvb_core.dvb_demux_tscheck\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_demux_tscheck = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dvb_demux_tscheck = internal constant %struct.kernel_param { ptr @__param_str_dvb_demux_tscheck, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @dvb_demux_tscheck } }, section "__param", align 4
@__UNIQUE_ID_dvb_demux_tschecktype213 = internal constant [40 x i8] c"dvb_core.parmtype=dvb_demux_tscheck:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dvb_demux_tscheck214 = internal constant [81 x i8] c"dvb_core.parm=dvb_demux_tscheck:enable transport stream continuity and TEI check\00", section ".modinfo", align 1
@__param_str_dvb_demux_speedcheck = internal constant [30 x i8] c"dvb_core.dvb_demux_speedcheck\00", align 1
@dvb_demux_speedcheck = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dvb_demux_speedcheck = internal constant %struct.kernel_param { ptr @__param_str_dvb_demux_speedcheck, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @dvb_demux_speedcheck } }, section "__param", align 4
@__UNIQUE_ID_dvb_demux_speedchecktype215 = internal constant [43 x i8] c"dvb_core.parmtype=dvb_demux_speedcheck:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dvb_demux_speedcheck216 = internal constant [71 x i8] c"dvb_core.parm=dvb_demux_speedcheck:enable transport stream speed check\00", section ".modinfo", align 1
@__param_str_dvb_demux_feed_err_pkts = internal constant [33 x i8] c"dvb_core.dvb_demux_feed_err_pkts\00", align 1
@dvb_demux_feed_err_pkts = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_dvb_demux_feed_err_pkts = internal constant %struct.kernel_param { ptr @__param_str_dvb_demux_feed_err_pkts, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @dvb_demux_feed_err_pkts } }, section "__param", align 4
@__UNIQUE_ID_dvb_demux_feed_err_pktstype217 = internal constant [46 x i8] c"dvb_core.parmtype=dvb_demux_feed_err_pkts:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dvb_demux_feed_err_pkts218 = internal constant [102 x i8] c"dvb_core.parm=dvb_demux_feed_err_pkts:when set to 0, drop packets with the TEI bit set (1 by default)\00", section ".modinfo", align 1
@__kstrtab_dvb_dmx_swfilter_packets = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmx_swfilter_packets = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmx_swfilter_packets = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmx_swfilter_packets to i32), ptr @__kstrtab_dvb_dmx_swfilter_packets, ptr @__kstrtabns_dvb_dmx_swfilter_packets }, section "___ksymtab+dvb_dmx_swfilter_packets", align 4
@__kstrtab_dvb_dmx_swfilter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmx_swfilter = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmx_swfilter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmx_swfilter to i32), ptr @__kstrtab_dvb_dmx_swfilter, ptr @__kstrtabns_dvb_dmx_swfilter }, section "___ksymtab+dvb_dmx_swfilter", align 4
@__kstrtab_dvb_dmx_swfilter_204 = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmx_swfilter_204 = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmx_swfilter_204 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmx_swfilter_204 to i32), ptr @__kstrtab_dvb_dmx_swfilter_204, ptr @__kstrtabns_dvb_dmx_swfilter_204 }, section "___ksymtab+dvb_dmx_swfilter_204", align 4
@__kstrtab_dvb_dmx_swfilter_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmx_swfilter_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmx_swfilter_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmx_swfilter_raw to i32), ptr @__kstrtab_dvb_dmx_swfilter_raw, ptr @__kstrtabns_dvb_dmx_swfilter_raw }, section "___ksymtab+dvb_dmx_swfilter_raw", align 4
@dvb_dmx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014dvb_demux: Couldn't allocate memory for TS/TEI check. Disabling it\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_dmx_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/dvb-core/dvb_demux.c\00", [61 x i8] zeroinitializer }, align 32
@dvb_dmx_init._entry_ptr = internal global ptr @dvb_dmx_init._entry, section ".printk_index", align 4
@dvb_dmx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dvbdemux->mutex\00", [47 x i8] zeroinitializer }, align 32
@dvb_dmx_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dvbdemux->lock\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_dvb_dmx_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmx_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmx_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmx_init to i32), ptr @__kstrtab_dvb_dmx_init, ptr @__kstrtabns_dvb_dmx_init }, section "___ksymtab+dvb_dmx_init", align 4
@__kstrtab_dvb_dmx_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmx_release = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmx_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmx_release to i32), ptr @__kstrtab_dvb_dmx_release, ptr @__kstrtabns_dvb_dmx_release }, section "___ksymtab+dvb_dmx_release", align 4
@dvb_dmx_swfilter_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017dvb_demux: %s: TS speed %llu Kbits/sec \0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dvb_dmx_swfilter_packet\00", [40 x i8] zeroinitializer }, align 32
@dvb_dmx_swfilter_packet._entry_ptr = internal global ptr @dvb_dmx_swfilter_packet._entry, section ".printk_index", align 4
@dvb_dmx_swfilter_packet._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017dvb_demux: %s: TEI detected. PID=0x%x data1=0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@dvb_dmx_swfilter_packet._entry_ptr.10 = internal global ptr @dvb_dmx_swfilter_packet._entry.8, section ".printk_index", align 4
@dvb_dmx_swfilter_packet._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017dvb_demux: %s: TS packet counter mismatch. PID=0x%x expected 0x%x got 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_dmx_swfilter_packet._entry_ptr.13 = internal global ptr @dvb_dmx_swfilter_packet._entry.11, section ".printk_index", align 4
@dvb_dmx_swfilter_payload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017dvb_demux: %s: missed packet: %d instead of %d!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dvb_dmx_swfilter_payload\00", [39 x i8] zeroinitializer }, align 32
@dvb_dmx_swfilter_payload._entry_ptr = internal global ptr @dvb_dmx_swfilter_payload._entry, section ".printk_index", align 4
@dvb_dmx_swfilter_section_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017dvb_demux: %s: %d frame with disconnect indicator\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dvb_dmx_swfilter_section_packet\00", [32 x i8] zeroinitializer }, align 32
@dvb_dmx_swfilter_section_packet._entry_ptr = internal global ptr @dvb_dmx_swfilter_section_packet._entry, section ".printk_index", align 4
@dvb_dmx_swfilter_section_packet._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017dvb_demux: %s: discontinuity: %d instead of %d. %d bytes lost\0A\00", [63 x i8] zeroinitializer }, align 32
@dvb_dmx_swfilter_section_packet._entry_ptr.20 = internal global ptr @dvb_dmx_swfilter_section_packet._entry.18, section ".printk_index", align 4
@dvb_dmx_swfilter_section_packet._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017dvb_demux: %s: PUSI=1 but %d bytes lost\0A\00", [53 x i8] zeroinitializer }, align 32
@dvb_dmx_swfilter_section_packet._entry_ptr.23 = internal global ptr @dvb_dmx_swfilter_section_packet._entry.21, section ".printk_index", align 4
@dvb_dmx_swfilter_section_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017dvb_demux: %s: section ts padding loss: %d/%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dvb_dmx_swfilter_section_new\00", [35 x i8] zeroinitializer }, align 32
@dvb_dmx_swfilter_section_new._entry_ptr = internal global ptr @dvb_dmx_swfilter_section_new._entry, section ".printk_index", align 4
@dvb_dmx_swfilter_section_new._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017dvb_demux: %s: pad data: %*ph\0A\00", [63 x i8] zeroinitializer }, align 32
@dvb_dmx_swfilter_section_new._entry_ptr.28 = internal global ptr @dvb_dmx_swfilter_section_new._entry.26, section ".printk_index", align 4
@dvb_dmx_swfilter_section_copy_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017dvb_demux: %s: section buffer full loss: %d/%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dvb_dmx_swfilter_section_copy_dump\00", [61 x i8] zeroinitializer }, align 32
@dvb_dmx_swfilter_section_copy_dump._entry_ptr = internal global ptr @dvb_dmx_swfilter_section_copy_dump._entry, section ".printk_index", align 4
@dvb_dmx_swfilter_section_copy_dump._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017dvb_demux: %s: pusi not seen, discarding section data\0A\00", [39 x i8] zeroinitializer }, align 32
@dvb_dmx_swfilter_section_copy_dump._entry_ptr.33 = internal global ptr @dvb_dmx_swfilter_section_copy_dump._entry.31, section ".printk_index", align 4
@dvb_demux_feed_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013dvb_demux: %s: feed already in list (type=%x state=%x pid=%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dvb_demux_feed_add\00", [45 x i8] zeroinitializer }, align 32
@dvb_demux_feed_add._entry_ptr = internal global ptr @dvb_demux_feed_add._entry, section ".printk_index", align 4
@dvb_demux_feed_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013dvb_demux: %s: feed not in list (type=%x state=%x pid=%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dvb_demux_feed_del\00", [45 x i8] zeroinitializer }, align 32
@dvb_demux_feed_del._entry_ptr = internal global ptr @dvb_demux_feed_del._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"dvb_demux_tscheck\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 25, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"dvb_demux_speedcheck\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 30, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"dvb_demux_feed_err_pkts\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 35, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1265, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1303, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1304, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 430, i32 6 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 446, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 468, i32 6 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 121, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 315, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 320, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 358, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 203, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 205, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 243, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 278, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 663, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [38 x i8] c"../drivers/media/dvb-core/dvb_demux.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 677, i32 3 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_dvb_demux_feed_err_pkts218, ptr @__UNIQUE_ID_dvb_demux_feed_err_pktstype217, ptr @__UNIQUE_ID_dvb_demux_speedcheck216, ptr @__UNIQUE_ID_dvb_demux_speedchecktype215, ptr @__UNIQUE_ID_dvb_demux_tscheck214, ptr @__UNIQUE_ID_dvb_demux_tschecktype213, ptr @__ksymtab_dvb_dmx_init, ptr @__ksymtab_dvb_dmx_release, ptr @__ksymtab_dvb_dmx_swfilter, ptr @__ksymtab_dvb_dmx_swfilter_204, ptr @__ksymtab_dvb_dmx_swfilter_packets, ptr @__ksymtab_dvb_dmx_swfilter_raw, ptr @__param_dvb_demux_feed_err_pkts, ptr @__param_dvb_demux_speedcheck, ptr @__param_dvb_demux_tscheck, ptr @dvb_demux_feed_add._entry, ptr @dvb_demux_feed_add._entry_ptr, ptr @dvb_demux_feed_del._entry, ptr @dvb_demux_feed_del._entry_ptr, ptr @dvb_dmx_init._entry, ptr @dvb_dmx_init._entry_ptr, ptr @dvb_dmx_swfilter_packet._entry, ptr @dvb_dmx_swfilter_packet._entry.11, ptr @dvb_dmx_swfilter_packet._entry.8, ptr @dvb_dmx_swfilter_packet._entry_ptr, ptr @dvb_dmx_swfilter_packet._entry_ptr.10, ptr @dvb_dmx_swfilter_packet._entry_ptr.13, ptr @dvb_dmx_swfilter_payload._entry, ptr @dvb_dmx_swfilter_payload._entry_ptr, ptr @dvb_dmx_swfilter_section_copy_dump._entry, ptr @dvb_dmx_swfilter_section_copy_dump._entry.31, ptr @dvb_dmx_swfilter_section_copy_dump._entry_ptr, ptr @dvb_dmx_swfilter_section_copy_dump._entry_ptr.33, ptr @dvb_dmx_swfilter_section_new._entry, ptr @dvb_dmx_swfilter_section_new._entry.26, ptr @dvb_dmx_swfilter_section_new._entry_ptr, ptr @dvb_dmx_swfilter_section_new._entry_ptr.28, ptr @dvb_dmx_swfilter_section_packet._entry, ptr @dvb_dmx_swfilter_section_packet._entry.18, ptr @dvb_dmx_swfilter_section_packet._entry.21, ptr @dvb_dmx_swfilter_section_packet._entry_ptr, ptr @dvb_dmx_swfilter_section_packet._entry_ptr.20, ptr @dvb_dmx_swfilter_section_packet._entry_ptr.23, ptr @dvb_demux_tscheck, ptr @dvb_demux_speedcheck, ptr @dvb_demux_feed_err_pkts, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dvb_dmx_init.__key, ptr @.str.3, ptr @dvb_dmx_init.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_demux_tscheck to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_demux_speedcheck to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_demux_feed_err_pkts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmx_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmx_swfilter_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmx_swfilter_packet._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmx_swfilter_packet._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmx_swfilter_payload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmx_swfilter_section_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmx_swfilter_section_packet._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmx_swfilter_section_packet._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmx_swfilter_section_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmx_swfilter_section_new._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmx_swfilter_section_copy_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmx_swfilter_section_copy_dump._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_demux_feed_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_demux_feed_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dvb_dmx_swfilter_packets(ptr noundef %demux, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 19
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not14 = icmp eq i32 %count, 0
  br i1 %tobool.not14, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %dec16.in = phi i32 [ %dec16, %if.end.while.body_crit_edge ], [ %count, %entry.while.body_crit_edge ]
  %buf.addr.015 = phi ptr [ %add.ptr, %if.end.while.body_crit_edge ], [ %buf, %entry.while.body_crit_edge ]
  %dec16 = add i32 %dec16.in, -1
  %0 = ptrtoint ptr %buf.addr.015 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf.addr.015, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %1)
  %cmp6 = icmp eq i8 %1, 71
  br i1 %cmp6, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dvb_dmx_swfilter_packet(ptr noundef %demux, ptr noundef %buf.addr.015)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %buf.addr.015, i32 188
  %tobool.not = icmp eq i32 %dec16, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dvb_dmx_swfilter_packet(ptr noundef %demux, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr i8, ptr %buf, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %2 = and i8 %1, 31
  %and.i = zext i8 %2 to i16
  %shl.i = shl nuw nsw i16 %and.i, 8
  %arrayidx1.i = getelementptr i8, ptr %buf, i32 2
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %4 to i16
  %add.i = or i16 %shl.i, %conv2.i
  %5 = load i32, ptr @dvb_demux_speedcheck, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then:                                          ; preds = %entry
  %speed_pkts_cnt = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 22
  %6 = ptrtoint ptr %speed_pkts_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed_pkts_cnt, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %speed_pkts_cnt, align 8
  %rem = urem i32 %inc, 50000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool2.not = icmp eq i32 %rem, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then3:                                         ; preds = %if.then
  %call4 = tail call i64 @ktime_get() #12
  %speed_last_time = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 21
  %8 = ptrtoint ptr %speed_last_time to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %speed_last_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp.not = icmp eq i64 %9, 0
  br i1 %cmp.not, label %if.then3.if.end17_crit_edge, label %if.then6

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then6:                                         ; preds = %if.then3
  %10 = ptrtoint ptr %speed_pkts_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed_pkts_cnt, align 8
  %conv = zext i32 %11 to i64
  %mul8 = mul nuw nsw i64 %conv, 1504
  %call9 = tail call i64 @div64_u64(i64 noundef %mul8, i64 noundef 1024) #12
  %12 = ptrtoint ptr %speed_last_time to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %speed_last_time, align 8
  %sub.i = sub i64 %call4, %13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %14 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #12
  %15 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %14) #15, !srcloc !117
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %14, i64 %15, i32 0) #15, !srcloc !118
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %16, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond213.i.i.i)
  %tobool13.not = icmp eq i64 %cond213.i.i.i, 0
  br i1 %tobool13.not, label %if.then6.if.end17_crit_edge, label %do.end

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %mul10 = mul i64 %call9, 1000
  %call15 = tail call i64 @div64_u64(i64 noundef %mul10, i64 noundef %cond213.i.i.i) #12
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i64 noundef %call15) #16
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then6.if.end17_crit_edge, %if.then3.if.end17_crit_edge
  %17 = ptrtoint ptr %speed_last_time to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call4, ptr %speed_last_time, align 8
  %18 = ptrtoint ptr %speed_pkts_cnt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %speed_pkts_cnt, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool23.not = icmp sgt i8 %20, -1
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end21
  %feed_list = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 15
  %21 = ptrtoint ptr %feed_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn296300 = load ptr, ptr %feed_list, align 8
  %cmp27.not301 = icmp eq ptr %.pn296300, %feed_list
  br i1 %cmp27.not301, label %if.then24.do.body48_crit_edge, label %if.then24.for.body_crit_edge

if.then24.for.body_crit_edge:                     ; preds = %if.then24
  br label %for.body

if.then24.do.body48_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then24.for.body_crit_edge
  %.pn296302 = phi ptr [ %.pn296, %for.inc.for.body_crit_edge ], [ %.pn296300, %if.then24.for.body_crit_edge ]
  %pid29 = getelementptr i8, ptr %.pn296302, i32 -36
  %22 = ptrtoint ptr %pid29 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pid29, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %add.i)
  %cmp32.not = icmp eq i16 %23, %add.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %23)
  %cmp36.not = icmp eq i16 %23, 8192
  %or.cond = or i1 %cmp32.not, %cmp36.not
  br i1 %or.cond, label %do.body40, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %buffer_flags = getelementptr i8, ptr %.pn296302, i32 -20
  %24 = ptrtoint ptr %buffer_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buffer_flags, align 4
  %or = or i32 %25, 2
  store i32 %or, ptr %buffer_flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.body40, %for.body.for.inc_crit_edge
  %26 = ptrtoint ptr %.pn296302 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn296 = load ptr, ptr %.pn296302, align 8
  %cmp27.not = icmp eq ptr %.pn296, %feed_list
  br i1 %cmp27.not, label %for.inc.do.body48_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.body48_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48

do.body48:                                        ; preds = %for.inc.do.body48_crit_edge, %if.then24.do.body48_crit_edge
  %27 = load i32, ptr @dvb_demux_tscheck, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool49.not = icmp eq i32 %27, 0
  br i1 %tobool49.not, label %do.body48.do.end64_crit_edge, label %land.lhs.true50

do.body48.do.end64_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end64

land.lhs.true50:                                  ; preds = %do.body48
  %call51 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @.str.7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true50.do.end64_crit_edge, label %do.end56

land.lhs.true50.do.end64_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end64

do.end56:                                         ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  %conv58 = zext i16 %add.i to i32
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %conv60 = zext i8 %29 to i32
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %conv58, i32 noundef %conv60) #16
  br label %do.end64

do.end64:                                         ; preds = %do.end56, %land.lhs.true50.do.end64_crit_edge, %do.body48.do.end64_crit_edge
  %30 = load i32, ptr @dvb_demux_feed_err_pkts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool65.not = icmp eq i32 %30, 0
  br i1 %tobool65.not, label %do.end64.cleanup_crit_edge, label %do.end64.if.end168_crit_edge

do.end64.if.end168_crit_edge:                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168

do.end64.cleanup_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end21
  %cnt_storage = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 20
  %31 = ptrtoint ptr %cnt_storage to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cnt_storage, align 8
  %tobool68.not = icmp eq ptr %32, null
  br i1 %tobool68.not, label %if.else.if.end168_crit_edge, label %land.lhs.true69

if.else.if.end168_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168

land.lhs.true69:                                  ; preds = %if.else
  %33 = load i32, ptr @dvb_demux_tscheck, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool70.not = icmp eq i32 %33, 0
  br i1 %tobool70.not, label %land.lhs.true69.if.end168_crit_edge, label %if.then71

land.lhs.true69.if.end168_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168

if.then71:                                        ; preds = %land.lhs.true69
  %conv72 = zext i16 %add.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %add.i)
  %cmp73.not = icmp eq i16 %add.i, 8191
  br i1 %cmp73.not, label %if.then71.if.end168_crit_edge, label %if.then75

if.then71.if.end168_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168

if.then75:                                        ; preds = %if.then71
  %arrayidx76 = getelementptr i8, ptr %buf, i32 3
  %34 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx76, align 1
  %36 = and i8 %35, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool79.not = icmp eq i8 %36, 0
  br i1 %tobool79.not, label %if.then75.if.end89_crit_edge, label %if.then80

if.then75.if.end89_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then80:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx82 = getelementptr i8, ptr %32, i32 %conv72
  %37 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx82, align 1
  %39 = add i8 %38, 1
  %40 = and i8 %39, 15
  store i8 %40, ptr %arrayidx82, align 1
  br label %if.end89

if.end89:                                         ; preds = %if.then80, %if.then75.if.end89_crit_edge
  %41 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx76, align 1
  %43 = and i8 %42, 15
  %44 = ptrtoint ptr %cnt_storage to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cnt_storage, align 8
  %arrayidx95 = getelementptr i8, ptr %45, i32 %conv72
  %46 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx95, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %47)
  %cmp97.not = icmp eq i8 %43, %47
  br i1 %cmp97.not, label %if.end89.if.end168_crit_edge, label %if.then99

if.end89.if.end168_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168

if.then99:                                        ; preds = %if.end89
  %feed_list101 = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 15
  %48 = ptrtoint ptr %feed_list101 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn295303 = load ptr, ptr %feed_list101, align 8
  %cmp108.not304 = icmp eq ptr %.pn295303, %feed_list101
  br i1 %cmp108.not304, label %if.then99.do.body136_crit_edge, label %if.then99.for.body111_crit_edge

if.then99.for.body111_crit_edge:                  ; preds = %if.then99
  br label %for.body111

if.then99.do.body136_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

for.body111:                                      ; preds = %for.inc129.for.body111_crit_edge, %if.then99.for.body111_crit_edge
  %.pn295305 = phi ptr [ %.pn295, %for.inc129.for.body111_crit_edge ], [ %.pn295303, %if.then99.for.body111_crit_edge ]
  %pid112 = getelementptr i8, ptr %.pn295305, i32 -36
  %49 = ptrtoint ptr %pid112 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %pid112, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %add.i)
  %cmp115.not = icmp eq i16 %50, %add.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %50)
  %cmp120.not = icmp eq i16 %50, 8192
  %or.cond297 = or i1 %cmp115.not, %cmp120.not
  br i1 %or.cond297, label %do.body124, label %for.body111.for.inc129_crit_edge

for.body111.for.inc129_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc129

do.body124:                                       ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #14
  %buffer_flags125 = getelementptr i8, ptr %.pn295305, i32 -20
  %51 = ptrtoint ptr %buffer_flags125 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buffer_flags125, align 4
  %or126 = or i32 %52, 4
  store i32 %or126, ptr %buffer_flags125, align 4
  br label %for.inc129

for.inc129:                                       ; preds = %do.body124, %for.body111.for.inc129_crit_edge
  %53 = ptrtoint ptr %.pn295305 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn295 = load ptr, ptr %.pn295305, align 8
  %cmp108.not = icmp eq ptr %.pn295, %feed_list101
  br i1 %cmp108.not, label %for.inc129.do.body136_crit_edge, label %for.inc129.for.body111_crit_edge

for.inc129.for.body111_crit_edge:                 ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body111

for.inc129.do.body136_crit_edge:                  ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

do.body136:                                       ; preds = %for.inc129.do.body136_crit_edge, %if.then99.do.body136_crit_edge
  %54 = load i32, ptr @dvb_demux_tscheck, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool137.not = icmp eq i32 %54, 0
  br i1 %tobool137.not, label %do.body136.do.end157_crit_edge, label %land.lhs.true138

do.body136.do.end157_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end157

land.lhs.true138:                                 ; preds = %do.body136
  %call139 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @.str.7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %land.lhs.true138.do.end157_crit_edge, label %do.end144

land.lhs.true138.do.end157_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end157

do.end144:                                        ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %cnt_storage to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cnt_storage, align 8
  %arrayidx149 = getelementptr i8, ptr %56, i32 %conv72
  %57 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx149, align 1
  %conv150 = zext i8 %58 to i32
  %59 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx76, align 1
  %61 = and i8 %60, 15
  %and153 = zext i8 %61 to i32
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, i32 noundef %conv72, i32 noundef %conv150, i32 noundef %and153) #16
  br label %do.end157

do.end157:                                        ; preds = %do.end144, %land.lhs.true138.do.end157_crit_edge, %do.body136.do.end157_crit_edge
  %62 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx76, align 1
  %64 = and i8 %63, 15
  %65 = ptrtoint ptr %cnt_storage to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cnt_storage, align 8
  %arrayidx164 = getelementptr i8, ptr %66, i32 %conv72
  %67 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %64, ptr %arrayidx164, align 1
  br label %if.end168

if.end168:                                        ; preds = %do.end157, %if.end89.if.end168_crit_edge, %if.then71.if.end168_crit_edge, %land.lhs.true69.if.end168_crit_edge, %if.else.if.end168_crit_edge, %do.end64.if.end168_crit_edge
  %feed_list170 = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 15
  %68 = ptrtoint ptr %feed_list170 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn306 = load ptr, ptr %feed_list170, align 8
  %cmp177.not308 = icmp eq ptr %.pn306, %feed_list170
  br i1 %cmp177.not308, label %if.end168.cleanup_crit_edge, label %for.body180.lr.ph

if.end168.cleanup_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body180.lr.ph:                                ; preds = %if.end168
  %arrayidx.i.i52.i = getelementptr i8, ptr %buf, i32 3
  %arrayidx6.i.i59.i = getelementptr i8, ptr %buf, i32 4
  %arrayidx21.i66.i = getelementptr i8, ptr %buf, i32 5
  br label %for.body180

for.body180:                                      ; preds = %for.inc224.for.body180_crit_edge, %for.body180.lr.ph
  %.pn310 = phi ptr [ %.pn306, %for.body180.lr.ph ], [ %.pn, %for.inc224.for.body180_crit_edge ]
  %dvr_done.0309 = phi i32 [ 0, %for.body180.lr.ph ], [ %dvr_done.2, %for.inc224.for.body180_crit_edge ]
  %feed.2311 = getelementptr i8, ptr %.pn310, i32 -4392
  %pid181 = getelementptr i8, ptr %.pn310, i32 -36
  %69 = ptrtoint ptr %pid181 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %pid181, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %add.i)
  %cmp184.not = icmp eq i16 %70, %add.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %70)
  %cmp189.not = icmp eq i16 %70, 8192
  %or.cond298 = or i1 %cmp184.not, %cmp189.not
  br i1 %or.cond298, label %if.end192, label %for.body180.for.inc224_crit_edge

for.body180.for.inc224_crit_edge:                 ; preds = %for.body180
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc224

if.end192:                                        ; preds = %for.body180
  %type = getelementptr i8, ptr %.pn310, i32 -44
  %71 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp193 = icmp eq i32 %72, 0
  br i1 %cmp193, label %land.lhs.true195, label %if.end192.if.end206_crit_edge

if.end192.if.end206_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end206

land.lhs.true195:                                 ; preds = %if.end192
  %73 = ptrtoint ptr %feed.2311 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %feed.2311, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool197.not = icmp eq i32 %74, 0
  br i1 %tobool197.not, label %land.lhs.true195.if.end206_crit_edge, label %land.lhs.true198

land.lhs.true195.if.end206_crit_edge:             ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end206

land.lhs.true198:                                 ; preds = %land.lhs.true195
  %ts_type = getelementptr i8, ptr %.pn310, i32 -16
  %75 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ts_type, align 8
  %and199 = and i32 %76, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and199)
  %cmp200 = icmp eq i32 %and199, 1
  br i1 %cmp200, label %land.lhs.true202, label %land.lhs.true198.if.end206_crit_edge

land.lhs.true198.if.end206_crit_edge:             ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end206

land.lhs.true202:                                 ; preds = %land.lhs.true198
  %inc203 = add i32 %dvr_done.0309, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dvr_done.0309)
  %tobool204.not = icmp eq i32 %dvr_done.0309, 0
  br i1 %tobool204.not, label %land.lhs.true202.if.end206_crit_edge, label %land.lhs.true202.for.inc224_crit_edge

land.lhs.true202.for.inc224_crit_edge:            ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc224

land.lhs.true202.if.end206_crit_edge:             ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end206

if.end206:                                        ; preds = %land.lhs.true202.if.end206_crit_edge, %land.lhs.true198.if.end206_crit_edge, %land.lhs.true195.if.end206_crit_edge, %if.end192.if.end206_crit_edge
  %dvr_done.1 = phi i32 [ 1, %land.lhs.true202.if.end206_crit_edge ], [ %dvr_done.0309, %land.lhs.true198.if.end206_crit_edge ], [ %dvr_done.0309, %land.lhs.true195.if.end206_crit_edge ], [ %dvr_done.0309, %if.end192.if.end206_crit_edge ]
  br i1 %cmp184.not, label %if.then212, label %if.else213

if.then212:                                       ; preds = %if.end206
  %77 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %type, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values)
  switch i32 %78, label %if.then212.for.inc224_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb23.i
  ]

if.then212.for.inc224_crit_edge:                  ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc224

sw.bb.i:                                          ; preds = %if.then212
  %80 = ptrtoint ptr %feed.2311 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %feed.2311, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i, label %sw.bb.i.for.inc224_crit_edge, label %if.end.i

sw.bb.i.for.inc224_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc224

if.end.i:                                         ; preds = %sw.bb.i
  %ts_type.i = getelementptr i8, ptr %.pn310, i32 -16
  %82 = ptrtoint ptr %ts_type.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ts_type.i, align 8
  %and.i299 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i299)
  %tobool2.not.i = icmp eq i32 %and.i299, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then3.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then3.i:                                       ; preds = %if.end.i
  %and5.i = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.then3.i
  %84 = ptrtoint ptr %arrayidx.i.i52.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i.i52.i, align 1
  %conv.i.i.i = zext i8 %85 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then7.i.if.end11.i_crit_edge, label %if.end.i.i.i

if.then7.i.if.end11.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  %and3.i.i.i = and i32 %conv.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end.i.i_crit_edge, label %payload.exit.i.i

if.end.i.i.i.if.end.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

payload.exit.i.i:                                 ; preds = %if.end.i.i.i
  %86 = ptrtoint ptr %arrayidx6.i.i59.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx6.i.i59.i, align 1
  %88 = tail call i8 @llvm.usub.sat.i8(i8 -73, i8 %87) #12
  %conv.i.i = zext i8 %88 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -74, i8 %87)
  %cmp.i.i = icmp ugt i8 %87, -74
  br i1 %cmp.i.i, label %payload.exit.i.i.if.end11.i_crit_edge, label %payload.exit.i.i.if.end.i.i_crit_edge

payload.exit.i.i.if.end.i.i_crit_edge:            ; preds = %payload.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

payload.exit.i.i.if.end11.i_crit_edge:            ; preds = %payload.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.end.i.i:                                       ; preds = %payload.exit.i.i.if.end.i.i_crit_edge, %if.end.i.i.i.if.end.i.i_crit_edge
  %conv10.i.i = phi i32 [ %conv.i.i, %payload.exit.i.i.if.end.i.i_crit_edge ], [ 184, %if.end.i.i.i.if.end.i.i_crit_edge ]
  %retval.0.i9.i.i = phi i8 [ %88, %payload.exit.i.i.if.end.i.i_crit_edge ], [ -72, %if.end.i.i.i.if.end.i.i_crit_edge ]
  %sub.i.i = sub nuw nsw i32 188, %conv10.i.i
  %89 = and i8 %85, 15
  %cc4.i.i = getelementptr i8, ptr %.pn310, i32 -8
  %90 = ptrtoint ptr %cc4.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cc4.i.i, align 8
  %add.i.i = add i32 %91, 1
  %and5.i.i = and i32 %add.i.i, 15
  %conv6.i.i = zext i8 %89 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i.i, i32 %conv6.i.i)
  %cmp7.i.i = icmp eq i32 %and5.i.i, %conv6.i.i
  %92 = ptrtoint ptr %cc4.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv6.i.i, ptr %cc4.i.i, align 8
  br i1 %cmp7.i.i, label %if.end.i.i.if.end20.i.i_crit_edge, label %do.body.i.i

if.end.i.i.if.end20.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %buffer_flags.i.i = getelementptr i8, ptr %.pn310, i32 -20
  %93 = ptrtoint ptr %buffer_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %buffer_flags.i.i, align 4
  %or.i.i = or i32 %94, 8
  store i32 %or.i.i, ptr %buffer_flags.i.i, align 4
  %add17.i.i = add nuw nsw i32 %conv6.i.i, 1
  %and18.i.i = and i32 %add17.i.i, 15
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %conv6.i.i, i32 noundef %and18.i.i) #16
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %do.body.i.i, %if.end.i.i.if.end20.i.i_crit_edge
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i, align 1
  %97 = and i8 %96, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool24.not.i.i = icmp eq i8 %97, 0
  br i1 %tobool24.not.i.i, label %if.end20.i.i.if.end26.i.i_crit_edge, label %if.then25.i.i

if.end20.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i

if.then25.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %peslen.i.i = getelementptr i8, ptr %.pn310, i32 -2
  %98 = ptrtoint ptr %peslen.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 -6, ptr %peslen.i.i, align 2
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then25.i.i, %if.end20.i.i.if.end26.i.i_crit_edge
  %peslen27.i.i = getelementptr i8, ptr %.pn310, i32 -2
  %99 = ptrtoint ptr %peslen27.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %peslen27.i.i, align 2
  %101 = zext i8 %retval.0.i9.i.i to i16
  %conv30.i.i = add i16 %100, %101
  store i16 %conv30.i.i, ptr %peslen27.i.i, align 2
  %cb.i.i = getelementptr i8, ptr %.pn310, i32 -56
  %102 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cb.i.i, align 8
  %arrayidx31.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %buffer_flags33.i.i = getelementptr i8, ptr %.pn310, i32 -20
  %call34.i.i = tail call i32 %103(ptr noundef %arrayidx31.i.i, i32 noundef %conv10.i.i, ptr noundef null, i32 noundef 0, ptr noundef %feed.2311, ptr noundef %buffer_flags33.i.i) #12
  br label %if.end11.i

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %cb.i = getelementptr i8, ptr %.pn310, i32 -56
  %104 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cb.i, align 8
  %buffer_flags.i = getelementptr i8, ptr %.pn310, i32 -20
  %call9.i = tail call i32 %105(ptr noundef %buf, i32 noundef 188, ptr noundef null, i32 noundef 0, ptr noundef %feed.2311, ptr noundef %buffer_flags.i) #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.end26.i.i, %payload.exit.i.i.if.end11.i_crit_edge, %if.then7.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %106 = ptrtoint ptr %ts_type.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ts_type.i, align 8
  %and13.i = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.for.inc224_crit_edge, label %if.then15.i

if.end11.i.for.inc224_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc224

if.then15.i:                                      ; preds = %if.end11.i
  %demux.i = getelementptr i8, ptr %.pn310, i32 -52
  %108 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %demux.i, align 4
  %write_to_decoder.i = getelementptr inbounds %struct.dvb_demux, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %write_to_decoder.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write_to_decoder.i, align 8
  %tobool16.not.i = icmp eq ptr %111, null
  br i1 %tobool16.not.i, label %if.then15.i.for.inc224_crit_edge, label %if.then17.i

if.then15.i.for.inc224_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc224

if.then17.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  %call20.i = tail call i32 %111(ptr noundef %feed.2311, ptr noundef %buf, i32 noundef 188) #12
  br label %for.inc224

sw.bb23.i:                                        ; preds = %if.then212
  %112 = ptrtoint ptr %feed.2311 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %feed.2311, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool26.not.i = icmp eq i32 %113, 0
  br i1 %tobool26.not.i, label %sw.bb23.i.for.inc224_crit_edge, label %if.end28.i

sw.bb23.i.for.inc224_crit_edge:                   ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc224

if.end28.i:                                       ; preds = %sw.bb23.i
  %114 = ptrtoint ptr %arrayidx.i.i52.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i.i52.i, align 1
  %conv.i.i53.i = zext i8 %115 to i32
  %and.i.i54.i = and i32 %conv.i.i53.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i54.i)
  %tobool.not.i.i55.i = icmp eq i32 %and.i.i54.i, 0
  br i1 %tobool.not.i.i55.i, label %if.end28.i.if.then30.i_crit_edge, label %if.end.i.i58.i

if.end28.i.if.then30.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30.i

if.end.i.i58.i:                                   ; preds = %if.end28.i
  %and3.i.i56.i = and i32 %conv.i.i53.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i56.i)
  %tobool4.not.i.i57.i = icmp eq i32 %and3.i.i56.i, 0
  br i1 %tobool4.not.i.i57.i, label %if.end.i.i58.i.if.end.i65.i_crit_edge, label %payload.exit.i62.i

if.end.i.i58.i.if.end.i65.i_crit_edge:            ; preds = %if.end.i.i58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i65.i

payload.exit.i62.i:                               ; preds = %if.end.i.i58.i
  %116 = ptrtoint ptr %arrayidx6.i.i59.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx6.i.i59.i, align 1
  %118 = tail call i8 @llvm.usub.sat.i8(i8 -73, i8 %117) #12
  %conv.i60.i = zext i8 %118 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -74, i8 %117)
  %cmp.i61.i = icmp ugt i8 %117, -74
  br i1 %cmp.i61.i, label %payload.exit.i62.i.if.then30.i_crit_edge, label %payload.exit.i62.i.if.end.i65.i_crit_edge

payload.exit.i62.i.if.end.i65.i_crit_edge:        ; preds = %payload.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i65.i

payload.exit.i62.i.if.then30.i_crit_edge:         ; preds = %payload.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30.i

if.end.i65.i:                                     ; preds = %payload.exit.i62.i.if.end.i65.i_crit_edge, %if.end.i.i58.i.if.end.i65.i_crit_edge
  %conv183.i.i = phi i32 [ %conv.i60.i, %payload.exit.i62.i.if.end.i65.i_crit_edge ], [ 184, %if.end.i.i58.i.if.end.i65.i_crit_edge ]
  %retval.0.i182.i.i = phi i8 [ %118, %payload.exit.i62.i.if.end.i65.i_crit_edge ], [ -72, %if.end.i.i58.i.if.end.i65.i_crit_edge ]
  %sub.i63.i = sub nuw i8 -68, %retval.0.i182.i.i
  %119 = and i8 %115, 15
  %cc6.i.i = getelementptr i8, ptr %.pn310, i32 -8
  %120 = ptrtoint ptr %cc6.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cc6.i.i, align 8
  %add.i64.i = add i32 %121, 1
  %and7.i.i = and i32 %add.i64.i, 15
  %conv8.i.i = zext i8 %119 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and7.i.i, i32 %conv8.i.i)
  %cmp9.i.i = icmp ne i32 %and7.i.i, %conv8.i.i
  %122 = ptrtoint ptr %cc6.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %conv8.i.i, ptr %cc6.i.i, align 8
  %123 = ptrtoint ptr %arrayidx.i.i52.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.i.i52.i, align 1
  %125 = and i8 %124, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i.i = icmp eq i8 %125, 0
  br i1 %tobool.not.i.i, label %if.end.i65.i.if.end27.i.i_crit_edge, label %if.then16.i.i

if.end.i65.i.if.end27.i.i_crit_edge:              ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

if.then16.i.i:                                    ; preds = %if.end.i65.i
  %126 = ptrtoint ptr %arrayidx6.i.i59.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx6.i.i59.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %cmp19.not.i.i = icmp eq i8 %127, 0
  br i1 %cmp19.not.i.i, label %if.then16.i.i.if.end27.i.i_crit_edge, label %land.lhs.true.i.i

if.then16.i.i.if.end27.i.i_crit_edge:             ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

land.lhs.true.i.i:                                ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %128 = ptrtoint ptr %arrayidx21.i66.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx21.i66.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %129)
  %tobool24.not.i67.i = icmp sgt i8 %129, -1
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %land.lhs.true.i.i, %if.then16.i.i.if.end27.i.i_crit_edge, %if.end.i65.i.if.end27.i.i_crit_edge
  %tobool31.not.i.i = phi i1 [ true, %if.then16.i.i.if.end27.i.i_crit_edge ], [ true, %if.end.i65.i.if.end27.i.i_crit_edge ], [ %tobool24.not.i67.i, %land.lhs.true.i.i ]
  %tobool31.not.not.i.i = xor i1 %tobool31.not.i.i, true
  %brmerge.i.i = select i1 %cmp9.i.i, i1 true, i1 %tobool31.not.not.i.i
  br i1 %brmerge.i.i, label %if.then30.i.i, label %if.end27.i.i.if.end55.i.i_crit_edge

if.end27.i.i.if.end55.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i.i

if.then30.i.i:                                    ; preds = %if.end27.i.i
  %buffer_flags39.i.i = getelementptr i8, ptr %.pn310, i32 -20
  %130 = ptrtoint ptr %buffer_flags39.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %buffer_flags39.i.i, align 4
  br i1 %tobool31.not.i.i, label %do.body38.i.i, label %do.body.i69.i

do.body.i69.i:                                    ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i68.i = or i32 %131, 16
  %132 = ptrtoint ptr %buffer_flags39.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or.i68.i, ptr %buffer_flags39.i.i, align 4
  %call37.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %conv8.i.i) #16
  br label %if.end54.i.i

do.body38.i.i:                                    ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or40.i.i = or i32 %131, 8
  %133 = ptrtoint ptr %buffer_flags39.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %or40.i.i, ptr %buffer_flags39.i.i, align 4
  %add49.i.i = add nuw nsw i32 %conv8.i.i, 1
  %and50.i.i = and i32 %add49.i.i, 15
  %add52.i.i = add nuw nsw i32 %conv183.i.i, 4
  %call53.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %conv8.i.i, i32 noundef %and50.i.i, i32 noundef %add52.i.i) #16
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %do.body38.i.i, %do.body.i69.i
  %pusi_seen.i.i = getelementptr i8, ptr %.pn310, i32 -4
  %134 = ptrtoint ptr %pusi_seen.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %pusi_seen.i.i, align 4
  %secbufp.i.i.i = getelementptr i8, ptr %.pn310, i32 -84
  %135 = ptrtoint ptr %secbufp.i.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %secbufp.i.i.i, align 4
  %tsfeedp.i.i.i = getelementptr i8, ptr %.pn310, i32 -80
  %137 = ptrtoint ptr %tsfeedp.i.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %tsfeedp.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %138, i16 %136)
  %cmp.i.i.i = icmp ugt i16 %138, %136
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end54.i.i.dvb_dmx_swfilter_section_new.exit.i.i_crit_edge

if.end54.i.i.dvb_dmx_swfilter_section_new.exit.i.i_crit_edge: ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_dmx_swfilter_section_new.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end54.i.i
  %conv.i152.i.i = zext i16 %136 to i32
  %conv2.i.i.i = zext i16 %138 to i32
  %sub.i.i.i = sub nsw i32 %conv2.i.i.i, %conv.i152.i.i
  %secbuf.i.i.i = getelementptr i8, ptr %.pn310, i32 -4372
  %139 = ptrtoint ptr %secbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %secbuf.i.i.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %140, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %142)
  %cmp9.not.i.i.i = icmp eq i8 %142, -1
  br i1 %cmp9.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.then.i.i.i.do.body.i.i.i_crit_edge

if.then.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then.i.i.i
  %sub12.i.i.i = add nsw i32 %sub.i.i.i, -1
  %arrayidx13.i.i.i = getelementptr i8, ptr %140, i32 %sub12.i.i.i
  %143 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx13.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %144)
  %cmp15.not.i.i.i = icmp eq i8 %144, -1
  br i1 %cmp15.not.i.i.i, label %lor.lhs.false.i.i.i.dvb_dmx_swfilter_section_new.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i.do.body.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.body.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

lor.lhs.false.i.i.i.dvb_dmx_swfilter_section_new.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_dmx_swfilter_section_new.exit.i.i

do.body.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.do.body.i.i.i_crit_edge, %if.then.i.i.i.do.body.i.i.i_crit_edge
  %145 = ptrtoint ptr %buffer_flags39.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %buffer_flags39.i.i, align 4
  %or.i.i.i = or i32 %146, 8
  store i32 %or.i.i.i, ptr %buffer_flags39.i.i, align 4
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %sub.i.i.i, i32 noundef %conv2.i.i.i) #16
  %147 = ptrtoint ptr %secbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %secbuf.i.i.i, align 4
  %call28.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %sub.i.i.i, ptr noundef %148) #16
  br label %dvb_dmx_swfilter_section_new.exit.i.i

dvb_dmx_swfilter_section_new.exit.i.i:            ; preds = %do.body.i.i.i, %lor.lhs.false.i.i.i.dvb_dmx_swfilter_section_new.exit.i.i_crit_edge, %if.end54.i.i.dvb_dmx_swfilter_section_new.exit.i.i_crit_edge
  %seclen.i.i.i = getelementptr i8, ptr %.pn310, i32 -82
  %149 = ptrtoint ptr %seclen.i.i.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 0, ptr %seclen.i.i.i, align 2
  %150 = ptrtoint ptr %secbufp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %secbufp.i.i.i, align 4
  %151 = ptrtoint ptr %tsfeedp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %tsfeedp.i.i.i, align 4
  %secbuf_base.i.i.i = getelementptr i8, ptr %.pn310, i32 -4368
  %secbuf32.i.i.i = getelementptr i8, ptr %.pn310, i32 -4372
  %152 = ptrtoint ptr %secbuf32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %secbuf_base.i.i.i, ptr %secbuf32.i.i.i, align 4
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %dvb_dmx_swfilter_section_new.exit.i.i, %if.end27.i.i.if.end55.i.i_crit_edge
  %153 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.i, align 1
  %155 = and i8 %154, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool59.not.i.i = icmp eq i8 %155, 0
  br i1 %tobool59.not.i.i, label %if.else104.i.i, label %if.then60.i.i

if.then60.i.i:                                    ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %retval.0.i182.i.i)
  %cmp62.i.i = icmp ugt i8 %retval.0.i182.i.i, 1
  br i1 %cmp62.i.i, label %land.lhs.true64.i.i, label %if.then60.i.i.do.body91.i.i_crit_edge

if.then60.i.i.do.body91.i.i_crit_edge:            ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body91.i.i

land.lhs.true64.i.i:                              ; preds = %if.then60.i.i
  %idxprom.i.i = zext i8 %sub.i63.i to i32
  %arrayidx65.i.i = getelementptr i8, ptr %buf, i32 %idxprom.i.i
  %156 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx65.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %157, i8 %retval.0.i182.i.i)
  %cmp68.i.i = icmp ult i8 %157, %retval.0.i182.i.i
  br i1 %cmp68.i.i, label %if.then70.i.i, label %land.lhs.true64.i.i.do.body91.i.i_crit_edge

land.lhs.true64.i.i.do.body91.i.i_crit_edge:      ; preds = %land.lhs.true64.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body91.i.i

if.then70.i.i:                                    ; preds = %land.lhs.true64.i.i
  %conv66.i.i = zext i8 %157 to i32
  %add72.i.i = add nuw nsw i32 %idxprom.i.i, 1
  %arrayidx73.i.i = getelementptr i8, ptr %buf, i32 %add72.i.i
  %arrayidx77.i.i = getelementptr i8, ptr %arrayidx73.i.i, i32 %conv66.i.i
  %158 = xor i8 %157, -1
  %sub81.i.i = add i8 %retval.0.i182.i.i, %158
  tail call fastcc void @dvb_dmx_swfilter_section_copy_dump(ptr noundef %feed.2311, ptr noundef %arrayidx73.i.i, i8 noundef zeroext %157) #12
  %pusi_seen84.i.i = getelementptr i8, ptr %.pn310, i32 -4
  %159 = ptrtoint ptr %pusi_seen84.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %pusi_seen84.i.i, align 4
  %secbufp.i153.i.i = getelementptr i8, ptr %.pn310, i32 -84
  %160 = ptrtoint ptr %secbufp.i153.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %secbufp.i153.i.i, align 4
  %tsfeedp.i154.i.i = getelementptr i8, ptr %.pn310, i32 -80
  %162 = ptrtoint ptr %tsfeedp.i154.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %tsfeedp.i154.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %163, i16 %161)
  %cmp.i155.i.i = icmp ugt i16 %163, %161
  br i1 %cmp.i155.i.i, label %if.then.i161.i.i, label %if.then70.i.i.dvb_dmx_swfilter_section_new.exit174.i.i_crit_edge

if.then70.i.i.dvb_dmx_swfilter_section_new.exit174.i.i_crit_edge: ; preds = %if.then70.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_dmx_swfilter_section_new.exit174.i.i

if.then.i161.i.i:                                 ; preds = %if.then70.i.i
  %conv.i156.i.i = zext i16 %161 to i32
  %conv2.i157.i.i = zext i16 %163 to i32
  %sub.i158.i.i = sub nsw i32 %conv2.i157.i.i, %conv.i156.i.i
  %secbuf.i159.i.i = getelementptr i8, ptr %.pn310, i32 -4372
  %164 = ptrtoint ptr %secbuf.i159.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %secbuf.i159.i.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %165, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %167)
  %cmp9.not.i160.i.i = icmp eq i8 %167, -1
  br i1 %cmp9.not.i160.i.i, label %lor.lhs.false.i165.i.i, label %if.then.i161.i.i.do.body.i170.i.i_crit_edge

if.then.i161.i.i.do.body.i170.i.i_crit_edge:      ; preds = %if.then.i161.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i170.i.i

lor.lhs.false.i165.i.i:                           ; preds = %if.then.i161.i.i
  %sub12.i162.i.i = add nsw i32 %sub.i158.i.i, -1
  %arrayidx13.i163.i.i = getelementptr i8, ptr %165, i32 %sub12.i162.i.i
  %168 = ptrtoint ptr %arrayidx13.i163.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx13.i163.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %169)
  %cmp15.not.i164.i.i = icmp eq i8 %169, -1
  br i1 %cmp15.not.i164.i.i, label %lor.lhs.false.i165.i.i.dvb_dmx_swfilter_section_new.exit174.i.i_crit_edge, label %lor.lhs.false.i165.i.i.do.body.i170.i.i_crit_edge

lor.lhs.false.i165.i.i.do.body.i170.i.i_crit_edge: ; preds = %lor.lhs.false.i165.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i170.i.i

lor.lhs.false.i165.i.i.dvb_dmx_swfilter_section_new.exit174.i.i_crit_edge: ; preds = %lor.lhs.false.i165.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_dmx_swfilter_section_new.exit174.i.i

do.body.i170.i.i:                                 ; preds = %lor.lhs.false.i165.i.i.do.body.i170.i.i_crit_edge, %if.then.i161.i.i.do.body.i170.i.i_crit_edge
  %buffer_flags.i166.i.i = getelementptr i8, ptr %.pn310, i32 -20
  %170 = ptrtoint ptr %buffer_flags.i166.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %buffer_flags.i166.i.i, align 4
  %or.i167.i.i = or i32 %171, 8
  store i32 %or.i167.i.i, ptr %buffer_flags.i166.i.i, align 4
  %call.i168.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %sub.i158.i.i, i32 noundef %conv2.i157.i.i) #16
  %172 = ptrtoint ptr %secbuf.i159.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %secbuf.i159.i.i, align 4
  %call28.i169.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %sub.i158.i.i, ptr noundef %173) #16
  br label %dvb_dmx_swfilter_section_new.exit174.i.i

dvb_dmx_swfilter_section_new.exit174.i.i:         ; preds = %do.body.i170.i.i, %lor.lhs.false.i165.i.i.dvb_dmx_swfilter_section_new.exit174.i.i_crit_edge, %if.then70.i.i.dvb_dmx_swfilter_section_new.exit174.i.i_crit_edge
  %seclen.i171.i.i = getelementptr i8, ptr %.pn310, i32 -82
  %174 = ptrtoint ptr %seclen.i171.i.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 0, ptr %seclen.i171.i.i, align 2
  %175 = ptrtoint ptr %secbufp.i153.i.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 0, ptr %secbufp.i153.i.i, align 4
  %176 = ptrtoint ptr %tsfeedp.i154.i.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 0, ptr %tsfeedp.i154.i.i, align 4
  %secbuf_base.i172.i.i = getelementptr i8, ptr %.pn310, i32 -4368
  %secbuf32.i173.i.i = getelementptr i8, ptr %.pn310, i32 -4372
  %177 = ptrtoint ptr %secbuf32.i173.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %secbuf_base.i172.i.i, ptr %secbuf32.i173.i.i, align 4
  tail call fastcc void @dvb_dmx_swfilter_section_copy_dump(ptr noundef %feed.2311, ptr noundef %arrayidx77.i.i, i8 noundef zeroext %sub81.i.i) #12
  br label %for.inc224

do.body91.i.i:                                    ; preds = %land.lhs.true64.i.i.do.body91.i.i_crit_edge, %if.then60.i.i.do.body91.i.i_crit_edge
  %buffer_flags92.i.i = getelementptr i8, ptr %.pn310, i32 -20
  %178 = ptrtoint ptr %buffer_flags92.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %buffer_flags92.i.i, align 4
  %or93.i.i = or i32 %179, 8
  store i32 %or93.i.i, ptr %buffer_flags92.i.i, align 4
  %call101.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.17, i32 noundef %conv183.i.i) #16
  br label %for.inc224

if.else104.i.i:                                   ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %idxprom105.i.i = zext i8 %sub.i63.i to i32
  %arrayidx106.i.i = getelementptr i8, ptr %buf, i32 %idxprom105.i.i
  tail call fastcc void @dvb_dmx_swfilter_section_copy_dump(ptr noundef %feed.2311, ptr noundef %arrayidx106.i.i, i8 noundef zeroext %retval.0.i182.i.i) #12
  br label %for.inc224

if.then30.i:                                      ; preds = %payload.exit.i62.i.if.then30.i_crit_edge, %if.end28.i.if.then30.i_crit_edge
  %secbufp.i = getelementptr i8, ptr %.pn310, i32 -84
  %180 = ptrtoint ptr %secbufp.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 0, ptr %secbufp.i, align 4
  %seclen.i = getelementptr i8, ptr %.pn310, i32 -82
  %181 = ptrtoint ptr %seclen.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %seclen.i, align 2
  br label %for.inc224

if.else213:                                       ; preds = %if.end206
  br i1 %cmp189.not, label %if.then218, label %if.else213.for.inc224_crit_edge

if.else213.for.inc224_crit_edge:                  ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc224

if.then218:                                       ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #14
  %cb = getelementptr i8, ptr %.pn310, i32 -56
  %182 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cb, align 8
  %buffer_flags220 = getelementptr i8, ptr %.pn310, i32 -20
  %call221 = tail call i32 %183(ptr noundef %buf, i32 noundef 188, ptr noundef null, i32 noundef 0, ptr noundef %feed.2311, ptr noundef %buffer_flags220) #12
  br label %for.inc224

for.inc224:                                       ; preds = %if.then218, %if.else213.for.inc224_crit_edge, %if.then30.i, %if.else104.i.i, %do.body91.i.i, %dvb_dmx_swfilter_section_new.exit174.i.i, %sw.bb23.i.for.inc224_crit_edge, %if.then17.i, %if.then15.i.for.inc224_crit_edge, %if.end11.i.for.inc224_crit_edge, %sw.bb.i.for.inc224_crit_edge, %if.then212.for.inc224_crit_edge, %land.lhs.true202.for.inc224_crit_edge, %for.body180.for.inc224_crit_edge
  %dvr_done.2 = phi i32 [ %inc203, %land.lhs.true202.for.inc224_crit_edge ], [ %dvr_done.1, %if.then218 ], [ %dvr_done.1, %if.else213.for.inc224_crit_edge ], [ %dvr_done.0309, %for.body180.for.inc224_crit_edge ], [ %dvr_done.1, %if.then212.for.inc224_crit_edge ], [ %dvr_done.1, %sw.bb.i.for.inc224_crit_edge ], [ %dvr_done.1, %if.end11.i.for.inc224_crit_edge ], [ %dvr_done.1, %if.then15.i.for.inc224_crit_edge ], [ %dvr_done.1, %if.then17.i ], [ %dvr_done.1, %sw.bb23.i.for.inc224_crit_edge ], [ %dvr_done.1, %dvb_dmx_swfilter_section_new.exit174.i.i ], [ %dvr_done.1, %do.body91.i.i ], [ %dvr_done.1, %if.else104.i.i ], [ %dvr_done.1, %if.then30.i ]
  %184 = ptrtoint ptr %.pn310 to i32
  call void @__asan_load4_noabort(i32 %184)
  %.pn = load ptr, ptr %.pn310, align 8
  %cmp177.not = icmp eq ptr %.pn, %feed_list170
  br i1 %cmp177.not, label %for.inc224.cleanup_crit_edge, label %for.inc224.for.body180_crit_edge

for.inc224.for.body180_crit_edge:                 ; preds = %for.inc224
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body180

for.inc224.cleanup_crit_edge:                     ; preds = %for.inc224
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc224.cleanup_crit_edge, %if.end168.cleanup_crit_edge, %do.end64.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dvb_dmx_swfilter(ptr noundef %demux, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_dvb_dmx_swfilter(ptr noundef %demux, ptr noundef %buf, i32 noundef %count, i32 noundef 188)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dvb_dmx_swfilter(ptr noundef %demux, ptr noundef %buf, i32 noundef %count, i32 noundef %pktsize) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 19
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %tsbufp = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 17
  %0 = ptrtoint ptr %tsbufp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tsbufp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then:                                          ; preds = %entry
  %sub = sub i32 %pktsize, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count)
  %cmp6 = icmp ugt i32 %sub, %count
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.dvb_demux, ptr %demux, i32 0, i32 16, i32 %1
  %2 = call ptr @memcpy(ptr %arrayidx, ptr %buf, i32 %count)
  %3 = ptrtoint ptr %tsbufp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tsbufp, align 4
  %add = add i32 %4, %count
  store i32 %add, ptr %tsbufp, align 4
  br label %bailout

if.end:                                           ; preds = %if.then
  %tsbuf10 = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 16
  %arrayidx11 = getelementptr %struct.dvb_demux, ptr %demux, i32 0, i32 16, i32 %1
  %5 = call ptr @memcpy(ptr %arrayidx11, ptr %buf, i32 %sub)
  %6 = ptrtoint ptr %tsbuf10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tsbuf10, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %7)
  %cmp15 = icmp eq i8 %7, 71
  br i1 %cmp15, label %if.then17, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dvb_dmx_swfilter_packet(ptr noundef %demux, ptr noundef %tsbuf10)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
  %8 = ptrtoint ptr %tsbufp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tsbufp, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %entry.if.end22_crit_edge
  %p.0 = phi i32 [ %sub, %if.end19 ], [ 0, %entry.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 204, i32 %pktsize)
  %cmp3.i = icmp eq i32 %pktsize, 204
  %tsbuf40 = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 16
  br label %while.cond

while.cond:                                       ; preds = %if.end46, %if.end22
  %p.1 = phi i32 [ %p.0, %if.end22 ], [ %add47, %if.end46 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %p.1, i32 %count)
  %cmp47.i = icmp ult i32 %p.1, %count
  br i1 %cmp47.i, label %while.cond.while.body.i_crit_edge, label %while.cond.find_next_packet.exit_crit_edge

while.cond.find_next_packet.exit_crit_edge:       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_next_packet.exit

while.cond.while.body.i_crit_edge:                ; preds = %while.cond
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.cond.while.body.i_crit_edge
  %pos.addr.048.i = phi i32 [ %inc.i, %if.end.i.while.body.i_crit_edge ], [ %p.1, %while.cond.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %pos.addr.048.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %10)
  %cmp1.i = icmp eq i8 %10, 71
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %10)
  %cmp7.i = icmp eq i8 %10, -72
  %or.cond.i = select i1 %cmp3.i, i1 %cmp7.i, i1 false
  %or.cond51.i = or i1 %cmp1.i, %or.cond.i
  br i1 %or.cond51.i, label %while.body.i.while.end.i_crit_edge, label %if.end.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  %inc.i = add i32 %pos.addr.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count
  br i1 %exitcond.not.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %pos.addr.0.lcssa.i = phi i32 [ %count, %if.end.i.while.end.i_crit_edge ], [ %pos.addr.048.i, %while.body.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.addr.0.lcssa.i, i32 %p.1)
  %tobool.not.i = icmp eq i32 %pos.addr.0.lcssa.i, %p.1
  br i1 %tobool.not.i, label %while.end.i.find_next_packet.exit_crit_edge, label %if.then9.i

while.end.i.find_next_packet.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_next_packet.exit

if.then9.i:                                       ; preds = %while.end.i
  %sub10.i = sub i32 %pos.addr.0.lcssa.i, %pktsize
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub10.i)
  %cmp11.i = icmp sgt i32 %sub10.i, -1
  br i1 %cmp11.i, label %land.lhs.true13.i, label %if.then9.i.find_next_packet.exit_crit_edge

if.then9.i.find_next_packet.exit_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_next_packet.exit

land.lhs.true13.i:                                ; preds = %if.then9.i
  %arrayidx14.i = getelementptr i8, ptr %buf, i32 %sub10.i
  %11 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %12)
  %cmp16.i = icmp eq i8 %12, 71
  br i1 %cmp16.i, label %land.lhs.true13.i.find_next_packet.exit_crit_edge, label %lor.lhs.false18.i

land.lhs.true13.i.find_next_packet.exit_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_next_packet.exit

lor.lhs.false18.i:                                ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %12)
  %cmp24.i = icmp eq i8 %12, -72
  %or.cond46.i = select i1 %cmp3.i, i1 %cmp24.i, i1 false
  br i1 %or.cond46.i, label %find_next_packet.exit.thread, label %lor.lhs.false18.i.find_next_packet.exit_crit_edge

lor.lhs.false18.i.find_next_packet.exit_crit_edge: ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_next_packet.exit

find_next_packet.exit:                            ; preds = %lor.lhs.false18.i.find_next_packet.exit_crit_edge, %land.lhs.true13.i.find_next_packet.exit_crit_edge, %if.then9.i.find_next_packet.exit_crit_edge, %while.end.i.find_next_packet.exit_crit_edge, %while.cond.find_next_packet.exit_crit_edge
  %retval.1.i = phi i32 [ %sub10.i, %land.lhs.true13.i.find_next_packet.exit_crit_edge ], [ %p.1, %while.end.i.find_next_packet.exit_crit_edge ], [ %p.1, %while.cond.find_next_packet.exit_crit_edge ], [ %pos.addr.0.lcssa.i, %lor.lhs.false18.i.find_next_packet.exit_crit_edge ], [ %pos.addr.0.lcssa.i, %if.then9.i.find_next_packet.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.1.i, i32 %count)
  %cmp24.not = icmp uge i32 %retval.1.i, %count
  %sub28 = sub i32 %count, %retval.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub28, i32 %pktsize)
  %cmp29 = icmp ult i32 %sub28, %pktsize
  %or.cond = or i1 %cmp24.not, %cmp29
  br i1 %or.cond, label %while.end, label %if.end32

find_next_packet.exit.thread:                     ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub10.i, i32 %count)
  %cmp24.not119 = icmp uge i32 %sub10.i, %count
  %sub28120 = sub i32 %count, %sub10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 204, i32 %sub28120)
  %cmp29121 = icmp ult i32 %sub28120, 204
  %or.cond122 = or i1 %cmp24.not119, %cmp29121
  br i1 %or.cond122, label %while.end.thread, label %find_next_packet.exit.thread.land.lhs.true_crit_edge

find_next_packet.exit.thread.land.lhs.true_crit_edge: ; preds = %find_next_packet.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.end32:                                         ; preds = %find_next_packet.exit
  %arrayidx33 = getelementptr i8, ptr %buf, i32 %retval.1.i
  br i1 %cmp3.i, label %if.end32.land.lhs.true_crit_edge, label %if.end32.if.end46_crit_edge

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.end32.land.lhs.true_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end32.land.lhs.true_crit_edge, %find_next_packet.exit.thread.land.lhs.true_crit_edge
  %arrayidx33131 = phi ptr [ %arrayidx33, %if.end32.land.lhs.true_crit_edge ], [ %arrayidx14.i, %find_next_packet.exit.thread.land.lhs.true_crit_edge ]
  %retval.1.i124130 = phi i32 [ %retval.1.i, %if.end32.land.lhs.true_crit_edge ], [ %sub10.i, %find_next_packet.exit.thread.land.lhs.true_crit_edge ]
  %13 = ptrtoint ptr %arrayidx33131 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx33131, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %14)
  %cmp37 = icmp eq i8 %14, -72
  br i1 %cmp37, label %if.then39, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %15 = call ptr @memcpy(ptr %tsbuf40, ptr %arrayidx33131, i32 188)
  %16 = ptrtoint ptr %tsbuf40 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 71, ptr %tsbuf40, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %land.lhs.true.if.end46_crit_edge, %if.end32.if.end46_crit_edge
  %retval.1.i124129 = phi i32 [ %retval.1.i124130, %if.then39 ], [ %retval.1.i124130, %land.lhs.true.if.end46_crit_edge ], [ %retval.1.i, %if.end32.if.end46_crit_edge ]
  %q.0 = phi ptr [ %tsbuf40, %if.then39 ], [ %arrayidx33131, %land.lhs.true.if.end46_crit_edge ], [ %arrayidx33, %if.end32.if.end46_crit_edge ]
  tail call fastcc void @dvb_dmx_swfilter_packet(ptr noundef %demux, ptr noundef %q.0)
  %add47 = add i32 %retval.1.i124129, %pktsize
  br label %while.cond

while.end:                                        ; preds = %find_next_packet.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.1.i, i32 %count)
  %tobool49.not = icmp eq i32 %retval.1.i, %count
  br i1 %tobool49.not, label %while.end.bailout_crit_edge, label %if.then50

while.end.bailout_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %bailout

while.end.thread:                                 ; preds = %find_next_packet.exit.thread
  call void @__sanitizer_cov_trace_cmp4(i32 %sub10.i, i32 %count)
  %tobool49.not134 = icmp eq i32 %sub10.i, %count
  br i1 %tobool49.not134, label %while.end.thread.bailout_crit_edge, label %if.then50.thread

while.end.thread.bailout_crit_edge:               ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %bailout

if.then50.thread:                                 ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  %17 = call ptr @memcpy(ptr %tsbuf40, ptr %arrayidx14.i, i32 %sub28120)
  %18 = ptrtoint ptr %tsbufp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub28120, ptr %tsbufp, align 4
  br label %land.lhs.true57

if.then50:                                        ; preds = %while.end
  %arrayidx53 = getelementptr i8, ptr %buf, i32 %retval.1.i
  %19 = call ptr @memcpy(ptr %tsbuf40, ptr %arrayidx53, i32 %sub28)
  %20 = ptrtoint ptr %tsbufp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub28, ptr %tsbufp, align 4
  br i1 %cmp3.i, label %if.then50.land.lhs.true57_crit_edge, label %if.then50.bailout_crit_edge

if.then50.bailout_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %bailout

if.then50.land.lhs.true57_crit_edge:              ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true57

land.lhs.true57:                                  ; preds = %if.then50.land.lhs.true57_crit_edge, %if.then50.thread
  %21 = ptrtoint ptr %tsbuf40 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tsbuf40, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %22)
  %cmp61 = icmp eq i8 %22, -72
  br i1 %cmp61, label %if.then63, label %land.lhs.true57.bailout_crit_edge

land.lhs.true57.bailout_crit_edge:                ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %bailout

if.then63:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %tsbuf40 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 71, ptr %tsbuf40, align 8
  br label %bailout

bailout:                                          ; preds = %if.then63, %land.lhs.true57.bailout_crit_edge, %if.then50.bailout_crit_edge, %while.end.thread.bailout_crit_edge, %while.end.bailout_crit_edge, %if.then8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dvb_dmx_swfilter_204(ptr noundef %demux, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_dvb_dmx_swfilter(ptr noundef %demux, ptr noundef %buf, i32 noundef %count, i32 noundef 204)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dvb_dmx_swfilter_raw(ptr noundef %demux, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 19
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %feed = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 11
  %0 = ptrtoint ptr %feed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feed, align 4
  %cb = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb, align 8
  %buffer_flags = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 9
  %call8 = tail call i32 %3(ptr noundef %buf, i32 noundef %count, ptr noundef null, i32 noundef 0, ptr noundef %1, ptr noundef %buffer_flags) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_dmx_init(ptr noundef %dvbdemux) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cnt_storage = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 20
  %0 = ptrtoint ptr %cnt_storage to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cnt_storage, align 8
  %users = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 9
  %1 = ptrtoint ptr %users to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %users, align 4
  %filternum = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 2
  %2 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %filternum, align 8
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 128) #12
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %retval.0.i = select i1 %5, i32 -1, i32 %6
  %call2 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #17
  %filter = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 10
  %7 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %filter, align 8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %feednum = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 3
  %8 = ptrtoint ptr %feednum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %feednum, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4408) #12
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %retval.0.i119 = select i1 %11, i32 -1, i32 %12
  %call5 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i119) #17
  %feed = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 11
  %13 = ptrtoint ptr %feed to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5, ptr %feed, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %14 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %filternum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp121 = icmp sgt i32 %15, 0
  br i1 %cmp121, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.cond16.preheader_crit_edge

for.cond.preheader.for.cond16.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond16.preheader

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %filter, align 8
  tail call void @vfree(ptr noundef %17) #12
  %18 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %filter, align 8
  br label %cleanup

for.cond16.preheader:                             ; preds = %for.body.for.cond16.preheader_crit_edge, %for.cond.preheader.for.cond16.preheader_crit_edge
  %19 = ptrtoint ptr %feednum to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %feednum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp18123 = icmp sgt i32 %20, 0
  br i1 %cmp18123, label %for.cond16.preheader.for.body19_crit_edge, label %for.cond16.preheader.for.end28_crit_edge

for.cond16.preheader.for.end28_crit_edge:         ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end28

for.cond16.preheader.for.body19_crit_edge:        ; preds = %for.cond16.preheader
  br label %for.body19

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0122 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %21 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %filter, align 8
  %state = getelementptr %struct.dvb_demux_filter, ptr %22, i32 %i.0122, i32 7
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %state, align 4
  %24 = load ptr, ptr %filter, align 8
  %index = getelementptr %struct.dvb_demux_filter, ptr %24, i32 %i.0122, i32 6
  %25 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %i.0122, ptr %index, align 4
  %inc = add nuw nsw i32 %i.0122, 1
  %26 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %filternum, align 8
  %cmp = icmp slt i32 %inc, %27
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond16.preheader_crit_edge

for.body.for.cond16.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond16.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.cond16.preheader.for.body19_crit_edge
  %i.1124 = phi i32 [ %inc27, %for.body19.for.body19_crit_edge ], [ 0, %for.cond16.preheader.for.body19_crit_edge ]
  %28 = ptrtoint ptr %feed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %feed, align 4
  %state22 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %i.1124, i32 5
  %30 = ptrtoint ptr %state22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %state22, align 8
  %31 = load ptr, ptr %feed, align 4
  %index25 = getelementptr %struct.dvb_demux_feed, ptr %31, i32 %i.1124, i32 16
  %32 = ptrtoint ptr %index25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %i.1124, ptr %index25, align 8
  %inc27 = add nuw nsw i32 %i.1124, 1
  %33 = ptrtoint ptr %feednum to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %feednum, align 4
  %cmp18 = icmp slt i32 %inc27, %34
  br i1 %cmp18, label %for.body19.for.body19_crit_edge, label %for.body19.for.end28_crit_edge

for.body19.for.end28_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end28

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body19

for.end28:                                        ; preds = %for.body19.for.end28_crit_edge, %for.cond16.preheader.for.end28_crit_edge
  %call29 = tail call noalias ptr @vmalloc(i32 noundef 8192) #17
  %35 = ptrtoint ptr %cnt_storage to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call29, ptr %cnt_storage, align 8
  %tobool32.not = icmp eq ptr %call29, null
  br i1 %tobool32.not, label %do.end, label %for.end28.if.end35_crit_edge

for.end28.if.end35_crit_edge:                     ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end:                                           ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #14
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %if.end35

if.end35:                                         ; preds = %do.end, %for.end28.if.end35_crit_edge
  %frontend_list = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 12
  %36 = ptrtoint ptr %frontend_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %frontend_list, ptr %frontend_list, align 4
  %prev.i = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 12, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %frontend_list, ptr %prev.i, align 4
  %arrayidx39 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 0
  %38 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx39, align 4
  %arrayidx40 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 0
  %39 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -1, ptr %arrayidx40, align 2
  %arrayidx39.1 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 1
  %40 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx39.1, align 4
  %arrayidx40.1 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 1
  %41 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -1, ptr %arrayidx40.1, align 2
  %arrayidx39.2 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 2
  %42 = ptrtoint ptr %arrayidx39.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx39.2, align 4
  %arrayidx40.2 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 2
  %43 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %arrayidx40.2, align 2
  %arrayidx39.3 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 3
  %44 = ptrtoint ptr %arrayidx39.3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx39.3, align 4
  %arrayidx40.3 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 3
  %45 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %arrayidx40.3, align 2
  %arrayidx39.4 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 4
  %46 = ptrtoint ptr %arrayidx39.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx39.4, align 4
  %arrayidx40.4 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 4
  %47 = ptrtoint ptr %arrayidx40.4 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -1, ptr %arrayidx40.4, align 2
  %arrayidx39.5 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 5
  %48 = ptrtoint ptr %arrayidx39.5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx39.5, align 4
  %arrayidx40.5 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 5
  %49 = ptrtoint ptr %arrayidx40.5 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -1, ptr %arrayidx40.5, align 2
  %arrayidx39.6 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 6
  %50 = ptrtoint ptr %arrayidx39.6 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx39.6, align 4
  %arrayidx40.6 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 6
  %51 = ptrtoint ptr %arrayidx40.6 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %arrayidx40.6, align 2
  %arrayidx39.7 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 7
  %52 = ptrtoint ptr %arrayidx39.7 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx39.7, align 4
  %arrayidx40.7 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 7
  %53 = ptrtoint ptr %arrayidx40.7 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -1, ptr %arrayidx40.7, align 2
  %arrayidx39.8 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 8
  %54 = ptrtoint ptr %arrayidx39.8 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %arrayidx39.8, align 4
  %arrayidx40.8 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 8
  %55 = ptrtoint ptr %arrayidx40.8 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -1, ptr %arrayidx40.8, align 2
  %arrayidx39.9 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 9
  %56 = ptrtoint ptr %arrayidx39.9 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx39.9, align 4
  %arrayidx40.9 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 9
  %57 = ptrtoint ptr %arrayidx40.9 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -1, ptr %arrayidx40.9, align 2
  %arrayidx39.10 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 10
  %58 = ptrtoint ptr %arrayidx39.10 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %arrayidx39.10, align 4
  %arrayidx40.10 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 10
  %59 = ptrtoint ptr %arrayidx40.10 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %arrayidx40.10, align 2
  %arrayidx39.11 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 11
  %60 = ptrtoint ptr %arrayidx39.11 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %arrayidx39.11, align 4
  %arrayidx40.11 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 11
  %61 = ptrtoint ptr %arrayidx40.11 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -1, ptr %arrayidx40.11, align 2
  %arrayidx39.12 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 12
  %62 = ptrtoint ptr %arrayidx39.12 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %arrayidx39.12, align 4
  %arrayidx40.12 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 12
  %63 = ptrtoint ptr %arrayidx40.12 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -1, ptr %arrayidx40.12, align 2
  %arrayidx39.13 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 13
  %64 = ptrtoint ptr %arrayidx39.13 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %arrayidx39.13, align 4
  %arrayidx40.13 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 13
  %65 = ptrtoint ptr %arrayidx40.13 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -1, ptr %arrayidx40.13, align 2
  %arrayidx39.14 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 14
  %66 = ptrtoint ptr %arrayidx39.14 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx39.14, align 4
  %arrayidx40.14 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 14
  %67 = ptrtoint ptr %arrayidx40.14 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -1, ptr %arrayidx40.14, align 2
  %arrayidx39.15 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 15
  %68 = ptrtoint ptr %arrayidx39.15 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx39.15, align 4
  %arrayidx40.15 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 15
  %69 = ptrtoint ptr %arrayidx40.15 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 -1, ptr %arrayidx40.15, align 2
  %arrayidx39.16 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 16
  %70 = ptrtoint ptr %arrayidx39.16 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %arrayidx39.16, align 4
  %arrayidx40.16 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 16
  %71 = ptrtoint ptr %arrayidx40.16 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -1, ptr %arrayidx40.16, align 2
  %arrayidx39.17 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 17
  %72 = ptrtoint ptr %arrayidx39.17 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arrayidx39.17, align 4
  %arrayidx40.17 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 17
  %73 = ptrtoint ptr %arrayidx40.17 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -1, ptr %arrayidx40.17, align 2
  %arrayidx39.18 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 18
  %74 = ptrtoint ptr %arrayidx39.18 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %arrayidx39.18, align 4
  %arrayidx40.18 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 18
  %75 = ptrtoint ptr %arrayidx40.18 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 -1, ptr %arrayidx40.18, align 2
  %arrayidx39.19 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 13, i32 19
  %76 = ptrtoint ptr %arrayidx39.19 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx39.19, align 4
  %arrayidx40.19 = getelementptr %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 14, i32 19
  %77 = ptrtoint ptr %arrayidx40.19 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %arrayidx40.19, align 2
  %feed_list = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 15
  %78 = ptrtoint ptr %feed_list to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %feed_list, ptr %feed_list, align 4
  %prev.i120 = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 15, i32 1
  %79 = ptrtoint ptr %prev.i120 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %feed_list, ptr %prev.i120, align 4
  %playing = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 23
  %80 = ptrtoint ptr %playing to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %playing, align 4
  %recording = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 24
  %81 = ptrtoint ptr %recording to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %recording, align 8
  %tsbufp = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 17
  %82 = ptrtoint ptr %tsbufp to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %tsbufp, align 4
  %check_crc32 = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 7
  %83 = ptrtoint ptr %check_crc32 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %check_crc32, align 4
  %tobool44.not = icmp eq ptr %84, null
  br i1 %tobool44.not, label %if.then45, label %if.end35.if.end47_crit_edge

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then45:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %check_crc32 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @dvb_dmx_crc32, ptr %check_crc32, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end35.if.end47_crit_edge
  %memcopy = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 8
  %86 = ptrtoint ptr %memcopy to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %memcopy, align 8
  %tobool48.not = icmp eq ptr %87, null
  br i1 %tobool48.not, label %if.then49, label %if.end47.if.end51_crit_edge

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %memcopy to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @dvb_dmx_memcopy, ptr %memcopy, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47.if.end51_crit_edge
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 1
  %89 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %frontend, align 4
  %priv = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 2
  %90 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %dvbdemux, ptr %priv, align 4
  %open = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 3
  %91 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @dvbdmx_open, ptr %open, align 4
  %close = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 4
  %92 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @dvbdmx_close, ptr %close, align 4
  %write = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 5
  %93 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @dvbdmx_write, ptr %write, align 4
  %allocate_ts_feed = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 6
  %94 = ptrtoint ptr %allocate_ts_feed to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @dvbdmx_allocate_ts_feed, ptr %allocate_ts_feed, align 4
  %release_ts_feed = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 7
  %95 = ptrtoint ptr %release_ts_feed to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @dvbdmx_release_ts_feed, ptr %release_ts_feed, align 4
  %allocate_section_feed = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 8
  %96 = ptrtoint ptr %allocate_section_feed to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @dvbdmx_allocate_section_feed, ptr %allocate_section_feed, align 4
  %release_section_feed = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 9
  %97 = ptrtoint ptr %release_section_feed to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @dvbdmx_release_section_feed, ptr %release_section_feed, align 4
  %add_frontend = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 10
  %98 = ptrtoint ptr %add_frontend to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @dvbdmx_add_frontend, ptr %add_frontend, align 4
  %remove_frontend = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 11
  %99 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @dvbdmx_remove_frontend, ptr %remove_frontend, align 4
  %get_frontends = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 12
  %100 = ptrtoint ptr %get_frontends to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @dvbdmx_get_frontends, ptr %get_frontends, align 4
  %connect_frontend = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 13
  %101 = ptrtoint ptr %connect_frontend to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @dvbdmx_connect_frontend, ptr %connect_frontend, align 4
  %disconnect_frontend = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 14
  %102 = ptrtoint ptr %disconnect_frontend to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @dvbdmx_disconnect_frontend, ptr %disconnect_frontend, align 4
  %get_pes_pids = getelementptr inbounds %struct.dmx_demux, ptr %dvbdemux, i32 0, i32 15
  %103 = ptrtoint ptr %get_pes_pids to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @dvbdmx_get_pes_pids, ptr %get_pes_pids, align 4
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @dvb_dmx_init.__key) #12
  %lock = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @dvb_dmx_init.__key.4, i16 noundef signext 3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ -12, %if.then8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dvb_dmx_crc32(ptr nocapture noundef %f, ptr noundef %src, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %crc_val = getelementptr inbounds %struct.dmx_section_feed, ptr %f, i32 0, i32 4
  %0 = ptrtoint ptr %crc_val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crc_val, align 8
  %call = tail call i32 @crc32_be(i32 noundef %1, ptr noundef %src, i32 noundef %len) #18
  %2 = ptrtoint ptr %crc_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %crc_val, align 8
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dvb_dmx_memcopy(ptr nocapture noundef readnone %f, ptr nocapture noundef writeonly %d, ptr nocapture noundef readonly %s, i32 noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %d, ptr %s, i32 %len)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dvbdmx_open(ptr nocapture noundef %demux) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %users = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 9
  %0 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp sgt i32 %1, 9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add nsw i32 %1, 1
  %2 = ptrtoint ptr %users to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %users, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -87, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dvbdmx_close(ptr nocapture noundef %demux) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %users = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 9
  %0 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %users to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %users, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbdmx_write(ptr noundef %demux, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %demux, i32 0, i32 1
  %0 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frontend, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %source = getelementptr inbounds %struct.dmx_frontend, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @memdup_user(ptr noundef %buf, i32 noundef %count) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 18
  %call6 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %call) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  tail call fastcc void @_dvb_dmx_swfilter(ptr noundef %demux, ptr noundef %call, i32 noundef %count, i32 noundef 188) #12
  tail call void @kfree(ptr noundef %call) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !107) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end9.cleanup_crit_edge, !prof !119

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

signal_pending.exit:                              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  %and1.i.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool13.not = icmp eq i32 %and1.i.i.i.i.i, 0
  %spec.select = select i1 %tobool13.not, i32 %count, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %signal_pending.exit, %if.end9.cleanup_crit_edge, %if.then8, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then3 ], [ -512, %if.then8 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -4, %if.end9.cleanup_crit_edge ], [ %spec.select, %signal_pending.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbdmx_allocate_ts_feed(ptr noundef %dmx, ptr nocapture noundef %ts_feed, ptr noundef %callback) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %dmx, i32 0, i32 18
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %feednum.i = getelementptr inbounds %struct.dvb_demux, ptr %dmx, i32 0, i32 3
  %0 = ptrtoint ptr %feednum.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %feednum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20.i = icmp sgt i32 %1, 0
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %feed.i = getelementptr inbounds %struct.dvb_demux, ptr %dmx, i32 0, i32 11
  %2 = ptrtoint ptr %feed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %feed.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %state.i = getelementptr %struct.dvb_demux_feed, ptr %3, i32 %i.021.i, i32 5
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.i = icmp eq i32 %5, 0
  br i1 %cmp1.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.cleanup.sink.split_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup.sink.split_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.for.end.i_crit_edge ], [ %i.021.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %1)
  %cmp3.i = icmp eq i32 %i.0.lcssa.i, %1
  br i1 %cmp3.i, label %for.end.i.cleanup.sink.split_crit_edge, label %dvb_dmx_feed_alloc.exit

for.end.i.cleanup.sink.split_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

dvb_dmx_feed_alloc.exit:                          ; preds = %for.end.i
  %feed6.i = getelementptr inbounds %struct.dvb_demux, ptr %dmx, i32 0, i32 11
  %6 = ptrtoint ptr %feed6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %feed6.i, align 4
  %state8.i = getelementptr %struct.dvb_demux_feed, ptr %7, i32 %i.0.lcssa.i, i32 5
  %8 = ptrtoint ptr %state8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state8.i, align 8
  %9 = load ptr, ptr %feed6.i, align 4
  %arrayidx10.i = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i
  %tobool2.not = icmp eq ptr %arrayidx10.i, null
  br i1 %tobool2.not, label %dvb_dmx_feed_alloc.exit.cleanup.sink.split_crit_edge, label %if.end5

dvb_dmx_feed_alloc.exit.cleanup.sink.split_crit_edge: ; preds = %dvb_dmx_feed_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end5:                                          ; preds = %dvb_dmx_feed_alloc.exit
  %type = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 4
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %type, align 4
  %cb = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 1
  %11 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %callback, ptr %cb, align 8
  %demux6 = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 2
  %12 = ptrtoint ptr %demux6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dmx, ptr %demux6, align 4
  %pid = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 6
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %pid, align 4
  %peslen = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 14
  %14 = ptrtoint ptr %peslen to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -6, ptr %peslen, align 2
  %buffer_flags = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 9
  %15 = ptrtoint ptr %buffer_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %buffer_flags, align 4
  %16 = ptrtoint ptr %ts_feed to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx10.i, ptr %ts_feed, align 4
  %parent = getelementptr inbounds %struct.dmx_ts_feed, ptr %arrayidx10.i, i32 0, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dmx, ptr %parent, align 4
  %18 = load ptr, ptr %ts_feed, align 4
  %priv = getelementptr inbounds %struct.dmx_ts_feed, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %priv, align 4
  %20 = load ptr, ptr %ts_feed, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %20, align 4
  %22 = load ptr, ptr %ts_feed, align 4
  %start_filtering = getelementptr inbounds %struct.dmx_ts_feed, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %start_filtering to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dmx_ts_feed_start_filtering, ptr %start_filtering, align 4
  %24 = load ptr, ptr %ts_feed, align 4
  %stop_filtering = getelementptr inbounds %struct.dmx_ts_feed, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %stop_filtering to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dmx_ts_feed_stop_filtering, ptr %stop_filtering, align 4
  %26 = load ptr, ptr %ts_feed, align 4
  %set = getelementptr inbounds %struct.dmx_ts_feed, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dmx_ts_feed_set, ptr %set, align 4
  %filternum.i = getelementptr inbounds %struct.dvb_demux, ptr %dmx, i32 0, i32 2
  %28 = ptrtoint ptr %filternum.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %filternum.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp20.i46 = icmp sgt i32 %29, 0
  br i1 %cmp20.i46, label %for.body.lr.ph.i47, label %if.end5.for.end.i57_crit_edge

if.end5.for.end.i57_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i57

for.body.lr.ph.i47:                               ; preds = %if.end5
  %filter.i = getelementptr inbounds %struct.dvb_demux, ptr %dmx, i32 0, i32 10
  %30 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %filter.i, align 8
  br label %for.body.i51

for.body.i51:                                     ; preds = %for.inc.i54.for.body.i51_crit_edge, %for.body.lr.ph.i47
  %i.021.i48 = phi i32 [ 0, %for.body.lr.ph.i47 ], [ %inc.i52, %for.inc.i54.for.body.i51_crit_edge ]
  %state.i49 = getelementptr %struct.dvb_demux_filter, ptr %31, i32 %i.021.i48, i32 7
  %32 = ptrtoint ptr %state.i49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp1.i50 = icmp eq i32 %33, 0
  br i1 %cmp1.i50, label %for.body.i51.for.end.i57_crit_edge, label %for.inc.i54

for.body.i51.for.end.i57_crit_edge:               ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i57

for.inc.i54:                                      ; preds = %for.body.i51
  %inc.i52 = add nuw nsw i32 %i.021.i48, 1
  %exitcond.not.i53 = icmp eq i32 %inc.i52, %29
  br i1 %exitcond.not.i53, label %for.inc.i54.dvb_dmx_filter_alloc.exit.thread_crit_edge, label %for.inc.i54.for.body.i51_crit_edge

for.inc.i54.for.body.i51_crit_edge:               ; preds = %for.inc.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i51

for.inc.i54.dvb_dmx_filter_alloc.exit.thread_crit_edge: ; preds = %for.inc.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_dmx_filter_alloc.exit.thread

for.end.i57:                                      ; preds = %for.body.i51.for.end.i57_crit_edge, %if.end5.for.end.i57_crit_edge
  %i.0.lcssa.i55 = phi i32 [ 0, %if.end5.for.end.i57_crit_edge ], [ %i.021.i48, %for.body.i51.for.end.i57_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i55, i32 %29)
  %cmp3.i56 = icmp eq i32 %i.0.lcssa.i55, %29
  br i1 %cmp3.i56, label %for.end.i57.dvb_dmx_filter_alloc.exit.thread_crit_edge, label %dvb_dmx_filter_alloc.exit

for.end.i57.dvb_dmx_filter_alloc.exit.thread_crit_edge: ; preds = %for.end.i57
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_dmx_filter_alloc.exit.thread

dvb_dmx_filter_alloc.exit.thread:                 ; preds = %for.end.i57.dvb_dmx_filter_alloc.exit.thread_crit_edge, %for.inc.i54.dvb_dmx_filter_alloc.exit.thread_crit_edge
  %filter65 = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 8
  %34 = ptrtoint ptr %filter65 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %filter65, align 8
  br label %if.then10

dvb_dmx_filter_alloc.exit:                        ; preds = %for.end.i57
  %filter6.i = getelementptr inbounds %struct.dvb_demux, ptr %dmx, i32 0, i32 10
  %35 = ptrtoint ptr %filter6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %filter6.i, align 8
  %state8.i58 = getelementptr %struct.dvb_demux_filter, ptr %36, i32 %i.0.lcssa.i55, i32 7
  %37 = ptrtoint ptr %state8.i58 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %state8.i58, align 4
  %38 = load ptr, ptr %filter6.i, align 8
  %arrayidx10.i59 = getelementptr %struct.dvb_demux_filter, ptr %38, i32 %i.0.lcssa.i55
  %filter = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 8
  %39 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx10.i59, ptr %filter, align 8
  %tobool9.not = icmp eq ptr %arrayidx10.i59, null
  br i1 %tobool9.not, label %dvb_dmx_filter_alloc.exit.if.then10_crit_edge, label %if.end12

dvb_dmx_filter_alloc.exit.if.then10_crit_edge:    ; preds = %dvb_dmx_filter_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then10:                                        ; preds = %dvb_dmx_filter_alloc.exit.if.then10_crit_edge, %dvb_dmx_filter_alloc.exit.thread
  %state = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 5
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %state, align 8
  br label %cleanup.sink.split

if.end12:                                         ; preds = %dvb_dmx_filter_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %type14 = getelementptr %struct.dvb_demux_filter, ptr %38, i32 %i.0.lcssa.i55, i32 8
  %41 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %type14, align 4
  %42 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %filter, align 8
  %feed16 = getelementptr inbounds %struct.dvb_demux_filter, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %feed16 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx10.i, ptr %feed16, align 4
  %45 = load ptr, ptr %filter, align 8
  %state18 = getelementptr inbounds %struct.dvb_demux_filter, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %state18 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %state18, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end12, %if.then10, %dvb_dmx_feed_alloc.exit.cleanup.sink.split_crit_edge, %for.end.i.cleanup.sink.split_crit_edge, %for.inc.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -16, %if.then10 ], [ 0, %if.end12 ], [ -16, %for.end.i.cleanup.sink.split_crit_edge ], [ -16, %dvb_dmx_feed_alloc.exit.cleanup.sink.split_crit_edge ], [ -16, %for.inc.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbdmx_release_ts_feed(ptr noundef %dmx, ptr noundef %ts_feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %dmx, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 8
  %filter = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 8
  %3 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %filter, align 8
  %state3 = getelementptr inbounds %struct.dvb_demux_filter, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %state3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state3, align 4
  %demux.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 2
  %6 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %demux.i, align 4
  %lock.i = getelementptr inbounds %struct.dvb_demux, ptr %7, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %8 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %demux.i, align 4
  %feed_list.i.i = getelementptr inbounds %struct.dvb_demux, ptr %9, i32 0, i32 15
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end
  %.pn.in.i.i = phi ptr [ %feed_list.i.i, %if.end ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %feed_list.i.i
  br i1 %cmp.not.i.i, label %do.end.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %entry1.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4392
  %cmp4.i.i = icmp eq ptr %entry1.0.i.i, %ts_feed
  br i1 %cmp4.i.i, label %if.end.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

do.end.i:                                         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %type.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 4
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 8
  %pid.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 6
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pid.i, align 4
  %conv.i = zext i16 %16 to i32
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %12, i32 noundef %14, i32 noundef %conv.i) #16
  br label %dvb_demux_feed_del.exit

if.end.i:                                         ; preds = %for.body.i.i
  %list_head.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_head.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 15, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %list_head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list_head.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %23 = ptrtoint ptr %list_head.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %list_head.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 15, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %dvb_demux_feed_del.exit

dvb_demux_feed_del.exit:                          ; preds = %list_del.exit.i, %do.end.i
  %25 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %demux.i, align 4
  %lock3.i = getelementptr inbounds %struct.dvb_demux, ptr %26, i32 0, i32 19
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i) #12
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 6
  %27 = ptrtoint ptr %pid to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %pid, align 4
  %ts_type = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 10
  %28 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ts_type, align 8
  %and = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %dvb_demux_feed_del.exit.cleanup_crit_edge, label %land.lhs.true

dvb_demux_feed_del.exit.cleanup_crit_edge:        ; preds = %dvb_demux_feed_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %dvb_demux_feed_del.exit
  %pes_type = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 11
  %30 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pes_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %31)
  %cmp4 = icmp ult i32 %31, 20
  br i1 %cmp4, label %if.then5, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.dvb_demux, ptr %dmx, i32 0, i32 13, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %land.lhs.true.cleanup_crit_edge, %dvb_demux_feed_del.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %dvb_demux_feed_del.exit.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbdmx_allocate_section_feed(ptr noundef %demux, ptr nocapture noundef %feed, ptr noundef %callback) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 18
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %feednum.i = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 3
  %0 = ptrtoint ptr %feednum.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %feednum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20.i = icmp sgt i32 %1, 0
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %feed.i = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 11
  %2 = ptrtoint ptr %feed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %feed.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %state.i = getelementptr %struct.dvb_demux_feed, ptr %3, i32 %i.021.i, i32 5
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.i = icmp eq i32 %5, 0
  br i1 %cmp1.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.cleanup.sink.split_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup.sink.split_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.for.end.i_crit_edge ], [ %i.021.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %1)
  %cmp3.i = icmp eq i32 %i.0.lcssa.i, %1
  br i1 %cmp3.i, label %for.end.i.cleanup.sink.split_crit_edge, label %dvb_dmx_feed_alloc.exit

for.end.i.cleanup.sink.split_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

dvb_dmx_feed_alloc.exit:                          ; preds = %for.end.i
  %feed6.i = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 11
  %6 = ptrtoint ptr %feed6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %feed6.i, align 4
  %state8.i = getelementptr %struct.dvb_demux_feed, ptr %7, i32 %i.0.lcssa.i, i32 5
  %8 = ptrtoint ptr %state8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state8.i, align 8
  %9 = load ptr, ptr %feed6.i, align 4
  %arrayidx10.i = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i
  %tobool2.not = icmp eq ptr %arrayidx10.i, null
  br i1 %tobool2.not, label %dvb_dmx_feed_alloc.exit.cleanup.sink.split_crit_edge, label %if.end5

dvb_dmx_feed_alloc.exit.cleanup.sink.split_crit_edge: ; preds = %dvb_dmx_feed_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end5:                                          ; preds = %dvb_dmx_feed_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 4
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %type, align 4
  %cb = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 1
  %11 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %callback, ptr %cb, align 8
  %demux6 = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 2
  %12 = ptrtoint ptr %demux6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %demux, ptr %demux6, align 4
  %pid = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 6
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %pid, align 4
  %buffer_flags = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 9
  %14 = ptrtoint ptr %buffer_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %buffer_flags, align 4
  %secbuf_base = getelementptr inbounds %struct.dmx_section_feed, ptr %arrayidx10.i, i32 0, i32 6
  %secbuf = getelementptr inbounds %struct.dmx_section_feed, ptr %arrayidx10.i, i32 0, i32 5
  %15 = ptrtoint ptr %secbuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %secbuf_base, ptr %secbuf, align 4
  %seclen = getelementptr inbounds %struct.dmx_section_feed, ptr %arrayidx10.i, i32 0, i32 8
  %16 = ptrtoint ptr %seclen to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %seclen, align 2
  %secbufp = getelementptr inbounds %struct.dmx_section_feed, ptr %arrayidx10.i, i32 0, i32 7
  %17 = ptrtoint ptr %secbufp to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %secbufp, align 4
  %tsfeedp = getelementptr inbounds %struct.dmx_section_feed, ptr %arrayidx10.i, i32 0, i32 9
  %18 = ptrtoint ptr %tsfeedp to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %tsfeedp, align 8
  %filter = getelementptr %struct.dvb_demux_feed, ptr %9, i32 %i.0.lcssa.i, i32 8
  %19 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %filter, align 8
  %20 = ptrtoint ptr %feed to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx10.i, ptr %feed, align 4
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx10.i, align 4
  %22 = load ptr, ptr %feed, align 4
  %parent = getelementptr inbounds %struct.dmx_section_feed, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %demux, ptr %parent, align 4
  %24 = load ptr, ptr %feed, align 4
  %priv = getelementptr inbounds %struct.dmx_section_feed, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %priv, align 4
  %26 = load ptr, ptr %feed, align 4
  %set = getelementptr inbounds %struct.dmx_section_feed, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dmx_section_feed_set, ptr %set, align 4
  %28 = load ptr, ptr %feed, align 4
  %allocate_filter = getelementptr inbounds %struct.dmx_section_feed, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %allocate_filter to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dmx_section_feed_allocate_filter, ptr %allocate_filter, align 4
  %30 = load ptr, ptr %feed, align 4
  %start_filtering = getelementptr inbounds %struct.dmx_section_feed, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %start_filtering to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @dmx_section_feed_start_filtering, ptr %start_filtering, align 4
  %32 = load ptr, ptr %feed, align 4
  %stop_filtering = getelementptr inbounds %struct.dmx_section_feed, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %stop_filtering to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @dmx_section_feed_stop_filtering, ptr %stop_filtering, align 4
  %34 = load ptr, ptr %feed, align 4
  %release_filter = getelementptr inbounds %struct.dmx_section_feed, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %release_filter to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @dmx_section_feed_release_filter, ptr %release_filter, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end5, %dvb_dmx_feed_alloc.exit.cleanup.sink.split_crit_edge, %for.end.i.cleanup.sink.split_crit_edge, %for.inc.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end5 ], [ -16, %for.end.i.cleanup.sink.split_crit_edge ], [ -16, %dvb_dmx_feed_alloc.exit.cleanup.sink.split_crit_edge ], [ -16, %for.inc.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbdmx_release_section_feed(ptr noundef %demux, ptr noundef %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 8
  %demux.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %3 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %demux.i, align 4
  %lock.i = getelementptr inbounds %struct.dvb_demux, ptr %4, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %5 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %demux.i, align 4
  %feed_list.i.i = getelementptr inbounds %struct.dvb_demux, ptr %6, i32 0, i32 15
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end
  %.pn.in.i.i = phi ptr [ %feed_list.i.i, %if.end ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %feed_list.i.i
  br i1 %cmp.not.i.i, label %do.end.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %entry1.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4392
  %cmp4.i.i = icmp eq ptr %entry1.0.i.i, %feed
  br i1 %cmp4.i.i, label %if.end.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

do.end.i:                                         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %type.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 4
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  %pid.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 6
  %12 = ptrtoint ptr %pid.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pid.i, align 4
  %conv.i = zext i16 %13 to i32
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %9, i32 noundef %11, i32 noundef %conv.i) #16
  br label %dvb_demux_feed_del.exit

if.end.i:                                         ; preds = %for.body.i.i
  %list_head.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_head.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 15, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %list_head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list_head.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %20 = ptrtoint ptr %list_head.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %list_head.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 15, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %dvb_demux_feed_del.exit

dvb_demux_feed_del.exit:                          ; preds = %list_del.exit.i, %do.end.i
  %22 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %demux.i, align 4
  %lock3.i = getelementptr inbounds %struct.dvb_demux, ptr %23, i32 0, i32 19
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i) #12
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 6
  %24 = ptrtoint ptr %pid to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %pid, align 4
  br label %cleanup

cleanup:                                          ; preds = %dvb_demux_feed_del.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dvb_demux_feed_del.exit ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbdmx_add_frontend(ptr noundef %demux, ptr noundef %frontend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frontend_list = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 12
  %0 = ptrtoint ptr %frontend_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frontend_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %frontend, ptr noundef %frontend_list, ptr noundef %1) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %frontend, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %frontend, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %frontend, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %frontend_list, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %frontend_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %frontend, ptr %frontend_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbdmx_remove_frontend(ptr noundef readonly %demux, ptr noundef readnone %frontend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frontend_list = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 12
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %pos.0.in = phi ptr [ %frontend_list, %entry ], [ %pos.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %frontend_list
  br i1 %cmp.i.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %cmp = icmp eq ptr %pos.0, %frontend
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %frontend) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %frontend, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %frontend, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %7 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %frontend, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %frontend, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -19, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @dvbdmx_get_frontends(ptr noundef %demux) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frontend_list = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 12
  %0 = ptrtoint ptr %frontend_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %frontend_list, align 4
  %cmp.i.not = icmp eq ptr %1, %frontend_list
  %frontend_list. = select i1 %cmp.i.not, ptr null, ptr %frontend_list
  ret ptr %frontend_list.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbdmx_connect_frontend(ptr noundef %demux, ptr noundef %frontend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frontend1 = getelementptr inbounds %struct.dmx_demux, ptr %demux, i32 0, i32 1
  %0 = ptrtoint ptr %frontend1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frontend1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %2 = ptrtoint ptr %frontend1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %frontend, ptr %frontend1, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbdmx_disconnect_frontend(ptr noundef %demux) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %demux, i32 0, i32 1
  %0 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %frontend, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dvbdmx_get_pes_pids(ptr nocapture noundef readonly %demux, ptr nocapture noundef writeonly %pids) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pids1 = getelementptr inbounds %struct.dvb_demux, ptr %demux, i32 0, i32 14
  %0 = call ptr @memcpy(ptr %pids, ptr %pids1, i32 10)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dvb_dmx_release(ptr nocapture noundef readonly %dvbdemux) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cnt_storage = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 20
  %0 = ptrtoint ptr %cnt_storage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cnt_storage, align 8
  tail call void @vfree(ptr noundef %1) #12
  %filter = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 10
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter, align 8
  tail call void @vfree(ptr noundef %3) #12
  %feed = getelementptr inbounds %struct.dvb_demux, ptr %dvbdemux, i32 0, i32 11
  %4 = ptrtoint ptr %feed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %feed, align 4
  tail call void @vfree(ptr noundef %5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dvb_dmx_swfilter_section_copy_dump(ptr noundef %feed, ptr noundef %buf, i8 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %tsfeedp = getelementptr inbounds %struct.dmx_section_feed, ptr %feed, i32 0, i32 9
  %2 = ptrtoint ptr %tsfeedp to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tsfeedp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4283, i16 %3)
  %cmp = icmp ugt i16 %3, 4283
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  %conv6 = zext i8 %len to i32
  %add = add nuw nsw i32 %conv, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4284, i32 %add)
  %cmp7 = icmp ugt i32 %add, 4284
  br i1 %cmp7, label %do.body, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %buffer_flags = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 9
  %4 = ptrtoint ptr %buffer_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_flags, align 4
  %or = or i32 %5, 8
  store i32 %or, ptr %buffer_flags, align 4
  %sub = add nsw i32 %add, -4284
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %sub, i32 noundef 4284) #16
  %6 = ptrtoint ptr %tsfeedp to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tsfeedp, align 4
  %conv18 = trunc i16 %7 to i8
  %sub19 = sub i8 -68, %conv18
  br label %if.end21

if.end21:                                         ; preds = %do.body, %if.end.if.end21_crit_edge
  %len.addr.0 = phi i8 [ %sub19, %do.body ], [ %len, %if.end.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len.addr.0)
  %cmp23 = icmp eq i8 %len.addr.0, 0
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %conv22 = zext i8 %len.addr.0 to i32
  %memcopy = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %memcopy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memcopy, align 8
  %secbuf_base = getelementptr inbounds %struct.dmx_section_feed, ptr %feed, i32 0, i32 6
  %10 = ptrtoint ptr %tsfeedp to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tsfeedp, align 4
  %conv28 = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %secbuf_base, i32 %conv28
  tail call void %9(ptr noundef %feed, ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %conv22) #12
  %12 = ptrtoint ptr %tsfeedp to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tsfeedp, align 4
  %14 = zext i8 %len.addr.0 to i16
  %conv34 = add i16 %13, %14
  store i16 %conv34, ptr %tsfeedp, align 4
  %conv36 = zext i16 %conv34 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4284, i16 %conv34)
  %cmp37 = icmp ugt i16 %conv34, 4284
  br i1 %cmp37, label %if.end26.cleanup_crit_edge, label %if.end40

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %if.end26
  %secbufp = getelementptr inbounds %struct.dmx_section_feed, ptr %feed, i32 0, i32 7
  %15 = ptrtoint ptr %secbufp to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %secbufp, align 4
  %conv43 = zext i16 %16 to i32
  %add.ptr44 = getelementptr i8, ptr %secbuf_base, i32 %conv43
  %secbuf = getelementptr inbounds %struct.dmx_section_feed, ptr %feed, i32 0, i32 5
  %17 = ptrtoint ptr %secbuf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr44, ptr %secbuf, align 4
  %add473 = add nuw nsw i32 %conv43, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add473, i32 %conv36)
  %cmp494 = icmp ult i32 %add473, %conv36
  br i1 %cmp494, label %for.body.lr.ph, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end40
  %seclen69 = getelementptr inbounds %struct.dmx_section_feed, ptr %feed, i32 0, i32 8
  %crc_val = getelementptr inbounds %struct.dmx_section_feed, ptr %feed, i32 0, i32 4
  %pusi_seen = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 13
  %filter.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 8
  %check_crc.i = getelementptr inbounds %struct.dmx_section_feed, ptr %feed, i32 0, i32 3
  %buffer_flags.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 9
  %cb.i.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end82.for.body_crit_edge, %for.body.lr.ph
  %conv466 = phi i32 [ %conv43, %for.body.lr.ph ], [ %conv46, %if.end82.for.body_crit_edge ]
  %storemerge5 = phi ptr [ %add.ptr44, %for.body.lr.ph ], [ %add.ptr90, %if.end82.for.body_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %storemerge5, i32 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %20 = and i8 %19, 15
  %and.i = zext i8 %20 to i16
  %shl.i = shl nuw nsw i16 %and.i, 8
  %arrayidx1.i = getelementptr i8, ptr %storemerge5, i32 2
  %21 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %22 to i16
  %add.i = add nuw nsw i16 %conv2.i, 3
  %add3.i = add nuw nsw i16 %add.i, %shl.i
  %conv53 = zext i16 %add3.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %add3.i)
  %cmp57 = icmp ugt i16 %add3.i, 4096
  %add63 = add nuw nsw i32 %conv466, %conv53
  call void @__sanitizer_cov_trace_cmp4(i32 %add63, i32 %conv36)
  %cmp65 = icmp ugt i32 %add63, %conv36
  %or.cond = select i1 %cmp57, i1 true, i1 %cmp65
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %if.end68

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end68:                                         ; preds = %for.body
  %23 = ptrtoint ptr %seclen69 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %add3.i, ptr %seclen69, align 2
  %24 = ptrtoint ptr %crc_val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %crc_val, align 4
  %25 = ptrtoint ptr %pusi_seen to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pusi_seen, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %do.body72, label %if.then70

if.then70:                                        ; preds = %if.end68
  %27 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %demux1, align 4
  %29 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %filter.i, align 8
  %31 = ptrtoint ptr %feed to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %feed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  %tobool3.not.i = icmp eq ptr %30, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %if.then70.if.end82_crit_edge, label %if.end5.i

if.then70.if.end82_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.end5.i:                                        ; preds = %if.then70
  %33 = ptrtoint ptr %check_crc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %check_crc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool6.not.i = icmp eq i32 %34, 0
  br i1 %tobool6.not.i, label %if.end5.i.do.body16.i.preheader_crit_edge, label %if.then7.i

if.end5.i.do.body16.i.preheader_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i.preheader

do.body16.i.preheader:                            ; preds = %land.lhs.true.i.do.body16.i.preheader_crit_edge, %if.then7.i.do.body16.i.preheader_crit_edge, %if.end5.i.do.body16.i.preheader_crit_edge
  br label %do.body16.i

if.then7.i:                                       ; preds = %if.end5.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp.not.i = icmp sgt i8 %36, -1
  br i1 %cmp.not.i, label %if.then7.i.do.body16.i.preheader_crit_edge, label %land.lhs.true.i

if.then7.i.do.body16.i.preheader_crit_edge:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i.preheader

land.lhs.true.i:                                  ; preds = %if.then7.i
  %check_crc32.i = getelementptr inbounds %struct.dvb_demux, ptr %28, i32 0, i32 7
  %37 = ptrtoint ptr %check_crc32.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %check_crc32.i, align 4
  %call.i = tail call i32 %38(ptr noundef %feed, ptr noundef %storemerge5, i32 noundef %conv53) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.do.body16.i.preheader_crit_edge, label %do.body.i

land.lhs.true.i.do.body16.i.preheader_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i.preheader

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %buffer_flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buffer_flags.i, align 4
  %or.i = or i32 %40, 1
  store i32 %or.i, ptr %buffer_flags.i, align 4
  br label %if.end82

do.body16.i:                                      ; preds = %land.rhs.i.do.body16.i_crit_edge, %do.body16.i.preheader
  %f.0.i = phi ptr [ %58, %land.rhs.i.do.body16.i_crit_edge ], [ %30, %do.body16.i.preheader ]
  %41 = ptrtoint ptr %secbuf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %secbuf, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.body16.i
  %i.050.i.i = phi i32 [ 0, %do.body16.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %neq.049.i.i = phi i8 [ 0, %do.body16.i ], [ %or45.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [18 x i8], ptr %f.0.i, i32 0, i32 %i.050.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx2.i.i = getelementptr i8, ptr %42, i32 %i.050.i.i
  %45 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx2.i.i, align 1
  %xor442.i.i = xor i8 %46, %44
  %arrayidx6.i.i = getelementptr %struct.dvb_demux_filter, ptr %f.0.i, i32 0, i32 1, i32 %i.050.i.i
  %47 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx6.i.i, align 1
  %and43.i.i = and i8 %48, %xor442.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and43.i.i)
  %tobool.not.i.i = icmp eq i8 %and43.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %for.body.i.i.do.cond22.i_crit_edge

for.body.i.i.do.cond22.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond22.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %arrayidx9.i.i = getelementptr %struct.dvb_demux_filter, ptr %f.0.i, i32 0, i32 2, i32 %i.050.i.i
  %49 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx9.i.i, align 1
  %and1244.i.i = and i8 %50, %xor442.i.i
  %or45.i.i = or i8 %and1244.i.i, %neq.049.i.i
  %inc.i.i = add nuw nsw i32 %i.050.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 18
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %doneq.i.i = getelementptr inbounds %struct.dvb_demux_filter, ptr %f.0.i, i32 0, i32 3
  %51 = ptrtoint ptr %doneq.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %doneq.i.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool15.not.i.i = icmp ne i8 %52, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or45.i.i)
  %tobool17.not.i.i = icmp eq i8 %or45.i.i, 0
  %or.cond.i.i = select i1 %tobool15.not.i.i, i1 %tobool17.not.i.i, i1 false
  br i1 %or.cond.i.i, label %for.end.i.i.do.cond22.i_crit_edge, label %dvb_dmx_swfilter_sectionfilter.exit.i

for.end.i.i.do.cond22.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond22.i

dvb_dmx_swfilter_sectionfilter.exit.i:            ; preds = %for.end.i.i
  %53 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cb.i.i, align 8
  %55 = ptrtoint ptr %seclen69 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %seclen69, align 2
  %conv23.i.i = zext i16 %56 to i32
  %call.i.i = tail call i32 %54(ptr noundef %42, i32 noundef %conv23.i.i, ptr noundef null, i32 noundef 0, ptr noundef %f.0.i, ptr noundef %buffer_flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp18.i, label %dvb_dmx_swfilter_sectionfilter.exit.i.if.end82_crit_edge, label %dvb_dmx_swfilter_sectionfilter.exit.i.do.cond22.i_crit_edge

dvb_dmx_swfilter_sectionfilter.exit.i.do.cond22.i_crit_edge: ; preds = %dvb_dmx_swfilter_sectionfilter.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond22.i

dvb_dmx_swfilter_sectionfilter.exit.i.if.end82_crit_edge: ; preds = %dvb_dmx_swfilter_sectionfilter.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

do.cond22.i:                                      ; preds = %dvb_dmx_swfilter_sectionfilter.exit.i.do.cond22.i_crit_edge, %for.end.i.i.do.cond22.i_crit_edge, %for.body.i.i.do.cond22.i_crit_edge
  %next.i = getelementptr inbounds %struct.dvb_demux_filter, ptr %f.0.i, i32 0, i32 4
  %57 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %next.i, align 4
  %tobool23.not.i = icmp eq ptr %58, null
  br i1 %tobool23.not.i, label %do.cond22.i.do.end26.i_crit_edge, label %land.rhs.i

do.cond22.i.do.end26.i_crit_edge:                 ; preds = %do.cond22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i

land.rhs.i:                                       ; preds = %do.cond22.i
  %59 = ptrtoint ptr %feed to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %feed, align 4
  %tobool25.not.i = icmp eq i32 %60, 0
  br i1 %tobool25.not.i, label %land.rhs.i.do.end26.i_crit_edge, label %land.rhs.i.do.body16.i_crit_edge

land.rhs.i.do.body16.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i

land.rhs.i.do.end26.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i

do.end26.i:                                       ; preds = %land.rhs.i.do.end26.i_crit_edge, %do.cond22.i.do.end26.i_crit_edge
  %61 = ptrtoint ptr %seclen69 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %seclen69, align 2
  br label %if.end82

do.body72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %buffer_flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buffer_flags.i, align 4
  %or74 = or i32 %63, 8
  store i32 %or74, ptr %buffer_flags.i, align 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30) #16
  br label %if.end82

if.end82:                                         ; preds = %do.body72, %do.end26.i, %dvb_dmx_swfilter_sectionfilter.exit.i.if.end82_crit_edge, %do.body.i, %if.then70.if.end82_crit_edge
  %64 = ptrtoint ptr %secbufp to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %secbufp, align 4
  %add86 = add i16 %65, %add3.i
  store i16 %add86, ptr %secbufp, align 4
  %66 = ptrtoint ptr %secbuf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %secbuf, align 4
  %add.ptr90 = getelementptr i8, ptr %67, i32 %conv53
  store ptr %add.ptr90, ptr %secbuf, align 4
  %conv46 = zext i16 %add86 to i32
  %add47 = add nuw nsw i32 %conv46, 2
  %cmp49 = icmp ult i32 %add47, %conv36
  br i1 %cmp49, label %if.end82.for.body_crit_edge, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end82.for.body_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %if.end82.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmx_ts_feed_start_filtering(ptr noundef %ts_feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 18
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not = icmp eq i32 %5, 0
  br i1 %cmp2.not, label %if.end5, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end5:                                          ; preds = %lor.lhs.false
  %start_feed = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %start_feed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %start_feed, align 8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end5.cleanup.sink.split_crit_edge, label %if.end9

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end5
  %call11 = tail call i32 %7(ptr noundef %ts_feed) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end9.cleanup.sink.split_crit_edge, label %if.end15

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %8 = ptrtoint ptr %ts_feed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %ts_feed, align 4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %state, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15, %if.end9.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end15 ], [ -22, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ -19, %if.end5.cleanup.sink.split_crit_edge ], [ %call11, %if.end9.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmx_ts_feed_stop_filtering(ptr noundef %ts_feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ult i32 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %stop_feed = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %stop_feed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_feed, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef %ts_feed) #12
  %lock = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %6 = ptrtoint ptr %ts_feed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ts_feed, align 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %state, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmx_ts_feed_set(ptr noundef %ts_feed, i16 noundef zeroext %pid, i32 noundef %ts_type, i32 noundef %pes_type, i64 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %pid)
  %cmp = icmp ugt i16 %pid, 8192
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 18
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %ts_type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.if.end23_crit_edge, label %if.then6

if.end4.if.end23_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %pes_type)
  %cmp7 = icmp ugt i32 %pes_type, 19
  br i1 %cmp7, label %if.then6.cleanup.sink.split_crit_edge, label %if.end11

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.then6
  %arrayidx = getelementptr %struct.dvb_demux, ptr %1, i32 0, i32 13, i32 %pes_type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %3, null
  %cmp15.not = icmp eq ptr %3, %ts_feed
  %or.cond = or i1 %tobool12.not, %cmp15.not
  br i1 %or.cond, label %if.end19, label %if.end11.cleanup.sink.split_crit_edge

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ts_feed, ptr %arrayidx, align 4
  %arrayidx22 = getelementptr %struct.dvb_demux, ptr %1, i32 0, i32 14, i32 %pes_type
  %5 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %pid, ptr %arrayidx22, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.end19, %if.end4.if.end23_crit_edge
  %6 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %demux1, align 4
  %lock.i = getelementptr inbounds %struct.dvb_demux, ptr %7, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %8 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %demux1, align 4
  %feed_list.i.i = getelementptr inbounds %struct.dvb_demux, ptr %9, i32 0, i32 15
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end23
  %.pn.in.i.i = phi ptr [ %feed_list.i.i, %if.end23 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %feed_list.i.i
  br i1 %cmp.not.i.i, label %if.end.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %entry1.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4392
  %cmp4.i.i = icmp eq ptr %entry1.0.i.i, %ts_feed
  br i1 %cmp4.i.i, label %do.end.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

do.end.i:                                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %type.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 4
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  %state.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 5
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i, align 8
  %pid.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 6
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pid.i, align 4
  %conv.i = zext i16 %16 to i32
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %12, i32 noundef %14, i32 noundef %conv.i) #16
  br label %dvb_demux_feed_add.exit

if.end.i:                                         ; preds = %for.cond.i.i
  %list_head.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 15
  %17 = ptrtoint ptr %feed_list.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %feed_list.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_head.i, ptr noundef %feed_list.i.i, ptr noundef %18) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.dvb_demux_feed_add.exit_crit_edge

if.end.i.dvb_demux_feed_add.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_demux_feed_add.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list_head.i, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %list_head.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %list_head.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 15, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %feed_list.i.i, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %feed_list.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list_head.i, ptr %feed_list.i.i, align 4
  br label %dvb_demux_feed_add.exit

dvb_demux_feed_add.exit:                          ; preds = %if.end.i.i.i, %if.end.i.dvb_demux_feed_add.exit_crit_edge, %do.end.i
  %23 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %demux1, align 4
  %lock4.i = getelementptr inbounds %struct.dvb_demux, ptr %24, i32 0, i32 19
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock4.i) #12
  %pid24 = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 6
  %25 = ptrtoint ptr %pid24 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %pid, ptr %pid24, align 4
  %timeout25 = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 7
  %26 = ptrtoint ptr %timeout25 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %timeout, ptr %timeout25, align 8
  %ts_type26 = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 10
  %27 = ptrtoint ptr %ts_type26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %ts_type, ptr %ts_type26, align 8
  %pes_type27 = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 11
  %28 = ptrtoint ptr %pes_type27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %pes_type, ptr %pes_type27, align 4
  %state = getelementptr inbounds %struct.dvb_demux_feed, ptr %ts_feed, i32 0, i32 5
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %state, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %dvb_demux_feed_add.exit, %if.end11.cleanup.sink.split_crit_edge, %if.then6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %dvb_demux_feed_add.exit ], [ -22, %if.then6.cleanup.sink.split_crit_edge ], [ -22, %if.end11.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -512, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmx_section_feed_set(ptr noundef %feed, i16 noundef zeroext %pid, i32 noundef %check_crc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %pid)
  %cmp = icmp ugt i16 %pid, 8191
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 18
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %demux, align 4
  %lock.i = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %4 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demux, align 4
  %feed_list.i.i = getelementptr inbounds %struct.dvb_demux, ptr %5, i32 0, i32 15
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end3
  %.pn.in.i.i = phi ptr [ %feed_list.i.i, %if.end3 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %feed_list.i.i
  br i1 %cmp.not.i.i, label %if.end.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %entry1.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4392
  %cmp4.i.i = icmp eq ptr %entry1.0.i.i, %feed
  br i1 %cmp4.i.i, label %do.end.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

do.end.i:                                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %type.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 4
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i, align 4
  %state.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 5
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 8
  %pid.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 6
  %11 = ptrtoint ptr %pid.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pid.i, align 4
  %conv.i = zext i16 %12 to i32
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %8, i32 noundef %10, i32 noundef %conv.i) #16
  br label %dvb_demux_feed_add.exit

if.end.i:                                         ; preds = %for.cond.i.i
  %list_head.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 15
  %13 = ptrtoint ptr %feed_list.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %feed_list.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_head.i, ptr noundef %feed_list.i.i, ptr noundef %14) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.dvb_demux_feed_add.exit_crit_edge

if.end.i.dvb_demux_feed_add.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dvb_demux_feed_add.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list_head.i, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %list_head.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %list_head.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 15, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %feed_list.i.i, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %feed_list.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list_head.i, ptr %feed_list.i.i, align 4
  br label %dvb_demux_feed_add.exit

dvb_demux_feed_add.exit:                          ; preds = %if.end.i.i.i, %if.end.i.dvb_demux_feed_add.exit_crit_edge, %do.end.i
  %19 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %demux, align 4
  %lock4.i = getelementptr inbounds %struct.dvb_demux, ptr %20, i32 0, i32 19
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock4.i) #12
  %pid4 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 6
  %21 = ptrtoint ptr %pid4 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %pid, ptr %pid4, align 4
  %check_crc6 = getelementptr inbounds %struct.dmx_section_feed, ptr %feed, i32 0, i32 3
  %22 = ptrtoint ptr %check_crc6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %check_crc, ptr %check_crc6, align 4
  %state = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 5
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %state, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %dvb_demux_feed_add.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dvb_demux_feed_add.exit ], [ -22, %entry.cleanup_crit_edge ], [ -512, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmx_section_feed_allocate_filter(ptr noundef %feed, ptr nocapture noundef %filter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 18
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %filternum.i = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %filternum.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %filternum.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.i = icmp sgt i32 %3, 0
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %filter.i = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filter.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %state.i = getelementptr %struct.dvb_demux_filter, ptr %5, i32 %i.021.i, i32 7
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.i = icmp eq i32 %7, 0
  br i1 %cmp1.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup.sink.split_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup.sink.split_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.for.end.i_crit_edge ], [ %i.021.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %3)
  %cmp3.i = icmp eq i32 %i.0.lcssa.i, %3
  br i1 %cmp3.i, label %for.end.i.cleanup.sink.split_crit_edge, label %dvb_dmx_filter_alloc.exit

for.end.i.cleanup.sink.split_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

dvb_dmx_filter_alloc.exit:                        ; preds = %for.end.i
  %filter6.i = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %filter6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %filter6.i, align 8
  %state8.i = getelementptr %struct.dvb_demux_filter, ptr %9, i32 %i.0.lcssa.i, i32 7
  %10 = ptrtoint ptr %state8.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state8.i, align 4
  %11 = load ptr, ptr %filter6.i, align 8
  %arrayidx10.i = getelementptr %struct.dvb_demux_filter, ptr %11, i32 %i.0.lcssa.i
  %tobool2.not = icmp eq ptr %arrayidx10.i, null
  br i1 %tobool2.not, label %dvb_dmx_filter_alloc.exit.cleanup.sink.split_crit_edge, label %if.end5

dvb_dmx_filter_alloc.exit.cleanup.sink.split_crit_edge: ; preds = %dvb_dmx_filter_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end5:                                          ; preds = %dvb_dmx_filter_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %12 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx10.i, ptr %filter, align 4
  %parent = getelementptr inbounds %struct.dmx_section_filter, ptr %arrayidx10.i, i32 0, i32 3
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %feed, ptr %parent, align 4
  %14 = load ptr, ptr %filter, align 4
  %priv = getelementptr inbounds %struct.dmx_section_filter, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %priv, align 4
  %feed7 = getelementptr %struct.dvb_demux_filter, ptr %11, i32 %i.0.lcssa.i, i32 5
  %16 = ptrtoint ptr %feed7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %feed, ptr %feed7, align 4
  %type = getelementptr %struct.dvb_demux_filter, ptr %11, i32 %i.0.lcssa.i, i32 8
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type, align 4
  %state = getelementptr %struct.dvb_demux_filter, ptr %11, i32 %i.0.lcssa.i, i32 7
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %state, align 4
  %filter8 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 8
  %19 = ptrtoint ptr %filter8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %filter8, align 8
  %next = getelementptr %struct.dvb_demux_filter, ptr %11, i32 %i.0.lcssa.i, i32 4
  %21 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %next, align 4
  store ptr %arrayidx10.i, ptr %filter8, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end5, %dvb_dmx_filter_alloc.exit.cleanup.sink.split_crit_edge, %for.end.i.cleanup.sink.split_crit_edge, %for.inc.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end5 ], [ -16, %for.end.i.cleanup.sink.split_crit_edge ], [ -16, %dvb_dmx_filter_alloc.exit.cleanup.sink.split_crit_edge ], [ -16, %for.inc.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmx_section_feed_start_filtering(ptr noundef %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 18
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %feed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %feed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end4, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %filter = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 8
  %4 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filter, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.cleanup.sink.split_crit_edge, label %if.end8

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end4
  %tsfeedp = getelementptr inbounds %struct.dmx_section_feed, ptr %feed, i32 0, i32 9
  %6 = ptrtoint ptr %tsfeedp to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %tsfeedp, align 8
  %secbuf_base = getelementptr inbounds %struct.dmx_section_feed, ptr %feed, i32 0, i32 6
  %secbuf = getelementptr inbounds %struct.dmx_section_feed, ptr %feed, i32 0, i32 5
  %7 = ptrtoint ptr %secbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %secbuf_base, ptr %secbuf, align 4
  %secbufp = getelementptr inbounds %struct.dmx_section_feed, ptr %feed, i32 0, i32 7
  %8 = ptrtoint ptr %secbufp to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %secbufp, align 4
  %seclen = getelementptr inbounds %struct.dmx_section_feed, ptr %feed, i32 0, i32 8
  %9 = ptrtoint ptr %seclen to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %seclen, align 2
  %pusi_seen = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 13
  %10 = ptrtoint ptr %pusi_seen to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pusi_seen, align 4
  %start_feed = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %start_feed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %start_feed, align 8
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %if.end8.cleanup.sink.split_crit_edge, label %if.end8.do.body.i_crit_edge

if.end8.do.body.i_crit_edge:                      ; preds = %if.end8
  br label %do.body.i

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body.i:                                        ; preds = %for.end.i.do.body.i_crit_edge, %if.end8.do.body.i_crit_edge
  %f.0.i = phi ptr [ %21, %for.end.i.do.body.i_crit_edge ], [ %5, %if.end8.do.body.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.i
  %doneq.041.i = phi i8 [ 0, %do.body.i ], [ %or39.i, %for.body.i.for.body.i_crit_edge ]
  %i.040.i = phi i32 [ 0, %do.body.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dmx_section_filter, ptr %f.0.i, i32 0, i32 2, i32 %i.040.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr %struct.dmx_section_filter, ptr %f.0.i, i32 0, i32 1, i32 %i.040.i
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.i, align 1
  %and38.i = and i8 %16, %14
  %arrayidx5.i = getelementptr %struct.dvb_demux_filter, ptr %f.0.i, i32 0, i32 1, i32 %i.040.i
  %17 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %and38.i, ptr %arrayidx5.i, align 1
  %neg.i = xor i8 %14, -1
  %and8.i = and i8 %16, %neg.i
  %arrayidx10.i = getelementptr %struct.dvb_demux_filter, ptr %f.0.i, i32 0, i32 2, i32 %i.040.i
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %and8.i, ptr %arrayidx10.i, align 1
  %or39.i = or i8 %and8.i, %doneq.041.i
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 18
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or39.i)
  %tobool15.i = icmp ne i8 %or39.i, 0
  %doneq17.i = getelementptr inbounds %struct.dvb_demux_filter, ptr %f.0.i, i32 0, i32 3
  %frombool.i = zext i1 %tobool15.i to i8
  %19 = ptrtoint ptr %doneq17.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool.i, ptr %doneq17.i, align 4
  %next.i = getelementptr inbounds %struct.dvb_demux_filter, ptr %f.0.i, i32 0, i32 4
  %20 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next.i, align 4
  %tobool18.not.i = icmp eq ptr %21, null
  br i1 %tobool18.not.i, label %prepare_secfilters.exit, label %for.end.i.do.body.i_crit_edge

for.end.i.do.body.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

prepare_secfilters.exit:                          ; preds = %for.end.i
  %22 = ptrtoint ptr %start_feed to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %start_feed, align 8
  %call19 = tail call i32 %23(ptr noundef %feed) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %prepare_secfilters.exit.cleanup.sink.split_crit_edge, label %if.end22

prepare_secfilters.exit.cleanup.sink.split_crit_edge: ; preds = %prepare_secfilters.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end22:                                         ; preds = %prepare_secfilters.exit
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %24 = ptrtoint ptr %feed to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %feed, align 4
  %state = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 5
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %state, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end22, %prepare_secfilters.exit.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge, %if.end4.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end22 ], [ -16, %if.end.cleanup.sink.split_crit_edge ], [ -22, %if.end4.cleanup.sink.split_crit_edge ], [ -19, %if.end8.cleanup.sink.split_crit_edge ], [ %call19, %prepare_secfilters.exit.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmx_section_feed_stop_filtering(ptr noundef %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %stop_feed = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %stop_feed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_feed, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %3(ptr noundef %feed) #12
  %lock = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %state = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %state, align 8
  %5 = ptrtoint ptr %feed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %feed, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmx_section_feed_release_filter(ptr noundef %feed, ptr noundef %filter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %mutex = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %feed1 = getelementptr inbounds %struct.dvb_demux_filter, ptr %filter, i32 0, i32 5
  %2 = ptrtoint ptr %feed1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %feed1, align 4
  %cmp.not = icmp eq ptr %3, %feed
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %feed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %feed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  %stop_filtering = getelementptr inbounds %struct.dmx_section_feed, ptr %feed, i32 0, i32 14
  %6 = ptrtoint ptr %stop_filtering to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stop_filtering, align 4
  %call = tail call i32 %7(ptr noundef %feed) #12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %lock = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %filter7 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 8
  %8 = ptrtoint ptr %filter7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %filter7, align 8
  %cmp8 = icmp eq ptr %9, %filter
  br i1 %cmp8, label %if.then9, label %if.end6.while.cond_crit_edge

if.end6.while.cond_crit_edge:                     ; preds = %if.end6
  br label %while.cond

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %next = getelementptr inbounds %struct.dvb_demux_filter, ptr %filter, i32 0, i32 4
  %10 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next, align 4
  %12 = ptrtoint ptr %filter7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %filter7, align 8
  br label %if.end17

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end6.while.cond_crit_edge
  %f.0 = phi ptr [ %14, %while.cond.while.cond_crit_edge ], [ %9, %if.end6.while.cond_crit_edge ]
  %next11 = getelementptr inbounds %struct.dvb_demux_filter, ptr %f.0, i32 0, i32 4
  %13 = ptrtoint ptr %next11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next11, align 4
  %cmp12.not = icmp eq ptr %14, %filter
  br i1 %cmp12.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %next11.le = getelementptr inbounds %struct.dvb_demux_filter, ptr %f.0, i32 0, i32 4
  %next15 = getelementptr inbounds %struct.dvb_demux_filter, ptr %filter, i32 0, i32 4
  %15 = ptrtoint ptr %next15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next15, align 4
  %17 = ptrtoint ptr %next11.le to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %next11.le, align 4
  br label %if.end17

if.end17:                                         ; preds = %while.end, %if.then9
  %state = getelementptr inbounds %struct.dvb_demux_filter, ptr %filter, i32 0, i32 7
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %state, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.usub.sat.i8(i8, i8) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !34, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106}
!llvm.named.register.sp = !{!107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__param_dvb_demux_tscheck, !1, !"__param_dvb_demux_tscheck", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_dvb_demux_tschecktype213, !1, !"__UNIQUE_ID_dvb_demux_tschecktype213", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dvb_demux_tscheck214, !4, !"__UNIQUE_ID_dvb_demux_tscheck214", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 27, i32 1}
!5 = !{ptr @__param_dvb_demux_speedcheck, !6, !"__param_dvb_demux_speedcheck", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 31, i32 1}
!7 = !{ptr @__UNIQUE_ID_dvb_demux_speedchecktype215, !6, !"__UNIQUE_ID_dvb_demux_speedchecktype215", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_dvb_demux_speedcheck216, !9, !"__UNIQUE_ID_dvb_demux_speedcheck216", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 32, i32 1}
!10 = !{ptr @__param_dvb_demux_feed_err_pkts, !11, !"__param_dvb_demux_feed_err_pkts", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 36, i32 1}
!12 = !{ptr @__UNIQUE_ID_dvb_demux_feed_err_pktstype217, !11, !"__UNIQUE_ID_dvb_demux_feed_err_pktstype217", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_dvb_demux_feed_err_pkts218, !14, !"__UNIQUE_ID_dvb_demux_feed_err_pkts218", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 37, i32 1}
!15 = !{ptr @__ksymtab_dvb_dmx_swfilter_packets, !16, !"__ksymtab_dvb_dmx_swfilter_packets", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 510, i32 1}
!17 = !{ptr @__ksymtab_dvb_dmx_swfilter, !18, !"__ksymtab_dvb_dmx_swfilter", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 595, i32 1}
!19 = !{ptr @__ksymtab_dvb_dmx_swfilter_204, !20, !"__ksymtab_dvb_dmx_swfilter_204", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 601, i32 1}
!21 = !{ptr @__ksymtab_dvb_dmx_swfilter_raw, !22, !"__ksymtab_dvb_dmx_swfilter_raw", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 614, i32 1}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 1265, i32 3}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dvb_dmx_init._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @dvb_dmx_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @dvb_dmx_init.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 1303, i32 2}
!31 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dvb_dmx_init.__key.4, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 1304, i32 2}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__ksymtab_dvb_dmx_init, !36, !"__ksymtab_dvb_dmx_init", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 1309, i32 1}
!37 = !{ptr @__ksymtab_dvb_dmx_release, !38, !"__ksymtab_dvb_dmx_release", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 1318, i32 1}
!39 = !{ptr @dvb_demux_tscheck, !40, !"dvb_demux_tscheck", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 25, i32 12}
!41 = !{ptr @dvb_demux_speedcheck, !42, !"dvb_demux_speedcheck", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 30, i32 12}
!43 = !{ptr @__param_str_dvb_demux_tscheck, !1, !"__param_str_dvb_demux_tscheck", i1 false, i1 false}
!44 = !{ptr @__param_str_dvb_demux_speedcheck, !6, !"__param_str_dvb_demux_speedcheck", i1 false, i1 false}
!45 = !{ptr @__param_str_dvb_demux_feed_err_pkts, !11, !"__param_str_dvb_demux_feed_err_pkts", i1 false, i1 false}
!46 = !{ptr @dvb_demux_feed_err_pkts, !47, !"dvb_demux_feed_err_pkts", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 35, i32 12}
!48 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 430, i32 6}
!50 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dvb_dmx_swfilter_packet._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @dvb_dmx_swfilter_packet._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 446, i32 3}
!55 = !{ptr @dvb_dmx_swfilter_packet._entry.8, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @dvb_dmx_swfilter_packet._entry_ptr.10, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 468, i32 6}
!59 = !{ptr @dvb_dmx_swfilter_packet._entry.11, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @dvb_dmx_swfilter_packet._entry_ptr.13, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 121, i32 3}
!63 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @dvb_dmx_swfilter_payload._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @dvb_dmx_swfilter_payload._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 315, i32 4}
!68 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @dvb_dmx_swfilter_section_packet._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @dvb_dmx_swfilter_section_packet._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 320, i32 4}
!73 = !{ptr @dvb_dmx_swfilter_section_packet._entry.18, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @dvb_dmx_swfilter_section_packet._entry_ptr.20, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 358, i32 4}
!77 = !{ptr @dvb_dmx_swfilter_section_packet._entry.21, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @dvb_dmx_swfilter_section_packet._entry_ptr.23, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 203, i32 4}
!81 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @dvb_dmx_swfilter_section_new._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @dvb_dmx_swfilter_section_new._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 205, i32 4}
!86 = !{ptr @dvb_dmx_swfilter_section_new._entry.26, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @dvb_dmx_swfilter_section_new._entry_ptr.28, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 243, i32 3}
!90 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @dvb_dmx_swfilter_section_copy_dump._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @dvb_dmx_swfilter_section_copy_dump._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 278, i32 4}
!95 = !{ptr @dvb_dmx_swfilter_section_copy_dump._entry.31, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @dvb_dmx_swfilter_section_copy_dump._entry_ptr.33, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 663, i32 3}
!99 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @dvb_demux_feed_add._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @dvb_demux_feed_add._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-core/dvb_demux.c", i32 677, i32 3}
!104 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @dvb_demux_feed_del._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @dvb_demux_feed_del._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{!"sp"}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 1351907, i64 1351934}
!118 = !{i64 1352602, i64 1352629, i64 1352662, i64 1352683, i64 1352710, i64 1352736}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{i8 0, i8 2}
